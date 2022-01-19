import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizantal and vertical List view'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10.0),
                    child: Center(
                      child:
                        Image.asset
                          ('images/earth.png'),
                      ),
                    ),
                    //color: Colors.green[700],
                  ),
                ),
              Flexible(
                child: ListView.builder(
                  itemCount: 100,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index)=>ListTile(
                    title: Text('List$index'),
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
