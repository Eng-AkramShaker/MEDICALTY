// ignore_for_file: non_constant_identifier_names

class ApiLinks {
  static String loginAdmin = "$baseUrl/api/center/admin/login";
  static const String baseUrl = 'http://medicalty.space';
  static const String endPointCreateCenterUrl = 'api/center/save';

  static String insuranceUrl =
      '$baseUrl/api/center/admin/insuranceCompany/save';

  static String RegisterPharmacyUrl = '$baseUrl/api/pharmacy/register';

  static String LaboratoryUrl = '$baseUrl/api/lab/register';

  static String addProductsPharmacyUrl = '$baseUrl/api/pharmacy/addProduct';
}
