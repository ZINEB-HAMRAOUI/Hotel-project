
import 'package:hotelproject/screens/Detail.dart';
import 'package:hotelproject/screens/Home.dart';


import "package:flutter/material.dart";
import "package:hotelproject/models/apartment.dart";
import "package:hotelproject/core/const.dart";
import 'Detail.dart';

class Hotel extends StatefulWidget {

  @override

  _HotelState createState() => _HotelState();

}
class _HotelState extends State<Hotel> {
  var data=ApartmentModel.list ;
   @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('find your hotel',style: TextStyle(color:Colors.black38,fontWeight: FontWeight.bold,),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,), 
          onPressed: (){}),
          IconButton(icon: Icon(Icons.filter_list,color: Colors.black38,),
           onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Home()),);
                     
                     
           }),
        ],

      ),
      /*
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black38,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('data')),
       /* BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text('data')),*/
        BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('data'),),
        
      ]),*/
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
            Text('result in your area',
              style: TextStyle(color:Colors.blueGrey),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
              itemCount:data.length ,
            
             itemBuilder: (context,index){
               return GestureDetector(
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Detail(
                     data[index],
                     ),
                   
                     ),
                     );
                 }
                 ,child: _builItem(context,index));
                          },
                         )
                         ),
                       ],
                     ),
      ),
                   
                   
                 );
               }
             
               Widget _builItem(BuildContext context, int index) {
                
                 return Container(
                   padding: EdgeInsets.all(12),
                   height: 250,
                 child: Stack(
                   children: <Widget>[
                     Align(
                       alignment: Alignment.centerRight,
                    child: Container(
                       width: MediaQuery.of(context).size.width * .5,
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20),),
                          image: DecorationImage(
                            image: ExactAssetImage("assets/${data[index].images.first}.jpg"),
                            fit: BoxFit.cover,

                            ),
                            boxShadow:[
                              BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,color: Colors.black12,
                            )
                            ] ,
                            ),
child: Stack(fit:StackFit.expand,
 children: <Widget>[
   Container(
     decoration: BoxDecoration(
       gradient: LinearGradient(colors: [Colors.transparent,Colors.transparent, Colors.black45],
       begin: Alignment.topCenter,end: Alignment.bottomCenter,

       
       ),
       borderRadius: BorderRadius.all(Radius.circular(20),),
     ),
   ),
   Align(
     alignment: Alignment.bottomLeft,
        child: Padding(
       padding: const EdgeInsets.only(bottom: 12,left: 45,right: 12,),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width * .25,
           child: Text("${data[index].name}" , style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white),),
         ),
         Container(padding: EdgeInsets.all(6),child: Icon(Icons.directions,color:  Colors.black87,size: 20,),
           decoration: BoxDecoration(
           color: Colors.black38,borderRadius: BorderRadius.all(Radius.circular(100),),
         ),

         )

       ],


       ),
     ),
   )

 ],
),

                            ),
                     ),
                     _buildDestraction(context, index)
                   ],
                   
                 ),
                 );
               }

               Align _buildDestraction(BuildContext context, int index) {
                 return Align(
                      alignment: Alignment.centerLeft,
                       child: Container(

                     width: MediaQuery.of(context).size.width * .4,
                     height: 200,
                     padding:  EdgeInsets.all(12),
                     decoration: BoxDecoration(
                       color: Colors.white10,
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                        boxShadow:[
                            BoxShadow(
                            blurRadius: 7,
                            spreadRadius: 1,color: Colors.black12,
                          )
                          ] ,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.end,
                         children: <Widget>[
                         Icon(Icons.euro_symbol, size: 18,),
                         Text("${data[index].price.toInt()}/",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                         Text("day",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),],
                         ),
                         Text("${data[index].sizeDesc}", style: TextStyle(color: Colors.black38,),
                         ),
                         Row(
                           children: <Widget>[
                        Text("${data[index].reviewCount.toInt()} reviews",
                        style: TextStyle(color: Colors.black87 , fontSize: 18)

                          ),  ],
                         ),
                         Row( children: <Widget>[
                        ...data[index].personImages.map((img) {
                       return Container(
                        width: 25,height: 25,
                        decoration: BoxDecoration(
                           image: DecorationImage(image: ExactAssetImage("assets/$img.jpg"),
                           ),
                         borderRadius: BorderRadius.all(Radius.circular(50),),
                        ),
                       child: Center(
                         child:Text("23",style: TextStyle(fontSize: 10,),)
                       ),
                       );

                        },
                        ),
                          ],  
                           ),
                        Wrap(children: <Widget>[
                      ...data [index].features.map((feature) {
return Container( margin: EdgeInsets.only( bottom: 6, right: 6,),
padding: EdgeInsets.all(6),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)
),color: AppColors.stylecolor,
)
 , child: Text(feature,style: TextStyle(fontSize: 12,color: Colors.white,),),);
                      })
                         ], )
                       ],
                     ),
                   ),
                   );
               }


}