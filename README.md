# more_hands
 
## Generate codes

fvm flutter pub run build_runner build --delete-conflicting-outputs
fvm flutter packages pub run build_runner build --delete-conflicting-outputs

## MoreHands UIKit codes generates commands:
cd packages/uikit && fvm flutter pub get && fvm flutter packages pub run build_runner build --delete-conflicting-outputs

## MoreHands localizations codes generates commands:
cd packages/localizations && fvm flutter pub get && fvm flutter gen-l10n

## MoreHands Launch icons generate
fvm flutter pub get && fvm flutter pub run flutter_launcher_icons:generate -o
fvm flutter pub get && fvm flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
fvm flutter pub get && fvm flutter pub run flutter_native_splash:create
fvm flutter pub get && fvm flutter pub run flutter_native_splash:create --path=flutter_native_splash.yaml
