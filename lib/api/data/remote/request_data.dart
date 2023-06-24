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
    var response = await crud.postRequest(
        '${AppLink.baseUrl}/${AppLink.endPointCreateCenterUrl}',
        headers,
        map!.toJson());
    return response.fold((l) => l, (r) => r);
  }
}
