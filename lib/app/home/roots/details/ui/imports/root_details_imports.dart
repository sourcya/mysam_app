import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/contribution.dart';
import 'package:mysam_app/app/contributions/contributions/data/model/ui/types/contribution_type.dart';
import 'package:mysam_app/app/contributions/contributions/ui/imports/contributions_imports.dart';
import 'package:mysam_app/app/contributions/details/ui/imports/details_imports.dart';
import 'package:mysam_app/app/contributions/my_contributions/ui/imports/my_contributions_imports.dart';
import 'package:mysam_app/app/home/roots/details/data/repository/root_details_repository.dart';
import 'package:mysam_app/app/home/roots/roots/data/model/ui/root.dart';
import 'package:mysam_app/core/data_state/models/data_state.dart';
import 'package:mysam_app/core/data_state/models/rx_data_state.dart';
import 'package:mysam_app/core/data_state/widgets/rx_data_state_widget.dart';
import 'package:mysam_app/core/navigation/app_navigation.dart';
import 'package:mysam_app/core/preferences/preference_manger.dart';
import 'package:mysam_app/core/resources/assets/assets.dart';
import 'package:mysam_app/core/resources/colors/app_colors.dart';
import 'package:mysam_app/core/resources/translation/app_translations.dart';
import 'package:mysam_app/core/utils/alert.dart';
import 'package:mysam_app/core/utils/app_utils.dart';
import 'package:mysam_app/core/widgets/bottom_sheet/custom_modal.dart';
import 'package:mysam_app/core/widgets/components/custom_card.dart';
import 'package:mysam_app/core/widgets/components/custom_elevated_button.dart';
import 'package:mysam_app/core/widgets/components/custom_scaffold.dart';
import 'package:mysam_app/core/widgets/components/custom_text.dart';
import 'package:mysam_app/core/widgets/components/feature_chip.dart';
import 'package:mysam_app/core/widgets/custom_app_bar.dart';
import 'package:mysam_app/core/widgets/place_holder_image.dart';
import 'package:playx/playx.dart';

import '../../../../../app_launch/auth/data/models/ui/user_info.dart';

part '../binding/root_details_binding.dart';
part '../controller/root_details_controller.dart';
part '../view/root_details_view.dart';
part '../view/widgets/build_choose_contribution_type_widget.dart';
part '../view/widgets/build_empty_route_contributions_widget.dart';
part '../view/widgets/build_root_details_content.dart';
part '../view/widgets/build_root_details_contribution_item_by_type_widget.dart';
part '../view/widgets/build_root_details_contribution_item_widget.dart';
part '../view/widgets/build_root_details_contribution_user_widget.dart';
part '../view/widgets/types/build_root_details_contribution_item_body_description_contribution_widget.dart';
part '../view/widgets/types/build_root_details_contribution_item_photo_contribution_widget.dart';
part '../view/widgets/types/build_root_details_contribution_item_qa_contribution_widget.dart';
part '../view/widgets/types/build_root_details_contribution_item_words_contribution_widget.dart';
