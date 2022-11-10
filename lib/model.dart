class Human {
  String name, title, age, image, adress;
  Human(
      {required this.adress,
      required this.age,
      required this.image,
      required this.name,
      required this.title});
  toMap() {
    return {
      "name": name,
      "title": title,
      "image": image,
      "age": age,
      "adreese": adress
    };
  }

  factory Human.formMap(Map<String, dynamic> json) {
    return Human(
        adress: json['adress'],
        age: json['age'],
        image: json['image'],
        name: json['name'],
        title: json['title']);
  }
}

//class Eman {
//   String? title;
//   String? name;
//   Eman({required this.name, required this.title});
//    factory Eman.formMap(json) {
//     return  Eman(  
//         name: json['name'],
//         title: json['title']);
//   }
// }
