import 'package:exchange_rate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyScreen extends StatefulWidget {
  const CurrencyScreen({super.key});

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Currency",
        style: TextStyle(color: Colors.black, fontSize: 25),
      )),
class CurrencyItems extends StatelessWidget {
  const CurrencyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return _buildCurrencyItem(context, index);
      },
      itemCount: Constants.flagCurrency.length,
    );
  }

  Widget _buildCurrencyInfo(BuildContext context, int index) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Color(0xFFDDDDDD),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: SizedBox(
            height: 55,
            width: 55,
            child: SvgPicture.asset(
              "assets/images/${Constants.flagCurrency[index]}.svg",
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.nameCurrency[index],
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              Constants.flagCurrency[index].toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCurrencyDetails(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              "60000".persianNumber,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          width: 50,
          height: 25,
          decoration: BoxDecoration(
            color: const Color(0xFF62E226),
            border: Border.all(
              color: Constants.blackColor,
              width: 2,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Center(
            child: Text(
              "2.4".persianNumber,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    );
  }
}
