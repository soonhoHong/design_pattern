class AdminOperation {
  void resetUserAccount(String userId) {
    print('user id : $userId  previous info is removed and reset');
  }
}

enum UserRole { worker, developer, admin }

abstract class Role {
  bool isAdmin();
}

final class AdminRole implements Role {
  @override
  bool isAdmin() {
    return true;
  }
}

final class Developer implements Role {
  @override
  bool isAdmin() {
    return false;
  }
}

final class Worker implements Role {
  @override
  bool isAdmin() {
    return false;
  }
}

class UserOperationProxy {
  final Role role;

  UserOperationProxy(this.role);
  AdminOperation? adminOperation;

  void resetUserId(String userId) {
    if (role.isAdmin()) {
      adminOperation ??= AdminOperation();
      adminOperation?.resetUserAccount(userId);
      print('user is deleted successfully');
    } else {
      print('you dont have permission');
    }
  }
}
