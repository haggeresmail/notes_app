import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 35,
            ),
          )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
   
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38 * 2,
        child: ListView.builder(
            itemCount: kColors.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color=kColors[index];
                    setState(() {});
                  },
                  child: ColorItem(
                    color: kColors[index],
                    isActive: currentIndex == index,
                  ),
                ),
              );
            }));
  }
}
