// ignore_for_file: public_member_api_docs
import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors, ThemeData;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/image_cropper/view/image_cropper_page.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/image_picker/view/image_picker_page.dart';
import 'package:sketch_vision_app/info/view/info_page.dart';
import 'package:sketch_vision_app/nav_pane/view/nav_body_content.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';
import 'package:sketch_vision_app/painter/view/painter_page.dart';

class NavigationPanePage extends StatefulWidget {
  const NavigationPanePage({
    Key? key,
  }) : super(key: key);

  @override
  _NavigationPanePageState createState() => _NavigationPanePageState();
}

class _NavigationPanePageState extends State<NavigationPanePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: NavigationBody(
        index: selectedIndex,
        children: [
          buildImagePickerItem(),
          buildPainterPageItem(),
          buildInfoPageItem(),
        ],
      ),
      pane: NavigationPane(
        displayMode: PaneDisplayMode.compact,
        selected: selectedIndex,
        onChanged: (i) => setState(() => selectedIndex = i),
        items: [
          PaneItem(
            icon: const Icon(CarbonIcons.drop_photo_filled),
            title: Locale_cs.pageItemHeader1,
          ),
          PaneItem(
            icon: const Icon(CarbonIcons.paint_brush),
            title: Locale_cs.pageItemHeader2,
          ),
        ],
        footerItems: [
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(CarbonIcons.information),
            title: Locale_cs.pageItemHeader3,
          ),
        ],
      ),
    );
  }

  NavigationBodyContent buildImagePickerItem() {
    return NavigationBodyContent(
      title: Locale_cs.pageItemHeader1,
      content: BlocProvider(
        create: (_) => ImagePickerCubit(),
        child: BlocConsumer<ImagePickerCubit, ImagePickerState>(
          listener: (context, state) {
            if (state is ImagePickerPicked) {
              Navigator.of(context).push(ImageCropperPage.route(context));
            }
          },
          builder: (context, state) {
            if (state is ImagePickerCropLoading) {
              return const Center(child: ProgressRing());
            }

            if (state is ImagePickerCropFinished) {
              return ResultContent(
                content: Container(),
              );
            }

            return const ImagePickerPage();
          },
        ),
      ),
    );
  }

  NavigationBodyContent buildPainterPageItem() {
    return const NavigationBodyContent(
      title: Locale_cs.pageItemHeader2,
      content: PainterPage(),
    );
  }

  NavigationBodyContent buildInfoPageItem() {
    return const NavigationBodyContent(
      title: Locale_cs.pageItemHeader3,
      content: InfoPage(),
    );
  }
}
