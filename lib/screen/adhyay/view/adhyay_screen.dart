import 'package:bhagvatgeeta/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class AdhyayScreen extends StatefulWidget {
  const AdhyayScreen({super.key});

  @override
  State<AdhyayScreen> createState() => _AdhyayScreenState();
}

class _AdhyayScreenState extends State<AdhyayScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    HomeModel l1 = ModalRoute
        .of(context)!
        .settings
        .arguments as HomeModel;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),),
        title: Text(l1.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
             Image.asset(
            "assets/images/img1.jpg",
            height: 200,
               width: 200,
          ),
              const SizedBox(height: 25),
              Text(l1.meaning,
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium),
              const SizedBox(height: 30),
              Text(l1.hindi,
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium),
              const SizedBox(height: 30),
              Text(l1.english,
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
