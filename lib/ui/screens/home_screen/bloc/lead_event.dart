part of 'lead_bloc.dart';

@immutable
abstract class LeadEvent extends Equatable{
  const LeadEvent();
}
class LeadApiEvent extends LeadEvent{
  @override
  List<Object?> get props => [];
}
