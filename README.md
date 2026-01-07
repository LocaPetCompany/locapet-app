# 🚀 Locapet

[![Flutter Version](https://img.shields.io/badge/Flutter-Stable-blue.svg)](https://flutter.dev) [![Dart Version](https://img.shields.io/badge/Dart-Stable-blue.svg)](https://dart.dev) [![Java Version](https://img.shields.io/badge/Java-17-orange.svg)]() [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

이 프로젝트는 **클린 아키텍처(Clean Architecture)**와 **BLoC 패턴**을 기반으로 설계된 Flutter 애플리케이션입니다. 확장 가능하고 유지보수가 용이한 애플리케이션을 신속하게 개발할 수 있도록 필수적인 설정과 구조를 미리 갖추고 있습니다.

---

## 🛠️ 기술 스택 및 환경

- **App:** Flutter (Stable), Dart (Stable)
- **Java:** Java 17
- **아키텍처:** Clean Architecture, BLoC Pattern
- **상태 관리:** BLoC / Cubit (`flutter_bloc`)
- **의존성 주입:** GetIt (`get_it`), Injectable (`injectable`)
- **코드 생성:** Build Runner (`build_runner`), Freezed (`freezed`)
- **네트워킹:** Dio, Interceptors
- **라우팅:** GoRouter (`go_router`)
- **코드 스타일:** `flutter_lints`
- **버전 관리:** FVM (Flutter Version Management)
- **CI/CD:** GitHub Actions (기본 설정 예시 포함)

---

## 📂 프로젝트 구조

이 프로젝트는 클린 아키텍처를 기반으로 하며, 기능별로 모듈화된 폴더 구조를 따릅니다.

```text
lib/
├── core/                     # 앱의 핵심 로직 (라우터, 테마, 상수, DI 등)
│   ├── constant/
│   ├── data_class/
│   ├── di/
│   ├── enum/
│   ├── router/
│   ├── services/
│   └── theme/
├── export/                   # 자주 사용되는 파일들을 한번에 export
├── feat/                     # 기능(feature)별 모듈
│   └── [feature_name]/
│       ├── data/             # 데이터 레이어 (Data Layer)
│       │   ├── data_source/  # 데이터 소스
│       │   │   ├── local/    # 앱 내부 데이터 소스
│       │   │   └── remote/   # 원격 서버 데이터 소스
│       │   ├── dto/          # 데이터 전송 모델
│       │   │   ├── request/  # 리퀘스트 dto
│       │   │   └── response/ # 리스폰스 dto
│       │   └── repository/   # Domain Repository 인터페이스의 구현체
│       ├── domain/           # 도메인 레이어 (Domain Layer)
│       │   ├── entity/       # 핵심 비즈니스 객체
│       │   ├── repository/   # 데이터 저장소의 추상 인터페이스
│       │   └── usecase/      # 비즈니스 로직
│       └── presentation/     # 프레젠테이션 레이어 (Presentation Layer)
│           ├── screen/       # UI 화면
│           ├── state/        # 상태 관리 로직 (Cubit/Bloc)
│           │   ├── local/    # 앱 내부 비즈니스 로직
│           │   └── remote/   # 도메인 usecase 비즈니스 로직
│           └── widget/       # 공용 위젯
├── util/                     # 유틸리티 함수 및 클래스
└── main.dart                 # 앱 시작점
```

## 🏛️ 핵심 아키텍처

### 🏭 코드 생성 및 생산성 (`build_runner`)

이 프로젝트는 `build_runner`를 적극적으로 활용하여 반복적인 보일러플레이트 코드를 자동으로 생성합니다. 이는 개발자의 실수를 줄이고 핵심 비즈니스 로직에 더 집중할 수 있게 하여 전체적인 개발 생산성을 크게 향상시킵니다.

- **보일러플레이트 코드 자동화**: `json_serializable`을 이용한 모델의 직렬화/역직렬화, `freezed`를 사용한 불변(immutable) 클래스, `injectable`을 통한 의존성 주입 설정을 자동 생성합니다.
- **휴먼 에러 감소**: 반복적이고 기계적인 코드 작성을 자동화하여 오타나 누락으로 인한 버그 발생 가능성을 원천적으로 차단합니다.
- **유지보수의 용이성**: 모델이나 의존성 구조가 변경될 때, 관련 코드를 직접 수정하는 대신 어노테이션(`@`)만 변경하고 `build_runner`를 다시 실행하면 되므로 유지보수가 간편합니다.

### 🔗 의존성 주입 (`GetIt` & `Injectable`)

클래스 간의 **결합도(coupling)를 낮추고 테스트 용이성을 높이기 위해** 서비스 로케이터(Service Locator) 패턴인 `get_it`과 이를 자동화하는 `injectable` 라이브러리를 사용합니다.

- `get_it`: 의존성 객체(예: Repository, Cubit)를 등록하고, 필요한 곳 어디에서나 해당 객체를 쉽게 가져올 수 있게 해주는 중앙 레지스트리 역할을 합니다.
- `injectable`: `@injectable`, `@lazySingleton` 등의 어노테이션을 클래스에 추가하기만 하면, `build_runner`가 `get_it`에 의존성을 등록하는 코드를 자동으로 생성해 줍니다.
- **장점**: 결합도 감소, 테스트 용이성 확보, 명확한 의존성 관리.

### 🧱 상태 관리 (`BLoC / Cubit`)

이 프로젝트는 `flutter_bloc` 라이브러리 (주로 **Cubit**)를 사용하여 UI와 비즈니스 로직을 분리합니다.

- UI는 `get_it`을 통해 주입받은 Cubit의 상태 변화를 구독하고, 비즈니스 로직(데이터 요청 등)은 Cubit 내에서 처리합니다.
- `BlocProvider`, `BlocBuilder`, `BlocListener` 등을 활용하여 위젯 트리에서 상태 객체를 주입하고 상태 변화에 따라 UI를 리빌드하거나 특정 액션(스낵바 표시 등)을 수행합니다.

---

## 🚀 시작하기

#### 사전 요구 사항

- Flutter SDK (FVM 사용 권장)
- Java 17 JDK 설치
- FVM (Flutter Version Management) 설치

#### 설치 및 실행

1.  **저장소 클론**

    ```bash
    git clone https://github.com/your-username/locapet-app.git
    cd locapet
    ```

2.  **Flutter 버전 설정 (FVM 사용)**

    ```bash
    fvm use
    ```

3.  **의존성 설치**

    ```bash
    fvm flutter pub get
    ```

4.  **코드 생성 (`build_runner` 실행)**
    모델, 서비스 등 코드 생성이 필요한 파일을 수정했다면, 아래 명령어를 실행하여 관련 파일들을 생성/업데이트합니다.

    ```bash
    fvm flutter pub run build_runner build --delete-conflicting-outputs
    ```

5.  **(필요 시) 환경 변수 설정**
    루트 디렉토리에 `.env` 파일을 생성하고 필요한 환경 변수(API 키, Base URL 등)를 입력합니다. 이 파일은 `.gitignore`에 의해 버전 관리에서 제외됩니다.

    ```env
    # .env
    KAKAO_NATIVE_KEY=YOUR_KAKAO_NATIVE_KEY
    NAVER_CLIENT_ID=YOUR_NAVER_CLIENT_ID
    NAVER_CLIENT_SECRET=YOUR_NAVER_CLIENT_SECRET
    ```

6.  **앱 실행**
    ```bash
    fvm flutter run
    ```

---

## 📡 API 통신

- **Dio:** 백엔드 서버와의 HTTP 통신을 위해 `Dio` 라이브러리를 사용합니다.
- **Interceptors:** Dio의 `Interceptors`를 활용하여 요청/응답/오류 발생 시 공통 로직(로깅, 인증 토큰 헤더 추가, API 에러 핸들링 등)을 중앙에서 처리하는 구조를 권장합니다.

---

## 🔄 CI/CD (GitHub Actions)

이 프로젝트는 GitHub Actions를 사용하여 지속적 통합(CI)을 수행하는 기본 워크플로우 예시를 포함할 수 있습니다.

- **트리거:** `main` 또는 `develop` 브랜치로 **Pull Request** 또는 **Push**가 발생할 때.
- **작업 (Jobs):**
  - **Analyze & Test:** 코드 분석 (`flutter analyze`) 및 단위/위젯 테스트 실행.
  - **Build:** Android/iOS 앱 빌드.
