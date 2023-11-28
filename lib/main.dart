import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// fungsi membuat tombol
Column createButton(String label, IconData icon) {
  return Column(
    children: [
      Icon(
        icon,
        size: 35,
        color: Colors.blue,
      ),
      Container(
        // mengatur jarak teks dengan icon diatasnya
        padding: const EdgeInsets.only(top: 10),
        child: Text(label),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // variabel gambar
    Widget expanded = Expanded(
      child: Image.asset(
        'images/spaghetti.png',
        height: 250,
      ),
    );

// variabel judul
    Widget titleSection = Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Spaghetti Bolognese',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 25,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );

    // variabel review1
    Widget review1Section = Container(
      // mengatur jarak dari kiri, atas, kanan, bawah
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/pic.jpg'),
              radius: 20,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'inikiming',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Al dente! Enak!'),
              ],
            ),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.grey,
          ),
        ],
      ),
    );

    // variabel review 2
    Widget review2Section = Container(
      // mengatur jarak dari semua sisi
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/pic.jpg'),
              radius: 20,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'horanghae',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Enak!'),
              ],
            ),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
        ],
      ),
    );

    // variabel review 3
    Widget review3Section = Container(
      // mengatur jarak dari semua sisi
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/pic.jpg'),
              radius: 20,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'shinggibanggi',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Rasanya ga sesuai selera'),
              ],
            ),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.grey,
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.grey,
          ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Recipes'),
          ),
        ),
        body: ListView(
          children: [
            //gambar,
            expanded,
            //judul,
            titleSection,
            //review1,
            review1Section,
            //review2,
            review2Section,
            //review3,
            review3Section,
            SizedBox(
              height: 200,
            )
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text("Home Page"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings Page"),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Recipes"),
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
