class Consultant {
  int id;
  String name;
  String address;
  String bio;
  // ignore: non_constant_identifier_names
  double total_coust;
  String coust;
  String discount;
  String rate;
  String image;
  String experince;
  var availableIn;
  // ignore: non_constant_identifier_names
  List<ConsulAvailable> available_in;

  Consultant({
    this.id,
    this.name,
    this.address,
    this.bio,
    // ignore: non_constant_identifier_names
    this.total_coust,
    this.coust,
    this.discount,
    this.rate,
    this.image,
    this.experince,
    // ignore: non_constant_identifier_names
    this.available_in,
    this.availableIn,
  });
}

class Date {
  String data;
  Date({this.data});
}

class ConsulAvailable {
  String date;
  List<AvailableTimes> availableTimes;
  ConsulAvailable({
    this.date,
    this.availableTimes,
  });
}

class AvailableTimes {
  int id;
  String date;
  String time;
  AvailableTimes({
    this.id,
    this.date,
    this.time,
  });
}

List<Consultant> consultantList = [];
