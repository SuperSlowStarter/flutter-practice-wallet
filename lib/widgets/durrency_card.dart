import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final String amount;
  final String money;
  final IconData icon;
  final bool isInverted;
  final double order;

  final _blackColor = const Color(0xff1f2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.money,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        money,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.6),
                          fontSize: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                  scale: 1.9,
                  child: Transform.translate(
                    offset: const Offset(16, 15),
                    child: Icon(
                      icon,
                      color: isInverted ? _blackColor : Colors.white,
                      size: 88,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
