import 'package:classroom/widgets/appbar.dart';
import 'package:flutter/material.dart';
import '../controller/classroom_controller.dart';
import 'detail_screen.dart';

class Classroom extends StatefulWidget {
  Classroom({super.key});

  @override
  State<Classroom> createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  ClassroomController roomclass = ClassroomController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.all(3),
            itemCount: roomclass.classroom.length,
            itemBuilder: (context, index) {
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          title: roomclass.classroom[index].title,
                          description: roomclass.classroom[index].deskripsi,
                          teacher: roomclass.classroom[index].guru,
                          image: roomclass.classroom[index].image,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(roomclass.classroom[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text(
                            roomclass.classroom[index].title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.white),)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            roomclass.classroom[index].deskripsi,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          SizedBox(height: 15),
                          Text(
                            roomclass.classroom[index].guru,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 50,
            right: 25,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: IconButton(
                icon: Icon(Icons.add, color: Colors.white),
                onPressed: () {
                  // Tambahkan aksi ketika tombol "+" ditekan
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
