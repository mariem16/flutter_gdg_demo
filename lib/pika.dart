class pika {
  String _name;
  String _description;
  String _image_url;

  pika(this._name, this._description, this._image_url);

  String get image_url => _image_url;

  set image_url(String value) {
    _image_url = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
