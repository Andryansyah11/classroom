import 'package:classroom/widgets/appbar.dart';
import 'package:classroom/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String teacher;
  final String image;

  DetailPage({
    required this.title,
    required this.description,
    required this.teacher,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // Background semi-transparan untuk judul dan penjelasan
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Daftar tugas atau item lainnya
            Card(
              child: ListTile(
                leading: Icon(Icons.assignment, color: Colors.blue),
                title: Text('New assignment: Membaca teks berita'),
                subtitle: Text('4 Sept'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.assignment, color: Colors.blue),
                title: Text('New assignment: Proyek Pembuatan Poster'),
                subtitle: Text('28 Aug'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
