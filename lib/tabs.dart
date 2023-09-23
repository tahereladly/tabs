import 'package:flutter/material.dart';
import 'package:untitled/Custome_AppBar.dart';
import 'package:untitled/Doctor.dart';
import 'package:untitled/Patient.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

int currentIndex = 0;
bool showTabBar = true;

class _HomePageBodyState extends State<HomePageBody> {

  @override


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 140,
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: showTabBar
              ? TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            unselectedLabelColor: const Color(0xff989898),
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color:  Colors.blue,
            ),
            tabs: const [
              Tab(text: 'Patient'),
              Tab(text: 'Doctor'),
            ],
          )
              : null,
        ),
        body: IndexedStack(
          index: currentIndex,
          children: const [
            TabBarView(
              children: [
                PatientScreen(),
                DoctorScreen(),

              ],
            ),
          ],
        ),
      ),
    );
  }

}
