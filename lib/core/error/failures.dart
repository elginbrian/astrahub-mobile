import 'package:equatable/equatable.dart';

/// Base class for all domain-layer failures.
abstract class Failure extends Equatable {
  const Failure([this.message = 'An unexpected error occurred.']);

  final String message;

  @override
  List<Object?> get props => [message];
}

// ── Network Failures ──────────────────────────────────────────────────────────

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection.']);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error. Please try again.']);
  const ServerFailure.withCode(this.statusCode, [super.message = 'Server error.']);
  final int? statusCode = null;
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.message = 'Session expired. Please log in again.']);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure([super.message = 'Request timed out. Please try again.']);
}

// ── Local Failures ────────────────────────────────────────────────────────────

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Local storage error.']);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Resource not found.']);
}

// ── Validation Failures ───────────────────────────────────────────────────────

class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}
