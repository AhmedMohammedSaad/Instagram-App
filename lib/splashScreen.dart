import 'package:flutter/material.dart';
import 'package:instegrm_app/models/datat.dart';

class InstaScreen extends StatefulWidget {
  const InstaScreen({super.key});

  @override
  State<InstaScreen> createState() => _InstaScreenState();
}

class _InstaScreenState extends State<InstaScreen> {
  List<ModelApp> listModel = getlistmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'instgram',
                      style: TextStyle(
                        fontFamily: 'font1',
                        fontSize: 50,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.message_outlined,
                      size: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: images.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, itaem) {
                  return Padding(
                    padding: EdgeInsets.all(4),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('assets/images/Instagram1.png'),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 38,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(images[itaem]),
                          radius: 34,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: listModel.length,
                shrinkWrap: true,
                itemBuilder: (context, itaem) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
                            trailing: const Icon(
                              Icons.more_vert_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                            subtitle: const Text('AhmedSaad@gmail.come'),
                            title: Text(
                              listModel[itaem].name,
                              style: const TextStyle(color: Colors.white),
                            ),
                            leading: Padding(
                                padding: EdgeInsets.all(1),
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 34,
                                      backgroundImage: const AssetImage(
                                          'assets/images/Instagram1.png'),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 25,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              listModel[itaem].image),
                                          radius: 20,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      bottom: 3,
                                      right: 2,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 11,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Color.fromARGB(255, 13, 220, 54),
                                          radius: 8,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          Container(
                            width: double.infinity,
                            height: 400,
                            child: Image(
                              image: AssetImage(
                                listModel[itaem].image,
                              ),
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.favorite_border,
                                size: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.message_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.send_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              Spacer(),
                              Icon(
                                Icons.bookmark_outline_rounded,
                                size: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(right: 220, top: 10),
                            child: Text(
                              '1244,12 likes',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
