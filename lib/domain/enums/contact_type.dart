enum ContactType {
  instagram,
  facebook,
  telegram,
  whatsApp,
  none;

  String? link(String txt) {
    return switch (this) {
      instagram => "instagram://$txt",
      facebook => "fb://$txt",
      telegram => "https://t.me/$txt", // "telegram://$txt",
      whatsApp => "whatsapp://send?phone=$txt",
      _ => null,
    };
  }
}
