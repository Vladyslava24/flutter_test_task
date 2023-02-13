import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/api/images-api.dart';
import 'package:flutter_test_task/image-provider/image-provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImageSlider extends ConsumerStatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  ConsumerState<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends ConsumerState<ImageSlider> {
  ImagesApi imagesApi = ImagesApi();
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        AsyncValue<List<String>> images = ref.watch(imageProvider);
        return images.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
          data: (images) {
            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 282,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          _current = index;
                        },
                      );
                    },
                  ),
                  items: images
                      .map((item) => Container(
                            child: Center(
                                child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 282,
                            )),
                          ))
                      .toList(),
                ),
                Positioned(
                  bottom: 19,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == entry.key ? Colors.white : null,
                              border: Border.all(color: Colors.white)),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
