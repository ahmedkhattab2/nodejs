  import 'package:flutter/material.dart';
 import 'package:nodejs/model.dart';

class CustomList extends StatefulWidget {
  CustomList({Key? key,required this.human}) : super(key: key);
Human? human;

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: Text('${widget.human!.age}\$'),
         leading: Image.network(widget.human!.name),
          title: Text("${widget.human!.title}"),
         subtitle: Text("${widget.human!.adress}"),
        ),
        Divider(thickness:5 ,height: 7,color: Colors.black12,)
      ],
    );
  }
}
