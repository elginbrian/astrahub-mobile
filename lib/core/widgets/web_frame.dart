import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WebFrame extends StatelessWidget {
  final Widget child;

  const WebFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isMobileOS = defaultTargetPlatform == TargetPlatform.iOS ||
                       defaultTargetPlatform == TargetPlatform.android;
                       
    final isNarrowScreen = MediaQuery.of(context).size.width < 800;

    if (!kIsWeb || isMobileOS || isNarrowScreen) {
      return child;
    }

    final isDark = Theme.of(context).brightness == Brightness.dark;

    const double logicalWidth = 430;
    const double logicalHeight = 932;

    return Container(
      color: isDark ? Colors.grey[900] : Colors.grey[200], // Background color outside the frame
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: AspectRatio(
            aspectRatio: logicalWidth / logicalHeight,
            child: FittedBox(
              fit: BoxFit.contain,
              child: SizedBox(
                width: logicalWidth,
                height: logicalHeight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: Colors.black87,
                      width: 4,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        size: const Size(logicalWidth, logicalHeight),
                      ),
                      child: child, // The actual app content
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
