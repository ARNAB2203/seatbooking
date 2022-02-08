import 'package:flutter/material.dart';
import 'package:virtusa2/model/destination_model.dart';
import 'package:virtusa2/ui/seat_page.dart';

import '../../theme.dart';

class DestinationTile extends StatelessWidget {
  final DestinationModel destination;
  final String selectedDate;

  const DestinationTile(
    this.destination,
    this.selectedDate, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChooseSeatPage(destination, selectedDate),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: sWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    destination.imageUrl,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name + " for " + destination.city,
                    style: destinationStyle1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination.time,
                    style: destinationStyle2,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  margin: const EdgeInsets.only(right: 2),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_star.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  destination.rating.toString(),
                  style: ratingStyle1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
