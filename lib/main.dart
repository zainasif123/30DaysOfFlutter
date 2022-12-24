import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.loraTextTheme(),
        brightness: Brightness.light,
        // primaryColor: Colors.green,
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/screen1",
      routes: {
        "/": (context) => zain(),
        "/screen1": (context) => loginpage(),
        "/screen2": (context) => homePage(),
      },
    );
  }
}

class zain extends StatelessWidget {
  const zain({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("zain"),
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          child: Text(
            "zain $days",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
            textScaleFactor: 3,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "./assets/images/1.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "UserName", hintText: "Enter Your Username"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password", hintText: "Enter Your Password"),
                ),
                ElevatedButton(
                    onPressed: (() => {print("hi zain")}),
                    child: Text("Log in"))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Home"),
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          child: Text('homepage'),
        ),
      ),
    );
  }
}


// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "BizCard",
//         ),
//       ),
//       body: Container(
//         color: const Color.fromARGB(255, 112, 219, 144),
//         alignment: Alignment.center,
//         child: Stack(
//           alignment: Alignment.topCenter,
//           children: <Widget>[
//             //Text("Hello  Zain"),
//             getmethod(),
//             getavator()

//           ],
//         ),
//       ),
//     );
//   }

//   Container getavator() {
//     return Container(
//       width: 100,
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.all(Radius.circular(50.0)),
//         border: Border.all(color: Colors.redAccent, width: 1.2),
//         image: const DecorationImage(
//             image: NetworkImage("https://picsum.photos/200/300"),
//             fit: BoxFit.cover),
//       ),
//     );
//   }

//   getmethod() {
//     return Container(
//       width: 350,
//       height: 200,
//       margin: const EdgeInsets.all(50),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 138, 243, 229),
//         borderRadius: BorderRadius.circular(14.0),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text(
//             "Zain Asif",
//             style: TextStyle(
//               color: Color.fromARGB(255, 196, 196, 196),
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               fontStyle: FontStyle.italic,
//             ),
//           ),
//           const Text(
//             "mzainasif@gmail.com",
//             style: TextStyle(
//               color: Color.fromARGB(255, 196, 196, 196),
//               fontSize: 15,
//               fontWeight: FontWeight.bold,
//               fontStyle: FontStyle.italic,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const <Widget>[
//               Icon(Icons.person_outline),
//               Text(
//                 "T:@buildapps",
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 196, 196, 196),
//                   fontSize: 17,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.italic,
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

