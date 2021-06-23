class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

List<BoardingModel> boarding = [
  BoardingModel(
    image: 'assets/board1.jpg',
    title: 'On Board 1 Title',
    body: 'On Board 1 Body',
  ),
  BoardingModel(
    image: 'assets/board2.jpg',
    title: 'On Board 2 Title',
    body: 'On Board 2 Body',
  ),
  BoardingModel(
    image: 'assets/board3.jpg',
    title: 'On Board 3 Title',
    body: 'On Board 3 Body',
  ),
];