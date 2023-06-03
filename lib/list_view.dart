import 'package:flutter/material.dart';
import 'package:list_view/list_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              "Sample List View",
              style: TextStyle(fontSize: 25),
            ),
          ),
          toolbarHeight: 80.0,
        ),
        body: ListView.separated(
          itemBuilder: (constex, index) {
            return ListTile(
              title: Text('Apple $index'),
              subtitle: const Text('Good and tasty apple'),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue[700],
                backgroundImage: const AssetImage('assets/Images/AppleImg.jpg'),
              ),
              trailing: Text(
                "Rs: 1$index:00",
                style: const TextStyle(color: Colors.green),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return details_page(name: "Apple $index");
                    },
                  ),
                );
              },
            );
          },
          separatorBuilder: (constex, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemCount: 30,
        ));
  }
}
