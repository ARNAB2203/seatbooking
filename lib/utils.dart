import 'package:intl/intl.dart';

import 'model/destination_model.dart';

List<DestinationModel> dest = [
  const DestinationModel(
    id: '001',
    name: 'A B  Travellers',
    city: 'BLR',
    time: '06:30',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 4.5,
    price: 2500,
  ),
  const DestinationModel(
    id: '002',
    name: 'C D Travellers',
    city: 'HYD',
    time: '07:30',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 4.3,
    price: 2000,
  ),
  const DestinationModel(
    id: '003',
    name: 'E F Travellers',
    city: 'KOL',
    time: '08:30',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 4.0,
    price: 2600,
  ),
  const DestinationModel(
    id: '004',
    name: 'G H Travellers',
    city: 'BOM',
    time: '10:00',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 3.5,
    price: 3000,
  ),
  const DestinationModel(
    id: '005',
    name: 'I J Travellers',
    city: 'PUN',
    time: '12:30',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 3.9,
    price: 2000,
  ),
  const DestinationModel(
    id: '006',
    name: 'K L Travellers',
    city: 'CHN',
    time: '13:30',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 3.0,
    price: 2300,
  ),
  const DestinationModel(
    id: '007',
    name: 'M N Travellers',
    city: 'GOA',
    time: '14:00',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 4.9,
    price: 2400,
  ),
  const DestinationModel(
    id: '008',
    name: 'O P Travellers',
    city: 'DEL',
    time: '16:00',
    imageUrl:
    'https://image.shutterstock.com/image-vector/vector-illustration-isolated-on-white-260nw-1076597264.jpg',
    rating: 2.5,
    price: 1500,
  ),
];

/// Get date as a string for display.
String getFormattedDate(String date) {
  /// Convert into local date format.
  var localDate = DateTime.parse(date).toLocal();

  /// inputFormat - format getting from api or other func.
  /// e.g If 2021-05-27 9:34:12.781341 then format should be yyyy-MM-dd HH:mm
  /// If 27/05/2021 9:34:12.781341 then format should be dd/MM/yyyy HH:mm
  var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
  var inputDate = inputFormat.parse(localDate.toString());

  /// outputFormat - convert into format you want to show.
  var outputFormat = DateFormat('dd/MM/yyyy');
  var outputDate = outputFormat.format(inputDate);

  return outputDate.toString();
}