import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/p_text.dart';

class ProviderTextWidget extends StatefulWidget {
  const ProviderTextWidget({super.key});

  @override
  State<ProviderTextWidget> createState() => _ProviderTextWidgetState();
}

class _ProviderTextWidgetState extends State<ProviderTextWidget> {
  TextEditingController textctrl = TextEditingController();

  @override
  void dispose() {
    textctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Consumer<TextNotifier>(
            builder: (context, value, child) => TextFormField(
              controller: textctrl,
              onChanged: (value) =>
                  context.read<TextNotifier>().updateText(textctrl.text),
            ),
          ),
          Consumer<TextNotifier>(
            builder: (context, value, child) => Text(value.text),
          ),
        ],
      ),
    );
  }
}
