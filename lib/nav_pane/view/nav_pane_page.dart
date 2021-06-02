import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors, ThemeData;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/image_cropper/view/image_cropper_page.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/image_picker/view/image_picker_page.dart';
import 'package:sketch_vision_app/info/view/info_page.dart';
import 'package:sketch_vision_app/labeler/bloc/labeler_bloc.dart';
import 'package:sketch_vision_app/labeler/view/labeler_page.dart';
import 'package:sketch_vision_app/nav_pane/view/nav_body_content.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';
import 'package:sketch_vision_app/painter/view/painter_menu.dart';
import 'package:sketch_vision_app/painter/view/painter_page.dart';

/// {@template navigation_pane_page}
/// The side menu shown on app start up.
/// {@endtemplate}
class NavigationPanePage extends StatefulWidget {
  /// {@macro navigation_pane_page}
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

  /// Shows the [ImagePickerPage].
  NavigationBodyContent buildImagePickerItem() {
    return NavigationBodyContent(
      title: Locale_cs.pageItemHeader1,
      content: BlocProvider(
        create: (_) => ImagePickerCubit(),
        child: BlocListener<ImagePickerCubit, ImagePickerState>(
          listener: (context, state) {
            if (state is ImagePickerPicked) {
              Navigator.of(context).push(ImageCropperPage.route(context));
            }

            if (state is ImagePickerCropping) {
              final imagePickerBloc = context.read<ImagePickerCubit>();
              Navigator.of(context).push(
                FluentPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: imagePickerBloc,
                    child: BlocBuilder<ImagePickerCubit, ImagePickerState>(
                      builder: (context, state) {
                        if (state is ImagePickerCropFinished) {
                          return DoublePageContent(
                            title: Locale_cs.classify,
                            contentLeft: Image.memory(state.imageBytes),
                            contentRight: BlocProvider<LabelerBloc>(
                              create: (_) => LabelerBloc(
                                imagePickerBloc: imagePickerBloc,
                              ),
                              child: const LabelerView(page: LabelerPage()),
                            ),
                          );
                        }

                        return const SinglePageContent(
                          content: Center(child: ProgressRing()),
                        );
                      },
                    ),
                  ),
                ),
              );
            }
          },
          child: const ImagePickerPage(),
        ),
      ),
    );
  }

  /// Shows the painter page, both [PainterBox] and [PainterMenu].
  NavigationBodyContent buildPainterPageItem() {
    return NavigationBodyContent(
      title: Locale_cs.pageItemHeader2,
      content: MultiBlocProvider(
        providers: [
          BlocProvider<PainterBloc>(create: (_) => PainterBloc()),
          BlocProvider<ImagePickerCubit>(create: (_) => ImagePickerCubit()),
        ],
        child: const DoublePageContent(
          isFromNavigator: false,
          contentLeft: PainterBox(),
          contentRight: LabelerView(page: PainterMenu()),
        ),
      ),
    );
  }

  /// Shows [InfoPage].
  NavigationBodyContent buildInfoPageItem() {
    return const NavigationBodyContent(
      title: Locale_cs.pageItemHeader3,
      content: InfoPage(),
    );
  }
}
