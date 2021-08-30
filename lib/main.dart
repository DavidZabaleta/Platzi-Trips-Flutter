import 'package:flutter/material.dart';
import 'package:platzi_trips_app/domain/data/description_place_data.dart';
import 'package:platzi_trips_app/domain/data/review_data.dart';
import 'package:platzi_trips_app/utills/operations_utils.dart';
import 'package:platzi_trips_app/view/description_place/description_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<ReviewData> reviews = List.empty(growable: true);

    ReviewData reviewData = ReviewData(
        userFullName: 'Paco',
        pathProfilePicture: 'res/img/profile-pic.jpg',
        userReviewHistory: '1 review 3 photos',
        userReviewScore: 2.5,
        userReviewComment: 'Meeeh... It was nice');

    ReviewData reviewData2 = ReviewData(
        userFullName: 'Paca',
        pathProfilePicture: 'res/img/profile-pic.jpg',
        userReviewHistory: '6 review 0 photos',
        userReviewScore: 2.6,
        userReviewComment: 'Ufff nice');

    ReviewData reviewData3 = ReviewData(
        userFullName: 'Paca',
        pathProfilePicture: 'res/img/profile-pic.jpg',
        userReviewHistory: '6 review 0 photos',
        userReviewScore: 4.6,
        userReviewComment: 'Ufff nice');

    ReviewData reviewData4 = ReviewData(
        userFullName: 'Paca',
        pathProfilePicture: 'res/img/profile-pic.jpg',
        userReviewHistory: '6 review 0 photos',
        userReviewScore: 3.1,
        userReviewComment: 'Ufff nice');

    ReviewData reviewData5 = ReviewData(
        userFullName: 'Paca',
        pathProfilePicture: 'res/img/profile-pic.jpg',
        userReviewHistory: '6 review 0 photos',
        userReviewScore: 5,
        userReviewComment: 'Ufff nice');

    reviews.add(reviewData);
    reviews.add(reviewData2);
    reviews.add(reviewData3);
    reviews.add(reviewData4);
    reviews.add(reviewData5);

    DescriptionPlaceData descriptionPlaceData = DescriptionPlaceData(
        placeName: 'Pruebilla',
        score: OperationsUtils.generateOverallScorePlace(reviews
            .map((review) => review.userReviewScore)
            .toList()),
        description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl nisi scelerisque eu ultrices vitae auctor eu augue. Interdum velit laoreet id donec ultrices tincidunt arcu non. Augue eget arcu dictum varius duis at consectetur lorem. Nibh cras pulvinar mattis nunc. Metus aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices. Ut diam quam nulla porttitor massa id neque aliquam. Neque viverra justo nec ultrices. Imperdiet nulla malesuada pellentesque elit eget gravida. Nam at lectus urna duis convallis convallis tellus. Sed egestas egestas fringilla phasellus faucibus. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget. Adipiscing diam donec adipiscing tristique risus. Nunc sed blandit libero volutpat sed cras. Vulputate eu scelerisque felis imperdiet proin. Sed faucibus turpis in eu mi. Nunc lobortis mattis aliquam faucibus.\n\nTempor nec feugiat nisl pretium fusce id velit ut. Pretium viverra suspendisse potenti nullam. Montes nascetur ridiculus mus mauris vitae ultricies leo integer. Ipsum consequat nisl vel pretium. In eu mi bibendum neque egestas congue quisque egestas. Leo a diam sollicitudin tempor id eu nisl nunc. Congue eu consequat ac felis. Sed id semper risus in hendrerit. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Iaculis urna id volutpat lacus. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Non consectetur a erat nam. Dolor magna eget est lorem ipsum dolor sit. Tempus quam pellentesque nec nam aliquam sem et tortor. Ut lectus arcu bibendum at varius vel pharetra. Scelerisque fermentum dui faucibus in. Pretium nibh ipsum consequat nisl vel pretium lectus. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Malesuada fames ac turpis egestas sed tempus urna et. Purus sit amet luctus venenatis lectus magna.',
        reviews: reviews);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color(0x000000)
      ),
      home: Scaffold(
        body: DescriptionPlace(descriptionPlaceData),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
