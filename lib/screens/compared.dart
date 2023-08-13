import 'package:flutter/material.dart';
import 'package:world_car/models/car.dart';

class Compared extends StatefulWidget {
  const Compared({
    super.key,
    required this.assortment,
  });

  final Assortment assortment;

  @override
  State<Compared> createState() => _ComparedState();
}

class _ComparedState extends State<Compared> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        if (widget.assortment.carImage.isNotEmpty)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              widget.assortment.carImage,
                              scale: 5,
                            ),
                          ),
                        Text(
                          widget.assortment.carName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            widget.assortment.carImage,
                            scale: 5,
                          ),
                        ),
                        Text(
                          widget.assortment.carName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  maxRadius: 15,
                  child: Text('VS'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.assortment.details.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.assortment.details[index].detailInfo,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.assortment.details[index].detailName
                                  .replaceAll(":", ""),
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                            Text(
                              widget.assortment.details[index].detailInfo,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        thickness: 1,
                        color: Color(0x73FFFFFF),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
