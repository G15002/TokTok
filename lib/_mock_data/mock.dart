import '../models/user.dart';
import '../models/video.dart';
import '../models/react.dart';

User currentUser = User (
  'stackedList',
  'https://kynguyenlamdep.com/wp-content/uploads/2022/06/anh-gai-xinh-cuc-dep.jpg',
);

User demouser1 = User (
  'user_1',
  'https://picsum.photos/id/1062/400/400',
);

User demouser2 = User (
  'user_2',
  'https://kenh14cdn.com/thumb_w/660/2020/5/28/0-1590653959375414280410.jpg',
);

User demouser3 = User (
  'user_3',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWUGgdplA22yo5dbSt5M7LhpiSc8d8jS89Zg&usqp=CAU',
);

User demouser4 = User (
  'user_4',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcL8kPio6tO9feMEJlQZ1souxVIh38KSnbPg&usqp=CAU',
);

final List<Video> videos = [
  Video('v1.mp4', demouser1, 'caption', 'audioName', '12.5k', '10.1k', '123'),
  Video('v2.mp4', demouser2, 'caption', 'audioName', '1.4M', '39k','54k'),
  Video('v3.mp4', demouser3, 'caption', 'audioName', '100k', '1.7k','2k'),
  Video('v4.mp4', demouser4, 'caption', 'audioName', '50', '2','25'),
];


final List<React> reacts = [
  React('heart.svg', 'heart'),
  React('like.svg', 'like'),
  React('haha.svg', 'haha'),
  React('sad.svg', 'sad'),
  React('angry.svg', 'angry'),
];


