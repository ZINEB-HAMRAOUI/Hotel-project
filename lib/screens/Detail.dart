import 'package:hotelproject/screens/Home.dart';

import "package:flutter/material.dart";
import "package:hotelproject/models/apartment.dart";
import "package:hotelproject/core/const.dart";
import 'package:url_launcher/url_launcher.dart';

import "Login.dart";
class Detail extends StatefulWidget {
final ApartmentModel data;
Detail(this.data);
  @override

  _DetailState createState() => _DetailState();

}
class _DetailState extends State<Detail> {
  
  void _launchPhone(String number)async{

  var url="tel:${number.toString()}";
  if (await canLaunch(url)) {
 await launch(url);
 }else{
   throw 'could not place call';
  }
}
 void _launchUrl(String url) async{
 if (await canLaunch(url)) {
 await launch(url);

 }else{
   throw 'could not open url';
  }}
   @override

  Widget build(BuildContext context) { 
     return Scaffold(
       body: Stack(
         children: <Widget>[
           Container(
             height: MediaQuery.of(context).size.height * .4,
             child: PageView.builder(
               itemBuilder: (context, index){
            return Image.asset(
              "assets/${widget.data.images[index]}.jpg",
              fit: BoxFit.cover,
            ) ;
              
              
               },
             
             ),
           ),SizedBox(height: 100,),
 Container(
child: Center(
  child: Column(
    children: <Widget>[
SizedBox(height: 500,),
RaisedButton(child: Text('phone',style: TextStyle(color: Colors.pink),),
 shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(18.0),
  side: BorderSide(color: Colors.pink)
),
                 padding: EdgeInsets.fromLTRB(103, 12, 103, 12),
onPressed: (){_launchPhone("${widget.data.phone.toInt()}");},),
    ],
  )
)
),

           _buildWidgetButtomClose(context),
           _buildWidgetprice(),
           _builParg(),
         ],
       ),
    ) ;
  }


 Widget _builParg() {
                
   return Container(
                  
  margin: EdgeInsets.only(left:5,top:270),
child: Stack(
 children: <Widget>[ Padding(padding: EdgeInsets.all(24),
   child :Text(widget.data.desc,
   style: TextStyle(height: 1.5),),
  ),
  Container(
     margin: const EdgeInsets.fromLTRB(40, 110, 20, 40),
     /* mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[*/
             
 child: RaisedButton(
      
 child: Text('get location', style: TextStyle(color: Colors.white),),

color: Colors.pink,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(18.0),
 // side: BorderSide(color: Colors.pink)
),
                 padding: EdgeInsets.fromLTRB(103, 12, 103, 12),
                 onPressed: () async {

    //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
_launchUrl("${widget.data.mapurl.toString()}");
                 }

    ),
             //   ]
                ),

   ]
   )
    );
    }

   Align _buildWidgetButtomClose(BuildContext context) {
     return Align(
           alignment: Alignment.topRight,
                      child: Container(
             margin: EdgeInsets.only(right: 24,top: 45),
             child: IconButton(icon: Icon(Icons.close,color: Colors.white,), onPressed: (){
               Navigator.of(context).pop();
             })
           ),
         );
   }

   Container _buildWidgetprice() {
     return Container(
           margin: EdgeInsets.only(left:24,top:50),
           padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
           decoration: BoxDecoration(
             color:Colors.grey,
             borderRadius: BorderRadius.all(
               Radius.circular(25),
             ),
           ),
           child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
             children:<Widget>[
             Icon(Icons.euro_symbol,size:16,color:Colors.white,),
            
            Text("${widget.data.price.toInt()}/"
, 
            
            style: TextStyle(color: Colors.white),),
             Text("day",style: TextStyle(color: Colors.white, fontSize: 16),),
              
             ],
           ),
           
             
           );
    
 
   }
}