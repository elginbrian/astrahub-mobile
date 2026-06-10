import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/business_data_entity.dart';
import '../../domain/entities/business_score_entity.dart';
import '../../domain/entities/profile_transaction_entity.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileState {
  final bool isLoading;
  final String? errorMessage;
  final BusinessScoreEntity? businessScore;
  final BusinessDataEntity? businessData;
  final List<ProfileTransactionEntity> transactions;

  const ProfileState({
    this.isLoading = false,
    this.errorMessage,
    this.businessScore,
    this.businessData,
    this.transactions = const [],
  });

  ProfileState copyWith({
    bool? isLoading,
    String? errorMessage,
    BusinessScoreEntity? businessScore,
    BusinessDataEntity? businessData,
    List<ProfileTransactionEntity>? transactions,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      businessScore: businessScore ?? this.businessScore,
      businessData: businessData ?? this.businessData,
      transactions: transactions ?? this.transactions,
    );
  }
}

class ProfileViewModel extends AutoDisposeNotifier<ProfileState> {
  late final ProfileRepository _repository;

  @override
  ProfileState build() {
    _repository = getIt<ProfileRepository>();
    Future.microtask(() => _fetchData());
    return const ProfileState(isLoading: true);
  }

  Future<void> _fetchData() async {
    state = state.copyWith(isLoading: true);

    try {
      final scoreResult = await _repository.getBusinessScore();
      final dataResult = await _repository.getBusinessData();
      final txResult = await _repository.getTransactions(page: 1, limit: 100);

      BusinessScoreEntity? score;
      BusinessDataEntity? data;
      List<ProfileTransactionEntity> txs = [];
      String? error;

      scoreResult.fold((f) => error = f.message, (s) => score = s);
      dataResult.fold((f) => error ??= f.message, (d) => data = d);
      txResult.fold((f) => error ??= f.message, (t) => txs = t);

      state = state.copyWith(
        isLoading: false,
        errorMessage: error,
        businessScore: score,
        businessData: data,
        transactions: txs,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await _fetchData();
  }
}

final profileViewModelProvider = NotifierProvider.autoDispose<ProfileViewModel, ProfileState>(
  () => ProfileViewModel(),
);
