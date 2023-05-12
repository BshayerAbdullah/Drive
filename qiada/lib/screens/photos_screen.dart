import 'package:flutter/material.dart';
import '/Person.dart';

class PhotosScreen extends StatefulWidget {
  @override
  _PhotosScreenState createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  List<Person> persons = [
    Person(name: 'اندماج من ناحية اليسار', profileImg: 'images/img1.png'),
    Person(name: 'اتجاه السير الإجباري إلى اليمين', profileImg: 'images/img3.png'),
    Person(name: 'اتجاه أعمال طرق', profileImg: 'images/img4.png'),
    Person(name: 'طريق غير مستوي', profileImg: 'images/img2.png'),
    Person(name: 'ممنوع الوقوف والانتظار', profileImg: 'images/img5.png'),
    Person(name: 'مسار الدراجات الهوائية', profileImg: 'images/img6.png')
  ];

  Widget personDetailCard(Person) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(Person.profileImg)))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      Person.name,
                      style: TextStyle(
                          color: Color.fromARGB(255, 54, 52, 52), fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            children: <Widget>[
              Column(
                  children: persons.map((p) {
                return personDetailCard(p);
              }).toList())
            ],
          ),
        ),
      ),
    );
  }
}
