import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_project/app/core/helpers/helpers.dart';
import 'package:test_project/view/home/organisms/default_bottom_sheet.dart';
import 'package:test_project/view/home/organisms/google_map_organism.dart';

import '../../app/components/elements/custom_toggle_element.dart';
import '../../app/core/value_managers/assets_manager.dart';
import '../../domain/entites/order_details_entity.dart';
import '../../domain/entites/story_model.dart';
import 'atoms/get_my_location_atom.dart';
import 'molecules/driver_avatar_molecule.dart';
import 'molecules/orders_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Marker> markers = [];
  List<StoryEntity> stories = [];
  late OrderDetailsEntity orderDetailsModel;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetch();
    });
  }

  final Map<String, dynamic> parcelJson = {
    "id": 111,
    "originPhone": "0100000000",
    "originUsername": "originUsername",
    "originAddress": {
      "address": "originalAddress",
      "lat": 84870.1,
      "lng": 11034.2
    },
    "destinationPhone": "020000000",
    "destinationUsername": "destinationUsername",
    "destinationAddress": {
      "address": "destinationAddress",
      "lat": 84870.1,
      "lng": 11034.2
    },
    "currencySymbol": "\$",
    "totalPrice": 1000,
    "createdAt": "2022-01-01 12:34:56.789"
  };

  final Map<String, dynamic> deliveryJson = {
    "title": "order",
    "id": "order ID",
    "createdAt": "13-2-2022",
    "totalPrice": 200,
    "deliveryFee": 10,
    "distance": 20,
    "current": true,
    "note": "don't be late",
    "location": {
      "lat": 1234.9,
      "lng": 12.0,
    },
    "user": {
      "id": "userID",
      "img":
          "https://th.bing.com/th/id/OIP.IbA5TZAIWjSdJCfZRZayTAAAAA?pid=ImgDet&rs=1",
      "firstName": "AbuAlhamd",
      "phone": "0000000000"
    },
    "shop": {
      "title": "shop",
      "logoImg":
          "https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/gold-roman-imperial-eagle-s-p-q-r-special-edition-over-red-velvet-serge-averbukh.jpg",
      "phone": "7558989",
      "location": {
        "lat": 1234.9,
        "lng": 12.0,
      }
    },
    "adress": {
      "adress": "adress",
      "house": "house",
      "office": "office",
      "floor": "floor",
    },
    "transaction": {
      "tag": "tag",
    },
    "products": [
      {
        "title": "Brandeul",
        "interval": 10,
        "unitTitle": "pc",
        "description": "description",
        "totalPrice": 100,
      },
      {
        "title": "Ratatue",
        "interval": 1,
        "unitTitle": "pc",
        "description": "description",
        "totalPrice": 200,
      }
    ]
  };

  final List<Map<String, dynamic>> _storiesJson = [
    {
      "imgLink":
          'https://images.ctfassets.net/trvmqu12jq2l/1LFP1rAaPMiEx5y11ZZv2F/5167948e81a58a08e516631e07ee154c/blog-hero-1208x1080-v115.14.01.jpg',
      "title": "Be polite when delivering the order to the customer",
    },
    {
      "imgLink":
          "https://www.deliveryhero.com/wp-content/uploads/2021/01/TAR_5922.jpg",
      "title": "Be careful with what you are carrying",
    },
    {
      "imgLink":
          'https://images.unsplash.com/photo-1566576721346-d4a3b4eaeb55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFja2FnZSUyMGRlbGl2ZXJ5fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      "title": "Be polite when delivering the order to the customer",
    },
    {
      "imgLink":
          'https://images.ctfassets.net/trvmqu12jq2l/1LFP1rAaPMiEx5y11ZZv2F/5167948e81a58a08e516631e07ee154c/blog-hero-1208x1080-v115.14.01.jpg',
      "title": "Be polite when delivering the order to the customer",
    },
    {
      "imgLink":
          "https://www.deliveryhero.com/wp-content/uploads/2021/01/TAR_5922.jpg",
      "title": "Be careful with what you are carrying",
    },
    {
      "imgLink":
          'https://images.unsplash.com/photo-1566576721346-d4a3b4eaeb55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFja2FnZSUyMGRlbGl2ZXJ5fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      "title": "Be polite when delivering the order to the customer",
    },
  ];

  fetch() async {
    final icon = await AppHelpers.setCustomMarkerIcon(
        path: ImgManager.pngMyLocation, width: 120);
    setState(() {
      markers = [
        Marker(
          icon: icon,
          markerId: const MarkerId("source"),
          position: const LatLng(37.42796133580664, -122.085749655962),
        ),
        // const Marker(
        //   markerId: MarkerId("destination"),
        //   position: LatLng(37.42845549203429, -122.08499260246755),
        // ),
      ];

      for (final storyJson in _storiesJson) {
        final story = StoryEntity.fromJson(json: storyJson);
        stories.add(story);
      }
    });
  }

  // fetch() async {
  //   await BitmapDescriptor.fromAssetImage(
  //           const ImageConfiguration(size: Size(20, 20)),
  //           'assets/images/my_location.png')
  //       .then((icon) {
  // setState(() {
  //   markers = [
  //     Marker(
  //       icon: icon,
  //       markerId: const MarkerId("source"),
  //       position: const LatLng(37.42796133580664, -122.085749655962),
  //     ),
  //     const Marker(
  //       markerId: MarkerId("destination"),
  //       position: LatLng(37.42845549203429, -122.08499260246755),
  //     ),
  //   ];
  // });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          GoogleMapOrganism(
            markers: markers.toSet(),
          ), //mapController: GoogleMapController
          //? custom toggle
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              padding: const EdgeInsets.all(6),
              child: CustomToggleElement(
                isOnline: true,
                isOrder: false,
                onChange: (value) {},
              ),
            ),
          ),
          //? driver avatar
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 16.w, //state.isScrolling ? -64.w : 16.w,
            child: const DriverAvatarMolecule(
              imageUrl:
                  "https://cdna.artstation.com/p/assets/images/images/006/803/546/large/stone-perales-00-maxxor-v2-final.jpg?1501371871",
              rating: 5,
            ),
          ),
          //? orders icon
          Positioned(
            top: MediaQuery.of(context).padding.top + 80,
            left: 12, //state.isScrolling ? -64.w : 12.w,
            child: const OrdersIcon(),
          ),
          //? get location
          const Positioned(
              bottom: 342,
              right: 16, //ref.watch(homeProvider).isScrolling ? -64.w : 16.w,
              child: GetMyLocationAtom()),
          //? bottomsheet
          Positioned(
            bottom: 0,
            child:
                // ParcelBottomSheet(
                //     parcelModel: ParcelModel.fromJson(json: _parcelJson))

                //     DeliveryBottomSheet(
                //   isHomeBottomSheet: true,
                //   orderDetailsModel:
                //       OrderDetailsEntity.fromJson(json: _deliveryJson),
                // )

                DefaultBottomSheet(
              stories: stories,
            ),
          ),
        ],
      ),
    );
  }
}
