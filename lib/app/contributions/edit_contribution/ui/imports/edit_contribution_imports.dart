import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/contribution.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/contribution_related_word_type.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/related_word.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/types/contribution_type.dart';
import 'package:mysam_app/app/contributions/create_contribution/ui/imports/create_contribution_imports.dart';
import 'package:mysam_app/app/contributions/create_contribution/ui/view/widgets/common/contains_letters_rule.dart';
import 'package:mysam_app/app/contributions/edit_contribution/data/repository/edit_contribution_repository.dart';
import 'package:mysam_app/app/home/roots/details/ui/imports/root_details_imports.dart';
import 'package:mysam_app/app/home/roots/roots/data/model/ui/root.dart';
import 'package:mysam_app/core/models/media_item.dart';
import 'package:mysam_app/core/resources/assets/assets.dart';
import 'package:mysam_app/core/resources/colors/app_colors.dart';
import 'package:mysam_app/core/resources/translation/app_translations.dart';
import 'package:mysam_app/core/utils/alert.dart';
import 'package:mysam_app/core/widgets/components/custom_icon_button.dart';
import 'package:mysam_app/core/widgets/components/custom_scaffold.dart';
import 'package:mysam_app/core/widgets/components/custom_text.dart';
import 'package:mysam_app/core/widgets/components/filter_chip_selector.dart';
import 'package:mysam_app/core/widgets/components/text_field.dart';
import 'package:mysam_app/core/widgets/image_picker/imports/image_picker_imports.dart';
import 'package:mysam_app/core/widgets/loading_overlay.dart';
import 'package:playx/playx.dart';

part '../binding/edit_contribution_binding.dart';
part '../controller/edit_contribution_controller.dart';
part '../view/edit_contribution_view.dart';
part '../view/widgets/build_contribution_main_form.dart';
part '../view/widgets/build_contribution_received_contribution_step.dart';
part '../view/widgets/build_contribution_type_widget.dart';
part '../view/widgets/types/idiom/controller/edit_idiom_contribution_controller.dart';
part '../view/widgets/types/idiom/view/edit_idiom_contribution_view.dart';
part '../view/widgets/types/idiom/view/steps/build_idiom_contribution_second_step.dart';
part '../view/widgets/types/idiom/view/steps/widgets/build_idiom_contribution_body_field_widget.dart';
part '../view/widgets/types/idiom/view/steps/widgets/build_idiom_contribution_description_field_widget.dart';
part '../view/widgets/types/modern_meaning/controller/edit_modern_meaning_contribution_controller.dart';
part '../view/widgets/types/modern_meaning/view/edit_modern_meaning_contribution_view.dart';
part '../view/widgets/types/modern_meaning/view/steps/build_modern_meaning_contribution_second_step.dart';
part '../view/widgets/types/modern_meaning/view/steps/widgets/build_contribution_modern_meanings_words_widget.dart';
part '../view/widgets/types/photo/controller/edit_photo_contribution_controller.dart';
part '../view/widgets/types/photo/view/edit_photo_contribution_view.dart';
part '../view/widgets/types/photo/view/steps/build_photo_contribution_second_step.dart';
part '../view/widgets/types/photo/view/steps/widgets/build_contribution_photo_picker_widget.dart';
part '../view/widgets/types/poem/controller/edit_poem_contribution_controller.dart';
part '../view/widgets/types/poem/view/edit_poem_contribution_view.dart';
part '../view/widgets/types/poem/view/steps/build_poem_contribution_second_step.dart';
part '../view/widgets/types/poem/view/steps/widgets/build_poem_contribution_body_field_widget.dart';
part '../view/widgets/types/poem/view/steps/widgets/build_poem_contribution_description_field_widget.dart';
part '../view/widgets/types/qa/controller/edit_qa_contribution_controller.dart';
part '../view/widgets/types/qa/view/edit_qa_contribution_view.dart';
part '../view/widgets/types/qa/view/steps/build_qa_contribution_second_step.dart';
part '../view/widgets/types/qa/view/steps/widgets/build_qa_contribution_answer_field_widget.dart';
part '../view/widgets/types/qa/view/steps/widgets/build_qa_contribution_question_field_widget.dart';
part '../view/widgets/types/slang/controller/edit_slang_contribution_controller.dart';
part '../view/widgets/types/slang/view/edit_slang_contribution_view.dart';
part '../view/widgets/types/slang/view/steps/build_slang_contribution_second_step.dart';
part '../view/widgets/types/slang/view/steps/widgets/build_contribution_slang_words_widget.dart';
part '../view/widgets/types/synonyms/controller/edit_synonyms_contribution_controller.dart';
part '../view/widgets/types/synonyms/view/edit_synonyms_contribution_view.dart';
part '../view/widgets/types/synonyms/view/steps/build_synonyms_contribution_second_step.dart';
part '../view/widgets/types/synonyms/view/steps/widgets/build_contribution_synonyms_words_widget.dart';
part '../view/widgets/widgets/build_contribution_main_form_related_word_properties_widget.dart';
part '../view/widgets/widgets/build_contribution_main_form_related_word_type_widget.dart';
part '../view/widgets/widgets/build_contribution_main_form_related_word_weight_widget.dart';
part '../view/widgets/widgets/build_contribution_main_form_related_word_widget.dart';
part '../view/widgets/widgets/build_contribution_main_form_root_widget.dart';
