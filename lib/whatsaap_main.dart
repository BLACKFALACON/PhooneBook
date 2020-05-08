import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls_page.dart';
import 'package:whatsapp/screens/camera_page.dart';
import 'package:whatsapp/screens/chats_page.dart';
import 'package:whatsapp/screens/status_page.dart';


class WhatsappMain extends StatefulWidget {
  @override
  _WhatsappMainState createState() => _WhatsappMainState();
}

class _WhatsappMainState extends State<WhatsappMain> with SingleTickerProviderStateMixin{

  TabController _tabController;
  bool _showMessage=true;
  
  @override
  void initState() {
    _tabController=TabController(vsync:this,length:4,initialIndex:1);
    _tabController.addListener(() {
      _showMessage=_tabController.index !=0;
      setState(() {});
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Whatsapp"),
      bottom: TabBar(
        controller: _tabController,
        tabs: <Widget>[
        Tab(icon:Icon(Icons.camera),),
        Tab(icon: Icon(Icons.chat),),
        Tab(icon: Icon(Icons.settings_backup_restore),),
        Tab(icon:Icon(Icons.phone),),
      ],
      ),     
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
      CameraPage(),
      ChatsPage(),
      StatusPage(),
      CallsPage(),
      ]
      ),
      floatingActionButton:_showMessage ? FloatingActionButton(//_showMessage Tru ise işlem yapılır.
        child:Icon(Icons.message),
        onPressed: (){},   
        ):null
    );
  }
}