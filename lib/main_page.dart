


import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<int> counters =[0,0,0,0];
  List<String> azkar =['سبحان الله','الحمد لله','لا إاله إلا الله','الله أكبر'];
  late int selected;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sibha'),
        backgroundColor: Colors.teal,

      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                alignment: Alignment.center,
                width:200 ,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(color: Colors.teal)

                ),
                child: Text('${counters[selected]}',
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(

                      onPressed: (){
                        setState(() {

                        counters[selected]++;


                        });
                      },
                    color: Colors.teal,
                    height: 70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                    child: Text(
                      'Count',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        counters[selected]=0;

                      });
                    },
                    color: Colors.teal,
                    height: 70,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                    child: Text(
                      'Reset',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                ],
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40,top: 20),
                  child: ListView(
                    children: [

                   CheckboxListTile(
                       controlAffinity: ListTileControlAffinity.leading,
                       title: Text(azkar[0]),
                       value: selected==0,
                       onChanged: (value)
                       {
                           setState(() {

                             selected=0;
                           });
                       }
                   ),
                      CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(azkar[1]),

                          value: selected == 1,
                          onChanged: (condition){
                            if(condition==true) {
                              setState(() {
                                selected=1;

                              });
                            }
                          }
                      ),
                      CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(azkar[2]),

                          value: selected == 2,
                          onChanged: (condition){
                            if(condition==true) {
                              setState(() {
                                selected=2;

                              });
                            }
                          }
                      ),
                      CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(azkar[3]),

                          value: selected == 3,
                          onChanged: (condition){
                            if(condition==true) {
                              setState(() {
                                selected=3;

                              });
                            }
                          }
                      ),
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
