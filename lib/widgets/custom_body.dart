import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notescubit/notes_cubit.dart';
import 'package:noteapp/widgets/custom_appbar.dart';
import 'package:noteapp/widgets/noteItem_listview.dart';

class CustomBody extends StatefulWidget {
  const CustomBody({
    super.key,
  });

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {

@override
void initState(){
  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          custom_appbar(title: "Notes",icon: Icons.search,),
          Expanded(child: NoteItemListView()),
        ],
      ),
    );
  }
}
