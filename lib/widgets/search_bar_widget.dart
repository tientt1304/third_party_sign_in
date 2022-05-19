import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:third_party_sign_in/model/foodModel.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Container(
      //   width: 320,
      //   height: 30,
      //   child: TypeAheadField<FoodModel>(
      //     suggestionsCallback: (String query) async {
      //       // return foodNotifier.foodList.where((food) {
      //       //   final nameLower = food.name.toLowerCase();
      //       //   final queryLower = query.toLowerCase();
      //       //   return nameLower.contains(queryLower);
      //       // }).toList();
      //     },
      //     itemBuilder: (context, FoodModel? suggestion) {
      //       final food = suggestion!;
      //       return ListTile(
      //         //leading: Image.network('${food.images}',
      //         // width: 35, fit: BoxFit.fitWidth),
      //         title: Text('food.name'),
      //         subtitle: Text('food.price VND'),
      //       );
      //     },
      //     noItemsFoundBuilder: (context) => Container(
      //       height: 30,
      //       child: Center(
      //         child: Text(
      //           'No Product Found.',
      //         ),
      //       ),
      //     ),
      //     onSuggestionSelected: (FoodModel? suggestion) {
      //       // Navigator.of(context).push(MaterialPageRoute(
      //       //     builder: (context) =>
      //       //         FoodDetailScreen(idFood: suggestion!.idFood)));
      //     },
      //     textFieldConfiguration: TextFieldConfiguration(
      //       decoration: InputDecoration(
      //         prefixIcon: Icon(
      //           Icons.search,
      //           color: Colors.white,
      //         ),
      //         border: OutlineInputBorder(),
      //         hintText: 'What do you want to order?',
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
