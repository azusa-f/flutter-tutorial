import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tutorial/merukari/mvvm/model/merukari_item.dart';

part 'merukari_state.freezed.dart';

@freezed
class MerukariState with _$MerukariState {
  const factory MerukariState({
    @Default(false) bool isLoading,
    @Default(<MerukariItem>[]) List<MerukariItem> merukariItems,
  }) = _MerukariState;
}
