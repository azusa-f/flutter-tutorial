import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tutorial/residence/mvvm/model/residence_item.dart';

part 'residence_state.freezed.dart';

@freezed
class ResidenceState with _$ResidenceState {
  const factory ResidenceState({
    @Default(false) bool isLoading,
    @Default(<ResidenceItem>[]) List<ResidenceItem> residenceItems,
  }) = _ResidenceState;
}
