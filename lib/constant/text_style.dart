import 'package:flutter/material.dart';
import 'constant.dart';


class AppTextStyle {

  ///fonts
  static const poppinsLight = 'Poppins Light';
  static const poppinsRegular = 'Poppins Regular';
  static const poppinsMedium = 'Poppins Medium';
  static const poppinsBold = 'Poppins Bold';

  static const montserratBold = 'Montserrat Bold';
  static const montserratRegular = 'Montserrat Regular';
  static const montserratMedium = 'Montserrat Medium';

  static const futuraRennerLight = 'FuturaRenner Light';
  static const futuraRennerRegular = 'FuturaRenner Regular';
  static const futura = 'Futura';


  static const airAmericaRegular = 'AirAmerica Regular';

  static const robotoSlabLight = 'RobotoSlab Light';
  static const robotoSlabBold = 'RobotoSlab Bold';
  static const robotoSlabRegular = 'RobotoSlab Regular';
  static const robotoSlabThin = 'RobotoSlab Thin';

  static const robotoBold = 'Roboto Bold';
  static const robotoRegular = 'Roboto Regular';
  static const robotoItalic = 'Roboto Italic';


  static const textFontSize7 = 7.0;
  static const textFontSize14 = 14.0;
  static const textFontSize18 = 18.0;
  static const textFontSize20 = 20.0;
  static const textFontSize22 = 22.0;
  static const textFontSize24 = 24.0;
  static const textFontSize25 = 25.0;
  static const textFontSize26 = 28.0;
  static const textFontSize27 = 28.0;
  static const textFontSize28 = 28.0;
  static const textFontSize35 = 35.0;
  static const textFontSize45 = 45.0;

}

class CustomTextStyle{

  static TextStyle loginButtonText =  TextStyle(
    fontSize: AppTextStyle.textFontSize20,
    fontFamily: AppTextStyle.montserratRegular,
    color: ColorsConfig.whiteColor,);

  static TextStyle forgotPasswordText =  TextStyle(
  fontSize: AppTextStyle.textFontSize14,
  fontFamily: AppTextStyle.montserratRegular,
  fontWeight: FontWeight.w200,
  color: ColorsConfig.whiteColor,);

  static TextStyle labelText =  TextStyle(
      fontSize: AppTextStyle.textFontSize14,
      fontFamily: AppTextStyle.robotoBold,
      fontWeight: FontWeight.w600,
      color: ColorsConfig.whiteColor);

  static TextStyle formNavLinkText =  TextStyle(
      fontSize: AppTextStyle.textFontSize18,
      fontFamily: AppTextStyle.montserratRegular,
      color: ColorsConfig.whiteColor);

  static TextStyle formHeaderText =  TextStyle(
      fontSize: AppTextStyle.textFontSize22,
      fontFamily: AppTextStyle.robotoSlabRegular,
      fontWeight: FontWeight.w300,
      color: ColorsConfig.whiteColor);

  static TextStyle timerDescriptionText =  TextStyle(
      fontSize: AppTextStyle.textFontSize18,
      fontFamily: AppTextStyle.montserratRegular,
      color: ColorsConfig.whiteColor
  );

  static TextStyle eventTitleStyle =  TextStyle (
      fontFamily: AppTextStyle.futura,
      fontWeight: FontWeight.w400,
      fontSize: AppTextStyle.textFontSize25,
      color:  ColorsConfig.whiteColor
  );

  static TextStyle carousalTitleStyle =  TextStyle (
      fontFamily: AppTextStyle.futura,
      fontWeight: FontWeight.w400,
      fontSize: AppTextStyle.textFontSize45,
      color:  ColorsConfig.whiteColor
  );

  static TextStyle timerText =  TextStyle(
      fontSize: AppTextStyle.textFontSize28,
      fontFamily: AppTextStyle.robotoRegular,
      color: ColorsConfig.whiteColor);

  static TextStyle appBarText =  TextStyle(
      fontSize: AppTextStyle.textFontSize24,
      fontFamily: AppTextStyle.robotoRegular,
      fontWeight: FontWeight.w300,
      color: ColorsConfig.whiteColor);

  static TextStyle hintTextStyle =  TextStyle (
  fontFamily: AppTextStyle.robotoRegular,
     fontWeight: FontWeight.w200,
     fontSize: 16,
   color: ColorsConfig.blackColor
 );


  static TextStyle dropdownItemText =  TextStyle(
      fontSize: AppTextStyle.textFontSize14,
      fontFamily: AppTextStyle.robotoRegular,
      fontWeight: FontWeight.w600,
      color: ColorsConfig.blackColor);


  static TextStyle btnTextStyle =  TextStyle (
      fontFamily: AppTextStyle.robotoSlabBold,
      fontWeight: FontWeight.w200,
      fontSize: AppTextStyle.textFontSize22,
      color: ColorsConfig.blackColor
  );


  static TextStyle dialogTitleStyle =  TextStyle (
      fontFamily: AppTextStyle.robotoSlabRegular,
      fontWeight: FontWeight.w200,
      fontSize: AppTextStyle.textFontSize22,
      color: ColorsConfig.blackColor
  );


  static TextStyle orderDialogTitleStyle =  TextStyle (
      fontFamily: AppTextStyle.robotoSlabRegular,
      fontWeight: FontWeight.w200,
      fontSize: AppTextStyle.textFontSize18,
      color: ColorsConfig.blackColor
  );

  static TextStyle subtitleText =  TextStyle(
      fontSize: AppTextStyle.textFontSize14,
      fontFamily: AppTextStyle.robotoRegular,
      color: ColorsConfig.blackColor);


  static TextStyle drawerTileText =  TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: ColorsConfig.blueButtonColor);

  static TextStyle linkTextStyle =  TextStyle(
      fontSize: AppTextStyle.textFontSize14,
      fontFamily: AppTextStyle.robotoSlabRegular,
      //fontWeight: FontWeight.w300,
      color: ColorsConfig.darkBlueColor
  );

  static TextStyle titleTextStyle =  TextStyle(
      fontSize: AppTextStyle.textFontSize28,
      fontFamily: AppTextStyle.robotoSlabRegular,
      fontWeight: FontWeight.w300,
      color: ColorsConfig.blueButtonColor);

  static TextStyle signInButtonStyle =  TextStyle (
      fontFamily: AppTextStyle.robotoRegular,
      fontWeight: FontWeight.w200,
      fontSize: 16,
      color:  ColorsConfig.blueButtonColor
  );
}