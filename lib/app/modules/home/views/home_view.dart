import 'package:flutter_login_ui/app/modules/home/views/tabs/all_offers_screen.dart';
import 'package:flutter_login_ui/app/modules/home/views/tabs/gifts_screen.dart';
import 'package:flutter_login_ui/app/modules/home/views/tabs/my_offers_screen.dart';
import 'package:flutter_login_ui/app/modules/home/views/tabs/upcoming_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../pages/profile_page.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.green,
                title: const Text("Maur-Immobilier"),
                leading: const Icon(Icons.menu_sharp),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 1,
                                spreadRadius: 1),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfilePage()));
                            },
                            child: const Text(
                              "Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: const TabBar(indicatorColor: Colors.lightBlue, tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      child: Text(
                        "Accueil",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Tab(
                      icon: Icon(Icons.apartment, color: Colors.green),
                      child: Text(
                        "Propriétés",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Tab(
                      icon: Icon(Icons.group, color: Colors.orangeAccent),
                      child: Text(
                        "Partenaires",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Tab(
                      icon: Icon(Icons.construction,
                          color: Color.fromARGB(255, 200, 13, 233)),
                      child: Text(
                        "Ouvriers",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                  ]),
                ),
                const Expanded(
                  child: TabBarView(children: [
                    AllOffersScreen(),
                    Giftspagescreen(),
                    Upcomingpagecreen(),
                    myofferesscreen(),
                  ]),
                ),
              ],
            )),
      ),
    );
  }
}
