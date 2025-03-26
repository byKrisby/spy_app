import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget withPadding(EdgeInsetsGeometry? padding) => _padding(padding);

  Widget styleWith({EdgeInsets? padding, double? borderRadius, Color? background}) =>
      _background(background)._padding(padding);

  Widget withSliverPadding(EdgeInsetsGeometry? padding) {
    return (padding != null)
        ? SliverPadding(
            padding: padding,
            sliver: this,
          )
        : this;
  }

  Widget _padding(EdgeInsetsGeometry? padding) {
    return (padding != null)
        ? Padding(
            padding: padding,
            child: this,
          )
        : this;
  }

  Widget _background(Color? color) {
    return (color != null)
        ? ColoredBox(
            color: color,
            child: this,
          )
        : this;
  }
}
