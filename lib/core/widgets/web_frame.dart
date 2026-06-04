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

    const double logicalWidth = 430;
    const double logicalHeight = 932;

    return Stack(
      children: [
    
        Positioned.fill(
          child: Image.asset(
            'assets/images/sky-background.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: IgnorePointer(
            child: Image.asset(
              'assets/images/astra-tower-assets.png',
              height: MediaQuery.of(context).size.height * 0.9,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
       
        Center(
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
                      color: Colors.grey.shade300,
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
                      child: child,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ),
        ),
      ],
    );
  }
}
