import 'package:mysam_app/app/app_launch/auth/data/models/api/role.dart';
import 'package:mysam_app/app/app_launch/auth/data/models/ui/role.dart';
import 'package:mysam_app/app/app_launch/auth/data/models/ui/user_role_type.dart';

extension ApiRoleToRoleMapper on ApiRole {
  Role toRole() {
    return Role(
      id: id,
      documentId: documentId,
      name: name,
      description: description,
      type: UserRoleType.fromString(type),
      createdAt: DateTime.tryParse(createdAt ?? ''),
      updatedAt: DateTime.tryParse(updatedAt ?? ''),
      publishedAt: DateTime.tryParse(publishedAt ?? ''),
    );
  }
}

extension RoleToApiRoleMapper on Role {
  ApiRole toApiRole() {
    return ApiRole(
      id: id,
      documentId: documentId,
      name: name,
      description: description,
      type: type.value,
      createdAt: createdAt?.toIso8601String(),
      updatedAt: updatedAt?.toIso8601String(),
      publishedAt: publishedAt?.toIso8601String(),
    );
  }
}
