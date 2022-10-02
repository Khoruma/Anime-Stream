import 'package:bloc/bloc.dart';

class ReleasePageCubit extends Cubit<int> {
  ReleasePageCubit() : super(0);

  void setPage(int newPage){
    emit(newPage);
  }
}
