import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Color(0xffd9eff7),
            title: Center(child: Text("Sweets",style: TextStyle(color: Color(0xff2f394e),fontWeight: FontWeight.bold,fontSize: 30))),
            toolbarHeight: 200,
            leading:
              Icon(Icons.arrow_back_ios,color: Color(0xff2f394e),size: 28,),

            actions: [
              Icon(Icons.menu,color: Color(0xff2f394e),size: 28,),

            ],
          ),
        ),
        body: Container(
          color: Color(0xffd9eff7),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Center(child: Text("All",style: TextStyle(color: Colors.white),),),
                          height: 40,
                          width: 60,
                          //color: Colors.green,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff2f394e),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          child: Center(child: Text("Chocolate",style: TextStyle(color:  Color(0xff2f394e),),),),
                          height: 40,
                          width: 100,
                          //color: Colors.green,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          child: Center(child: Text("Biscuts",style: TextStyle(color:  Color(0xff2f394e),),),),
                          height: 40,
                          width: 100,
                          //color: Colors.green,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          child: Center(child: Text("Bread",style: TextStyle(color:  Color(0xff2f394e),),),),
                          height: 40,
                          width: 100,
                          //color: Colors.green,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                ),
                    itemCount: 4,
                    itemBuilder: (context,int index){
                      return Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 25,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image.asset('assets/images/amul.jpeg',height: 130,width: 130,),
                              Text("Amul Chocolate"),
                              Text("Box"),
                              Text("22.00 SR"),

                            ],
                          ),
                        ),
                      );
                    }

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
