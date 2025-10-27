import './/core/constants/global_imports.dart';

class XAndYValue {
  final double index;
  final double x;
  final String y;

  XAndYValue({
    required this.index,
    required this.x,
    required this.y,
  });
}

class CategoryData {
  final String name;
  final double percentage;
  final String subTitle;
  final Color color;

  CategoryData({
    required this.name,
    required this.percentage,
    this.subTitle = '',
    required this.color,
  });
}

class LineChartsData {
  final String title;
  final double? pec;
  final bool isDot;
  final bool? isDistribution;
  final String markTitle;
  final List<XAndYValue> model;
  final String? notes1;
  final String? notes2;
  final double? malePec;
  final double? femalePec;

  LineChartsData({
    required this.title,
    required this.pec,
    required this.isDot,
    required this.markTitle,
    required this.model,
    this.isDistribution = false,
    this.malePec = 0.0,
    this.femalePec = 0.0,
    this.notes1,
    this.notes2,
  });
}

class AnalysisStatus {
  final String statusText;
  final Color roundColor;
  final Color statusColor;

  AnalysisStatus({
    required this.statusText,
    required this.roundColor,
    required this.statusColor,
  });
}

class AudienceChartsData {
  final String title;
  final String follower;
  final List<CategoryData> model;

  AudienceChartsData({
    required this.title,
    required this.follower,
    required this.model,
  });
}
