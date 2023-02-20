import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as root_bundle;
import 'package:marquee/marquee.dart';

import '../../../../../utils/assets_path.dart';
import '../../../../../utils/colors.dart';

class AllOffersScreen extends StatefulWidget {
  const AllOffersScreen({
   Key? key,
  }) : super(key: key);

  @override
  State<AllOffersScreen> createState() => _AllOffersScreenState();
}

class _AllOffersScreenState extends State<AllOffersScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: const Color.fromRGBO(241, 252, 255, 1),
          child: Column(children: [
            SizedBox(
              height: 50,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Marquee(
                    text:
                        "Faites nous confiance . Pour une meilleure expérience immobilière .",
                    style: const TextStyle(
                      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
                    ),
                    scrollAxis: Axis.horizontal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_city,
                    color: Colors.green,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Propriétés récentes",
                        style:
                            TextStyle(color: Color.fromRGBO(124, 124, 124, 1)),
                      )),
                ],
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.app_registration_sharp,
                  color: AppColors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 20),
                child: SizedBox(
                  height: 200,
                  //    child: Expanded(child: FutureBuilder()),
                ),
              ),
              Text(
                "Actions immobilières",
                style: TextStyle(fontSize: 16, color: AppColors.greylite),
              )
            ]),
          ])),
    );
  }
}
