import 'package:bonfire/base/game_component.dart';
import 'package:flame/components.dart';

/// Class use to configure camera behavior.
class CameraConfig {
  ///Player movement window before the camera moves
  Vector2 sizeMovementWindow;

  /// When this true the camera remains within the map area
  bool moveOnlyMapArea;

  /// camera zoom configurarion. default: 1
  double zoom;

  /// Camera angle to rotate the camera. default: 0
  double angle;

  /// Component that the camera will focus on / follow
  GameComponent? target;

  bool smoothCameraEnable;
  double smoothCameraSpeed;

  CameraConfig({
    Vector2? sizeMovementWindow,
    this.moveOnlyMapArea = false,
    this.zoom = 1.0,
    this.angle = 0.0,
    this.target,
    this.smoothCameraEnable = false,
    this.smoothCameraSpeed = 1.0,
  }) : sizeMovementWindow = sizeMovementWindow ?? Vector2(50, 50);
}
