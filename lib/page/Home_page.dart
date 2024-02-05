import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: const Text('Messages', style: TextStyle(color: Colors.black)),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.lightBlue,
              height: 150,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.lightBlue,
                    child: Image.asset(
                      'assets/images/im_profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                   Text('Sohiba',
                      style: TextStyle(color: Colors.white)),
                   Text("sohiba@gmail.com",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Home')
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                   width: 20,
                  ),
                  Text('Profile')
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(Icons.people),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Aboutus ')
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(Icons.call_sharp),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Calls")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Setting")
                ],
              ),
            ),
            ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.grey,
            child: const Center(
              child: Text(
                'Home Page',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ),
          ListView(
            children: [
              _itemList(image: "assets/images/im_profile.png", name: "Laurent", time: "20:18", message: "I love that idea, it\'s great!"),
              _itemList(image: "assets/images/im_profile.png", name: "Claire", time: "14:34", message: "I wasn\'t aware of that. Let me check"),
              _itemList(image: "assets/images/im_profile.png", name: "Joe", time: "19:22", message: "I love that idea, it\'s great!"),
              _itemList(image: "assets/images/im_profile.png", name: "Mark", time: "14:34", message: "I wasn\'t aware of that. Let me check"),
              _itemList(image: "assets/images/im_profile.png", name: "Laurent", time: "20:18", message: "How about meeting tomorrow?"),
              _itemList(image: "assets/images/im_profile.png", name: "Tracy", time: "19:22", message: "I love that idea, it\'s great!"),
              _itemList(image: "assets/images/im_profile.png", name: "Claire", time: "14:34", message: "I wasn\'t aware of that. Let me check"),
              _itemList(image: "assets/images/im_profile.png", name: "Laurent", time: "20:18", message: "How about meeting tomorrow?"),
              _itemList(image: "assets/images/im_profile.png", name: "Laurent", time: "20:18", message: "I love that idea, it\'s great!"),
              _itemList(image: "assets/images/im_profile.png", name: "Claire", time: "14:34", message: "I wasn\'t aware of that. Let me check"),
              _itemList(image: "assets/images/im_profile.png", name: "Joe", time: "19:22", message: "I love that idea, it\'s great!"),
              _itemList(image: "assets/images/im_profile.png", name: "Mark", time: "14:34", message: "I wasn\'t aware of that. Let me check"),
              _itemList(image: "assets/images/im_profile.png", name: "Laurent", time: "20:18", message: "How about meeting tomorrow?"),
              _itemList(image: "assets/images/im_profile.png", name: "Tracy", time: "19:22", message: "I love that idea, it\'s great!"),
              _itemList(image: "assets/images/im_profile.png", name: "Claire", time: "14:34", message: "I wasn\'t aware of that. Let me check"),
              _itemList(image: "assets/images/im_profile.png", name: "Laurent", time: "20:18", message: "How about meeting tomorrow?"),


            ],
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Video',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Notification',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: 'Video'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
        ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController!.animateToPage(index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.ease);
          });
        },
      ),
    );
  }
}

Widget _itemList({image, name, time, message}) {
  return Column(
    children: [
      Container(
        //color: Colors.red,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image(
              height: 50,
              width: 50,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
            SizedBox(width:15),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 20),
                        Text(time, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),

                      ],
                    ),
                   Text(message )
                  ],
                )
            ),

          ],
        ),
      ),
      Container(height: 0.5, color: Colors.blue),
    ],
  );
}
