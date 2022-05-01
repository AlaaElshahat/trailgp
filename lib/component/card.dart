

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trailgp/Screens/addpateint.dart';
import 'package:trailgp/Screens/pateintInfo.dart';
import '../constant.dart';

class HomeCard extends StatelessWidget {
  String ?homeIcon;
  String ?text;
 HomeCard(this.homeIcon,this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
    child: GestureDetector(
      onTap: (){
        if(text=='instruction'){
                }
                else if(text=='Pateints')
                {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>AddPateint ( )),
                 );
                }
        else
        {
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PateintInfo( )),
                 );
        }
      },
      child: SizedBox(
        height: 136,
        width:156,
        child: Card(
          
          margin: EdgeInsets.fromLTRB(25,10 , 10, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
          color:  Color(0xFF707070),
          width: 0.5,
        ),
          ),
          borderOnForeground: true,
          color:  Colors.white ,
          elevation: 10,
          shadowColor: Color(0xFF707070),
            child: Container(
              constraints: BoxConstraints(
     maxHeight: double.infinity,
),
              child: Center(
                child: Column(
                      mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Padding(padding: EdgeInsets.all(8),
                        child:text=='instruction'?  Image.asset(homeIcon!):SvgPicture.asset(homeIcon!)),
                         Center(child: Text(text!, style: TextStyle(color: kTextColor,fontWeight:FontWeight.bold,fontSize: 14 ))),
                  ],
                ),
              ),
            ),
        ),
      ),
    )
    );
    
    
  }
}