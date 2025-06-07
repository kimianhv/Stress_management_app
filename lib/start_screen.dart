import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Let's you in",
                style: TextStyle(
                  color: Color(0xFF8F87F1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(height: 80,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                    width: 1,
                    color: Colors.pink,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    )),




                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook,color: Color(0xFF3A59D1),),
                      SizedBox(width: 8),
                      Text('Continue with Facebook', style: TextStyle(
                        color: Colors.black,
                      ),),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 1,
                      color: Colors.pink,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    )),




                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/google.svg',width: 24,height: 24,),
                      SizedBox(width: 8),
                      Text('Continue with Google', style: TextStyle(
                        color: Colors.black,
                      ),),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
