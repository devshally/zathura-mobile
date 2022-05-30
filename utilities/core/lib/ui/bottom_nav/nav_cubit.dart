import 'package:core/core.dart';

class NavCubit extends Cubit<int> {
  NavCubit() : super(0);
  changeState(int value) => emit(value);
}