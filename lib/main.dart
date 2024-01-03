import 'package:flutter/material.dart';

void main() {
  runApp(Business_Card_App());
}

class Business_Card_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFF2D3E50),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 112,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('image/logo.jpg'),
                ),
              ),
              const SelectableText(
                'Mohamed Ehap',
                style: TextStyle(
                    color: Colors.white, fontSize: 32, fontFamily: 'Pacifico'),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Color(0xFFAFAFAF),
                  fontSize: 17,
                ),
              ),
              const Divider(
                //aline in center of container
                color: Color(0xFFAFAFAF),
                thickness: 1, //the thick of th divider
                indent: 60, //resize from left or start
                endIndent: 60, //resize from right or end
                height: 10, //the space from up and down
              ),
              Padding(
                //padding: EdgeInsets.all(16),//minimize the container
                //this method of pendding make space between two container as we use all
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: SelectionArea(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 65,
                      child: const Row(
                        children: [
                          Icon(Icons.phone, size: 32, color: Color(0xFF2D3E50)),
                          Padding(
                            padding: EdgeInsets.only(left: 22),
                            child: Text(
                              '(+20) 1099750748',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SelectionArea(
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8), //make a space on container of it
                    // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),//make space on child of it 'Row'
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    height: 65,
                    child: const Row(
                      children: [
                        Icon(Icons.mail, size: 30, color: Color(0xFF2D3E50)),
                        //Spacer(flex: 1),//spacer make text of two container not on same line
                        Padding(
                          padding: EdgeInsets.only(left: 22),
                          child: Text(
                            'mohamedehap172004@gmail',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
