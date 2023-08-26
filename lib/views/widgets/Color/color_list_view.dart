import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/views/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/Color/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int colorIndex = 0;
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
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              colorIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
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
