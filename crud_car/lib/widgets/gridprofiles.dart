import 'package:crud_car/datas/datas.dart';
import 'package:crud_car/screens/detailpage.dart';
import 'package:flutter/material.dart';

class GridProfiles extends StatefulWidget {
  const GridProfiles({
    Key? key,
  }) : super(key: key);

  @override
  State<GridProfiles> createState() => _GridProfilesState();
}

class _GridProfilesState extends State<GridProfiles> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0,
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: listDataCewe.length,
        itemBuilder: (context, index) {
          final cewe = listDataCewe[index];
          return InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => DetailPage(index: index))),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(cewe.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        listDataCewe.removeAt(index);
                      });
                    },
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black54),
                          ),
                          Center(
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
