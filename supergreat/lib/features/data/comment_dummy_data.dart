class Comment {
  final String imgUrl;
  final String name;
  final String comment;

  Comment({
    this.imgUrl,
    this.name,
    this.comment,
  });
}

List<Comment> comments = [
  Comment(
      imgUrl: 'images/profile_vid1.png',
      name: 'sesame',
      comment: 'obsessed w mine'),
  Comment(
      imgUrl: 'images/profile_vid2.png',
      name: 'caitbrb',
      comment: 'Loved this one'),
  Comment(
      imgUrl: 'images/profile_vid3.png',
      name: 'sadeBaeza',
      comment: 'like this beautiful'),
  Comment(
      imgUrl: 'images/profile_vid4.png',
      name: 'smileMore',
      comment: 'really enjoyable!'),
  Comment(
      imgUrl: 'images/profile_vid5.png',
      name: 'getReadyJen',
      comment: 'its so pretty'),
];
