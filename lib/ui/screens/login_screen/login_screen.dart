import 'package:codemehubtest/service/api_service.dart';
import 'package:codemehubtest/ui/screens/home_screen/home_screen.dart';
import 'package:codemehubtest/ui/screens/login_screen/bloc/login_bloc.dart';
import 'package:codemehubtest/ui/util/app_color.dart';
import 'package:codemehubtest/ui/util/app_constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../util/app_sp.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc loginBloc;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText=false;
  @override
  void initState() {
    super.initState();
    loginBloc=LoginBloc(RepositoryProvider.of<APIService>(context));
  }
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>loginBloc,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              width: screenWidth(context),
              height: screenHeight(context)/2.5,
              decoration: const BoxDecoration(
                color:AppColor.kBlue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150)
                )

              ),
            ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(

               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text("Sign in",style: TextStyle(color: AppColor.kDarkBlue,fontSize: 22,fontWeight: FontWeight.bold),),
                 dividerH(),
                 const Text("Welcome back ! Please enter your credentials to login",style: TextStyle(color: AppColor.kDarkBlue,fontSize: 14,fontWeight: FontWeight.bold),),
                 dividerH(),
                 TextFormField(

                   controller: usernameController,
                   keyboardType:TextInputType.name,
                   textInputAction: TextInputAction.next,
                   decoration:InputDecoration(
                     hintText: "User Name",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12)

                       )
                   ),
                 ),
                 dividerH(),
                 TextFormField(
                   obscureText:obscureText,
                   controller: passwordController,
                   keyboardType:TextInputType.name,
                   textInputAction: TextInputAction.next,
                   decoration:InputDecoration(
                     suffixIcon: IconButton(onPressed: (){
                       setState(() {
obscureText=!obscureText;
                       });
                     }, icon:obscureText?const Icon(Icons.visibility):const Icon(Icons.visibility_off)),
                       hintText: "Password",
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12)

                       )
                   ),
                 ),
                 dividerH(),
                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: RichText(
                     text: TextSpan(
                       style: const TextStyle(color:AppColor.kGrey),
                       children: <TextSpan>[
                         const TextSpan(
                           text: 'Forgot your ',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 12.0,
                           ),
                         ),
                         TextSpan(
                           text: 'Password ?',
                           style: const TextStyle(color: AppColor.kBlack,fontWeight: FontWeight.bold,
                             fontSize: 12.0,),
                           recognizer: TapGestureRecognizer()..onTap=(){}
                         ),
                       ],
                     ),
                   ),
                 ),
                 dividerH(),
                 BlocConsumer<LoginBloc, LoginState>(
  listener: (context, state) {
    if (state is ErrorState) {
    }
    else if(state is NoInternetState){
      EasyLoading.showToast("Internet Required");
    }

    else if (state is LoginSuccessState) {
      if (state.response.success!) {
        EasyLoading.showToast("${state.response.message}");
        AppSp().setToken(state.response.data!.token.toString());

        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
      } else {
        EasyLoading.showToast("${state.response.message}");

      }
    }
  },
  builder: (context, state) {
    return InkWell(
                   onTap: (){
                     if (usernameController.text.length<3 ||
                         passwordController.text.length<6) {
                       EasyLoading.showToast("enter username and password");


                       if (usernameController.text.length<3) {
                         EasyLoading.showToast("please enter a valid username");
                       }
                       if (passwordController.text.length<6) {
                         EasyLoading.showToast("please enter a valid password");
                       }

                     } else {
                       loginBloc.add(LoginButtonEvent(
                           usernameController.text, passwordController.text));
                     }
                   },
                   child: Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: AppColor.kDarkBlue,
                       borderRadius: BorderRadius.circular(12)
                     ),
                     child: const Center(child: Text("Sign In",style: TextStyle(color: AppColor.kWhite,fontWeight: FontWeight.bold,),)),
                   ),
                 );
  },
),
                 dividerH(),
                 Center(
                   child: RichText(
                     text: TextSpan(
                       style: const TextStyle(color:AppColor.kBlack),
                       children: <TextSpan>[
                         const TextSpan(
                           text: 'Dont have any account ? ',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 12.0,
                           ),
                         ),
                         TextSpan(
                             text: 'Sign Up',
                             style: const TextStyle(color: AppColor.kDarkBlue,fontWeight: FontWeight.bold,
                               fontSize: 12.0,),
                             recognizer: TapGestureRecognizer()..onTap=(){}
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
            dividerLH()

          ],
        ),
      ),
    );
  }
}
