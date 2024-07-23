import 'package:app/models/items.dart';
import 'package:flutter/material.dart';

class CustomeRow extends StatefulWidget {
  const CustomeRow({super.key, required this.habbit});
  final MyItem habbit;

  @override
  State<CustomeRow> createState() => _CUstomeRowState();
}

class _CUstomeRowState extends State<CustomeRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .3,
            width: MediaQuery.sizeOf(context).width * .3,
            child: Image(image: AssetImage(widget.habbit.imagePath)),
          ),
          Text("${widget.habbit.title}   ${widget.habbit.counter} ",
            style:const TextStyle(
              fontSize: 24
            ),
          
          ),
         const SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundColor: widget.habbit.itemcolor,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    widget.habbit.counter++;
                  });
                },
                icon:const Icon(Icons.add)),
          ),
          const SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: widget.habbit.itemcolor,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    widget.habbit.counter--;
                  });
                },
                icon:const Icon(Icons.remove)),
          ),
        ],
      ),
    );
  }
}
