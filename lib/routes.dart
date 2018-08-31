import 'package:flutter/material.dart';
import 'package:memories/screens/event_selection.dart';
import 'package:memories/screens/camera.dart';

class Routes {

  static final eventSelectionScreen = SlideTransitionPageRouteBuilder(
          (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => EventSelectionScreen());

  static final cameraScreen = SlideTransitionPageRouteBuilder(
          (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => CameraScreen());

}

class SlideTransitionPageRouteBuilder extends PageRouteBuilder {

  SlideTransitionPageRouteBuilder(RoutePageBuilder pageBuilder) : super(
    pageBuilder: pageBuilder,
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
        SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: new SlideTransition(
            position: new Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(1.0, 0.0),
            ).animate(secondaryAnimation),
            child: child,
          ),
        ),
  );

}