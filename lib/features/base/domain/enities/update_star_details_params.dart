class UpdateStarDetailsParams {
  final String? date;
  final String note;
  final int campaignId;
  final int starId;

  UpdateStarDetailsParams({required this.date, required this.note, required this.campaignId, required this.starId});

  String get urlHeader => "/$campaignId/star/$starId";

  Map<String, dynamic> toJson() {
    return {
      if (date != null) "launchDate": date,
      "note": note
    };
  }
}
