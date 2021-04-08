import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_basic_injection/repository/MyRepository.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final MyRepository myRepository;

  CounterBloc(this.myRepository) : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
