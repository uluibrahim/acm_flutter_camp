import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/food_card/food_card_view_model.dart';

import 'package:flutter_learn/week3/core/localizate/application_strings.dart';
import 'package:flutter_learn/week3/core/widget/wrap/icon_text.dart';
import 'package:flutter_learn/week3/core/widget/card/food_card.dart';

class FoodCardView extends FoodCardViewModel {
  //  görünümlerin yazıldığı kısım
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: insetsAll,
        child: buildBody(),
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
        title: Text(
          ApplicationStrings.instance.cartTitle,
          style: textTheme.headline6!,
        ),
      );

  Widget buildBody() {
    return Column(
      children: [
        Expanded(flex: 8, child: buildListView()),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(child: buildRowSubTotal()),
              Expanded(child: buildRowDelivery()),
              Expanded(child: buildRowTotal()),
              Spacer(),
            ],
          ),
        ),
        Expanded(flex: 1, child: buildElevatedButtonCheckout()),
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemBuilder: (context, index) =>
          FoodCardWidget(model: foodItemList[index]),
      itemCount: foodItemList.length,
    );
  }

  Text buildtext(String title) => Text(title,
      style: textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold));

  ElevatedButton buildElevatedButtonCheckout() {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).accentColor)),
      onPressed: () {},
      child: IconTextWidget(
          icon: Icons.arrow_right, title: applicationStrings.checkOut),
    );
  }

  Row buildRowSubTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildtext(applicationStrings.subTotal),
        buildtext("csx"),
      ],
    );
  }

  Row buildRowDelivery() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildtext(applicationStrings.delivery),
        buildtext(applicationStrings.delivery),
      ],
    );
  }

  Row buildRowTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(applicationStrings.total, style: textTheme.headline5!),
        Text(
          "€ 9.30 ",
          style: textTheme.headline5!,
        )
      ],
    );
  }
}
