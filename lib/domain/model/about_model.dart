class AboutData {
  Status? status;
  Status? data;

  AboutData({this.status, this.data});

  AboutData.fromJson(Map<String, dynamic> json) {
    status =
    json['status'] != null ? new Status.fromJson(json['status']) : null;
    data = json['data'] != null ? new Status.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Status {
  String? subTitle;
  String? thumbnail;
  String? description;
  String? advice;
  String? personImage;
  Null createdAt;
  String? updatedAt;

  Status(
      {this.subTitle,
        this.thumbnail,
        this.description,
        this.advice,
        this.personImage,
        this.createdAt,
        this.updatedAt});

  Status.fromJson(Map<String, dynamic> json) {
    subTitle = json['subTitle'];
    thumbnail = json['thumbnail'];
    description = json['description'];
    advice = json['advice'];
    personImage = json['personImage'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subTitle'] = this.subTitle;
    data['thumbnail'] = this.thumbnail;
    data['description'] = this.description;
    data['advice'] = this.advice;
    data['personImage'] = this.personImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
