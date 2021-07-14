Translations
=========================================

This repository contains translations for device specific strings on my Unofficial LineageOS builds for Xiaomi Mi 9T.

If you want to add translations for your language please create a pull request which adds the translations.
You can find the current english strings [here](https://github.com/xiaomi-sm6150/android_device_xiaomi_davinci/blob/lineage-18.1/motor/res/values/strings.xml).

To add a new language you need to copy the english file over to ./overlay/device/xiaomi/davinci/parts/res/values-{your_country_code}/strings.xml and translate the strings. Do NOT modify the name of the strings.

Example:
You want to translate "Example" to "Beispiel".
This is how such a string could look like originally:
```
    <string name="example">Example</string>
```
This is how you translate it:
```
    <string name="example">Beispiel</string>
```

![Translation](https://media.giphy.com/media/vrcxO2t1CLV0k/giphy.gif)
