class AppLink {
  static const String server = "http://cgr53xbj.epizy.com/ecommerce";
  static const String imageststatic =
      "https://cgr53xbj.epizy.com/ecommerce/upload";

//========================== Image ============================
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";

//
  static const String test = "$server/test.php";

//---------------------links of auth ----------------------------//

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";

  static const String verifycodesignup = "$server/auth/verifycode.php";
    static const String resend = "$server/auth/verifycode.php";



// ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";

//====================================Home=====================================//
  static const String homePage = "$server/home.php";
  static const String items = "$server/items/items.php";

//====================================fAVOURITES=====================================//
  static const String favouriteAdd = "$server/favourites/add.php";
  static const String favouriteRemove = "$server/favourites/remove.php";
  static const String favouriteView = "$server/favourites/view.php";
    static const String deletefromfavorite = "$server/favourites/myFavoriteDelete.php";

}
