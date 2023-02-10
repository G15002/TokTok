import './user.dart';

class Video {
  final String videoUrl;
  final User postedBy;
  final String caption;
  final String auuidoName;
  final String likes;
  final String favors;
  final String comments;

  Video(this.videoUrl, this.postedBy, 
  this.caption, this.auuidoName, 
  this.likes, this.favors, this.comments);
}