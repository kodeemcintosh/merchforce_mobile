

class MerchSummary {
  // Account({
  //   this.userId,
  //   this.username,
  //   this.email
  //   });
  MerchSummary();

  String _id;
  String _name;
  String _brand;

  _Images _images;

  _Prices _prices;

  String get id => _id;
  String get name => _name;
  String get brand => _brand;

  _Images get photos => _images;

  _Prices get prices => _prices;


  MerchSummary.fromJSON(Map<String, dynamic> jsonMap) :
    _id = jsonMap['id'],
    _name = jsonMap['name'],
    _brand = jsonMap['brand'],
    _images = jsonMap['images'],
    _prices = jsonMap['prices'];
}



class _Prices {
  String _retail;
  String _actual;

  String get retail => _retail;
  String get actual => _actual;

  _Prices.fromJSON(Map<String, dynamic> jsonMap) :
    _retail = jsonMap['retail'],
    _actual = jsonMap['actual'];
}

class _Images {
  // default color for the initial display images
  String _default_color;
  Map<String, _ColorImages> _all_images;

  String get default_color => _default_color;
  Map<String, _ColorImages> get all_images => _all_images;

  _Images.fromJSON(Map<String, dynamic> jsonMap) :
    _default_color = jsonMap['default_color'],
    _all_images = jsonMap['all_images'];
}

class _ColorImages {
  // default image to represent this color
  String _default_image;
  List<String> _all_color_images;

  String get default_image => _default_image;
  List<String> get all_color_images => _all_color_images;


  _ColorImages.fromJSON(Map<String, dynamic> jsonMap) :
    _default_image = jsonMap['default_image'],
    _all_color_images = jsonMap['all_color_images'];
}