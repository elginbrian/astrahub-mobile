import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HomeCarouselBanner extends StatefulWidget {
  const HomeCarouselBanner({super.key});

  @override
  State<HomeCarouselBanner> createState() => _HomeCarouselBannerState();
}

class _HomeCarouselBannerState extends State<HomeCarouselBanner> {
  late PageController _pageController;
  double _currentFraction = 0.90;
  bool _isInit = false;
  int _currentIndex = 0;
  Timer? _timer;

  final List<String> _banners = [
    'assets/images/home-banner-1-assets.png',
    'assets/images/home-banner-2-assets.png',
    'assets/images/home-banner-3-assets.png',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final screenWidth = MediaQuery.of(context).size.width;
    
    double targetFraction = 0.90;
    if (screenWidth > 500) {
      targetFraction = 450.0 / screenWidth;
    }
    
    if (!_isInit) {
      _currentFraction = targetFraction;
      _pageController = PageController(initialPage: 10000, viewportFraction: _currentFraction);
      _isInit = true;
    } else if ((_currentFraction - targetFraction).abs() > 0.01) {
      _currentFraction = targetFraction;
      final int page = _pageController.hasClients ? _pageController.page?.round() ?? 10000 : 10000;
      _pageController.dispose();
      _pageController = PageController(initialPage: page, viewportFraction: _currentFraction);
    }
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final effectiveWidth = screenWidth > 500 ? 500.0 : screenWidth;
    final bannerHeight = (effectiveWidth * 0.36).clamp(100.0, 200.0);

    return Column(
      children: [
        SizedBox(
          height: bannerHeight,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index % _banners.length;
              });
            },
            itemBuilder: (context, index) {
              final bannerIndex = index % _banners.length;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    _banners[bannerIndex],
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _banners.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: _currentIndex == index ? 24 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? AppColors.astraBlue
                    : const Color(0xFFE5E7EB),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
