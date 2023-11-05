class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}

class UserData {
  int id;

  String username;
  String email;
  String phoneNumber;

  UserData({
    required this.id,
    required this.email,
    required this.username,
    required this.phoneNumber,
  });
}

class Authentication {
  UserData? userData;
  String token;

  Authentication({
    required this.userData,
    required this.token,
  });
}

class LoginAuthentication {
  int id;
  int token;

  LoginAuthentication({
    required this.id,
    required this.token,
  });
}
class SendEmail{
  String detail;
  SendEmail({
    required this.detail
});
}
