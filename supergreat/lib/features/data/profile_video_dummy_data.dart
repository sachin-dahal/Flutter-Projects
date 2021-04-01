class Video {
  final String imgUrl;
  final String imgUrlBrand;
  final String brandTitle;
  final String brandSubtitle;

  Video({
    this.imgUrl,
    this.imgUrlBrand,
    this.brandTitle,
    this.brandSubtitle,
  });
}

List<Video> profileVideos = [
  Video(
    imgUrl: "images/profile_vid1.png",
    imgUrlBrand: "images/liner.png",
    brandTitle: "Janellebeauty",
    brandSubtitle: "Volume Liftscara",
  ),
  Video(
    imgUrl: "images/profile_vid2.png",
    imgUrlBrand: "images/liner.png",
    brandTitle: "NYX",
    brandSubtitle: "On The Rise",
  ),
  Video(
    imgUrl: "images/profile_vid3.png",
    imgUrlBrand: "images/liner.png",
    brandTitle: "NYX",
    brandSubtitle: "Volume Liftscara",
  ),
  Video(
    imgUrl: "images/profile_vid4.png",
    imgUrlBrand: "images/liner.png",
    brandTitle: "Brazilian",
    brandSubtitle: "On The Rise",
  ),
  Video(
    imgUrl: "images/profile_vid5.png",
    imgUrlBrand: "images/liner.png",
    brandTitle: "Awandria",
    brandSubtitle: "Volume Liftscara",
  ),
];
