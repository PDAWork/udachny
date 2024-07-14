import 'package:dfa_media/common/app_color.dart';
import 'package:dfa_media/common/app_text_style.dart';
import 'package:dfa_media/features/home/presentation/state/product/product_cubit.dart';
import 'package:dfa_media/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return switch (state) {
          ProductSuccess(:final product) => ListView.separated(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 114,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 114,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            product[index].image,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        product[index].title,
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.labelXS,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '${product[index].price} ₽/${product[index].unit.text}',
                                style: AppTextStyle.labelS
                                    .copyWith(color: AppColor.primary),
                              ),
                              product[index].salePrice == null
                                  ? const SizedBox()
                                  : Text(
                                      '${product[index].salePrice} ₽/${product[index].unit.text}',
                                      style: AppTextStyle.labelS.copyWith(
                                        color: AppColor.textProductSalePrice,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Assets.icon.addToCart.svg(
                              height: 16,
                              colorFilter: ColorFilter.mode(
                                AppColor.primary,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
              itemCount: product.length,
            ),
          _ => const SizedBox()
        };
      },
    );
  }
}
