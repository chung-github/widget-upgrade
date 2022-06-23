class UpgradePackage {
  String? promotion;
  int? price;
  String? month;
  String? note;

  UpgradePackage({this.promotion, this.price, this.month, this.note});

  UpgradePackage.fromJson(Map<String, dynamic> json) {
    promotion = json['promotion'];
    price = json['price'];
    month = json['month'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['promotion'] = promotion;
    data['price'] = price;
    data['month'] = month;
    data['note'] = note;
    return data;
  }
}