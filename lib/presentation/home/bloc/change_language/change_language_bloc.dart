import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:ClickToFood/core/app/app_prefs.dart';
import 'package:ClickToFood/core/app/di.dart';
import 'package:ClickToFood/presentation/util/resources/langauge_manager.dart';
import 'package:meta/meta.dart';

part 'change_language_event.dart';

part 'change_language_state.dart';

class ChangeLanguageBloc extends Bloc<ChangeLanguageEvent, ChangeLanguageState> {
  ChangeLanguageBloc() : super(ChangeLanguageState()) {
    on<ChangeLanguageToEnglish>(_mapChangeLanguageToEnglishMode);
    on<ChangeLanguageToArabic>(_mapChangeLanguageToArabicMode);
  }

  _mapChangeLanguageToEnglishMode(
      ChangeLanguageToEnglish event, Emitter<ChangeLanguageState> emit) {
    emit(state.copyWith(locale: ENGLISH_LOCAL));
  }

  _mapChangeLanguageToArabicMode(
      ChangeLanguageToArabic event, Emitter<ChangeLanguageState> emit) {
    emit(state.copyWith(locale: ARABIC_LOCAL));
  }
}
