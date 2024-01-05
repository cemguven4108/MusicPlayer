import 'package:flutter/material.dart';
import 'package:music_player/models/enums/drawer_item.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: ListView.builder(
        itemCount: DrawerItem.values.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(DrawerItem.values[index].toIcon()),
                  horizontalTitleGap: 10,
                  trailing: const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.black26,
                  ),
                  title: Text(
                    DrawerItem.values[index].toString(),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 0.5,
                indent: size.width * 0.1,
                endIndent: size.width * 0.05,
              ),
            ],
          );
        },
      ),
    );
  }
}
