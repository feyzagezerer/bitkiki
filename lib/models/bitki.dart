class Bitki {
  String _bitkiAdi;
  String _bitkiLatince;
  String _bitkiOzellikleri;
  String _bitkiFotograf;

  Bitki(this._bitkiAdi, this._bitkiLatince, this._bitkiOzellikleri,
      this._bitkiFotograf);

  String get bitkiFotograf => _bitkiFotograf;

  set bitkiFotograf(String value) {
    _bitkiFotograf = value;
  }

  String get bitkiLatince => _bitkiLatince;

  set bitkiLatince(String value) {
    _bitkiLatince = value;
  }

  String get bitkiOzellikleri => _bitkiOzellikleri;

  set bitkiOzellikleri(String value) {
    _bitkiOzellikleri = value;
  }

  String get bitkiAdi => _bitkiAdi;

  set bitkiAdi(String value) {
    _bitkiAdi = value;
  }
}
