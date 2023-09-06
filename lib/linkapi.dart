class AppLink {
  static const String server = "https://easycuteg.com";
// ================================= Auth ==========================
  static const String login = "$server/salons/auth/login.php";
  static const String checkEmail = "$server/salons/auth/checkemail.php";
  static const String resetPassword = "$server/salons/auth/resetpassword.php";
// ================================= Home ====================
  static const String home = "$server/users/home/home.php";
  static const String salonInfo = "$server/salons/profile/show.php";
  static const String commentView = "$server/comments/view.php";
  static const String appointmentView = "$server/appointments/show.php";
  static const String appointmentAdd = "$server/appointments/add.php";
}
