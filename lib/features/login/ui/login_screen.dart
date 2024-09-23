import 'package:flutter/material.dart';
import 'package:forfun/core/helpers/spacing.dart';
import 'package:forfun/core/theme/text_style.dart';
import 'package:forfun/core/widgets/app_text_button.dart';
import 'package:forfun/core/widgets/app_text_form_field.dart';
import 'package:forfun/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:forfun/features/login/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
final formKey = GlobalKey<FormState>();
bool isObscureText = true;
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child:Padding(padding: EdgeInsets.all(20),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Text("Welcome Back",style:TextStyles.font24BlueBold ,),
         verticalSpace(8),
         Text("We\'re excited to have you back, can\'t wait to see what you've been up to since you last logged in.",style:TextStyles.font14GrayRegular ,),
         verticalSpace(36),
         Form(
          key: formKey,
          child: Column(
          children: [
                AppTextFormField(hintText: 'Email', 
                
                 ),
                verticalSpace(20),
                AppTextFormField(hintText: 'Password', 
                       isObscureText: isObscureText,
                       suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(isObscureText ? Icons.visibility : Icons.visibility_off)),
                 ),
                verticalSpace(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text("Forgot Password?",style:TextStyles.font13BlueRegular ,)),
                verticalSpace(24),
                AppTextButton(
                  buttonText: 'Login',
                  onPressed: () {}, textStyle: TextStyles.font16WhiteSemiBold,

                ),
                verticalSpace(16),
                TermsAndConditionsText(),
                verticalSpace(24),
                DontHaveAccountText()
               
          ],
         ))
         
          ],
        ),

      ),
      ) ),
    );
  }
}