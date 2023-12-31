import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = 'home';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController emailControll = TextEditingController();

  late TextEditingController firstNamecontroller = TextEditingController();

  late TextEditingController lastNamecontroller = TextEditingController();
  @override
  void initState() {
    firstNamecontroller = TextEditingController();
    lastNamecontroller = TextEditingController();
    emailControll = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailControll.clear();
    lastNamecontroller.clear();
    firstNamecontroller.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            Stack(alignment: Alignment.bottomRight, children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 8.0,
                  margin: const EdgeInsets.all(4.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: groceryPrimary,
                      // backgroundImage: AssetImage("profilePath"),
                      radius: 55,
                    ),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(4.0),
                  margin: const EdgeInsets.only(bottom: 30, right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: groceryPrimary,
                    ),
                  ),
                  child: const TOTIconAtom.displaySmall(
                    codePoint: 0xe130,
                    color: groceryPrimary,
                  ))
            ]),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: TOTTextFieldAtom(
                      controller: firstNamecontroller,
                      hintText: 'First Name',
                      labelText: "First name",
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TOTTextFieldAtom(
                      controller: lastNamecontroller,
                      hintText: 'Last Name',
                      labelText: 'Last Name',
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TOTTextFieldAtom(
                controller: emailControll,
                hintText: 'Email',
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: groceryPrimary),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TOTTextAtom.titleLarge(
                        'Save',
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                            width: 0.3,
                            color: groceryPrimary), // Border width and color
                      ),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TOTTextAtom.titleLarge(
                        'Change Password',
                        color: groceryPrimary,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
