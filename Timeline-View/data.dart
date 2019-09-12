import 'package:flutter/material.dart';

class Doodle {
  final String name;
  final String time;
  final String content;
  final String doodle;
  final Color iconBackground;
  final Icon icon;
  const Doodle(
      {this.name,
      this.time,
      this.content,
      this.doodle,
      this.icon,
      this.iconBackground});
}

const List<Doodle> doodles = [
  Doodle(
      name: "Al-Sufi (Azophi)",
      time: "20 Aug 2019",
      content:
          """このページでは、訪問者にHTMLチュートリアルPDFを提供しています。 Phptpointは、PHP学習者を対象にしています。関連する毎分情報を収集しました
         """,
      doodle:
          "https://www.google.com/logos/doodles/2016/abd-al-rahman-al-sufis-azophi-1113th-birthday-5115602948587520-hp2x.jpg",
      icon: Icon(Icons.star, color: Colors.white),
      iconBackground: Colors.cyan),
  Doodle(
      name: "Onam Celebration",
      time: "20 Aug 2019",
      content:
          " Onam is an annual Harvest festival in the state of Kerala in India.",
      doodle:
          "https://www.google.com/logos/doodles/2015/abu-al-wafa-al-buzjanis-1075th-birthday-5436382608621568-hp2x.jpg",
      icon: Icon(
        Icons.exposure,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Doodle(
      name: "Al-Hasan Ibn al-Haytham",
      time: "c. 965 - c. 1040",
      content:
          "Ibn al-Haytham was the first to explain through experimentation that vision occurs when light bounces on an.",
      doodle:
          "https://lh3.googleusercontent.com/ZTlbHDpH59p-aH2h3ggUdhByhuq1AfviGuoQpt3QqaC7bROzbKuARKeEfggkjRmAwfB1p4yKbcjPusNDNIE9O7STbc9C0SAU0hmyTjA=s660",
      icon: Icon(
        Icons.visibility,
        color: Colors.black87,
        size: 32.0,
      ),
      iconBackground: Colors.yellow),
  Doodle(
      name: "Al-Bīrūnī",
      time: "973 - 1050",
      content:
          "Biruni is regarded as one of the greatest scholars of the Golden Age of Muslim civilisation and was well ",
      doodle:
          "https://lh3.googleusercontent.com/bFwiXFZEum_vVibMzkgPlaKZMDc66W-S_cz1aPKbU0wyNzL_ucN_kXzjOlygywvf6Bcn3ipSLTsszGieEZTLKn9NHXnw8VJs4-xU6Br9cg=s660",
      icon: Icon(
        Icons.account_balance,
        color: Colors.black87,
      ),
      iconBackground: Colors.amber),
  Doodle(
      name: "Ibn Sina (Avicenna)",
      time: "980 - 1037",
      content:
          "Avicenna (Ibn Sīnā) was a Persian polymath who is regarded as one of the most significant physicians, ",
      doodle:
          "https://www.google.com/logos/doodles/2018/ibn-sinas-1038th-birthday-5768556863029248.2-2x.png",
      icon: Icon(
        Icons.healing,
        color: Colors.white,
      ),
      iconBackground: Colors.green),
  Doodle(
      name: "Ibn Rushd (Averroes)",
      time: "1126 - 1198",
      content:
          "Averroes was an Andalusian philosopher and thinker who wrote about many subjects, including philosophy,",
      doodle:
          "https://lh3.googleusercontent.com/vk5ODrDXkJXCJ9z2lMnQdMb9m5-HKxDvn_Q67J8PBKPT9n67iCQFj37tB62ARaQQKnKwig-CcBT9NODmzoqdM56_UTUKZRELLYoz1lVU=s800",
      icon: Icon(
        Icons.blur_circular,
        color: Colors.white,
      ),
      iconBackground: Colors.indigo),
  Doodle(
      name: "Nasir al-Din Tusi",
      time: "1201 - 1274",
      content:
          "Tusi was a Persian polymath, architect, philosopher, physician, scientist, and theologian. He is often ",
      doodle:
          "https://lh3.googleusercontent.com/UBa5VOLYZNb9sqCZJeMrrS5ZW-KpDBZ7haT8aLPpHzeOZ8K_6TCP03_n-5VKIaewaRVqYkTF09OwvI4oQ2L2IqaUyWlTUkJb4E1uZF0=s660",
      icon: Icon(
        Icons.category,
        color: Colors.white,
      ),
      iconBackground: Colors.pinkAccent),
  Doodle(
      name: "Ibn Battuta",
      time: "1304 - 1368",
      content:
          "Over a period of thirty years, Ibn Battuta visited most of the Islamic world and many non-Muslim lands, ",
      doodle:
          "https://lh3.googleusercontent.com/429NetsPejpMgeXqZuA15mCFLQykowhHNnbkSa1L8SHq9Kp9De-EBPlmOknzJ_HRykzt5FPhwpju_M3uKeuZlKegwdRQSzrH8NfdwR_B=s660",
      icon: Icon(
        Icons.navigation,
        color: Colors.white,
        size: 32.0,
      ),
      iconBackground: Colors.deepPurpleAccent),
  Doodle(
      name: "Ibn Khaldun",
      time: "1332 - 1406",
      content:
          "He is widely considered as a forerunner of the modern disciplines of historiography, sociology, .",
      doodle:
          "https://lh3.googleusercontent.com/TegzHFZQYIfV4lYsaXsZ-CUE_9Lp6qbJZXpSRzTWeLkNiQh0xRbt5KsI4s",
      icon: Icon(
        Icons.supervised_user_circle,
        color: Colors.white,
      ),
      iconBackground: Colors.teal),
  Doodle(
      name: "Piri Reis",
      time: "1465 - 1553",
      content:
          "He is primarily known today for his maps and charts collected in his Kitab-ı Bahriye (Book o",
      doodle:
          "https://lh3.googleusercontent.com/9tn671PjT5omvyhJ6xEIiTkkw4ck0vaTeHpyOtwCOE-SEumZbBdKLVFm2",
      icon: Icon(
        Icons.map,
        color: Colors.white,
        size: 32.0,
      ),
      iconBackground: Colors.blue),
];
