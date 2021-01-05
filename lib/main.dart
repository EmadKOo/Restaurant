import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height:250,
                color: Colors.black12,
              ),

              Column(children: [
                searchBar(),
                SizedBox(height:20),
                bigTitle(),
                SizedBox(height:30),
                configureListView(),
                SizedBox(height:30),
                itsBest(),
                //bestOfDay(),
              ],),

            ],
          ),
        ],

      ),

    );
  }
}



Widget searchBar(){
  return Container(
        padding: EdgeInsets.fromLTRB(15, 35, 15, 10),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(25),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.black,),
                contentPadding: EdgeInsets.only(left:15, top:15),
                hintText: 'Search for any recipes here',
                hintStyle:TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
  );
}

Widget bigTitle() {
  return Padding(
    padding: EdgeInsets.only(left: 15),
    child: Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: Colors.amber,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          )
      ),

      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('POPULAR RECIPES', style:TextStyle(
                fontSize:20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('THIS WEEK', style:TextStyle(
                  fontSize:20.0,
                  fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget configureListView(){
  return Container(
    padding: EdgeInsets.only(left:15, top:15),
    height: 125,
    child: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        cardItem(),
        SizedBox(width: 25,),
        cardItem(),
        SizedBox(width: 25,),
        cardItem(),
      ],
    ),
  );
}

Widget cardItem(){
  return Container(
    height: 125,
    width:250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(11),
      color:Colors.white,
    ),
    child:Row(
      children: [
           Padding(
             padding: EdgeInsets.all(10),
             child: Container(
              height:90,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image:AssetImage('assets/meal.jpg')),
               ),
          ),),
        SizedBox(width:20),
        Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('Grilled Checken'),
            Text('with Fruit Salad'),
            Container(
              height: 10,
              padding :EdgeInsets.only(bottom:10),
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.amber,
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                  )
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(image : AssetImage('assets/emad.jpg')),
                  ),
                  height:25,
                  width:25,
                ),

                Text('Emad A.Hetata')
              ],
            )
          ],
        ),

      ],
    ),
  );
}
Widget title(String mTitle) {
  return Container(
    padding: EdgeInsets.only(left: 15),
    alignment: Alignment.centerLeft,
    child:Text(mTitle, style: TextStyle(color: Colors.black45 , fontSize: 14),),
  );
}

Widget itsBest(){
  return Column(
    children: [
      title("December 1"),
      title("TODAY"),
      Padding(
        padding: const EdgeInsets.only(left :15.0, right:15, top:8),
        child: Stack(
          children: [
            Container(
              height: 275.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image:DecorationImage(image:AssetImage('assets/meal.jpg'),fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:200, left:25),
              child: Text('BEST OF', style: TextStyle(color: Colors.white , fontSize: 14),),
            ),
            Padding(
              padding: EdgeInsets.only(top:220, left:25),
              child: Text('THE DAY', style: TextStyle(color: Colors.white , fontSize: 14),),
            ),
          ],
        ),
      ),

    ],
  );
}

