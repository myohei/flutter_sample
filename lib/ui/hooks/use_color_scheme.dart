import 'package:flutter/material.dart';

import '/ui/hooks/use_theme.dart';

ColorScheme useColorScheme() {
  return useTheme().colorScheme;
}

ColorScheme useCS() => useColorScheme();
