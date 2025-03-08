import 'dart:convert';

class ResponModelList<T> {
  final String? status;
  final int? code;
  final String? message;
  final List<T>? data;

  ResponModelList({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  factory ResponModelList.fromRawJson(
          String str, T Function(Map<String, dynamic>) fromJsonT) =>
      ResponModelList.fromJson(json.decode(str), fromJsonT);

  factory ResponModelList.fromJson(Map<String, dynamic> json,
          T Function(Map<String, dynamic>) fromJsonT) =>
      ResponModelList(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["Products"] == null
            ? []
            : List<T>.from(json["Products"]!.map((x) => fromJsonT(x))),
      );

}
class ResponModelMap<T> {
  final String? status;
  final int? code;
  final String? message;
  final T? data;

  ResponModelMap({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  factory ResponModelMap.fromRawJson(
          String str, T Function(Map<String, dynamic>) fromJsonT) =>
      ResponModelMap.fromJson(json.decode(str), fromJsonT);


  factory ResponModelMap.fromJson(Map<String, dynamic> json,
          T Function(Map<String, dynamic>) fromJsonT) =>
      ResponModelMap(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : fromJsonT(json["data"]),
      );


}
