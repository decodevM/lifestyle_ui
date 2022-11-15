import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.secondarySystemFill.withOpacity(.8),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.secondarySystemFill,
        middle: const Text(
          'Home',
          style: TextStyle(color: CupertinoColors.white),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: CupertinoColors.inactiveGray,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: const Text('2'),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: CupertinoColors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          CupertinoColors.black.withOpacity(.4),
                          CupertinoColors.black.withOpacity(.2),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Lifestyle Sale',
                            style: TextStyle(
                                color: CupertinoColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: CupertinoButton.filled(
                                child: const Text('Shop Now'),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1 / 1.2),
                itemBuilder: (_, index) {
                  int imageFromIndex = index % 5 + 1;
                  return Container(
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/$imageFromIndex.jpg'),
                          fit: BoxFit.cover),
                    ),
                    alignment: Alignment.center,
                    child: Transform.translate(
                      offset: const Offset(60, -75),
                      child: Container(
                        width: 45,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CupertinoColors.white),
                        child: const Icon(CupertinoIcons.bookmark),
                      ),
                    ),
                  );
                },
                itemCount: 10,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
