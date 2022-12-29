import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:uts/1_onlineshop_model.dart';
import 'package:uts/4_onlineshop_detail.dart';
//import 'dart:html';
// import 'package:uts/2_onlineshop_form.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => OnlineshopProvider()),
    ],
    builder: (context, child) {
      return const InitialApp();
    },
  ));
}

class InitialApp extends StatelessWidget {
  const InitialApp({super.key});
  @override
  Widget build(BuildContext context) {
//     controller.forward();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
      home: const OnlineshopList(),
    );
  }
}

//bottom bar
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedNavbar = 0;
//   void _changeSelectedNavBar(int index) {
//     setState(() {
//       _selectedNavbar = index;
//     });
//   }
//   int PageIndex = 0;
//   final Pages = [
//     const HandphoneList(),
//     const Customer(),
// 	const Seller(),
// 	const Transaksi()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Pages[PageIndex],
//       bottomNavigationBar: buildMyNavBar(context),
//     );
//   }
//   Container buildMyNavBar(BuildContext context) {
//     return Container(
// 	  child: Center(
//         child: Text("Tab Index yang aktif : $_selectedNavbar",
//             style: TextStyle(fontSize: 16)),
//       ),
//       height: 60,
//       decoration: const BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30), topRight: Radius.circular(30))),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   PageIndex = 0;
//                 });
//               },
//               icon: PageIndex == 0
//                   ? const Icon(Icons.favorite, color: Colors.white, size: 40,)
//                   : const Icon(Icons.favorite_outlined, color: Colors.white, size: 40,)),
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   PageIndex = 1;
//                 });
//               },
//               icon: PageIndex == 1
//                   ? const Icon(
//                       Icons.person,
//                       color: Colors.white,
//                       size: 40,
//                     )
//                   : const Icon(
//                       Icons.person_outline,
//                       color: Colors.white,
//                       size: 40,
//                     )),
// 		  IconButton(
//               onPressed: () {
//                 setState(() {
//                   PageIndex = 2;
//                 });
//               },
//               icon: PageIndex == 2
//                   ? const Icon(Icons.widgets, color: Colors.white, size: 40,)
//                   : const Icon(Icons.widgets_outlined, color: Colors.white, size: 40,)),
// 		  IconButton(
//               onPressed: () {
//                 setState(() {
//                   PageIndex = 3;
//                 });
//               },
//               icon: PageIndex == 3
//                   ? const Icon(Icons.home, color: Colors.white, size: 40,)
//                   : const Icon(Icons.home_outlined, color: Colors.white, size: 40,)),
// 		  currentIndex: _selectedNavbar,
//           selectedItemColor: Colors.green,
//           unselectedItemColor: Colors.grey,
//           showUnselectedLabels: true,
//           onTap: _changeSelectedNavBar,
//         ],
//       ),
//     );
//   }
// }
//tab bar
// class MyTabBar extends StatefulWidget {
//   const MyTabBar({super.key});
//   @override
//   State<MyTabBar> createState() => _MyTabBarState();
// }

// class _MyTabBarState extends State<MyTabBar> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 5,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(tabs: [
//             Tab(icon: Icon(Icons.flight), child: Text("Pesawat", style: TextStyle(fontSize: 10),),),
//             Tab(icon: Icon(Icons.directions_transit), child: Text("Kereta", style: TextStyle(fontSize: 10),),),
//             Tab(icon: Icon(Icons.directions_car), child: Text("Mobil", style: TextStyle(fontSize: 10),),),
//             Tab(icon: Icon(Icons.directions_boat), child: Text("Kapal", style: TextStyle(fontSize: 10),),),
//             Tab(icon: Icon(Icons.directions_bike), child: Text("Sepeda", style: TextStyle(fontSize: 10),),),
//           ]),
//         ),
//         body: TabBarView(
//           children: [
//             Container(margin: EdgeInsets.all(50), child: CircleAvatar(child: Icon(Icons.flight, size: 200,),),),
//             Padding(padding: const EdgeInsets.all(50), child: CircleAvatar(child: Icon(Icons.directions_transit, size: 200, color: Colors.yellow[200],),),),
//             Padding(padding: const EdgeInsets.all(40), child: CircleAvatar(child: CircleAvatar(radius: 100, backgroundColor: Colors.green, child: Icon(Icons.directions_car, size: 150,),),),),
//             Container(margin: EdgeInsets.all(35), decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(50)), child: Container(margin: EdgeInsets.all(50), decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(50)), height: 40, width: 40, child: Icon(Icons.directions_boat, size: 200, color: Colors.white,),),),
//             Icon(Icons.directions_bike, size: 200,),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Customer extends StatefulWidget {
//   const Customer({super.key});
//   @override
//   State<Customer> createState() => _CustomerState();
// }
// class _CustomerState extends State<Customer> {
// }

