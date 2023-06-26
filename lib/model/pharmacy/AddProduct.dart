class AddProductModel {
  AddProductModel({
      this.status, 
      this.errNum, 
      this.msg,
      this.pharmacy_id,
      this.name,
      this.description,
      this.details,
      this.price,
      this.amount
  });

  AddProductModel.fromJson(dynamic json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    pharmacy_id = json['pharmacy_id'];
    name = json['name'];
    description = json['description'];
    details = json['details'];
    price = json['price'];
    amount = json['amount'];
  }
  bool? status;
  String? errNum;
  String? msg;
  int? pharmacy_id;
  String? name;
  String? description;
  String? details;
  String? price;
  String? amount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errNum'] = errNum;
    map['msg'] = msg;
    map['pharmacy_id'] = pharmacy_id;
    map['name'] = name;
    map['description'] = description;
    map['details'] = details;
    map['price'] = price;
    map['amount'] = amount;
    return map;
  }

}