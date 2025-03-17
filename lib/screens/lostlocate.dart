import 'package:dbproject/screens/home.dart';
import 'package:flutter/material.dart';

class Lostlocate extends StatefulWidget {
  @override
  _LostlocateState createState() => _LostlocateState();
}

class _LostlocateState extends State<Lostlocate> {
  final List<Map<String, dynamic>> departments = [
    {'name': 'Civil Dept', 'icon': Icons.apartment},
    {'name': 'Computer Science Dept', 'icon': Icons.computer},
    {'name': 'Electrical Dept', 'icon': Icons.electrical_services},
    {'name': 'Electronics Dept', 'icon': Icons.memory},
    {'name': 'Mechanical Dept', 'icon': Icons.build},
  ];

  final List<Map<String, String>> items = [
    {
      'name': 'Smartphone',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvNOSU7L8aKSczWOwZ-yoA3l4WSM_iouCfvA&s',
      'description': 'A black smartphone with a sleek design.'
    },
    {
      'name': 'Earphones',
      'image': 'https://i.ebayimg.com/images/g/zQcAAOSwYXBlx9Q3/s-l400.jpg',
      'description': 'A pair of wireless earbuds in a charging case.'
    },
    {
      'name': 'Notebook',
      'image':
          'https://www.muji.us/cdn/shop/products/4550182108569_org_1200x1200.jpg?v=1625170566',
      'description': 'A spiral-bound notebook with lined pages.'
    },
    {
      'name': 'Water Bottle',
      'image':
          'https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/wnushvamuaheo4v0ertj',
      'description': 'A pink insulated water bottle.'
    },
    {
      'name': 'Umbrella',
      'image':
          'https://www.shopbentley.com/cdn/shop/files/1026152001_b.jpg?v=1688737133&width=1000',
      'description': 'A compact, foldable umbrella.'
    },
    {
      'name': 'Wallet',
      'image': 'https://craftandglory.in/cdn/shop/products/85.png?v=1655624729',
      'description': 'A brown leather wallet with card slots.'
    },
    {
      'name': 'Keys',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYwtDwAy2JUVy6pNYsRBWEas1A-7Wz--uHiA&s',
      'description': 'A set of house and car keys on a keychain.'
    },
    {
      'name': 'Watch',
      'image':
          'https://cdn.shopify.com/s/files/1/0213/7833/4784/files/Hamilton_2897_Photo_1024x1024.png?v=1620719334',
      'description': 'A classic wristwatch with a leather strap.'
    },
    {
      'name': 'Calculator',
      'image':
          'https://c02.purpledshub.com/uploads/sites/41/2023/01/Untitled-design-1-148f985.jpg?webp=1&w=1200',
      'description': 'A scientific calculator with advanced functions.'
    },
  ];

  int activeDepartmentIndex = 0;
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Home()),
              (route) => false,
            );
          },
        ),
        title: Text('App Name'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: departments.length,
              itemBuilder: (context, index) {
                bool isActive = index == activeDepartmentIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      activeDepartmentIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isActive ? Colors.blueAccent : Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          departments[index]['icon'],
                          color: isActive ? Colors.white : Colors.black54,
                        ),
                        SizedBox(width: 8),
                        Text(
                          departments[index]['name'],
                          style: TextStyle(
                            color: isActive ? Colors.white : Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: (items.length / 2).ceil(),
              itemBuilder: (context, rowIndex) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(2, (colIndex) {
                    int itemIndex = rowIndex * 2 + colIndex;
                    if (itemIndex >= items.length) return SizedBox.shrink();
                    return buildItemCard(
                      imageUrl: items[itemIndex]['image']!,
                      itemName: items[itemIndex]['name']!,
                      description: items[itemIndex]['description']!,
                      placeFound: departments[itemIndex % departments.length]['name'],
                      timeFound: '${itemIndex + 1} hours ago',
                      index: itemIndex,
                    );
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItemCard({
    required String imageUrl,
    required String itemName,
    required String description,
    required String placeFound,
    required String timeFound,
    required int index,
  }) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl, height: 100, width: 100, fit: BoxFit.cover),
          Text(itemName),
          Text(description),
          Text('Found at: $placeFound'),
          Text(timeFound),
        ],
      ),
    );
  }
}