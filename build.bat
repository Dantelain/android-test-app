

set AAPT2="C:\Users\jms\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt2.exe"
set D8="C:\Users\jms\AppData\Local\Android\Sdk\build-tools\34.0.0\d8.bat"
set PLATFORM="C:\Users\jms\AppData\Local\Android\Sdk\platforms\android-32\android.jar"
set APP_DIR="C:\Users\jms\AndroidStudioProjects\MyTestApp"
set JAVA_ANDROID_HOME="C:\Users\jms\.jdks\liberica-17.0.7\bin\javac.exe"

del /F /Q obj\*
del /F /Q %APP_DIR%\src\com\example\myapplication\R.java

%AAPT2% compile res\layout\activity_main.xml -o obj\
%AAPT2% compile res\values\strings.xml -o obj\

%AAPT2% link -o bin\out.unsigned.apk -I %PLATFORM% obj\values_strings.arsc.flat obj\layout_activity_main.xml.flat --manifest AndroidManifest.xml --java src\ --target-sdk-version 33 --min-sdk-version 30

%JAVA_ANDROID_HOME% %APP_DIR%\src\com\example\myapplication\*.java -classpath %PLATFORM% -d build\

%D8% --lib %PLATFORM% --release --output bin\ %APP_DIR%\build\com\example\myapplication\*.class

