# MyApplication
 A demo for creating new projects

# To change the package name
- open terminal and run:
- flutter pub add -d change_app_package_name
- flutter pub get

## To change android and ios package name
- dart run change_app_package_name:main com.package.name
- Where com.package.name is the new package name

## Or to change just android package name
- dart run change_app_package_name:main com.new.package.name --android
- Where com.package.name is the new package name

## Or to change just ios package name
- dart run change_app_package_name:main com.new.package.name --ios
- Where com.package.name is the new package name


# To change the app name
- open terminal and run:
- flutter pub add rename_app
- flutter pub get

## To change all platforms name
- dart run rename_app:main all="My App Name"

## Or to change one platform, and a default others
- dart run rename_app:main android="Android Name" ios="IOS Name" others="Others Name"

## Or to change each platform separately
- dart run rename_app:main android="Android Name" ios="IOS Name" web="Web Name" mac="Mac Name" windows="Windows Name" linux="Linux Name"
- Where "My App Name" is the new app name

