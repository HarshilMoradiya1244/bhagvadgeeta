import 'package:bhagvatgeeta/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';

class AdhyayScreen extends StatefulWidget {
  const AdhyayScreen({super.key});

  @override
  State<AdhyayScreen> createState() => _AdhyayScreenState();
}

class _AdhyayScreenState extends State<AdhyayScreen> {
  @override
  Widget build(BuildContext context) {

  HomeModel l1 = ModalRoute.of(context)!.settings.arguments as HomeModel;
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SelectableText(
              l1.meaning,
              style: Theme.of(context).textTheme.titleLarge,
              enableInteractiveSelection: true,
              contextMenuBuilder: (context, editableTextState) {
                return PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        value: 'copy',
                        child: Text('Copy'),
                      ),
                      const PopupMenuItem(
                        value: 'select',
                        child: Text('Select'),
                      ),
                    ];
                  },
                  onSelected: (value) {
                    if (value == 'copy') {
                    } else if (value == 'select') {}
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            Text(l1.meaning,
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 30),
            Text(l1.hindi,
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 30),
            Text(l1.english,
                style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    ),
    );
  }
}
