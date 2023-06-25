import '../../../../model/center/center_body_model.dart';
import '../../../../utils/link_api.dart';
import '../../class/crud.dart';

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
    return response.fold((l) => l, (r) => r);
  }
}
