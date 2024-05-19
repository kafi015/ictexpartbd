class StudentReviewModel {
  List<Status>? status;
  List<Status>? data;

  StudentReviewModel({this.status, this.data});

  StudentReviewModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] != null) {
      status = <Status>[];
      json['status'].forEach((v) {
        status!.add(new Status.fromJson(v));
      });
    }
    if (json['data'] != null) {
      data = <Status>[];
      json['data'].forEach((v) {
        data!.add(new Status.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status!.map((v) => v.toJson()).toList();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Status {
  int? id;
  String? name;
  String? background;
  String? comment;
  String? createdAt;
  String? updatedAt;

  Status(
      {this.id,
        this.name,
        this.background,
        this.comment,
        this.createdAt,
        this.updatedAt});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    background = json['background'];
    comment = json['comment'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['background'] = this.background;
    data['comment'] = this.comment;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
