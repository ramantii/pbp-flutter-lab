import 'package:counter_7/util/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/util/fetch_mywatchlist.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/detail_mywatchlist.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    ListTile addListTile(MyWatchList myWatchList) => ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          leading: Container(
            padding: const EdgeInsets.only(right: 5),
            child: const Icon(Icons.autorenew, color: Colors.white),
          ),
          title: Text(
            myWatchList.fields.title,
          ),
          trailing: Checkbox(
            value: myWatchList.fields.watched,
            onChanged: (bool? newValue) {
              setState(() {
                myWatchList.fields.watched = !myWatchList.fields.watched;
              });
            },
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyWatchListDetailPage()));
          },
        );

    Card addCard(MyWatchList myWatchList) => Card(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
          elevation: 4,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: myWatchList.fields.watched ? Colors.green : Colors.red,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Container(
            child: addListTile(myWatchList),
          ),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const MyDrawer(),
      body: FutureBuilder(
          future: fetchWatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada watch list :(",
                      style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => addCard(snapshot.data![index]));
              }
            }
          }),
    );
  }
}
