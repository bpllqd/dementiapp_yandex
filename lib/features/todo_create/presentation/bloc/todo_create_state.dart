part of 'todo_create_bloc.dart';

abstract class ToDoCreateState extends Equatable {}

class ToDoCreateInitState extends ToDoCreateState {
  @override
  List<Object?> get props => [];
}

class ToDoCreateLoadingState extends ToDoCreateState {
  @override
  List<Object?> get props => [];
}

class ToDoCreateSuccessState extends ToDoCreateState {
  final TaskEntity? task;
  final bool hasDate;

  ToDoCreateSuccessState({this.task, this.hasDate = false});

  @override
  List<Object?> get props => [task, hasDate];
}

class ToDoCreateErrorState extends ToDoCreateState {
  final String errorDescription;

  ToDoCreateErrorState({required this.errorDescription});
  @override
  List<Object?> get props => [errorDescription];
}
