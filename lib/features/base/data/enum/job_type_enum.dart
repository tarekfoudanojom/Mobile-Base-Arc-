
enum BrandJobTypeEnum{
  // inProgress(name:"IN-PROGRESS" ),
  workInProgress(value:"WORK_IN_PROGRESS"),
  pastProjects(value: "PAST_PROJECT"),
  offer(value: "OFFER"),
  available(value:"AVAILABLE"),
  bidding(value: "BIDDING");

  // String getEnumValue() => switch(this){
  // inProgress=>"IN-PROGRESS",
  // pastProjects=>"PAST-PROJECT",
  // bidding=>"BIDDING",
  //   offer => "OFFER",
  // available=>"AVAILABLE",
  // };

  final String value;

  const BrandJobTypeEnum({required this.value});


}

