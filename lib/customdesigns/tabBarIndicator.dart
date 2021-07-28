import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/material.dart';

class MD2Indicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final MD2IndicatorSize indicatorSize;
  final num tabspacing;

  const MD2Indicator(
      {@required this.indicatorHeight,
        @required this.indicatorColor,
        @required this.indicatorSize,
        @required this.tabspacing});

  @override
  _MD2Painter createBoxPainter([VoidCallback onChanged]) {
    return new _MD2Painter(this, onChanged,tabspacing);
  }
}

enum MD2IndicatorSize {
  tiny,
  normal,
  full,
}

class _MD2Painter extends BoxPainter {
  final MD2Indicator decoration;
  num tabspacing;

  _MD2Painter(this.decoration,VoidCallback onChanged,this.tabspacing,)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    Rect rect;
    var tab_spacing = tabspacing;
    if (decoration.indicatorSize == MD2IndicatorSize.full) {
      rect = Offset(offset.dx,
          (configuration.size.height - decoration.indicatorHeight ?? 3)) &
      Size(configuration.size.width, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == MD2IndicatorSize.normal) {
      rect = Offset(offset.dx + tab_spacing,     //spacing to indicator from left right if 2 tab then 74, if 3 tab then 48
          (configuration.size.height - decoration.indicatorHeight ?? 3)) &    //indicator height
      Size(32, decoration.indicatorHeight ?? 3);    //indicator width
    } else if (decoration.indicatorSize == MD2IndicatorSize.tiny) {
      rect = Offset(offset.dx + configuration.size.width / 2 - 8,
          (configuration.size.height - decoration.indicatorHeight ?? 3)) &
      Size(16, decoration.indicatorHeight ?? 3);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor ?? CustomColors.colorPrimaryBlue;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect, topRight: Radius.circular(2), topLeft: Radius.circular(2)), paint);
  }
}
