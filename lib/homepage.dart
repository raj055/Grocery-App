import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/bakery.dart';
import 'package:grocery/cart.dart';
import 'package:grocery/drinks.dart';
import 'package:grocery/fruits.dart';
import 'package:grocery/vegetables.dart';
import 'package:grocery/widgets/top_product_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedOptionIndex = 0;

  Future<bool> _onWillPop() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        title: Text('Are you sure?'),
        content: Text(
          'Do you want to exit an App',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => SystemNavigator.pop(),
            child: Text('Yes'),
          ),
        ],
      ),
    );

    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.gripLines),
            onPressed: () {},
            color: Colors.grey,
            tooltip: 'Menu',
          ),
          actions: _buildActions(),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Center(child: Image.asset('assets/images/banner.png')),
                _buildCategories(),
                _buildTopProducts(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  List<Widget> _buildActions() => <Widget>[
        InkWell(
            child: IconButton(
          icon: Icon(
            FontAwesomeIcons.shoppingBasket,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
          color: Colors.grey,
          tooltip: 'Cart',
        ))
      ];

  Widget _buildCategories() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Categories',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                _ExploreAllButton(
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildCategoriesList()
        ],
      ),
    );
  }

  Widget _buildCategoriesList() {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Color(0xffFCE8A8),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/bread.png"))),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bakery()));
                  },
                ),
                SizedBox(height: 5),
                Text(
                  "Bakery",
                  style: GoogleFonts.varelaRound(fontWeight: FontWeight.w500),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Color(0xffDFECF8),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/apple.png"))),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fruits()));
                  },
                ),
                SizedBox(height: 5),
                Text(
                  "Fruits",
                  style: GoogleFonts.varelaRound(fontWeight: FontWeight.w500),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Color(0xffE2F3C2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/vegetable.png"))),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Vegetables()));
                  },
                ),
                SizedBox(height: 5),
                Text(
                  "Vegetables",
                  style: GoogleFonts.varelaRound(fontWeight: FontWeight.w500),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Color(0xffFFDBC5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/milk.png"))),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Drinks()));
                  },
                ),
                SizedBox(height: 5),
                Text(
                  "Drinks",
                  style: GoogleFonts.varelaRound(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTopProducts() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top Products',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                _ExploreAllButton(
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildTopProductsList()
        ],
      ),
    );
  }

  Widget _buildTopProductsList() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\$2.25',
        title: 'Kiwi Fruit',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/summer.png',
        title: 'Watermelon',
        price: '\$1.50',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Strawberry',
        price: '\$3.50',
      ),
    ];

    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => topProductList[index],
            separatorBuilder: (context, index) => SizedBox(width: 20),
            itemCount: topProductList.length,
          ),
        )
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    List<String> bottomNavigationBarOptions = [
      'Home',
      'Favorites',
      'Notifications',
      'Profile'
    ];

    List<IconData> bottomNavigationBarIcons = [
      Icons.home,
      Icons.favorite_border,
      Icons.notifications_none,
      Icons.person_outline
    ];

    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xff84CC83),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        children: List.generate(bottomNavigationBarOptions.length, (index) {
          if (index == selectedOptionIndex) {
            return Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOptionIndex = index;
                  });
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          bottomNavigationBarIcons[index],
                          color: Colors.green,
                        ),
                        Text(
                          bottomNavigationBarOptions[index],
                          style: GoogleFonts.varelaRound(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedOptionIndex = index;
                });
              },
              child: Icon(
                bottomNavigationBarIcons[index],
                color: Colors.white,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _ExploreAllButton extends StatelessWidget {
  final Function onTap;
  const _ExploreAllButton({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffE0E6EE),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: Text(
          'Explore All',
          style: GoogleFonts.varelaRound(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700]),
        ),
      ),
    );
  }
}
