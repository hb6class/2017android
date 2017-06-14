# 2017android

## 패스설정

### ANT_HOME  
c:\ant1.10.1~~~

### path      
%ANT_HOME%\bin;

ANDROID_HOME C:\Users\사용자계정\AppData\Local\Android\sdk
path      
-- %ANDROID_HOME%\tools;
-- %ANDROID_HOME%\platform-tools;
-- %ANDROID_HOME%\build-tools;

### 폰갭 setup
-- npm install -g phonegap
-- npm install -g cordova

### 프로젝트 create
-- phonegap create 프로젝트명
-- cordova create ~~

### 실행해보기
-- cd 프로젝트명
-- phonegap serve

### 안드로이드 소스
-- phonegap platform add android
-- cordova platform add android

### apk 만들기
-- phonegap build android
-- cordova compile android
