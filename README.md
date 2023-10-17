# Sonic Mania Decompilation: Android Build Guide

This is a guide to building your own Sonic Mania APK for Android. This guide is currently intended for Linux users only.

## Instructions (Linux)

1. Install dependencies using your package manager if you don't already have it.
   Debian, Ubuntu and derivatives: `sudo apt install git curl`
   Fedora, RHEL, CentOS and derivatives: `sudo dnf install git curl`
   Arch Linux and derivatives: `sudo pacman -S git curl`
  
2. Install Android Studio from [here](https://developer.android.com/studio) if you don't already have it.

3. Download the **Sonic Mania Android Build Helper** script from [here]( https://raw.githubusercontent.com/SonicGamerEpisode55/Sonic-Mania-Android-Build-Guide-Linux/main/ManiaAndroidBuildHelper_2.0.sh). Press "Ctrl + S" after clicking the link, and save it as a `.sh` file. This script will automate a lot of the difficult parts of the Android build process to make compilation easier.

4. Locate `ManiaAndroidBuildHelper_2.0.sh` and place it somewhere easy-to-access. No specific location is required, but Downloads is recomended, and for other location you must change the path in the "cd" command in the next step.

5. Open an terminal and execute: `cd /home/$USER/Downloads && chmod +x ./ManiaAndroidBuildHelper_2.0.sh && bash ./ManiaAndroidBuildHelper_2.0.sh`

6. Once the script says `SETUP COMPLETE`, open Android Studio. Click `File` in the navigation bar at the top, click `Open`, navigate to `/home/username/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/android` (replacing 'username' with whatever your user folder is called) and click `OK`. Android Studio will then run some automatic actions in the background to import the project.

7. Ensure that the latest SDK tools are installed. This can be checked by going to "Tools --> SDK Manager". Go to the `SDK Tools` tab. If the latest versions of `Android SDK Build-Tools 33`, `NDK (Side-by-Side)`, `CMake`, and `Android SDK Platform-Tools` are not installed, check the boxes for them and click `Apply`. It will then download the latest versions of these tools onto your computer. Once finished downloading, press the `Finish` button, and the project will sync with the new tools.

8. Eventually, Android Studio will prompt you, in the bottom right-hand corner, to upgrade "Gradle". This is required for successful compilation, so you need to upgrade it.

9. If you just want to play the game, and are not interested in bug-reporting, you can go to `Build --> Build Project`. Android Studio will then automatically start compiling your APK file, and after completion, will be stored in the directory `/home/username/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/android/app/build/outputs/apk/debug`.

# 11. This next step is for ONLY for users wanting to play on the RELEASE build. If you are using a Debug build, skip to Step 12.

11. Before compilation, go to "Build --> Generate Signed Bundle/APK". This will then prompt you with many fields to fill out, the required ones listed below:
- 11a. Select "APK" on the first page, it being the bottom option. Hit "Next".

- 11b. There are four fields next. They are, as follows: `Key store path`, `Key store password`, `Key alias`, and `Key password`.

- 11c. For `Key store path`, click the folder icon and go to the directory `/home/username/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/android`. There should be a file named `release-key.jks`. Choose that file as the `Key store path`.

- 11d. For the next three fields, the passwords for each field are:
- **Key store password**: `retroengine`
- **Key alias**: `key0`
- **Key password**: `retroengine`

- 11e. Choose "Next", and then chose the `release` option. Android Studio will then automatically start compiling your APK file, and after completion, will be stored in the directory `/home/username/Sonic-Mania-Android-Sheeple/Sonic-Mania-Decompilation/dependencies/RSDKv5/android/app/release`.

# 12. Required mods setup
- 12a. Install your Mania APK on your phone and run it once. It will not show anything, but we can fix that.

- 12b. Download the required `mods.zip` folder from [here](https://www.dropbox.com/s/czghcw7ps128qtj/mods.zip?dl=0).

- 12c. Extract the `mods.zip` folder from Dropbox into the directory `[root]/RSDK/v5/mods` on your phone. You should now be able to play Sonic Mania on Android!

## Support

If you need any support, please feel free to reach out to the [Retro Engine Modding Server](http://dc.railgun.works/retroengine) on Discord.
