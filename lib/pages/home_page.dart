import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Nome:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Cintia Cassia Reis Braulino",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Email:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "cintiabraulino@gmail.com",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "GitHub:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "https://github.com/CintiaBraulino",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Endereço:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Maracanaú - CE - Brasil",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Formação:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Estudante - Engenharia de Computação",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              Text(
                "Universidade Federal do Ceará",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Colors.purpleAccent,
                height: 15,
              ),
              Text(
                "Hobbies:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Ler, escutar Musica, Sair com amigos, Estudar ...",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ));
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 250);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        color: Colors.deepPurple[300],
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                const Text(
                  "Meu Portfólio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 90,
                      height: 90,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/eu.png'),
                          )),
                    ),
                    const Text(
                      "Cintia Braulino",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      "28 anos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      "Linguagens mais usadas:",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/js.png',
                          width: 40,
                          height: 40,
                        ),
                        Image.asset(
                          'assets/icons/java.png',
                          width: 40,
                          height: 40,
                        ),
                        Image.asset(
                          'assets/icons/ts.png',
                          width: 40,
                          height: 40,
                        ),
                        Image.asset(
                          'assets/icons/node.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/flutter.png',
                          width: 40,
                          height: 40,
                        ),
                        Image.asset(
                          'assets/icons/html.png',
                          width: 40,
                          height: 40,
                        ),
                        Image.asset(
                          'assets/icons/css.png',
                          width: 40,
                          height: 40,
                        ),
                        Image.asset(
                          'assets/icons/angular.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomePageDesign extends StatefulWidget {
  const HomePageDesign({Key? key}) : super(key: key);

  @override
  State<HomePageDesign> createState() => _HomePageDesignState();
}

class _HomePageDesignState extends State<HomePageDesign> {
  @override
  void initState() {
    //manter o app em fullscreen
    super.initState();

    // ignore: deprecated_member_use
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: " Meu Perfil",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// o custom clip da esse efeito lateral
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();

    p.lineTo(0, size.height - 70);
    p.lineTo(size.width, size.height);

    p.lineTo(size.width, 0);

    p.close();

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; //pq é estatico não sofre alterações
  }
}
