import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mysam_app/app/app_launch/auth/data/models/ui/user_role_type.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/contribution.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/contribution_status.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/types/contribution_type.dart';
import 'package:mysam_app/app/contributions/contributions/ui/imports/contributions_imports.dart';
import 'package:mysam_app/app/home/roots/details/ui/imports/root_details_imports.dart';
import 'package:mysam_app/app/reviews/reviews/data/repository/reviews_repository.dart';
import 'package:mysam_app/core/navigation/app_navigation.dart';
import 'package:mysam_app/core/preferences/preference_manger.dart';
import 'package:mysam_app/core/resources/colors/app_colors.dart';
import 'package:mysam_app/core/resources/translation/app_locale_config.dart';
import 'package:mysam_app/core/resources/translation/app_translations.dart';
import 'package:mysam_app/core/utils/alert.dart';
import 'package:mysam_app/core/widgets/components/custom_card.dart';
import 'package:mysam_app/core/widgets/components/custom_scaffold.dart';
import 'package:mysam_app/core/widgets/components/custom_text.dart';
import 'package:mysam_app/core/widgets/components/feature_chip.dart';
import 'package:mysam_app/core/widgets/custom_loading.dart';
import 'package:mysam_app/core/widgets/empty_data_widget.dart';
import 'package:mysam_app/core/widgets/place_holder_image.dart';
import 'package:playx/playx.dart';

part '../binding/reviews_binding.dart';
part '../controller/reviews_controller.dart';
part '../view/reviews_view.dart';
part '../view/widgets/build_reviews_contribution_item_by_type_widget.dart';
part '../view/widgets/build_reviews_list_item_field_widget.dart';
part '../view/widgets/build_reviews_list_item_widget.dart';
part '../view/widgets/build_reviews_list_widget.dart';
part '../view/widgets/types/build_reviews_contribution_item_body_description_contribution_widget.dart';
part '../view/widgets/types/build_reviews_contribution_item_photo_contribution_widget.dart';
part '../view/widgets/types/build_reviews_contribution_item_qa_contribution_widget.dart';
part '../view/widgets/types/build_reviews_contribution_item_words_contribution_widget.dart';
