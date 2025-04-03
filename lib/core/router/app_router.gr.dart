// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddReviewPage]
class AddReviewRoute extends PageRouteInfo<AddReviewRouteArgs> {
  AddReviewRoute({
    Key? key,
    int? replyToCommentId,
    int? requestId,
    String? userRelatedLogin,
    LastCommentInfoModel? commentForEdit,
    List<PageRouteInfo>? children,
  }) : super(
          AddReviewRoute.name,
          args: AddReviewRouteArgs(
            key: key,
            replyToCommentId: replyToCommentId,
            requestId: requestId,
            userRelatedLogin: userRelatedLogin,
            commentForEdit: commentForEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'AddReviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddReviewRouteArgs>(
          orElse: () => const AddReviewRouteArgs());
      return AddReviewPage(
        key: args.key,
        replyToCommentId: args.replyToCommentId,
        requestId: args.requestId,
        userRelatedLogin: args.userRelatedLogin,
        commentForEdit: args.commentForEdit,
      );
    },
  );
}

class AddReviewRouteArgs {
  const AddReviewRouteArgs({
    this.key,
    this.replyToCommentId,
    this.requestId,
    this.userRelatedLogin,
    this.commentForEdit,
  });

  final Key? key;

  final int? replyToCommentId;

  final int? requestId;

  final String? userRelatedLogin;

  final LastCommentInfoModel? commentForEdit;

  @override
  String toString() {
    return 'AddReviewRouteArgs{key: $key, replyToCommentId: $replyToCommentId, requestId: $requestId, userRelatedLogin: $userRelatedLogin, commentForEdit: $commentForEdit}';
  }
}

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
class SelectLocationRoute extends PageRouteInfo<SelectLocationRouteArgs> {
  SelectLocationRoute({
    Key? key,
    bool singleSelect = false,
    int? selectedLocationId,
    List<PageRouteInfo>? children,
  }) : super(
          SelectLocationRoute.name,
          args: SelectLocationRouteArgs(
            key: key,
            singleSelect: singleSelect,
            selectedLocationId: selectedLocationId,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectLocationRouteArgs>(
          orElse: () => const SelectLocationRouteArgs());
      return SelectLocationPage(
        key: args.key,
        singleSelect: args.singleSelect,
        selectedLocationId: args.selectedLocationId,
      );
    },
  );
}

class SelectLocationRouteArgs {
  const SelectLocationRouteArgs({
    this.key,
    this.singleSelect = false,
    this.selectedLocationId,
  });

  final Key? key;

  final bool singleSelect;

  final int? selectedLocationId;

  @override
  String toString() {
    return 'SelectLocationRouteArgs{key: $key, singleSelect: $singleSelect, selectedLocationId: $selectedLocationId}';
  }
}

/// generated route for
/// [SendRequestPage]
class SendRequestRoute extends PageRouteInfo<SendRequestRouteArgs> {
  SendRequestRoute({
    Key? key,
    required int userId,
    ServiceModel? serviceModel,
    List<PageRouteInfo>? children,
  }) : super(
          SendRequestRoute.name,
          args: SendRequestRouteArgs(
            key: key,
            userId: userId,
            serviceModel: serviceModel,
          ),
          initialChildren: children,
        );

  static const String name = 'SendRequestRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SendRequestRouteArgs>();
      return SendRequestPage(
        key: args.key,
        userId: args.userId,
        serviceModel: args.serviceModel,
      );
    },
  );
}

class SendRequestRouteArgs {
  const SendRequestRouteArgs({
    this.key,
    required this.userId,
    this.serviceModel,
  });

  final Key? key;

  final int userId;

  final ServiceModel? serviceModel;

  @override
  String toString() {
    return 'SendRequestRouteArgs{key: $key, userId: $userId, serviceModel: $serviceModel}';
  }
}

/// generated route for
/// [ServiceDetailsPage]
class ServiceDetailsRoute extends PageRouteInfo<ServiceDetailsRouteArgs> {
  ServiceDetailsRoute({
    Key? key,
    required ServiceModel serviceModel,
    required CategoryModel serviceCategory,
    ServiceDetailsMode mode = ServiceDetailsMode.add,
    List<PageRouteInfo>? children,
  }) : super(
          ServiceDetailsRoute.name,
          args: ServiceDetailsRouteArgs(
            key: key,
            serviceModel: serviceModel,
            serviceCategory: serviceCategory,
            mode: mode,
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
        serviceCategory: args.serviceCategory,
        mode: args.mode,
      );
    },
  );
}

class ServiceDetailsRouteArgs {
  const ServiceDetailsRouteArgs({
    this.key,
    required this.serviceModel,
    required this.serviceCategory,
    this.mode = ServiceDetailsMode.add,
  });

  final Key? key;

  final ServiceModel serviceModel;

  final CategoryModel serviceCategory;

  final ServiceDetailsMode mode;

  @override
  String toString() {
    return 'ServiceDetailsRouteArgs{key: $key, serviceModel: $serviceModel, serviceCategory: $serviceCategory, mode: $mode}';
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
    required int userId,
    int? commentId,
    List<PageRouteInfo>? children,
  }) : super(
          UserRoute.name,
          args: UserRouteArgs(
            key: key,
            userId: userId,
            commentId: commentId,
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
        userId: args.userId,
        commentId: args.commentId,
      );
    },
  );
}

class UserRouteArgs {
  const UserRouteArgs({
    this.key,
    required this.userId,
    this.commentId,
  });

  final Key? key;

  final int userId;

  final int? commentId;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, userId: $userId, commentId: $commentId}';
  }
}
