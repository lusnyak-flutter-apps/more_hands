part of 'authorization_cubit.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.initial() = _AuthorizationState;
  const factory AuthorizationState.authorized() = _AuthorizationAuthorizedState;
  const factory AuthorizationState.unauthorized() = _AuthorizationUnauthorizedState;
}
