import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int idx = 0;
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok: 29',
            ),
            const Text(
              'Mhs 1:  2209489, Rakha Dhifiargo Hariadi',
            ),
            const Text(
              'Mhs 2:  2204524, Jason Rafif Pangestu Suryoatmojo',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  Widget soalNo1() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            top: 90,
            right: 30,
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Budi Martami",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/image/profile_picture.jpg'),
                    radius: 30,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ubah Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7.0),
                    TextFormField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        labelText: 'Nama Depan',
                      ),
                    ),
                    const SizedBox(height: 7),
                    TextFormField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        labelText: 'Nama Belakang',
                      ),
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Gender",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                value: "Perempuan",
                                items: const [
                                  DropdownMenuItem(
                                    value: "Laki-Laki",
                                    child: Text("Laki-Laki"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Perempuan",
                                    child: Text("Perempuan"),
                                  ),
                                ],
                                onChanged: (value) {
                                  // handle gender selection
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Tanggal Lahir",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 7),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            vertical: 12,
                                            horizontal: 16,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        // show date picker dialog
                                      },
                                      icon: const Icon(Icons.calendar_today),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        labelText: 'Alamat',
                      ),
                    ),
                    const SizedBox(height: 130.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Text(
                            'Simpan',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  //jaawaban no 2
  Widget soalNo2() 
  {
    // jika menunya banyak, memakai scrollview
    List<Map> data1 = 
    [
      {"icon": Icons.storefront, "text": "Official Store", "color": Colors.black},
      {"icon": Icons.local_fire_department, "text": "Hot Deal", "color": const Color.fromARGB(255, 225, 80, 65)},
      {"icon": Icons.checkroom, "text": "Fashion", "color": Colors.black},
      {"icon": Icons.face_retouching_natural, "text": "Kosmetik", "color": Colors.black},
    ];

    List<Image> carouselItems = 
    [
	    Image.network('https://picsum.photos/id/10/500/200'),
	    Image.network('https://picsum.photos/id/11/500/200'),
	    Image.network('https://picsum.photos/id/22/500/200'),
    ];


    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView
      (
        child: Column
        (
          children: 
          [
            Container
            (
              height: 200,
              decoration: const BoxDecoration
              (
                image: DecorationImage
                (
                  image: NetworkImage('https://fastly.picsum.photos/id/490/300/200.jpg?hmac=qP4A6IEEMybCfSE3tHSANZ1gfuNT74WOY6KEe9sVMXE'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column
              (
                children: 
                [
                  Padding
                  (
                    padding: const EdgeInsets.all(20.0),
                    child: Row
                    (
                      children: 
                      [
                        Expanded
                        (
                          flex: 3,
                          child: TextField
                          (
                            decoration: InputDecoration
                            (
                              prefixIcon: const Icon(Icons.search),
                              hintText: "Cari barang di Tokoo",
                              border: OutlineInputBorder
                              (
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ), 
                              filled: true,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Row
                        (
                          children: 
                          [
                            Container
                            (
                              width: 40,
                              padding: const EdgeInsets.all(8),
                              child: const Icon
                              (
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                            Container
                            (
                              width: 40,
                              padding: const EdgeInsets.all(8),
                              child: const Icon
                              (
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                            Container
                            (
                              width: 40,
                              padding: const EdgeInsets.all(8),
                              child: const Icon
                              (
                                Icons.chat,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding
            (
              padding: const EdgeInsets.all(10.0),
              child: Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  const Text
                  (
                    "Halo, Budi!",
                    style: TextStyle
                    (
                      fontSize: 20
                    ),
                  ),
                  Padding
                  (
                    padding: const EdgeInsets.all(30.0),
                    child: Column
                    (
                      children: 
                      [
                        Container
                        (
                          // bisa diaktifkan jika ingin containernya tidak stretch
                          // width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration
                          (
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(),
                            color: const Color.fromARGB(255, 235, 230, 235)
                          ),
                          child: Padding
                          (
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row
                            (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: 
                              [
                                const SizedBox(height: 0), // agar di tengah
                                Row
                                (
                                  children:  
                                  [
                                    Container
                                    (
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon
                                      (
                                        Icons.wallet,
                                        color: Color.fromARGB(255, 115, 85, 70),
                                        // size: 20,
                                      ),
                                    ),
                                    const Text
                                    (
                                      "Store\nCredit\nRp. 0",
                                      style: TextStyle
                                      (
                                        fontSize: 12
                                      ),
                                      textAlign: TextAlign.center
                                    ),
                                  ],
                                ),
                                Container
                                (
                                  width: 0.5,
                                  height: 40,
                                  color: Colors.black,
                                ),
                                Row
                                (
                                  children: 
                                  [
                                    Container
                                    (
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon
                                      (
                                        Icons.loyalty_outlined,
                                        color: Color.fromARGB(255, 115, 85, 70),
                                        // size: 20,
                                      ),
                                    ),
                                    const Text
                                    (
                                      "Reward\nPoint\n100 Point",
                                      style: TextStyle
                                      (
                                        fontSize: 12
                                      ),
                                      textAlign: TextAlign.center
                                    ),
                                  ],
                                ),
                                Container
                                (
                                  width: 0.5,
                                  height: 40,
                                  color: Colors.black,
                                ),
                                Row
                                (
                                  children: 
                                  [
                                    Container
                                    (
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon
                                      (
                                        Icons.confirmation_num,
                                        color: Color.fromARGB(255, 115, 85, 70),
                                        // size: 20,
                                      ),
                                    ),
                                    const Text
                                    (
                                      "Kupon\nSaya\n11 Kupon",
                                      style: TextStyle
                                      (
                                        fontSize: 12
                                      ),
                                      textAlign: TextAlign.center
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 0), // agar di tengah
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView
                        (
                          child: Container
                          (
                            // width: data1.length * 100,
                            // decoration: BoxDecoration
                            // (
                            //   borderRadius: BorderRadius.circular(6),
                            //   border: Border.all(),
                            //   color: const Color.fromARGB(255, 235, 230, 235)
                            // ),
                            height: 100,
                            child: Builder
                            (
                              builder: (context)
                              {
                                return ListView.builder
                                (
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data1.length,
                                  itemBuilder: (context, index)
                                  {
                                    var item = data1[index];
                                    return Container
                                    (
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column
                                      (
                                        children: 
                                        [
                                          Container
                                          (
                                            padding: const EdgeInsets.all(8),
                                            child: Icon
                                            (
                                              item["icon"],
                                              size: 40,
                                              color: item["color"],
                                            ),
                                          ),
                                          Text
                                          (
                                            item["text"],
                                          ),
                                        ],
                                      )
                                    );
                                  }
                                );
                              }
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  CarouselSlider
                  (
                    items: carouselItems, 
                    options: CarouselOptions
                    (
                      height: 150,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                      initialPage: 2,
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar
      (
        currentIndex: idx,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 70, 65, 75),
        onTap: onItemTap,
        items: <BottomNavigationBarItem>
        [
          BottomNavigationBarItem
          (
            icon: Container
            (
              width: 50,
              decoration: BoxDecoration
              (
                color: const Color.fromARGB(255, 245, 195, 65),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.home),
            ), 
            label: 'Beranda',
            // activeIcon: const Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem
          (
            icon: const Icon(Icons.category),
            label: 'Kategori',
            activeIcon: Container
            (
              width: 50,
              decoration: BoxDecoration
              (
                color: const Color.fromARGB(255, 245, 195, 65),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.category),
            ),
          ),
          BottomNavigationBarItem
          (
            icon: const Icon(Icons.qr_code), 
            label: 'Scan',
            activeIcon: Container
            (
              width: 50,
              decoration: BoxDecoration
              (
                color: const Color.fromARGB(255, 245, 195, 65),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.qr_code),
            ),
          ),
          BottomNavigationBarItem
          (
            icon: const Icon(Icons.shopping_basket), 
            label: 'List Belanja',
            activeIcon: Container
            (
              width: 50,
              decoration: BoxDecoration
              (
                color: const Color.fromARGB(255, 245, 195, 65),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.shopping_basket),
            ),
          ),
          BottomNavigationBarItem
          (
            icon: const Icon(Icons.account_circle), 
            label: 'Akun',
            activeIcon: Container
            (
              width: 50,
              decoration: BoxDecoration
              (
                color: const Color.fromARGB(255, 245, 195, 65),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.account_circle),
            ),
          ),
        ]
      ),
    );
  }
}
