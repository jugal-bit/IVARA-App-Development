import 'package:flutter/material.dart';


class Profilep extends StatefulWidget{
  @override

  _ProfilepState  createState() => _ProfilepState();

}

class _ProfilepState extends State<Profilep> {

  Widget textfield({@required String hintText}){
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          letterSpacing: 2,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
        fillColor: Colors.white,
          filled: true,
        border: OutlineInputBorder(
          borderRadius:   BorderRadius.circular(10.0),
          borderSide: BorderSide.none
        )
      ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Iventors"),
      ),

      body:  Stack(
        alignment: Alignment.center,
        children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.lef,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("My Profile",style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/logo_big.png'),
                    )
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 270,left: 184),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {

                },
              ),
            ),),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfield(
                      hintText: 'Phone Number',
                    ),
                    textfield(
                      hintText: 'Email',
                    ),
                    Container(
                      height: 55,
                      width: 200,
                      child: RaisedButton(
                        onPressed: (){
                        },
                        color: Colors.black54,
                        child: Center(
                          child: Text("Edit",style:
                           TextStyle(
                             fontSize: 23,
                             color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width:  200,
                      child: RaisedButton(
                        onPressed: (){
                        //  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPagep()));
                        },
                        color: Colors.black54,
                        child: Center(
                          child: Text("Log Out",style:
                          TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
      //      painter: HeaderCurvedContainer(),
          ),
        ],

      ),
    );
  }

}
/*
class HeaderCurvedContainer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff555555);
    Path path = Path()
    ..relativeLineTo(0, 150)
    ..quadraticBezierTo(size.width/2, 225,size.width, 150)
    ..relativeLineTo(0, -150)
    ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

*/
