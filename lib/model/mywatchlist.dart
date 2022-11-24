class MyWatchList {
  bool watched;
  String title;
  int rating;
  String released_date;
  String review;

  MyWatchList({
    required this.watched,
    required this.title,
    required this.rating,
    required this.released_date,
    required this.review,
  });

  factory MyWatchList.fromJson(Map<String, dynamic> json) => MyWatchList(
        watched: json["fields"]["watched"],
        title: json["fields"]["title"],
        rating: json["fields"]["rating"],
        released_date: json["fields"]["released_date"],
        review: json["fields"]["review"],
      );
}
