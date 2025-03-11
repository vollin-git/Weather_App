class ApiResponse {
  Location? location;
  Current? current;

  ApiResponse({this.location, this.current});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    current =
    json['current'] != null ? new Current.fromJson(json['current']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
    return data;
  }
}

class Location {
  String? name;
  String? country;

  Location({this.name, this.country, });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['country'] = this.country;

    return data;
  }
}

class Current {
  double? tempC;
  int? isDay;
  Condition? condition;

  double? precipMm;
  int? humidity;
  String? localtime;

  double? windKph;

  double? uv;    // how to chnage the code so that i only get tempc,day condition ,precipmm humidity and uv in the output

  Current(
      {this.tempC,
        this.isDay,
        this.condition,
        this.precipMm,
        this.humidity,
        this.uv,
        this.localtime,

        this.windKph,


      });

  Current.fromJson(Map<String, dynamic> json) {
    tempC = json['temp_c'];
    isDay = json['is_day'];
    localtime =json['last_updated'];



    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;

    precipMm = json['precip_mm'];
    humidity = json['humidity'];
    uv = json['uv'];
    windKph =json['wind_Kph'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp_c'] = this.tempC;
    data['is_day'] = this.isDay;
    data['last_updated'] =this.localtime;

    if (this.condition != null) {
      data['condition'] = this.condition!.toJson();
    }
    data['precip_mm'] = this.precipMm;
    data['humidity'] = this.humidity;
    data['uv'] = this.uv;
    data['windKph'] = this.windKph;
    return data;
  }
}

class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['icon'] = this.icon;
    data['code'] = this.code;
    return data;
  }
}