// class Seller extends StatefulWidget {
//   final Seller seller;
//   const SellerDetail({super.key, required this.seller});
//   @override
//   State<Seller> createState() => _SellerState();
// }
// class _SellerState extends State<Seller> {
// }

// class Transaksi extends StatefulWidget {
//   final Transaksi transaksi;
//   const Transaksi({super.key, required this.transaksi});
//   @override
//   State<Transaksi> createState() => _TransaksiState();
// }
// class _TransaksiState extends State<Transaksi> {
// }

class OnlineshopList extends StatefulWidget {
  const OnlineshopList({super.key});

  @override
  State<OnlineshopList> createState() => _OnlineshopListState();
}

class _OnlineshopListState extends State<OnlineshopList> {
  final controller = ScrollController();
//FORM
  //List<OnlineShopModel> listOnlineShop = [];
  //DatabaseHelper db = DatabaseHelper();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.position.pixels) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Getting more handphone...')));
        context.read<OnlineshopProvider>().fetchOnlineshops();
      }
    });
    //_getAllOnlineShop(); //FORM
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Handphone')),
      body: FutureBuilder<void>(
        future: context.read<OnlineshopProvider>().fetchOnlineshops(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Consumer<OnlineshopProvider>(
            builder: (context, value, child) {
              return ListView.builder(
                  controller: controller,
                  itemCount: value.onlineshops.length,
                  itemBuilder: (context, index) {
                    final data = value.onlineshops[index];
                    if (data.spesifikasi == "3GB RAM" ||
                        data.spesifikasi == "6GB RAM") {
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => OnlineshopDetail(
                                onlineshop: value.onlineshops[index],
                              ),
                            ),
                          );
                        },
                        leading: Image.network(value.onlineshops[0].gambar),
                        title: Text(value.onlineshops[index].merek),
                        subtitle: Text(value.onlineshops[index].harga),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("${value.onlineshops[index].spesifikasi}"),
                          ],
                        ),
                      );
                    }

                    return ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => OnlineshopDetail(
                              onlineshop: value.onlineshops[index],
                            ),
                          ),
                        );
                      },
                      leading:
                          Image.network(data.onlineshopCustomers[0].fotoProfil),
                      title: Text(data.onlineshopCustomers[index].nama),
                      subtitle: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                              "No HP : ${data.onlineshopCustomers[index].noHp}"),
                          const SizedBox(width: 10),
                          Text(
                              "Email : ${data.onlineshopCustomers[index].email}"),
                          const SizedBox(width: 10),
                          Text(
                              "Alamat : ${data.onlineshopCustomers[index].alamat}"),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("${data.onlineshopCustomers[index].jk}"),
                        ],
                      ),
                    );
                  });
            },
          );
        },
      ),
    );
  }
}

