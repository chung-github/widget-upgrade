import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'GÓI',
            style: TextStyle(color: Color(0xff16447f), fontWeight: FontWeight.w600),
          ),
        ),
        DataColumn(
          label: Text(
            'BASIC',
            style: TextStyle(color: Color(0xff16447f), fontWeight: FontWeight.w600),
          ),
        ),
        DataColumn(
          label: Text(
            'F2',
            style: TextStyle(color: Color(0xff16447f), fontWeight: FontWeight.w600),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Xu hướng thị trường')),
            DataCell(Icon(Icons.done, color: Colors.green, size: 20,)),
            DataCell(Icon(Icons.done, color: Colors.green, size: 20,)),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Dòng tiền trên thị trường')),
            DataCell(Icon(Icons.done, color: Colors.green, size: 20,)),
            DataCell(Icon(Icons.done, color: Colors.green, size: 20,)),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Top tín hiệu cổ phiếu nổi bật')),
            DataCell(Text('Giới hạn')),
            DataCell(Icon(Icons.done, color: Colors.green, size: 20,)),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Top tín hiệu ngành nổi bật')),
            DataCell(Text('Giới hạn')),
            DataCell(Icon(Icons.done, color: Colors.green, size: 20,)),
          ],
        ),
      ],
    );
  }
}

