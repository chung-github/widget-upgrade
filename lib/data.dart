import 'package:my_app/upgrade_package_model.dart';

const rawData = [
  {
    "promotion": "",
    "price": 1999000,
    "month": "1 tháng",
    "note": "Mua gói F2 1 tháng"
  },
  {
    "promotion": "Giảm 3%",
    "price": 3499000,
    "month": "3 tháng",
    "note": "Mua gói F2 3 tháng"
  },
  {
    "promotion": "Giảm 20%",
    "price": 5799000,
    "month": "6 tháng",
    "note": "Mua gói F2 6 tháng"
  },
  {
    "promotion": "Giảm 24%",
    "price": 10799000,
    "month": "12 tháng",
    "note": "Mua gói F2 12 tháng"
  }
];

List<UpgradePackage> getUpgradePackages(){
  return (rawData)
      .map((data) => UpgradePackage.fromJson(data))
      .toList();
}