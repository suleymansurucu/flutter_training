class CustomerDatabase {
  int? _customerId;
  String? _customerName;

  CustomerDatabase(this._customerId, this._customerName) {
    print("contruction called...");

  }
  String get customerAlertNo => "Musteri Id: $_customerId";
  void set customerIdCheck(int no) {
    if (no > 0) {
      _customerId = no;
    } else
      return;
  }


}
