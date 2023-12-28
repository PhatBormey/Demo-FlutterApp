
import 'package:animal/login.dart';
import 'package:animal/movie.dart';
import 'package:animal/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller=ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if(controller.position.pixels==controller.position.maxScrollExtent){
        lstAssetsImage.add( "assets/dog.jpg");
        setState(() {

        });
      }

    });
  }
  Future getData() async {
    http.Response data=await http.get("https://jsonplaceholder.typicode.com/posts" as Uri);
    print(data.body);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: _buildDrawer,
        appBar: _buildAppBar,
        body: _buildBody,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          child: Icon(Icons.refresh,size: 40,),
          onPressed: () {
            setState(() {
              // controller.jumpTo(controller.position.minScrollExtent);
              controller.animateTo(
                  controller.position.minScrollExtent,
                  duration:Duration(seconds: 1),
                  curve: Curves.ease,
              );
            });
          },
        ),
      )
        // bottomNavigationBar: _buildBottomNavigationBar,
    );

  }
  AppBar get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      // leading: Image.network("https://i.pinimg.com/236x/75/7b/8e/757b8e763944de8"
      //     "c4e49f30b4db79eb2.jpg"),
      title: Container(
        child: Text("AniMal",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 6
                  ),),
      ),
      actions: [
        IconButton(
            onPressed: () {
              // var mapCategories ={"key_1":"Computer","key_2":"Phone","key_3":"Ipad"};

              var mapCategories=new Map();
              mapCategories["key_1"]="Samsung";
              mapCategories["key_2"]="IPhone";
              mapCategories["key_3"]="Vivo";
              // var value=mapCategories["key_3"];
              // print(value);

              mapCategories.forEach((key, value) {
                print(key+" = "+value);
              });

              // var name=["vutha","bormey","ranny"];
              // for(int i=0;i<name.length;i++){
              //   print(name[i]);
              // }
              // print(name[0]);


              // getData();
            },
            icon: Icon(Icons.sunny))
      ],
    );
  }

  Drawer get _buildDrawer {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child:
              Image(image: AssetImage("assets/mypic.jpg"),)
          ),
          ListTile(leading: Icon(Icons.movie_creation_outlined,size: 35,),
            title: Text("Movie",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
            Navigator.pushNamed(context, "movie");
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Movie()));
            },
          ),
          ListTile(leading: Icon(Icons.home_outlined,size: 35,),
            title: Text("Home",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),

          ListTile(leading: Icon(Icons.location_on_outlined,size: 35,),
            title: Text("My Location",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(leading: Icon(Icons.info_outline,size: 35,),
            title: Text("Information",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(leading: Icon(Icons.settings_outlined,size: 35,),
            title: Text("Settings",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(leading: Icon(Icons.output_outlined,size: 35,),
            title: Text("Log Out",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.navigate_next),
            onTap: (){
            setState(() {
              Navigator.pop(context,);
            });
            },
          ),
        ],
      ),
    );
  }
List<String>lstAssetsImage=[
  "assets/dog.jpg",
  "assets/buffalo.jpg",
  "assets/cat.jpg",
  "assets/cow.jpg",
  "assets/crocodile.jpg",

  "assets/dog.jpg",
  "assets/buffalo.jpg",
  "assets/cat.jpg",
  "assets/cow.jpg",
  "assets/crocodile.jpg",

  "assets/dog.jpg",
  "assets/buffalo.jpg",
  "assets/cat.jpg",
  "assets/cow.jpg",
  "assets/crocodile.jpg",
];

  Widget get _buildBody {
    return Stack(
      children: [
        Container(
            decoration:BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green,Colors.white,Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
            )
        ),
        ListView.builder(
          controller: controller,
          itemCount: lstAssetsImage.length,
          itemBuilder: (context, index){
            return Column(
              children: [
              //   Text("Item$index",
              //     style: TextStyle(
              //       fontSize: 30
              //     ),),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    height: 250,
                    width: 390,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                            lstAssetsImage[index],
                          fit: BoxFit.cover,
                        )
                    ),
                ),
              ],
            );
           }
        ),
      ],



        // ListView(
        //   scrollDirection: Axis.vertical,
        //   children: [
        //     Container(
        //       padding: EdgeInsets.all(1),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Image(
        //               image: AssetImage("assets/cat.jpg",),
        //               fit: BoxFit.cover,
        //
        //
        //           )
        //         ],
        //       ),
        //     ),
        //     SizedBox(height: 10,),
        //     Container(
        //       padding: EdgeInsets.all(1),
        //       child: Row(
        //         children: [
        //           Image(image: AssetImage("assets/crocodile.jpg"),width: 388.7,height:220,)
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(1),
        //       child: Row(
        //         children: [
        //           Image(image: AssetImage("assets/dog.jpg"),width: 388.7,height:210,)
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(1),
        //       child: Row(
        //         children: [
        //           Image(image: AssetImage("assets/cow.jpg"),width: 388.7,height:220,)
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(1),
        //       child: Row(
        //         children: [
        //           Image(image: AssetImage("assets/buffalo.jpg"),
        //
        //             )
        //         ],
        //       ),
        //     )
        //   ],
        // )
    );
  }
}



