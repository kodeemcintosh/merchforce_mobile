
import 'package:merchforce_mobile/models/merch_summary.dart';

class Merch extends MerchSummary {
  // Account({
  //   this.userId,
  //   this.username,
  //   this.email
  //   });


  Map<String, Map<String, int>> _availability;
  String _description;
  List<_TechSpec> _tech_specs;


  Map<String, Map<String, int>> get availability => _availability;
  String get description => _description;
  List<_TechSpec> get tech_spechs => _tech_specs;

  Merch.fromJSON(Map<String, dynamic> jsonMap) :
    _availability = jsonMap['availability'],
    _description = jsonMap['description'],
    _tech_specs = jsonMap['tech-specs'];
}


class _TechSpec {
  String _category;
  String _description;

  String get category => _category;
  String get description => _description;

  _TechSpec.fromJSON(Map<String, dynamic> jsonMap) :
    _category = jsonMap['category'],
    _description = jsonMap['description'];
}