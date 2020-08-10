import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'fetchAPI.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<FetchAPI>(
          create: (_) => FetchAPI(),
        ),
      ];
}
