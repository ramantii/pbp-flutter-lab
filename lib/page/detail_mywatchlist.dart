import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/util/drawer.dart';
import 'package:counter_7/page/detail_mywatchlist.dart';

class MyWatchListDetailPage extends StatefulWidget {
  MyWatchListDetailPage({super.key, this.watchlistItem});

  var watchlistItem;

  @override
  State<MyWatchListDetailPage> createState() => _MyWatchListDetailPageState();
}

class _MyWatchListDetailPageState extends State<MyWatchListDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Detail")),
        drawer: const MyDrawer(),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.watchlistItem.fields.title,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const Text(''),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Release Date: ',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 44, 45, 88),
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text: DateFormat("MMM dd, y").format(
                                    widget.watchlistItem.fields.releaseDate),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Rating: ',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    '${widget.watchlistItem.fields.rating}/10',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Status: ',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text: widget.watchlistItem.fields.watched
                                    ? "watched"
                                    : "not yet watched",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Review: ',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text: '${widget.watchlistItem.fields.review}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Expanded(child: Container()),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back"),
                  ),
                ])));
  }
}
