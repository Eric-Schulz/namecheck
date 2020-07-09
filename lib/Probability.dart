class Probability{
  String country_id;
  double  probability;

  Probability({this.country_id,this.probability});

  factory Probability.fromJson(Map<String, dynamic> json){
    return Probability(
      country_id: json["country_id"],
      probability: json["probability"],
    );
  }
}
