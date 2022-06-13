import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:a12/Dashboard/menu.dart';

class search extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const search({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: Container(
      padding: EdgeInsets.all(12),
      color: Color(0xFFf67280),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(10, 5)),
                        ],
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                            fontFamily: 'Alata'),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            prefixIcon: Icon(Icons.search,
                                size: 30, color: Colors.black87),
                            hintText: 'Mau makan apa hari ini?',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 77, 73, 73),
                              fontFamily: 'Alata',
                            )),
                      ),
                    )
                  ],
                )),
          ]),
    ));
  }
}
