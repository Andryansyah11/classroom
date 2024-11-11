import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Row(
          children: [
          
        
         Text(
          'Google ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Classroom',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
          ]),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          SizedBox(width: 10),
          IconButton(
  onPressed: () {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
                onTap: () {
                  // Tambahkan aksi edit di sini
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
                onTap: () {
                  // Tambahkan aksi hapus di sini
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  },
  icon: Icon(Icons.more_horiz),
),
        ],
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
