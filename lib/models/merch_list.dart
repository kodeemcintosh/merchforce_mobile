
import 'package:merchforce_mobile/models/merch.dart';

class MerchList {
  List<Merch> _merch_list;

  List<Merch> get merch_list => _merch_list;

  MerchList.fromJSON(Map<String, dynamic> jsonMap) :
    _merch_list = jsonMap['merch_list'];
}