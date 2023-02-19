# code_factory_flutter

## 환경파일

- pubspec.yaml : 프로젝트 설정을 변경할 때 사용
- android/app/src/main/AndroidManifest.xml : 안드로이드 시스템이 앱의 코드를 실행하기 전에 필수로 확봅해야 하는 앱에 대한 정보를 담고 있다. 앱 권한 등 안드로이드 네이티브 관련 설정을 할 수 있다.
- android/build.gradle : 안드로이드에서 사용하는 그레이들의 설정 파일. 최상단 build.gradle 파일은 프로젝트 단 설정을 한다. (클래스패스, 레포지토리 정보)
- android/app/build.gradle: 앱 모듈 관련 설정 파일(의존성, 버전 정보)
- ios/Runner/info.plist : IOS앱의 실행 패키지에 관한 필수 설정 정보 파일. XML구조로 구성되어 있으며 가장 흔히 앱에서 사용할 권한을 추가할때 사용
