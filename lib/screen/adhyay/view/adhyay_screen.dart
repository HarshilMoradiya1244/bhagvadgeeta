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
    HomeModel l1 = ModalRoute.of(context)!.settings.arguments as HomeModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(l1.title),
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: RadioListTile(
                    value: "Gujarati",
                    groupValue: providerw!.language,
                    onChanged: (value) {
                      providerw!.setLanguage(value.toString());
                    },
                    title: const Text("Gujarati"),
                  ),
                ),
                PopupMenuItem(
                  child: RadioListTile(
                    value: "Hindi",
                    groupValue: providerw!.language,
                    onChanged: (value) {
                      providerw!.setLanguage(value.toString());
                    },
                    title: const Text("Hindi"),
                  ),
                ),
                PopupMenuItem(
                  child: RadioListTile(
                    value: "English",
                    groupValue: providerw!.language,
                    onChanged: (value) {
                      providerw!.setLanguage(value.toString());
                    },
                    title: const Text("English"),
                  ),
                ),
              ];
            },)

          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.network(
                  l1.url,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 25),
                providerr!.language=='Gujarati'?Text(l1.meaning, style: const TextStyle(fontSize: 20))
                        :providerr!.language=='Hindi'?Text(l1.hindi, style: const TextStyle(fontSize: 20)):
                 Text(l1.english, style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
