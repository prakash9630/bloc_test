class JokesModel {
  String? type;
  String? setup;
  String? punchline;
  int? id;

  JokesModel({this.type, this.setup, this.punchline, this.id});

  JokesModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    setup = json['setup'];
    punchline = json['punchline'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['setup'] = setup;
    data['punchline'] = punchline;
    data['id'] = id;
    return data;
  }
}