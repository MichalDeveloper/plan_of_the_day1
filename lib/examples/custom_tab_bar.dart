import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() =>  _CustomTabBarState();
}
class _CustomTabBarState extends State<CustomTabBar> {
  DateTimeRange? selectedDateRange;

  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
      print(result.start.toString());
      setState(() {
        selectedDateRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CodeWithCzerony')),
      body: selectedDateRange == null
          ? const Center(
              child: Text(
                'Press the button to show the picker!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Start date: ${selectedDateRange?.start.toString().split(' ')[0]}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "End date: ${selectedDateRange?.end.toString().split(' ')[0]}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDateRange = null;
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                          color: Colors.redAccent, shape: BoxShape.circle),
                      child: const Center(
                          child: Icon(
                        CupertinoIcons.delete,
                        color: Colors.white,
                        size: 35,
                      )),
                    ),
                  ),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _show,
        child: const Icon(Icons.date_range),
      ),
    );
  }
}
