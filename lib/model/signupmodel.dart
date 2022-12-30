class SignupModel {
  bool? status;
  Output? output;

  SignupModel({this.status, this.output});

  SignupModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    output =
        json['output'] != null ? new Output.fromJson(json['output']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.output != null) {
      data['output'] = this.output!.toJson();
    }
    return data;
  }
}

class Output {
  String? status;
  String? role;
  String? sId;
  String? name;
  int? phonenum;
  String? address;
  String? emailid;
  String? password;
  int? iV;

  Output(
      {this.status,
      this.role,
      this.sId,
      this.name,
      this.phonenum,
      this.address,
      this.emailid,
      this.password,
      this.iV});

  Output.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    role = json['role'];
    sId = json['_id'];
    name = json['name'];
    phonenum = json['phonenum'];
    address = json['address'];
    emailid = json['emailid'];
    password = json['password'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['role'] = this.role;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['phonenum'] = this.phonenum;
    data['address'] = this.address;
    data['emailid'] = this.emailid;
    data['password'] = this.password;
    data['__v'] = this.iV;
    return data;
  }
}