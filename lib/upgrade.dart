
import 'package:flutter/material.dart';
import 'package:my_app/data.dart';
import 'package:my_app/upgrade_package_model.dart';

Widget _generatePackageCard({required UpgradePackage package, required BuildContext context}) {
  Widget textPopup = Card(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: Colors.black54, width: 1),
      borderRadius: BorderRadius.circular(10),
    ),
    child: GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 16,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  const SizedBox(height: 20),
                  const Center(
                      child: Text(
                        'Xác nhận thông tin đăng ký',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )),
                  const SizedBox(height: 20),
                  contentPopup(package,context),
                ],
              ),
            );
          },
        );
      },
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: boxUpgrade(package)
      ),
    ),
  );
  return textPopup;
}

class UpgradeWidget extends StatelessWidget {
  const UpgradeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<UpgradePackage> packages = getUpgradePackages();
    List<Widget> textPopups = [];
    for (int i = 0; i < packages.length; i++) {
      textPopups.add(_generatePackageCard(package: packages[i], context: context));
    }

    return ListView(
      children: [
        Container(
          width: 600,
          height: 140,
          margin: const EdgeInsets.all(20),
          child: Image.asset(
            'images/lake.jpg',
            fit: BoxFit.cover,
          ),
        ),
        GridView.count(
          padding: const EdgeInsets.all(15),
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: textPopups
        ),
        const Center(
          child: Text('Bạn không thể nâng cấp tài khoản? Liên hệ'),
        )
      ],
    );
  }


}

Widget contentPopup(UpgradePackage upgradePackage, BuildContext context) {
  final int price = upgradePackage.price??=0;
  final String month = upgradePackage.month??='';
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Text('Gói đăng ký: $price'),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Text('Option: $month'),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: TextField(
          style: TextStyle(fontSize: 13),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            hintText: 'Nhập số điện thoại của bạn',
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: TextField(
          style: TextStyle(fontSize: 13),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            hintText: 'Nhập SĐT hoặc tên người giới thiệu',
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 138.0,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.indigo),
                        foregroundColor:
                        MaterialStateProperty.all(Colors.white),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(20))),
                    child: const Text('Đăng ký'),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 138.0,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                        MaterialStateProperty.all(Colors.black),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.black26,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10))),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(20))),
                    child: const Text('Hủy'),
                  ),
                ),
              ],
            ),
          )),
    ],
  );
}

Widget boxUpgrade(UpgradePackage upgradePackage){
  final String promotion = upgradePackage.promotion??='';
  final int price = upgradePackage.price??=0;
  final String month = upgradePackage.month??='';
  final String note = upgradePackage.note??='';
  return Center(
    child: ListView(
      children: <Widget>[
        Text(promotion),
        Text(price.toString()),
        Text(month),
        Text(note)
      ] ,
    ),
  );
}
