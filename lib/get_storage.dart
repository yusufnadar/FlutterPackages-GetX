import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GetStoragePage extends StatefulWidget {
  const GetStoragePage({Key? key}) : super(key: key);

  @override
  _GetStoragePageState createState() => _GetStoragePageState();
}

class _GetStoragePageState extends State<GetStoragePage> {
  GetStorage? getStorage;

  @override
  void initState() {
    super.initState();
    getStorage = GetStorage();
    getMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Storage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  getStorage!.write('title', 'Yeni Başlık');
                  getStorage!.writeIfNull('title2', 'Yeni Başlık 2');
                  //getStorage!.remove('title2');
                  print(getStorage!.hasData('title'));
                  var values = getStorage!.getValues();
                  print(values);
                  getStorage!.erase();
                });
              },
              child: const Text('Save Value'),
            ),
            Text(getStorage!.read('title') ?? 'Boş Değer'),
          ],
        ),
      ),
    );
  }

  void getMethod() {
    getStorage!.listen(() {
      print('Veride değişiklik oldu');
    });
    getStorage!.listenKey('title', (value) {
      print('Title değişti artık => $value');
    });
  }
}
