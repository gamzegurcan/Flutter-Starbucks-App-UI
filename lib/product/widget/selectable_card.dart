import 'package:flutter/material.dart';
import 'package:starbucks_app/core/constant/colors/app_colors.dart';

class SelectableCard extends StatefulWidget {
  final bool? selectSize ;
  final double? height;
  final double? width;
  final String? image;

  const SelectableCard(
      {Key? key, this.height, this.width, required this.selectSize, this.image})
      : super(key: key);

  @override
  State<SelectableCard> createState() => _SelectableCardState();
}

class _SelectableCardState extends State<SelectableCard> {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: InkWell(
        onTap: () {
          setState(() {
            widget.selectSize == false ? widget.selectSize = true : widget.selectSize = false;
          });
        },
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: widget.selectSize == false
                  ? AppColors.grey
                  : AppColors.darkGreenPrimary,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: widget.selectSize == false
              ? AppColors.buttonGrey
              : AppColors.grey,
          child: Image.asset(widget.image!),
        ),
      ),
    );
  }
}
