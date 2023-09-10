import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../assets_gen/assets.gen.dart';
import '../../../../common/utils/color_resources.dart';
import '../../../../common/utils/custom_themes.dart';
import '../../../../common/utils/dimensions.dart';
import '../../../category/data/models/category_model.dart';

class CategoryItemWiget extends StatelessWidget {
  final CategoryModel category;
  const CategoryItemWiget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(
          '/products',
          extra: {
            'category_id': category.id,
            'category_name': category.name,
          },
        );
      },
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.width / 5,
          width: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(.2)),
            borderRadius: BorderRadius.circular(Dimensions.paddingSizeSmall),
            color: Theme.of(context).highlightColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.paddingSizeSmall),
            child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              placeholder: MyAssets.images.placeholder1x1.path,
              image: 'https://picsum.photos/20${category.id}',
              imageErrorBuilder: (c, o, s) => Image.asset(
                MyAssets.images.placeholder1x1.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: Dimensions.paddingSizeExtraSmall),
        Center(
          child: Text(
            category.name,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: titilliumRegular.copyWith(
                fontSize: Dimensions.fontSizeSmall,
                color: ColorResources.getTextTitle(context)),
          ),
        ),
      ]),
    );
  }
}