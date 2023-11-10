import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  static const routeName = '/Home';
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List AllTextFields = [];

  List<TextEditingController> AllController = [];

  @override
  void initState() {
    super.initState();
    AllController.add(TextEditingController());
    AllController.add(TextEditingController());

    AllTextFields.add(Row());
    AllTextFields.add(Row());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset("lib/Asset/images/profile.png"),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 20)),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 600,
                  width: 400,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "All To Do App",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ...AllTextFields.map(
                          (e) => getTextFiled(
                            i: AllTextFields.indexOf(
                              (e),
                            ),
                          ),
                        ).toList(),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                AllController.add(TextEditingController());
                                AllTextFields.add(
                                    getTextFiled(i: AllTextFields.length));
                              },
                            );
                          },
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.transparent,
                            ),
                            child: Icon(
                              Icons.add,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row getTextFiled({required int i}) {
    return Row(children: [
      Expanded(
        flex: 12,
        child: TextField(
          controller: AllController[i],
          decoration: InputDecoration(
            hintText: "  Your Tasks ",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          onPressed: () {
            setState(
              () {
                AllController.removeAt(i);
                AllTextFields.removeAt(i);
              },
            );
          },
          icon: Icon(
            Icons.delete,
            size: 40,
          ),
        ),
      ),
    ]);
  }
}
