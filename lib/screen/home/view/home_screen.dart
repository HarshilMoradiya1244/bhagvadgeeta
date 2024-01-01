import 'package:bhagvatgeeta/screen/home/model/home_model.dart';
import 'package:bhagvatgeeta/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/color.dart';
import '../../../utils/share_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;
  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getData();
  }
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BHAGAVAD GEETA ",
          ),
          actions: [
            Consumer<HomeProvider>(
              builder: (context, value, child) => Switch(
                value: value.isLight,
                onChanged: (value1) {
                  ShareHelper shr = ShareHelper();
                  shr.setTheme(value1);
                  value.changeThem();
                },
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount:providerw!.emptyList.length,
            itemBuilder: (context, index) {
            HomeModel geetaList = providerw!.emptyList[index];
            return ListTile(
            leading: Text(geetaList.title),
              onTap: (){
                Navigator.pushNamed(context, 'adhyay',arguments: geetaList);
              },
                        );
        },),
      ),
    );
  }
}
 /*Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           ListView.builder(
             itemCount: providerw!.emptyList.length,
             itemBuilder: (context, index) {
             return ListTile(
               title: Text("${providerw!.emptyList[index].title}"),
               subtitle: Text("${providerw!.emptyList[index].name}"),
             );
           },)
            ],
          ),*/