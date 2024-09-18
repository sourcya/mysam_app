part of '../imports/root_details_imports.dart';

class RootDetailsView extends GetView<RootDetailsController> {
  const RootDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<RootDetailsController>()) {
      return const CustomScaffold(child: SizedBox.shrink());
    }
    return CustomScaffold(
        title: controller.root.value,
        leading: AppBarLeadingType.back,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.contributeToRoot(context: context);
          },
          backgroundColor: context.colors.primaryVariant,
          child: Icon(
            Icons.edit_outlined,
            color: context.colors.onPrimaryVariant,
          ),
        ),
        child: RefreshIndicator(
          onRefresh: controller.refreshRoot,
          child: RxDataStateWidget(
            rxData: controller.dataState,
            onSuccess: (root) => BuildRootDetailsContent(root: root),
            onEmpty: (e) => const BuildEmptyRouteContributionsWidget(),
          ),
        ));
  }
}
