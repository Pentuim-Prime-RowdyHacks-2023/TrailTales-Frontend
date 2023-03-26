class TaleModel {

  String taleID;
  String? title;
  String? transcript;
  String? url;
  String? summary;

  TaleModel({
    required this.taleID,
    this.title,
    this.transcript,
    this.url,
    this.summary,
});
}