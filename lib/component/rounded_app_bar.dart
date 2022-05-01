import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trailgp/Screens/HomePage.dart';

import '../constant.dart';

class RoundAppBar extends StatelessWidget with PreferredSizeWidget {
  final double barHeight = 20;
   @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + barHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(48.0),
        ),
      ),
      leading: IconButton(
     icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
  
  onPressed: (){
    Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Home( )),
                 );
  },
),
titleSpacing: 0.00,
        centerTitle: true,
       title:  Container(
                alignment: Alignment.center,
                 margin: EdgeInsets.symmetric(horizontal: DefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                height: 44,
                width: 500,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
                  
                  child: Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "  Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                           suffixIcon:Icon(Icons.search_sharp,color: kTextColor,),
                        ),
                      ),
                    ),
              ),
      
      actions: [
         
    
         Image.asset("assets/images/doctor.png")
        
        ],
        
    );
  }
}