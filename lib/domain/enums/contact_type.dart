enum ContactType {
  instagram,
  facebook,
  telegram,
  whatsApp,
  none;

  String? link(String username) {
    final sanitizedUsername =
        username.startsWith('@') ? username.substring(1) : username;

    return switch (this) {
      instagram => "instagram://user?username=$sanitizedUsername",
      facebook => "fb://$username",
      telegram => "https://t.me/$username", // "telegram://$txt",
      whatsApp => "whatsapp://send?phone=$username",
      _ => null,
    };
  }
}
