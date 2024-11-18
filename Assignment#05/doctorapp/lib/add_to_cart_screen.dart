import 'package:flutter/material.dart';

class AddtoCartView extends StatefulWidget {
  const AddtoCartView({super.key});

  @override
  State<AddtoCartView> createState() => _AddtoCartViewState();
}

final List<String> imagepaths = [
  "assets/images/Bottle_mockup_1.jpg",
  "assets/images/Bottle_mockup_2.jpg",
  "assets/images/Bottle_mockup_3.jpg"
];

late List<Widget> _pages;

class _AddtoCartViewState extends State<AddtoCartView> {
  @override
  void initState() {
    super.initState();
    _pages = List.generate(
      imagepaths.length,
      (index) => ImagePlaceholder(
        imagepath: imagepaths[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.backspace_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.notifications_on_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.wallet_travel_rounded,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          const Column(
            children: [
              Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Etiam mollis metus non purus',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Colors.black12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                child: PageView.builder(
                  itemCount: imagepaths.length,
                  itemBuilder: (context, index) {
                    return _pages[index];
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  final String? imagepath;
  const ImagePlaceholder({super.key, this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagepath!,
    );
  }
}
