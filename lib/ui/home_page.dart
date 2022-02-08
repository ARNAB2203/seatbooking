import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:virtusa2/model/destination_model.dart';
import 'package:virtusa2/ui/widget/destination_tile.dart';
import 'package:virtusa2/utils.dart';

import '../theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedDate = getFormattedDate(DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: kBgColor,
      ),
      child: ListView(
        children: [
          header(),
          newDestinations(dest),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bus Bookings',
                  style: mainStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to travel?',
                  style: shadowStyle,
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_user.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget newDestinations(List<DestinationModel> destinations) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime.now(),
                    maxTime: DateTime(2025, 6, 7), onChanged: (date) {
                  print('change $date');
                }, onConfirm: (date) {
                  print('confirm $date');
                  setState(() {
                    _selectedDate = getFormattedDate(date.toString());
                  });
                }, currentTime: DateTime.now(), locale: LocaleType.en);
              },
              child: Column(
                children: [
                  Text(
                    'Select date',
                    style: shadowStyle,
                  ),
                  Text(
                    _selectedDate,
                    style: ratingStyle1,
                  ),
                ],
              )),
          Column(
            children: dest.map((DestinationModel destination) {
              return DestinationTile(destination, _selectedDate);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
