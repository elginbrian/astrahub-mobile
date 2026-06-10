import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/business_data_entity.dart';
import '../entities/business_score_entity.dart';
import '../entities/profile_entity.dart';
import '../entities/profile_transaction_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfile();
  
  Future<Either<Failure, ProfileEntity>> updateProfile({
    required String workshopName,
    required String phone,
    required String address,
    required String category,
  });

  Future<Either<Failure, ProfileEntity>> updateUserProfile({
    required String fullName,
    required String email,
  });

  Future<Either<Failure, BusinessScoreEntity>> getBusinessScore();
  
  Future<Either<Failure, BusinessDataEntity>> getBusinessData();
  
  Future<Either<Failure, List<ProfileTransactionEntity>>> getTransactions({
    int page = 1,
    int limit = 20,
  });
}
