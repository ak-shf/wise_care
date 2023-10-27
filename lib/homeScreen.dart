import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<HomeScreen> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.black,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 20,
                  ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome Senior!',
                style: GoogleFonts.aoboshiOne(fontSize: 35, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 250,
                  // color: Colors.white,
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://ecisveep.nic.in/uploads/monthly_2019_04/large_11.jpeg.f21233e50ec9c583c06aaf1ffc98e30f.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
    
                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://www.kudumbashree.org/storage/photos/large/7uh0t-hbr3n.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
    
                          //3rd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://keralakaumudi.com/web-news/en/2022/11/NMAN0376789/image/kk.1669835167.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
    
                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://wan-ifra.org/wp-content/uploads/2020/03/manorama.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
    
                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://www.chavaramatrimony.com/webphotos2010/manorama-pic11lg.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(aspectRatio: 16 / 10),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Color.fromARGB(255, 63, 63, 63)),
                // color: Color.fromARGB(255, 63, 63, 63),
                child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(minHeight: 384.0, minWidth: 420
                            // maxHeight: 60.0,
                            ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        StrokeText(
                          text: 'Explore Our Services',
                          strokeWidth: 2,
                          textStyle: GoogleFonts.aleo(fontSize: 30),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: sized_box_for_whitespace
                            SizedBox(width: 100,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(
                              height: 15,
                              width: 15,
                              child: const Icon(
                                Icons.heart_broken,
                              ),
                            ),
                            const Text('Healthcare')],),)
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}