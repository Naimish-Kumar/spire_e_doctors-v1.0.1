// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.createYourAccountController,
    this.nameController,
    this.emailController,
    this.mobileNumberController,
    this.passwordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.rememberMe = false,
    this.signUpModelObj,
  });

  TextEditingController? createYourAccountController;

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? mobileNumberController;

  TextEditingController? passwordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool rememberMe;

  @override
  List<Object?> get props => [
        createYourAccountController,
        nameController,
        emailController,
        mobileNumberController,
        passwordController,
        isShowPassword,
        isShowPassword1,
        rememberMe,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? createYourAccountController,
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? mobileNumberController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? rememberMe,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      createYourAccountController:
          createYourAccountController ?? this.createYourAccountController,
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      rememberMe: rememberMe ?? this.rememberMe,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
