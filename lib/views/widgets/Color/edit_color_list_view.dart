import 'package:flutter/material.dart';
import 'package:notes_app/views/models/notes_model.dart';
import 'package:notes_app/views/widgets/Color/color_item.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});

  final NotesModel note;

  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int colorIndex;

  List<Color> colors = const [
    Color(0xffFFFFFF),
    Color(0xffBAD4AA),
    Color(0xffd4d4aa),
    Color(0xffD4A9A9),
    Color(0xffDFF5F3),
    Color(0xffEFDFF5),
    Color(0xffF5DFDF),
    Color(0xffD4CCA9),
    Color(0xffFFFAFA),
    Color(0xffA9D4D2),
  ];

  @override
  void initState() {
    colorIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              colorIndex = index;
              widget.note.color = colors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: colorIndex == index,
            ),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 5),
      ),
    );
  }
}
