
import 'package:ally/categories/housing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0,
       actions:<Widget>[
         IconButton( 
           
           onPressed:() {
             showSearch(context: context, delegate: Search());
           },
           icon:Icon(Icons.search,
           color: Colors.greenAccent,)
         )
       ]
     ),
      resizeToAvoidBottomPadding: false,
     
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child:Stack(children: <Widget>[
               Container(
                padding:EdgeInsets.fromLTRB(0.0, 25.0, .0, 50.0),
                child: Text('Pick a',
                style:GoogleFonts.montserrat(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w300,
                )
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(0.0, 120.0, .0, 50.0),
                child: Text('Category',
                style:GoogleFonts.montserrat(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                )
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(300.0, 100.0, 0.0, 0.0),
                child: Text('.',
                style:GoogleFonts.montserrat(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent
                )
                ),
              ),
             
            ],
            ),
          ),
          SizedBox(height:50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            FlatButton(
              onPressed: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Housing(),
                 ),
                   );
                },
              child: Column(
                children:<Widget>[
                  Icon(Icons.home,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Housing',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.favorite,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Health',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.directions_car,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Vehicle',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
            ],
          ),
          SizedBox(height:50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.accessibility_new,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Life',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.beach_access,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Umbrella',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.flight_takeoff,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Travel',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
            ],
          ),
          SizedBox(height:50.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.folder,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Assets',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.laptop_windows,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Electronics',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.store,
                  color: Colors.greenAccent,
                  size: 40.0,),
                  Text('Business',
                  style: GoogleFonts.montserrat(
                    color:Colors.greenAccent
                  ),)
                ]
              ),
              ),
            ],
          ),
        ],
      ),
      );
    
  }
}


class Search extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
      return <Widget>[
        IconButton(icon:Icon (Icons.close,
        color: Colors.greenAccent,),
         onPressed: (){
           query = "";
         }
         ),
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
        IconButton(icon:Icon (Icons.arrow_back,
        color: Colors.greenAccent,),
         onPressed: (){
           Navigator.pop(context);
         }
         );
    }
  
    @override
    Widget buildResults(BuildContext context) {
     return Container(
       child:Center(
         child: Text(null),
         )
     );
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }

  
}
  