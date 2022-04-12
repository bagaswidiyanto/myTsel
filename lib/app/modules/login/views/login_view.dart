import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';


class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30), 
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Silahkan masuk dengan nomor telkomsel kamu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Nomor HP",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Cth. 08129011xxxx",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.checkC.value,
                    onChanged: (value) => controller.checkC.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "Saya menyetujui ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print(
                                "Klik Syarat",
                              );
                            },
                          text: "syarat",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: ", ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print(
                                "Klik Ketentuan",
                              );
                            },
                          text: "Ketentuan",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: ", dan ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print(
                                "Klik Privasi",
                              );
                            },
                          text: "Privasi ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: "Telkomsel",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Masuk",
                style: TextStyle(
                  color: Color(0xff747D8C),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Atau masuk menggunakan"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () => Get.offAllNamed(Routes.HOME),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/fb.png"),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff747D8C),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF385998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/twitter.png"),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1DA1f2),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF1DA1f2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
