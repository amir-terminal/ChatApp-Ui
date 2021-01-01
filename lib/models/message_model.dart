import 'package:chatme/models/user_model.dart';

class Message {
  // User
  final User sender;
  final String time;
  final String text;
  bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.isLiked, this.text, this.unread});
}

//  Users ,Current user

final User currentUser =
    User(id: 0, name: 'Amir', imageUrl: 'assets/images/me.jpg');
final User kaskita =
    User(id: 1, name: 'kaskit', imageUrl: "assets/images/kaskita.jpg");
final User baghdad =
    User(id: 2, name: 'baghdad', imageUrl: 'assets/images/baghdad.jpg');
final User luffy =
    User(id: 3, name: 'Luffy', imageUrl: 'assets/images/luffy.jpg');
final User mohamed =
    User(id: 4, name: 'Mohamed', imageUrl: 'assets/images/mohamed.jpg');
final User hanouna =
    User(id: 5, name: 'Lhanouna', imageUrl: 'assets/images/hanouna.jpg');
final User grantita =
    User(id: 6, name: 'grantita', imageUrl: 'assets/images/grantita.jpg');
final User khnitcho =
    User(id: 7, name: 'khnitcho', imageUrl: 'assets/images/khnitcho.jpg');
final User koko = User(id: 8, name: 'Koko', imageUrl: 'assets/images/koko.jpg');
final User bou3lam =
    User(id: 9, name: 'bou3lam', imageUrl: 'assets/images/bou3lam.jpg');

// Fav contact
final List<User> onlineFriends = [mohamed, koko, hanouna, luffy, bou3lam];

// Chat Messages Exemple on home screen
final List<Message> chats = <Message>[
  Message(
      sender: kaskita,
      time: "6:08",
      text: "Win rak ?",
      isLiked: false,
      unread: true),
  Message(
      sender: luffy,
      time: "7:22",
      text:
          "Asma3 win rahoum li kanou kedeam darna mou9bil malkit hata wahed enfaite jib 2000da rah nbadal ",
      isLiked: false,
      unread: false),
  Message(
      sender: bou3lam,
      time: "8:12",
      text: "Asma3 win rahom draham",
      isLiked: false,
      unread: false),
  Message(
      sender: grantita,
      time: "13:12",
      text: "karim kal 3andma examen ",
      isLiked: false,
      unread: true),
  Message(
      sender: koko,
      time: "8:12",
      text: "chkoun yal3ab",
      isLiked: false,
      unread: true),
  Message(
      sender: hanouna,
      time: "2:12",
      text: "Missed call from hanouna ",
      isLiked: false,
      unread: false),
  Message(
      sender: luffy,
      time: "7:22",
      text:
          "Asma3 win rahoum li kanou kedeam darna mou9bil malkit hata wahed enfaite jib 2000da rah nbadal ",
      isLiked: false,
      unread: false),
  Message(
      sender: luffy,
      time: "7:22",
      text:
          "Asma3 win rahoum li kanou kedeam darna mou9bil malkit hata wahed enfaite jib 2000da rah nbadal ",
      isLiked: false,
      unread: false),
  Message(
      sender: luffy,
      time: "7:22",
      text:
          "Asma3 win rahoum li kanou kedeam darna mou9bil malkit hata wahed enfaite jib 2000da rah nbadal ",
      isLiked: false,
      unread: false),
  Message(
      sender: luffy,
      time: "7:22",
      text:
          "Asma3 win rahoum li kanou kedeam darna mou9bil malkit hata wahed enfaite jib 2000da rah nbadal ",
      isLiked: false,
      unread: false),
];

final List<Message> roomMessage = [
  Message(
   sender: currentUser,
   time: "20:22",
   text: 'Salut cava',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:24",
   text: 'oui et toi ?',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'cava hmd kiffach tu fais quoi ?',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: currentUser,
   time: "20:22",
   text: 'Rien juste je code une appli et toi',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'Mdr la meme chose..',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: currentUser,
   time: "20:22",
   text: 'qu\'elle genre d\'app tu dev',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: currentUser,
   time: "20:22",
   text: 'une simple app vraiment rien a faire ',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'ahh daccord ',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'et toi ',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'rien du ttt',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'aller a pluss',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: currentUser,
   time: "20:22",
   text: 'Salut cava',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'cava et toi?',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: koko,
   time: "20:22",
   text: 'je me demande qui et tu vraimet ',
   isLiked: false,
   unread: false
  ),
  Message(
   sender: currentUser,
   time: "20:22",
   text: 'Personne vraiment just un simple coder qui veut devenire un pilote de ligne mais je crois pas que sa vas vraiment passee wlh ',
   isLiked: false,
   unread: true
  ),
];
