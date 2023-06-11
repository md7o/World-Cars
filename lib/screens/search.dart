import 'package:flutter/material.dart';

void main() {
  runApp(SearchEngineApp());
}

class SearchEngineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Engine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchEngineHomePage(),
    );
  }
}

class SearchEngineHomePage extends StatefulWidget {
  @override
  _SearchEngineHomePageState createState() => _SearchEngineHomePageState();
}

class _SearchEngineHomePageState extends State<SearchEngineHomePage> {
  List<String> searchResults = [];
  TextEditingController searchController = TextEditingController();

  List<String> allData = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Mango',
    'Watermelon',
    'Pineapple',
    'Kiwi',
  ];

  void search(String keyword) {
    setState(() {
      searchResults = allData
          .where((item) => item.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Engine'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => search(value),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(searchResults[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}


// import 'package:flutter/material.dart';
// import 'package:world_car/models/world_car.dart';

// class hlao extends StatefulWidget {
//   const hlao({
//     super.key,
//   });

//   @override
//   State<hlao> createState() => _hlaoState();
// }

// class _hlaoState extends State<hlao> {
//   List<WorldCar> filteredList = [];
//   String searchText = '';

//   @override
//   void initState() {
//     super.initState();
//     filteredList;
//   }

//   void filterList(String query) {
//     setState(() {
//       if (query.isNotEmpty) {
//         filteredList
//             .where((item) => widget
//                 .itemToString(item)
//                 .toLowerCase()
//                 .contains(query.toLowerCase()))
//             .toList();
//       } else {
//         filteredList;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextField(
//           onChanged: (value) {
//             setState(() {
//               searchText = value;
//               filterList(searchText);
//             });
//           },
//           decoration: InputDecoration(
//             hintText: 'Search...',
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: filteredList.length,
//             itemBuilder: (context, index) {
//               final item = filteredList[index];
//               return Text(item.name);
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import '../data.dart';
// // import '../models/category.dart';
// // import '../models/world_car.dart';

// // class SearchPage extends StatefulWidget {
// //   const SearchPage({
// //     super.key,
// //   });

// //   @override
// //   State<SearchPage> createState() => _SearchPageState();
// // }

// // class _SearchPageState extends State<SearchPage> {
// //   List<String> originalList = [
// //     'Item 1',
// //     'Item 2',
// //     'Item 3',
// //     'Another Item',
// //     'Something'
// //   ];
// //   List<String> filteredList = [];

// //   String searchText = '';

// //   @override
// //   void initState() {
// //     super.initState();
// //     filteredList = originalList;
// //   }

// //   void filterList(String query) {
// //     setState(() {
// //       if (query.isNotEmpty) {
// //         filteredList = originalList
// //             .where((item) => item.toLowerCase().contains(query.toLowerCase()))
// //             .toList();
// //       } else {
// //         filteredList = originalList;
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body: Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 50),
// //       child: Column(
// //         children: [
// //           SizedBox(
// //             height: 50,
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 10),
// //               child: Hero(
// //                 tag: 'hlao',
// //                 child: Material(
// //                   color: Colors.transparent,
// //                   elevation: 0,
// //                   child: TextField(
// //                     onChanged: (value) {
// //                       setState(() {
// //                         searchText = value;
// //                         filterList(searchText);
// //                       });
// //                     },
// //                     autofocus: true,
// //                     decoration: InputDecoration(
// //                       label: Text('Search'),
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(20),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           for (final category in data)
// //             //         // for (WorldCar item in (category.items))
// //             for (final world_car in category.items)
// //               for (Cars soo in (world_car.carItems))
// //                 Expanded(
// //                   child: ListView.builder(
// //                     itemCount: filteredList.length,
// //                     itemBuilder: (context, index) {
// //                       final item = filteredList[index];
// //                       return ListTile(
// //                         title: Text(item),
// //                       );
// //                     },
// //                   ),
// //                 ),
// //         ],
// //       ),
// //     )

// //         );
// //   }
// // }