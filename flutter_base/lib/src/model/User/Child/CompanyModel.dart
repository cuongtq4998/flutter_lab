class CompanyModel {
  String name;
  String catchPhrase;
  String bs;

  CompanyModel.fromJsonMap(Map<String, dynamic> data)
      : name = data["name"],
        catchPhrase = data["catchPhrase"],
        bs = data["bs"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['catchPhrase'] = catchPhrase;
    data['bs'] = bs;
    return data;
  }
}
