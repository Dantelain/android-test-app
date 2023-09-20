
set APKSIGNER="C:\Users\jms\AppData\Local\Android\Sdk\build-tools\34.0.0\apksigner.bat"

%APKSIGNER% sign --ks my-release-key.jks --ks-pass "pass:123456" --out bin\out-release.apk bin\out.unsigned.aligned.apk