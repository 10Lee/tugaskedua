import 'package:crud_car/models/cewe_model.dart';
import 'package:crud_car/screens/screens.dart';
import 'package:flutter/material.dart';

import 'package:crud_car/datas/datacewe.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  final int index;

  DetailPage({required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: listDataCewe.length,
        itemBuilder: (context, index) {
          final indexData = listDataCewe[index];
          return Container(
            color: Colors.black,
            child: Column(
              children: [
                Image.network(
                  indexData.imageUrl,
                  width: double.infinity,
                  height: 600.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${indexData.name}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 100.0),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text(
                                  'Update',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                listDataCewe.removeAt(index);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => MasterPage()));
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "${indexData.age} Tahun",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        '${indexData.description}',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Geser ke kanan untuk profile berikutnya ➤➤➤',
                        style: TextStyle(color: Colors.orangeAccent),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