//       FutureBuilder<List<model.OnlineShop>>(
//               future: OnlineShopService().findAll(2),
//               builder: (context, snapshot) {
//                 // List<OnlineShopModel> onlineshop = parse(snapshot.data);
// 				if (snapshot.connectionState == ConnectionState.waiting) {return const Center(child: CircularProgressIndicator(),);}
// 				if (snapshot.data == null) {return const Center(child: Text('No data'),);}
// 				if (snapshot.data!.isEmpty) {return const Center(child: Text('No data'),);}
// //FORM
// 				return ListView.builder(
// 				//ANIMATION
// 				  shrinkWrap: true,
// 				  padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
// 				  // itemCount: listOnlineShop.length,
// 				  itemCount: snapshot.data!.length,
// 				  itemBuilder: (context, index) {
// 				    // OnlineShopModel onlineshop = listOnlineShop[index];
//                     final data = snapshot.data![index];
// 					return InkWell(
//                         onTap: () {
//                           //Navigator.push(context, MaterialPageRoute(
//                               builder: (context) => OnlineShopDetail(
//                                   onlineshop: onlineshop[index]),
// 						  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnlineShopDetail(onlineshop: snapshot.data![index],
//                               ),
//                             ),
//                           );
//                         },
// child: ListTile(
//   //kotak kiri: leading
//   //kotak kanan: title, subtitle, trailing
//  // onTap: () {_openFormEdit(onlineshop);},
//   contentPadding: EdgeInsets.all(16),
//   //title: Text('${onlineshop.Merek}', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.blue),),
//   title: Text(snapshot.data![index].Merek),
//   //subtitle: Text('${onlineshop.Spesifikasi}'),
//   subtitle: Text(snapshot.data![index].Spesifikasi),
//   trailing: Row(mainAxisSize: MainAxisSize.min,
// 	children: [
// 	  Text("${snapshot.data![index].Harga}"),
// 	],
// 	  ),
//FORM
// trailing: IconButton(
// icon: Icon(Icons.delete),
// onPressed: () {
//   AlertDialog delete = AlertDialog(
// 	title: Text('Verification'),
// 	content: Container(
// 	  height: 120,
// 	  child: Column(
// 		children: [
// 		  Text('Are you sure you want to permanently delete this data? ${onlineshop.password}'),
// 		],
// 	  ),
// 	),
// 	actions: [
// 	  TextButton(
// 		child: Text('Yes'),
// 		onPressed: () {
// 		  //delete
// 		  _deleteOnlineShop(onlineshop, index);
// 		  Navigator.pop(context);
// 		},
// 	  ),
// 	  TextButton(
// 		child: Text('No'),
// 		onPressed: () {
// 		  Navigator.pop(context);
// 		},
// 	  ),
// 	],
//   );
//   showDialog(context: context, builder: (context) => delete);
// },
// ),
//leading: Image.network(onlineshop[index].pictureId),
// 					  leading: IconButton(
// 						onPressed: () {
// 						  Navigator.push(context, MaterialPageRoute(builder: (context) => OnlineShopDetail(onlineshop)));
// 						},
// 						icon: Icon(Icons.visibility),
// 					  ),
// 					),
// 			  );
// 		  }
// 		);
// 	  },
// 	),
// 	  floatingActionButton: FloatingActionButton(
// 		child: Icon(Icons.add), backgroundColor: Colors.black,
// 		onPressed: () {
//       //_openFormCreate();},
// 	  ),
// 	  floatingActionButton: FloatingActionButton(onPressed: () async {}, tooltip: 'find data', child: const Icon(Icons.add),),
// 	Row(
//           children: [
//             Container(
//               color: Colors.white,
//               child: Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     _Boolean;
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 150,
//                     decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 112, 91, 222),
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: const Center(
//                       child: Text("Masuk",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//   ],
// ),
//   ),
// );
// }

//FORM
// Future<void> _getAllOnlineShop() async {var list = await db.getAllOnlineShop();
//   setState(() {listOnlineShop.clear();
//     list!.forEach((onlineshop) {listOnlineShop.add(OnlineShopModel.fromMap(onlineshop));});});}
// Future<void> _deleteOnlineShop(OnlineShopModel onlineshop, int position) async {await db.deleteOnlineShop(onlineshop.id!);
//   setState(() {listOnlineShop.removeAt(position);});}
// Future<void> _openFormCreate() async {var result = await Navigator.push(context, MaterialPageRoute(builder: (context) => FormOnlineShop()));
//   if (result == 'save') {await _getAllOnlineShop();}}
// Future<void> _openFormEdit(OnlineShopModel onlineshop) async {var result = await Navigator.push(context, MaterialPageRoute(builder: (context) => FormOnlineShop(onlineshop: onlineshop)));
//   if (result == 'update') {await _getAllOnlineShop();}}
//}

// ElevatedButton(onLongPress: () {
//	Navigator.pushReplacement(context, MaterialPageRoute(
//		builder: (context) => const NextPage(), //tdk bs balik lagi),);},),

//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text(widget.title),),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            const Text('You have pushed the button this many times:',),
//            Text('$_counter', style: Theme.of(context).textTheme.headline4,
//     floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: const Icon(Icons.add),