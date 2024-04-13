import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final GlobalKey<FormState> _formKey;
  late final CarouselController _controller;

  int index = 0;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _controller = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Create Account",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: BackButton(
          color: Colors.white,
          onPressed: () async {
            if (index > 0) {
              _controller.previousPage();
              index--;
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: _formKey,
        child: CarouselSlider(
          items: [
            buildEmailSection(size),
            buildPasswordSection(size),
            buildDateSection(),
          ],
          carouselController: _controller,
          disableGesture: true,
          options: CarouselOptions(
            aspectRatio: 1 / 0.75,
            enableInfiniteScroll: false,
            viewportFraction: 1,
            scrollPhysics: const NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }

  Widget buildEmailSection(Size size) {
    return SizedBox(
      height: size.height * 0.3,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.9,
                child: const Text(
                  "What's your email?",
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade900,
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          buildButton(size),
        ],
      ),
    );
  }

  Widget buildPasswordSection(Size size) {
    return SizedBox(
      height: size.height * 0.3,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.9,
                child: const Text(
                  "Create a password",
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade900,
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          buildButton(size),
        ],
      ),
    );
  }

  Widget buildDateSection() {
    return SizedBox();
  }

  Widget buildButton(Size size) {
    return ElevatedButton(
      onPressed: () {
        _controller.nextPage();
        index++;
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade800,
        fixedSize: Size.fromWidth(
          size.width * 0.25,
        ),
      ),
      child: const Text(
        "Next",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
