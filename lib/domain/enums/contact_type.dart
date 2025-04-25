enum ContactType {
  instagram,
  facebook,
  telegram,
  whatsApp,
  none;

  String? link(String username) {
    return switch (this) {
      instagram => "instagram://user?username=$username",
      facebook => "fb://$username",
      telegram => "https://t.me/$username", // "telegram://$txt",
      whatsApp => "whatsapp://send?phone=$username",
      _ => null,
    };
  }
}
