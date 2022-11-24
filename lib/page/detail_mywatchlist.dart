import 'package:counter_7/util/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/util/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';

class MyWatchListDetailPage extends StatelessWidget {
  final MyWatchList myWatchList;
  const MyWatchListDetailPage({super.key, required this.myWatchList});
  @override
  Widget build(BuildContext context) {
    final titleMyWatchlist = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          myWatchList.title,
          style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));

    final releaseDateMyWatchlist = Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          const Text(
            "Release Date: ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            myWatchList.released_date,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );

    final ratingMyWatchlist = Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          const Text(
            "Rating: ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            "${myWatchList.rating}/5",
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );

    final statusMyWatchlist = Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            const Text(
              "Status: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              myWatchList.watched ? 'watched' : 'not yet watched',
              style: const TextStyle(fontSize: 20),
            )
          ],
        ));

    final reviewMyWatchlist = Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Flexible(
                child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text: 'Review: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: myWatchList.review,
                  ),
                ],
              ),
            )),
          ],
        ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: <Widget>[
          titleMyWatchlist,
          releaseDateMyWatchlist,
          ratingMyWatchlist,
          statusMyWatchlist,
          reviewMyWatchlist,
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
