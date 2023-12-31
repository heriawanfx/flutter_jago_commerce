import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../assets_gen/assets.gen.dart';

import '../utils/custom_themes.dart';
import '../utils/dimensions.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final bool isBackButtonExist;
  final IconData? icon;
  final Function? onActionPressed;
  final Function? onBackPressed;

  const CustomAppBar(
      {Key? key,
      required this.title,
      this.isBackButtonExist = true,
      this.icon,
      this.onActionPressed,
      this.onBackPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
        child: Image.asset(
          MyAssets.images.toolbarBackground.path,
          fit: BoxFit.fill,
          height: 50 + MediaQuery.of(context).padding.top,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        height: 50,
        alignment: Alignment.center,
        child: Row(children: [
          isBackButtonExist
              ? IconButton(
                  icon: const Icon(Icons.arrow_back_ios,
                      size: 20, color: Colors.black),
                  onPressed: () => onBackPressed != null
                      ? onBackPressed!()
                      : context.canPop()
                          ? context.pop()
                          : null,
                )
              : const SizedBox.shrink(),
          const SizedBox(width: Dimensions.paddingSizeSmall),
          Expanded(
            child: Text(
              title ?? 'Electronic',
              style: titilliumRegular.copyWith(
                fontSize: 20,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          icon != null
              ? IconButton(
                  icon: Icon(icon,
                      size: Dimensions.iconSizeLarge, color: Colors.white),
                  onPressed: onActionPressed as void Function()?,
                )
              : const SizedBox.shrink(),
        ]),
      ),
    ]);
  }
}
