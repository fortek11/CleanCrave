import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          child: Container(
              height: 40,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(242, 246, 251, 1.000))),
          height: 40,
        ),
        Text(
          'SHOP',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(43, 15, 106, 1),
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Get the Best Nicotine Meds',
          style: TextStyle(fontSize: 19),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 4,
            child: InkWell(
              splashColor: Colors.black,
              onTap: () {},
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        child: Image.network(
                          'https://cdn01.pharmeasy.in/dam/products_otc/E62855/stop-nic-2mg-nicotine-gums-5-blister-pack-box-of-50-s-2-1641788619.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.black.withOpacity(0),
                              Colors.black.withOpacity(0.7),
                            ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      ),
                      Positioned(
                          bottom: 15,
                          left: 10,
                          right: 10,
                          child: Text(
                            'Nicotine Gums',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '800/-',
                              style: TextStyle(fontSize: 19),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.work),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('Gums')
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 246, 251, 1.000))),
                    height: 20,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        child: Image.network(
                          'https://cdn01.pharmeasy.in/dam/products_otc/E62855/stop-nic-2mg-nicotine-gums-5-blister-pack-box-of-50-s-2-1641788619.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.black.withOpacity(0),
                              Colors.black.withOpacity(0.7),
                            ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      ),
                      Positioned(
                          bottom: 15,
                          left: 10,
                          right: 10,
                          child: Text(
                            'Nicotine Gums',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '800/-',
                              style: TextStyle(fontSize: 19),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.work),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('Gums')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          child: Container(
              height: 20,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(242, 246, 251, 1.000))),
          height: 20,
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.network(
                'https://cdn01.pharmeasy.in/dam/products_otc/E62855/stop-nic-2mg-nicotine-gums-5-blister-pack-box-of-50-s-2-1641788619.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.7),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Positioned(
                bottom: 15,
                left: 10,
                right: 10,
                child: Text(
                  'Nicotine Gums',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(Icons.currency_rupee),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '800/-',
                    style: TextStyle(fontSize: 19),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.work),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('Gums')
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
