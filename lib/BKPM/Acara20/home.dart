import 'package:flutter/material.dart';
import 'package:flutter_project4/BKPM/Acara20/page/chat.dart';
import 'package:flutter_project4/BKPM/Acara20/page/dashboard.dart';
import 'package:flutter_project4/BKPM/Acara20/page/setting.dart';
import 'package:flutter_project4/BKPM/Acara20/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  int currentTab = 0;
  final List<Widget> Screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Setting()
  ];  
  
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context){
    return Scaffold(
    body: PageStorage(
      child: currentScreen,
      bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(//BUTTON DASHBOARD
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Dashboard();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          color: currentTab == 0 ? Colors.blue : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(//BUTTON CHAT
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Chat();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                          color: currentTab == 1 ? Colors.blue : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(//BUTTON PROFILE
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Profile();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: currentTab == 2 ? Colors.blue : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(//BUTTON SETTING
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Setting();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Setting',
                        style: TextStyle(
                          color: currentTab == 3 ? Colors.blue : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      ),
    );
  {
    return Container(
      child: Center(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),
        ),
      )
    );
  }
  }
}