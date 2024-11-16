import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Login Api"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextField(
              controller: controller.emailController.value,//eve.holt@reqres.in
              decoration: const InputDecoration(
                hintText: "Email"
              ),
            ),
              TextField(
              controller: controller.pswdController.value,//cityslicka
              decoration: const InputDecoration(
                hintText: "Password"
              ),
            ),

            const SizedBox(height: 40,),

           Obx(() {
             return  MaterialButton(
              minWidth: double.infinity,
              color: Colors.grey,
              onPressed: (){
                controller.loginApi();
              },
            child: controller.loading.value ? const CircularProgressIndicator(color: Colors.black,) : const Text("Login"),);
           },)
          ],
        ),
      ),
    );
  }
}