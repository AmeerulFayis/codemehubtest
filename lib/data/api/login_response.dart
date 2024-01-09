/// success : true
/// code : 200
/// data : {"id":121,"role":"Sub Admin","is_parent":true,"is_privacy":false,"last_login":null,"created_at":"2023-11-14T17:32:46.721776+05:30","updated_at":"2023-11-14T17:32:47.149278+05:30","uuid":"953cd4d3-b029-4d9f-890a-e0492712fc36","first_name":"Test Subadmin","last_name":null,"username":"test@gmail.com","mobile":"9876543210","email":"test@gmail.com","image":null,"otp":null,"is_active":true,"fk_company":25,"created_by":118,"fk_role":48,"user_permissions":[],"token":"92027d4c10d246c44007206174c01871582161e3"}
/// message : "Successfully logged in"
/// errors : null

class LoginResponse {
  LoginResponse({
      bool? success, 
      num? code, 
      Data? data, 
      String? message, 
      dynamic errors,}){
    _success = success;
    _code = code;
    _data = data;
    _message = message;
    _errors = errors;
}

  LoginResponse.fromJson(dynamic json) {
    _success = json['success'];
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
    _errors = json['errors'];
  }
  bool? _success;
  num? _code;
  Data? _data;
  String? _message;
  dynamic _errors;
LoginResponse copyWith({  bool? success,
  num? code,
  Data? data,
  String? message,
  dynamic errors,
}) => LoginResponse(  success: success ?? _success,
  code: code ?? _code,
  data: data ?? _data,
  message: message ?? _message,
  errors: errors ?? _errors,
);
  bool? get success => _success;
  num? get code => _code;
  Data? get data => _data;
  String? get message => _message;
  dynamic get errors => _errors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    map['errors'] = _errors;
    return map;
  }

}

/// id : 121
/// role : "Sub Admin"
/// is_parent : true
/// is_privacy : false
/// last_login : null
/// created_at : "2023-11-14T17:32:46.721776+05:30"
/// updated_at : "2023-11-14T17:32:47.149278+05:30"
/// uuid : "953cd4d3-b029-4d9f-890a-e0492712fc36"
/// first_name : "Test Subadmin"
/// last_name : null
/// username : "test@gmail.com"
/// mobile : "9876543210"
/// email : "test@gmail.com"
/// image : null
/// otp : null
/// is_active : true
/// fk_company : 25
/// created_by : 118
/// fk_role : 48
/// user_permissions : []
/// token : "92027d4c10d246c44007206174c01871582161e3"

class Data {
  Data({
      num? id, 
      String? role, 
      bool? isParent, 
      bool? isPrivacy, 
      dynamic lastLogin, 
      String? createdAt, 
      String? updatedAt, 
      String? uuid, 
      String? firstName, 
      dynamic lastName, 
      String? username, 
      String? mobile, 
      String? email, 
      dynamic image, 
      dynamic otp, 
      bool? isActive, 
      num? fkCompany, 
      num? createdBy, 
      num? fkRole, 
      List<dynamic>? userPermissions, 
      String? token,}){
    _id = id;
    _role = role;
    _isParent = isParent;
    _isPrivacy = isPrivacy;
    _lastLogin = lastLogin;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _uuid = uuid;
    _firstName = firstName;
    _lastName = lastName;
    _username = username;
    _mobile = mobile;
    _email = email;
    _image = image;
    _otp = otp;
    _isActive = isActive;
    _fkCompany = fkCompany;
    _createdBy = createdBy;
    _fkRole = fkRole;
    _userPermissions = userPermissions;
    _token = token;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _role = json['role'];
    _isParent = json['is_parent'];
    _isPrivacy = json['is_privacy'];
    _lastLogin = json['last_login'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _uuid = json['uuid'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _username = json['username'];
    _mobile = json['mobile'];
    _email = json['email'];
    _image = json['image'];
    _otp = json['otp'];
    _isActive = json['is_active'];
    _fkCompany = json['fk_company'];
    _createdBy = json['created_by'];
    _fkRole = json['fk_role'];
    if (json['user_permissions'] != null) {
      _userPermissions = [];
      // json['user_permissions'].forEach((v) {
      //   _userPermissions?.add(Dynamic.fromJson(v));
      // });
    }
    _token = json['token'];
  }
  num? _id;
  String? _role;
  bool? _isParent;
  bool? _isPrivacy;
  dynamic _lastLogin;
  String? _createdAt;
  String? _updatedAt;
  String? _uuid;
  String? _firstName;
  dynamic _lastName;
  String? _username;
  String? _mobile;
  String? _email;
  dynamic _image;
  dynamic _otp;
  bool? _isActive;
  num? _fkCompany;
  num? _createdBy;
  num? _fkRole;
  List<dynamic>? _userPermissions;
  String? _token;
Data copyWith({  num? id,
  String? role,
  bool? isParent,
  bool? isPrivacy,
  dynamic lastLogin,
  String? createdAt,
  String? updatedAt,
  String? uuid,
  String? firstName,
  dynamic lastName,
  String? username,
  String? mobile,
  String? email,
  dynamic image,
  dynamic otp,
  bool? isActive,
  num? fkCompany,
  num? createdBy,
  num? fkRole,
  List<dynamic>? userPermissions,
  String? token,
}) => Data(  id: id ?? _id,
  role: role ?? _role,
  isParent: isParent ?? _isParent,
  isPrivacy: isPrivacy ?? _isPrivacy,
  lastLogin: lastLogin ?? _lastLogin,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  uuid: uuid ?? _uuid,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  username: username ?? _username,
  mobile: mobile ?? _mobile,
  email: email ?? _email,
  image: image ?? _image,
  otp: otp ?? _otp,
  isActive: isActive ?? _isActive,
  fkCompany: fkCompany ?? _fkCompany,
  createdBy: createdBy ?? _createdBy,
  fkRole: fkRole ?? _fkRole,
  userPermissions: userPermissions ?? _userPermissions,
  token: token ?? _token,
);
  num? get id => _id;
  String? get role => _role;
  bool? get isParent => _isParent;
  bool? get isPrivacy => _isPrivacy;
  dynamic get lastLogin => _lastLogin;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get uuid => _uuid;
  String? get firstName => _firstName;
  dynamic get lastName => _lastName;
  String? get username => _username;
  String? get mobile => _mobile;
  String? get email => _email;
  dynamic get image => _image;
  dynamic get otp => _otp;
  bool? get isActive => _isActive;
  num? get fkCompany => _fkCompany;
  num? get createdBy => _createdBy;
  num? get fkRole => _fkRole;
  List<dynamic>? get userPermissions => _userPermissions;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['role'] = _role;
    map['is_parent'] = _isParent;
    map['is_privacy'] = _isPrivacy;
    map['last_login'] = _lastLogin;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['uuid'] = _uuid;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['username'] = _username;
    map['mobile'] = _mobile;
    map['email'] = _email;
    map['image'] = _image;
    map['otp'] = _otp;
    map['is_active'] = _isActive;
    map['fk_company'] = _fkCompany;
    map['created_by'] = _createdBy;
    map['fk_role'] = _fkRole;
    if (_userPermissions != null) {
      map['user_permissions'] = _userPermissions?.map((v) => v.toJson()).toList();
    }
    map['token'] = _token;
    return map;
  }

}