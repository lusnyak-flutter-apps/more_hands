// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AppLoadingPage]
class AppLoadingRoute extends PageRouteInfo<void> {
  const AppLoadingRoute({List<PageRouteInfo>? children})
      : super(
          AppLoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppLoadingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppLoadingPage();
    },
  );
}

/// generated route for
/// [AuthorizationPage]
class AuthorizationRoute extends PageRouteInfo<void> {
  const AuthorizationRoute({List<PageRouteInfo>? children})
      : super(
          AuthorizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthorizationPage();
    },
  );
}

/// generated route for
/// [BottomNavigationPage]
class BottomNavigationRoute extends PageRouteInfo<void> {
  const BottomNavigationRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BottomNavigationPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [IncomingRequestsPage]
class IncomingRequestsRoute extends PageRouteInfo<IncomingRequestsRouteArgs> {
  IncomingRequestsRoute({
    Key? key,
    required List<RequestModel> requests,
    List<PageRouteInfo>? children,
  }) : super(
          IncomingRequestsRoute.name,
          args: IncomingRequestsRouteArgs(
            key: key,
            requests: requests,
          ),
          initialChildren: children,
        );

  static const String name = 'IncomingRequestsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<IncomingRequestsRouteArgs>();
      return IncomingRequestsPage(
        key: args.key,
        requests: args.requests,
      );
    },
  );
}

class IncomingRequestsRouteArgs {
  const IncomingRequestsRouteArgs({
    this.key,
    required this.requests,
  });

  final Key? key;

  final List<RequestModel> requests;

  @override
  String toString() {
    return 'IncomingRequestsRouteArgs{key: $key, requests: $requests}';
  }
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingPage();
    },
  );
}

/// generated route for
/// [OutgoingRequestsPage]
class OutgoingRequestsRoute extends PageRouteInfo<OutgoingRequestsRouteArgs> {
  OutgoingRequestsRoute({
    Key? key,
    required List<RequestModel> requests,
    List<PageRouteInfo>? children,
  }) : super(
          OutgoingRequestsRoute.name,
          args: OutgoingRequestsRouteArgs(
            key: key,
            requests: requests,
          ),
          initialChildren: children,
        );

  static const String name = 'OutgoingRequestsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OutgoingRequestsRouteArgs>();
      return OutgoingRequestsPage(
        key: args.key,
        requests: args.requests,
      );
    },
  );
}

class OutgoingRequestsRouteArgs {
  const OutgoingRequestsRouteArgs({
    this.key,
    required this.requests,
  });

  final Key? key;

  final List<RequestModel> requests;

  @override
  String toString() {
    return 'OutgoingRequestsRouteArgs{key: $key, requests: $requests}';
  }
}

/// generated route for
/// [ProfileAboutPage]
class ProfileAboutRoute extends PageRouteInfo<ProfileAboutRouteArgs> {
  ProfileAboutRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileAboutRoute.name,
          args: ProfileAboutRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileAboutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileAboutRouteArgs>();
      return ProfileAboutPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class ProfileAboutRouteArgs {
  const ProfileAboutRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'ProfileAboutRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [ProfileContactsPage]
class ProfileContactsRoute extends PageRouteInfo<ProfileContactsRouteArgs> {
  ProfileContactsRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileContactsRoute.name,
          args: ProfileContactsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileContactsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileContactsRouteArgs>();
      return ProfileContactsPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class ProfileContactsRouteArgs {
  const ProfileContactsRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'ProfileContactsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [ProfileNameAndImagePage]
class ProfileNameAndImageRoute
    extends PageRouteInfo<ProfileNameAndImageRouteArgs> {
  ProfileNameAndImageRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileNameAndImageRoute.name,
          args: ProfileNameAndImageRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileNameAndImageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileNameAndImageRouteArgs>();
      return ProfileNameAndImagePage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class ProfileNameAndImageRouteArgs {
  const ProfileNameAndImageRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'ProfileNameAndImageRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [ReferralsPage]
class ReferralsRoute extends PageRouteInfo<void> {
  const ReferralsRoute({List<PageRouteInfo>? children})
      : super(
          ReferralsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReferralsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ReferralsPage();
    },
  );
}

/// generated route for
/// [RequestsPage]
class RequestsRoute extends PageRouteInfo<void> {
  const RequestsRoute({List<PageRouteInfo>? children})
      : super(
          RequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RequestsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RequestsPage();
    },
  );
}

/// generated route for
/// [RequestsTapPage]
class RequestsTapRoute extends PageRouteInfo<void> {
  const RequestsTapRoute({List<PageRouteInfo>? children})
      : super(
          RequestsTapRoute.name,
          initialChildren: children,
        );

  static const String name = 'RequestsTapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RequestsTapPage();
    },
  );
}

/// generated route for
/// [SelectLocationPage]
class SelectLocationRoute extends PageRouteInfo<void> {
  const SelectLocationRoute({List<PageRouteInfo>? children})
      : super(
          SelectLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SelectLocationPage();
    },
  );
}

/// generated route for
/// [SendRequestPage]
class SendRequestRoute extends PageRouteInfo<void> {
  const SendRequestRoute({List<PageRouteInfo>? children})
      : super(
          SendRequestRoute.name,
          initialChildren: children,
        );

  static const String name = 'SendRequestRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SendRequestPage();
    },
  );
}

/// generated route for
/// [ServiceDetailsPage]
class ServiceDetailsRoute extends PageRouteInfo<ServiceDetailsRouteArgs> {
  ServiceDetailsRoute({
    Key? key,
    required ServiceModel serviceModel,
    List<PageRouteInfo>? children,
  }) : super(
          ServiceDetailsRoute.name,
          args: ServiceDetailsRouteArgs(
            key: key,
            serviceModel: serviceModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ServiceDetailsRouteArgs>();
      return ServiceDetailsPage(
        key: args.key,
        serviceModel: args.serviceModel,
      );
    },
  );
}

class ServiceDetailsRouteArgs {
  const ServiceDetailsRouteArgs({
    this.key,
    required this.serviceModel,
  });

  final Key? key;

  final ServiceModel serviceModel;

  @override
  String toString() {
    return 'ServiceDetailsRouteArgs{key: $key, serviceModel: $serviceModel}';
  }
}

/// generated route for
/// [ServicesListPage]
class ServicesListRoute extends PageRouteInfo<void> {
  const ServicesListRoute({List<PageRouteInfo>? children})
      : super(
          ServicesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ServicesListPage();
    },
  );
}

/// generated route for
/// [TestAuthPage]
class TestAuthRoute extends PageRouteInfo<void> {
  const TestAuthRoute({List<PageRouteInfo>? children})
      : super(
          TestAuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestAuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TestAuthPage();
    },
  );
}

/// generated route for
/// [UserPage]
class UserRoute extends PageRouteInfo<UserRouteArgs> {
  UserRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          UserRoute.name,
          args: UserRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserRouteArgs>();
      return UserPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class UserRouteArgs {
  const UserRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, user: $user}';
  }
}
