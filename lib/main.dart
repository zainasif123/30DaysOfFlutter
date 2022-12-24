import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp1/utils/routes.dart';

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
        //primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/screen1",
      routes: {
        "/": (context) => zain(),
        // "/screen1": (context) => loginpage(),
        // "/screen2": (context) => homePage(),
        Routes.Routelogin: (context) => loginpage(),
        Routes.RouteHome: (context) => homePage(),
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

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String _name = "";
  bool changebutton = false;
  final formkey = GlobalKey<FormState>();

  moveToHome() async {
    if (formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Routes.RouteHome);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset(
                "./assets/images/1.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $_name",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
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
                      validator: (value) {
                        if (value!.isEmpty) return "Username can not be empty";
                      },
                      decoration: InputDecoration(
                          labelText: "UserName",
                          hintText: "Enter Your Username"),
                      onChanged: ((value) {
                        setState(() {
                          _name = value;
                        });
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) return "Password can not be empty";
                        if (value.length < 6)
                          return "Password should be atleast of 6 ";
                      },
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Your Password"),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                    //     onPressed: (() =>
                    //         {Navigator.pushNamed(context, Routes.RouteHome)}),
                    //     child: Text(
                    //       "Log in",
                    //       style: TextStyle(
                    //           fontSize: 20, fontWeight: FontWeight.bold),
                    //     ))

                    Material(
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 6),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: () => moveToHome(),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 100,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              // shape:
                              //     changebutton ? BoxShape.circle : BoxShape.rectangle,

                              ),
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
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

