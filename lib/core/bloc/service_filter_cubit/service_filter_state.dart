part of 'service_filter_cubit.dart';

sealed class ServiceFilterState extends Equatable {
  final List<SkillModel> skillModelList;
  final List<SkillModel> tagsModelList;
  final bool changed;
  const ServiceFilterState(this.skillModelList, this.changed, this.tagsModelList);
}

final class ServiceFilterInitial extends ServiceFilterState {
   ServiceFilterInitial() : super([], false,[]);

  @override
  List<Object> get props => [];
}

class ServiceFilterUpdateState extends ServiceFilterState {
  const ServiceFilterUpdateState(super.skillModelList, super.changed, super.tagsModelList);

  @override
  List<Object> get props => [changed];
}
