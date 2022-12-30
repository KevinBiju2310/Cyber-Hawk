import 'package:sample/data/webclient.dart';
import 'package:connectivity/connectivity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sample/model/signupmodel.dart';

class Repository {
  Future<SignupModel> checkPhoneNumber(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final SignupModel userModel = SignupModel.fromJson(response);
    return userModel;
  }

  Future<SignupModel> generateOtp(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final SignupModel generateOtpModel =
        SignupModel.fromJson(response);
    return generateOtpModel;
  }

  Future<SignupModel> loginWithOtp({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final SignupModel loginModel = SignupModel.fromJson(response);
    return loginModel;
  }
}
