import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({super.key});

  final List<Map<String, dynamic>> filter = const [
    {'icon': Icons.phone_iphone, 'text': 'عطور'},
    {'icon': Icons.laptop, 'text': 'الهواتف'},
    {'icon': Icons.watch, 'text': 'الساعات الذكية'},
    {'icon': Icons.headset, 'text': 'سماعات الرأس'},
    {'icon': Icons.devices_other, 'text': 'الإلكترونيات'},
    {'icon': Icons.discount, 'text': 'العروض الخاصة'},
    {'icon': Icons.local_shipping, 'text': 'شحن مجاني'},
    {'icon': Icons.star, 'text': 'الأعلى تقييماً'},
    {'icon': Icons.price_change, 'text': 'السعر'},
    {'icon': Icons.category, 'text': 'الفئة'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filter.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(filter[index]['icon']),
                          SizedBox(width: 10),
                          Text(filter[index]['text']),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 203, 185, 235),
                  const Color.fromARGB(255, 154, 201, 235),
                ],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/imgi_235_pset001714478500.png',
                        width: 150,
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text(
                            'عطر رجالي',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              inherit: false,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            ' YUOعطر',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              inherit: false,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$12',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              inherit: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            104,
                            100,
                            114,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 50,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'التفاصيل',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            inherit: false,
                          ),
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'إضافة إلى السلة',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            inherit: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
