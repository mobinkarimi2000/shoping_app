import 'package:flutter/material.dart';
import 'package:shoping_app/screens/edit_screen.dart';

class UserProductList extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  UserProductList(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(EditProductScreen.routeName, arguments: id);
              },
              icon: const Icon(Icons.edit_rounded),
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Theme.of(context).errorColor,
            ),
          ],
        ),
      ),
    );
  }
}