

// ignore_for_file: avoid_print

import 'package:Medicalty/api/class/crud.dart';
import 'package:Medicalty/model/create_center/center_body_model.dart';

class RequestData {
  Crud crud;
  RequestData(this.crud);

  Map<String, String>? headers = {
    'Content-Type': 'application/json',
    
  };

  postCreateCenterData(CenterBody? map) async {
    print('postCreateCenterData==============================');
    var response = await crud.postRequest(
        'http://medicalty.space/api/center/save',
        headers,
        map!.toJson());
        print('=============== response : $response');
    return response.fold((l) => l, (r) => r);
  }
}
