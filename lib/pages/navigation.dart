import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.toNamed('/2');
              //Get.off(()=> const HomePage2());
              //Get.offNamed('/2');
            },
            child: const Text('Go New Page')),
      ),
    );
  }
}

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(()=> const HomePage3());
          },
          child: const Text('Go 3'),
        ),
      ),
    );
  }
}

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page3'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}

