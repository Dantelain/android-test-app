set AAPT="C:\Users\jms\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt.exe"
set ZIPALIGN="C:\Users\jms\AppData\Local\Android\Sdk\build-tools\34.0.0\zipalign.exe"

%AAPT% add out.unsigned.apk classes.dex
%ZIPALIGN% -p -f -v 4 out.unsigned.apk out.unsigned.aligned.apk