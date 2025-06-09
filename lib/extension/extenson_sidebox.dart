

import 'package:flutter/cupertino.dart';

extension SideBox on num {
  SizedBox get w => SizedBox(width: toDouble());
  SizedBox get h => SizedBox(height: toDouble());
}