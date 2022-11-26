class Model {
  String? message;
  List<Data>? data;

  Model({this.message, this.data});

  Model.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? imgproduct;
  String? productname;
  int? rate;
  String? decription;
  String? shortDescription;
  int? harga;

  Data(
      {this.id,
      this.imgproduct,
      this.productname,
      this.rate,
      this.decription,
      this.shortDescription,
      this.harga});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    imgproduct = json['imgproduct'];
    productname = json['productname'] as String;
    rate = json['rate'] as int;
    decription = json['decription'] as String;
    shortDescription = json['ShortDescription'];
    harga = json['harga'] as int;
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imgproduct': imgproduct,
      'productname': productname,
      'rate': rate,
      'decription': decription,
      'ShortDescription': shortDescription,
      'harga': harga
    };
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imgproduct'] = this.imgproduct;
    data['productname'] = this.productname;
    data['rate'] = this.rate;
    data['decription'] = this.decription;
    data['ShortDescription'] = this.shortDescription;
    data['harga'] = this.harga;
    return data;
  }
}
