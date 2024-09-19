enum UserRoleType {
  user,
  moderator;

  static UserRoleType fromString(String value) {
    switch (value) {
      case 'moderator':
        return UserRoleType.moderator;
      default:
        return UserRoleType.user;
    }
  }

  String get value {
    switch (this) {
      case UserRoleType.user:
        return 'user';
      case UserRoleType.moderator:
        return 'moderator';
    }
  }
}
