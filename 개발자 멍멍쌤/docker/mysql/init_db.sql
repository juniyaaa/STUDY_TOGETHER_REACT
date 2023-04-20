CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `categories`
--

INSERT INTO `categories` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, '웹을 이용한 유틸들', 1, '2022-10-02 14:56:11', '2022-10-02 14:56:11'),
(2, '학급 유틸 프로그램', 2, '2022-10-02 14:56:11', '2022-10-02 14:56:11'),
(3, 'NEIS Util', 3, '2022-10-02 14:56:11', '2022-10-02 14:56:11'),
(4, '메모장 및 윈도우 창 관련 유틸', 4, '2022-10-02 14:56:11', '2022-10-02 14:56:11'),
(5, 'QR, barcode, NFC 관련 유틸', 5, '2022-10-02 14:56:11', '2022-10-02 14:56:11'),
(6, '학교 및 기타 유틸', 6, '2022-10-02 14:56:11', '2022-10-02 14:56:11'),
(7, '알림 사항', 7, '2022-10-02 14:56:11', '2022-10-02 14:56:11');

-- --------------------------------------------------------

--
-- 테이블 구조 `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `order` int NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created` date NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_blog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link_youtube` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `posts`
--

INSERT INTO `posts` (`id`, `order`, `category_id`, `created`, `title`, `version`, `excerpt`, `body`, `link_blog`, `link_youtube`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-02-20', '학부모 상담 예약 시스템 (2023학년도 1학기 운영 시작)', '2.0', '학부모 상담 예약을 편리하게 받을 수 있는 웹사이트', '*학부모 상담 예약을 편리하게 받을 수 있는 웹사이트<br>', 'https://mungkhs.tistory.com/104', 'https://youtu.be/PoLoiscfgMo', '2022-10-02 05:48:32', '2023-02-24 01:04:37'),
(2, 1, 1, '2022-07-09', '(새시스템용)분반(4.1)+일일교육(3.1)+예약(2.2)통합프로그램(이번에는 예약시스템만 업데이트됨', '', '분반 작업 시간 최소화, 일일교육 관리, 각종 예약 관리', '*각 학교에서 사용하는 일일교육 양식 그대템 사용가능함.<br>*아침에 컴퓨터 부팅시 자동으로 일일교육이 열리게 됨.<br>*특별실 예약 시스템<br>*아주 손쉽게 사용할 수 있는 분반시스템<br>*위 세 시스템은 각각 별도의 시스템으로 1~2개 시스템만 운영도 가능함<br>*(2022.07.09)예약시스템에서 예약가능 특별실(또는 기기) 갯수를 10개에서 무제한으로 늘림.', 'https://mungkhs.tistory.com/111', 'https://youtu.be/5zyyo97DQNk', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(3, 1, 1, '2021-08-24', '웹을 이용한 외워쓰기(받아쓰기) 1학년 2학기용, 2학년 1,2학기용', '1.0', '웹을 이용한 스스로 할 수 있는 외워쓰기(받아쓰기) 시스템', '*웹을 이용한 외워쓰기(받아쓰기) 시스템<br>*현재 1학년 2학기, 2학년 1학기, 2학기 지원<br>', 'https://mungkhs.tistory.com/category/외워쓰기', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(4, 1, 2, '2020-06-30', '화면 꺼지지 마(nozzz)', '1.0', '화면이 꺼지지 않도록 방지하는 유틸', '*수업시간에 가만놔두면 3~5분마다 컴퓨터 화면이 꺼지는 것을 방지해 주는 프로그램', 'https://mungkhs.tistory.com/1', 'https://youtu.be/AR0375hNmu4', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(5, 1, 2, '2021-05-02', '화면 가리개', '1.7', '화면 일부분을 다양한 방법으로 가리거나, 반투명으로 설정', '*화면 일부분을 완전히 가리거나, 반투명으로 가릴 수 있음.<br>*가리개의 색깔, 투명도를 조정할 수 있음.<br>*가리개에 그림 삽입이 가능함.<br>*창을 투명하게 하면 창 뒷부분 선택도 가능함.<br>*마우스 hover 기능', 'https://mungkhs.tistory.com/70', 'https://youtu.be/fsw0s32nLyM', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(6, 1, 2, '2021-12-05', '화면돋보기', '1.0', '화면 일부분을 줌잇의 라이브줌처럼, 하지만 좀더 편리하게 확대 가능', '*화면 일부분을 크게 확대시킬 수 있음.<br>*zoomit의 라이브줌과 유사한 기능임.<br>', 'https://mungkhs.tistory.com/103', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(7, 1, 2, '2021-11-25', '줌(zoom)출석부', '2.0', 'zoom 수업 도중에 참가자를 실시간으로 체크해주는 실시간 출석부', '*zoom 수업 도중에 참가자를 실시간으로 체크해줌.<br>*입장 시간, 퇴장 시간이 자동 기록됨.<br>*출석 기록을 파일로 저장할 수 있음.<br>*교과선생님의 경우 각반 학생 명단을 즉시 바꿀 수 있음.<br>*결석자 명단 조회<br>', 'https://mungkhs.tistory.com/101', 'https://youtu.be/4tYN6RDT8nk', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(8, 1, 2, '2021-11-25', '소리측정기(발표측정기)', '1.0', '아동의 발표 소리, 교실의 소음도를 측정하여 보여주는 프로그램', '*아동의 발표 소리의 크기를 색으로 보여줄 수 있음.<br>*교실의 소음도를 측정하여 아이들에게 색으로 보여줄 수 있음.<br>', 'https://mungkhs.tistory.com/entry/소리-측정기-발표-측정기', 'https://youtu.be/LQ5o6QnxHoI', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(9, 1, 2, '2021-08-20', '가로카메라앱(horizontal camera)-미러링, 무선실물화상기 대용', '3.5', '스마트폰을 무선실물화상기처럼, 무조건 가로로 실행', '*교실에서 TV와 미러링시 무선실물화상기처럼 쓸 수 있음.<br>*미러링 기능 지원<br>*스마트폰 기본 카메라는 세로 모드만 지원해서 화면이 작게 나오지만, 본 앱은 가로 전용으로 TV화면을 꽉차게 사용할 수 있음.<br>*불필요한 버튼이 하나도 없음.<br>*실행도중 화면이 꺼지지 않으며, 화면을 잠시 어둡게 할 수 있음. <br>*화면 정지 기능, 선그리기 기능<br>*줌 기능, 사진 촬영 기능 ', 'https://mungkhs.tistory.com/82', 'https://youtu.be/VlWIvaHORGo', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(10, 1, 2, '2021-08-20', '가로카메라앱 전용 뷰어', '1.0', '가로카메라앱 전용 뷰어 - 윈조우즈 전용', '*가로카메라앱 전용 뷰어<br>*미러링 신호가 있으면 자동으로 창이 보여지며, 신호가 없으면 자동으로 창이 최소화됨.<br>', 'https://mungkhs.tistory.com/83', 'https://youtu.be/VlWIvaHORGo', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(11, 1, 3, '2022-01-28', 'NEIS 접속 도우미 - 엣지(Edge)용, EVPN 접속 가능', '2.0', '나이스 접속시 아이디를 자동으로 입력시켜주는 단순한 유틸, 부팅시 자동 실행 지원', '*나이스 접속시 아이디를 자동 입력해주고, 인증서 선택창까지 자동으로 열어주어 편리함.<br>', 'https://mungkhs.tistory.com/110', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(12, 1, 3, '2022-04-01', '나이스 입력 도우미 통합본-탭5번 추가', '3.1', '기존 나이스 입력 유틸 프로그램 통합, 복사 입력 지원', '*hwp 파일을 이용한 평어 일괄 입력<br>*간편하게 복사 기능을 이용하여 평어,수행 일괄 입력<br>*엑셀 파일을 이용한 수행평가 결과 일괄 입력<br>*버튼, 숫자키를 이용하여 수행 입력<br>', 'https://mungkhs.tistory.com/107', 'https://youtu.be/HXi6Ws5UGSg', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(13, 1, 3, '2022-01-27', '나이스 초등 신입생(1학년) 주소 변환 프로그램', '1.0', '초등 신입생(1학년) 입학대상자 주소변환 기능 제대로 활용하기', '*초등 신입생(1학년) 입학대상자 주소변환 기능 활용<br>*우편번호, 도로명 주소 자동 변환 <br>*나이스에 자동 입력 지원<br>', 'https://mungkhs.tistory.com/109', 'https://youtu.be/flRGkXyHcMM', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(14, 1, 3, '2022-01-27', '탭매크로 프로그램', '1.0', '엑셀과 연동하여 나이스, 기타 다른 곳에 입력을 자동화시킴', '*엑셀과 연동<br>*엑셀과 연동하여 나이스의 입력을 자동화시킴<br>*나이스 뿐만 아니라 다양한 곳에 활용 가능<br>', 'https://mungkhs.tistory.com/108', 'https://youtu.be/z_JK7-c1Xvc', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(15, 1, 3, '2021-06-24', '자가진단 자동로그인 프로그램', '3.0', '교사용 자가진단시스템 자동 로그인', '*교사용 자가진단시스템에 자동으로 로그인을 해줌.<br>*컴퓨터 부팅시 자동으로 실행을 시킬 수 있어 편리함.<br>*V3.0-더이상 크롬드라이버를 수정으로 업그레이드 할 필요 없습니다.<br>', 'https://mungkhs.tistory.com/72', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(16, 1, 4, '2022-02-26', '항상 위 (AlwaysOnTop, 메모장, 기타 어떤 프로그램이든...) 종합판', '1.0', '메모장 또는 어떠한 프로그램이든 항상위로 만들어 주는 프로그램들 5가지', '1. 뭐든항상위 (AlwaysOnTopAll) 프로그램<br>2. 특정 프로그램 항상위 (AlwaysOnTop_exe) 프로그램<br>3. 특정 메모장 항상위 (AlwaysOnTop_work) 프로그램<br>4. 메모장 항상위 (AlwaysOnTop_notepad) 프로그램<br>5. 보안 회사, 은행 등 보안 때문에 다운로드, usb 복사 등이 불가능할 때 윈도우 자체에서 항상위 구현<br>', 'https://mungkhs.tistory.com/114', 'https://youtu.be/dk-HkjWMW_8', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(17, 1, 4, '2022-01-17', '윈도우 자체에서 메모장 항상 위 구현', '1.0', '다운로드, usb 복사 등이 필요없어 보안이 중요한 회사에서도 활용 가능-엑셀 또는 파워셀(PowerShell) 활용', '*다운로드, usb 복사 등이 필요없어 보안이 중요한 회사에서도 활용 가능<br>*엑셀 또는 파워셀(PowerShell) 활용<br>', 'https://mungkhs.tistory.com/105', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(18, 1, 4, '2020-07-21', '메모장 항상 위', '1.0', '빈 메모장을 열어 항상위 속성으로 실행시켜 다른 창에 가리지 않도록 해줌', '*메모장 프로그램을 항상위 속성으로 실행시켜 다른 창에 가리지 않도록 해줌.<br>', 'https://mungkhs.tistory.com/10', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(19, 1, 4, '2021-03-11', '작업메모장 항상 위', '2.0', '미리 저장해둔 있는 작업.txt 파일을 항상위 속성으로 열어줌.', '*미리 저장해둔 있는 작업.txt 파일을 항상위 속성으로 열어줌.<br>', 'https://mungkhs.tistory.com/61', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(20, 1, 4, '2020-08-02', '멍메모장', '2.0', '메모장이지만, 글씨체, 크기, 글씨를 바꿀 수 있고, 테두리가 없는 넓은 메모장', '*제목표시줄과 메뉴, 아래쪽 상태표시줄이 없어 화면을 넓게 사용함.<br>*내용 일부분의 글씨체, 글씨 크기, 글씨 색깔을 수정할 수 있음.<br>*그림 입력이 가능함.<br>*기본으로 항상 위 고정 속성을 가지고 있음.<br>*배경색 변경 및 창 투명도 조정이 가능함.<br>', 'https://mungkhs.tistory.com/17', 'https://youtu.be/JgnqNxA532M', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(21, 1, 4, '2020-08-02', 'To.멍메모장 프로그램', '2.0', '멍메모장에 한글자 한글자 타자를 치듯 입력되는 효과를 나타낼 수 있음', '*멍메모장에 한글자 한글자 타자를 치듯 입력되는 효과를 나타낼 수 있음.<br>', 'https://mungkhs.tistory.com/17', 'https://youtu.be/tvy2tseB1Mc', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(22, 1, 4, '2021-02-14', '항상위로', '1.0', '원하는 실행파일을 항상위 속성으로 열 수 있게 함.', '*원하는 실행파일을 항상위 속성으로 열 수 있음.<br> (단, 현재는 단일 실행파일만 가능함.)<br>*아래 있는 창문관리 프로그램은 열려있는 창의 속성을 조정하는 것이고, 본 프로그램은 처음부터 실행시킬 때 항상위 속성으로 열리게 하는 것임.<br>', 'https://mungkhs.tistory.com/69', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(23, 1, 4, '2020-07-29', '창문 관리 프로그램', '1.3', '열려있는 프로그램 창들을 선택적으로 항상위, 모니터 이동, 투명도 조정', '*열려있는 프로그램 창들을 선택적으로 항상위로 고정시킬 수 있음.<br>*다중 모니터일 경우 특정 창을 다른 모니터로 즉시 가져올 수 있음.<br>*열려있는 프로그램 창의 투명도를 조정할 수 있음.<br>', 'https://mungkhs.tistory.com/12', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(24, 1, 5, '2022-07-05', 'BarQrNfcToPc 안드로이드 앱', '1.0', '안드로이드 스마트폰을 Barcode, QR, NFC 리더기로 사용할 수 있도록 해줌.', '*사용하지 않는 구형 스마트폰을 리더기로 만들어줌.<br>*블루투스 또는 와이파이 연결로 무선으로 사용 가능함.<br>', 'https://mungkhs.tistory.com/117', 'https://youtu.be/_THwTOoqPCc', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(25, 1, 5, '2022-07-05', 'BarQrNfcToPc 윈도우용 프로그램', '2.0', '스마트폰에서 Barcode, QR, NFC를 읽어 PC로 전송받는 프로그램', '*스마트폰에서 인식된 값을 컴퓨터에서 전송받는 역할을 함.<br>*블루투스 또는 와이파이 연결로 무선으로 사용 가능함.<br>*입력된 값을 엑셀이나 기타 다른 프로그램에 전달해줌.<br>*클123QR 프로그램으로도 값 전송 가능.<br>', 'https://mungkhs.tistory.com/118', 'https://youtu.be/_THwTOoqPCc', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(26, 1, 5, '2022-01-26', '스크린 Ocr Qr', '1.2', '화면에 보이는는 모든 것을 텍스트로, 번역도 가능, QR인식, 표는 엑셀로 변환', '*컴퓨터 모니터(화면)에 보여지는 것을 캡춰하여 OCR 기능을 이용하여 텍스트로 변환시켜줌.<br>*화면에 있는 QR 코드를 바로 인식할 수 있음.<br>*앞에서 텍스트로 인식된 결과를 바로 번역해 볼 수 있음.<br>*V1.2-표 인식 후 엑셀로 변환 가능<br>', 'https://mungkhs.tistory.com/106', 'https://youtu.be/CcvPTu9HLZM', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(27, 1, 5, '2020-09-07', '멍 QR 생성기', '1.5', '유튜브 주소 변환, 주소에 대한 QR 생성, QR 읽기 가능', '*유튜브 주소 변환이 가능함.<br>*주소에 대한 QR코드 생성이 가능함.<br>*QR코드에 학교나 개인의 로고 삽입이 가능함.<br>*컴퓨터 문서에 들어있는 QR코드를 스마트폰 촬영이 필요없이 컴퓨터에서 직접 열어볼 수 있음.<br>*컴퓨터 문서에 들어있는 클릭할 수 없는 영문 주소를 읽어낼 수 있음.', 'https://mungkhs.tistory.com/18', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(28, 1, 5, '2020-09-07', '멍 QR 생성기 v2.0(인디스쿨 로그인 필수)', '2.0', '네이버 단축주소 생성 가능 + 위 1.5버전 기능 포함', '*단축주소 생성기능이 있음.<br>*그 외에는 위 멍QR 1.5버전과 동일한 기능을 가지고 있음.<br>', 'https://indischool.com/31', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(29, 1, 5, '2021-08-03', 'BarQR리더기', '2.1', '컴퓨터에서 바코드, QR코드를 읽어 엑셀로 입력값 전달', '*교실에 있는 실물화상기, 화상캠을 이용하여 QR코드나 바코드를 읽어낼 수 있음.<br>*읽어낸 값을 엑셀이나 한글 파일 등에 자동으로 입력 받을 수 있음.<br>*시간 간격을 두고 연속으로 계속 인식을 시킬 수 있음.<br>*엑셀을 잘 활용하실 수 있다면, 아이들 각각의 QR코드를 생성 후 아이들이 직접 QR코드를 실물화상기에 대어 검사한 사람 기록 표시 등을 할 수 있을 것입니다.<br>', 'https://mungkhs.tistory.com/79', 'https://youtu.be/MXv6LpqhV0s', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(30, 1, 5, '2022-07-05', '클123QR 프로그램', '5.0', '학생의 QR코드를 읽어 클래스123에 자동 체크해주는 프로그램', '*교실에 있는 실물화상기, 화상캠을 이용하여 학생의 QR코드를 읽으면, 클래스123 사이트의 해당 아동이 자동으로 체크가 됨.<br>*바코드 스캐터(2D 인식이 가능해야 함)<br>*NFC 리더기를 이용하여 NFC 카드 및 태그도 이용 가능<br>*인식시 소리 기능 추가, 항상위 기능 있음<br>*인식 소리로 사용할 녹음기 기능 추가<br>*BarQrNfcToPc 프로그램과 연동 가능함.<br>', 'https://mungkhs.tistory.com/119', 'https://youtu.be/4FnQ6JGkdKg', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(31, 1, 5, '2021-06-29', 'QR 일괄 생성기', '1.2', '학생용 QR코드를 손쉽게 일괄로 생성', '*학생용 QR코드를 손쉽게 일괄로 생성할 수 있음.<br>', 'https://mungkhs.tistory.com/76', 'https://youtu.be/ndUwnWd1JFk', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(32, 1, 5, '2021-07-26', '작품 촬영기', '1.2', 'QR을 붙인 작품을 컴퓨터에서 읽어들으며 자동으로 파일 이름 설정', '*교실에 있는 실물화상기, 화상카메라를 이용해 작품을 찍을 수 있음.<br>*사진 촬영 간격 시간을 조정해서 반복적으로 자동으로 사진을 찍을 수 있음. (단, QR코드가 인식되어야만 사진이 촬영됨.)<br>*사진 속 QR코드를 인식하여 자동으로 파일 이름을 만들어줌. (다양한 형태로 이름을 만들 수 있음)<br>*스마트폰으로 찍은 사진(QR코드가 포함된)도 폴더째로 불러들여 자동으로 QR인식을 시킨 후 파일명을 자동적으로 붙여줄 수 있음.<br>', 'https://mungkhs.tistory.com/78', 'https://youtu.be/y-VBsZ6KSFw', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(33, 1, 5, '2021-08-05', '클456QR 프로그램', '2.0', '클456엑셀과 연동이 되는 클123QR과 유사한 프로그램', '*클456엑셀과 연동이 됨<br>*클123QR과 유사한 프로그램<br>', 'https://mungkhs.tistory.com/80', 'https://youtu.be/SMyK-006pSk', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(34, 1, 5, '2021-08-10', '클456엑셀 프로그램(매크로 파일)', '1.0', '클456QR 프로그램과 연동되는 엑셀 체크 프로그램', '*엑셀 매크로 파일임.<br>*클래스123 같은 체크 프로그램<br>*사진 삽입 가능<br>*버튼 위치 변경 가능<br>', 'https://mungkhs.tistory.com/81', 'https://youtu.be/NkEllnHRBDQ', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(35, 1, 6, '2021-10-24', 'WiFi QR 생성기 프로그램', '1.0', 'WiFi QR 코드를 생성하는 윈도우용 프로그램', '*WiFi QR을 생성할 수 있음.<br>*QR 코드에 로고 및 설명글을 삽입시킬 수 있음.<br>', 'https://mungkhs.tistory.com/88', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(36, 1, 6, '2021-10-24', 'Easy WiFi Connector 앱 (using QR)', '1.0', 'WiFi QR을 촬영하면 바로 wifi에 접속이 되는 안드로이드 앱', '*안드로이드앱<br>*WiFi QR을 촬영하면 바로 접속이 가능함.<br>*WiFi 정보를 손쉽게 삭제할 수 있음.<br>', 'https://mungkhs.tistory.com/89', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(37, 1, 6, '2021-10-31', 'Easy WiFi Connector 프로그램 (using QR)', '1.0', 'WiFi QR을 촬영하면 바로 wifi에 접속이 되는 윈도우즈 프로그램', '*윈도우즈용<br>*WiFi QR을 촬영하면 바로 접속이 가능함.<br>*WiFi 정보를 손쉽게 삭제할 수 있음.<br>', 'https://mungkhs.tistory.com/92', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(38, 1, 6, '2020-08-05', '경력계산기(엑셀)', '1.0', '경력계산을 해주는 엑셀파일', '*경력계산을 해주는 엑셀파일.<br>', 'https://mungkhs.tistory.com/18', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(39, 1, 6, '2021-04-03', 'Scoman (기자재 관리 프로그램)', '1.1', '교내 컴퓨터의 사양 등을 손쉽게 수집하여 관리할 수 있음.', '*교내 컴퓨터의 사양 등을 손쉽게 수집할 수 있음.<br>', 'https://mungkhs.tistory.com/63', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(40, 1, 6, '2021-01-28', '컴퓨터정보(이름, 작업그룹, 아이피 등..) 수정 프로그램', '1.0', '교실 컴퓨터정보(이름, 작업그룹, 아이피 등..)을 누구나 손쉽게 바꿀 수 있음.', '*컴퓨터정보(이름, 작업그룹, 아이피 등..)을 손쉽게 바꿀 수 있음.<br>*매년 교실이 바뀐 학기초에 담임선생님께 보내 직접 수정하게 할 수 있도록 쉽게 사용할 수 있음.<br>', 'https://mungkhs.tistory.com/44', '', '2022-10-02 05:48:32', '2022-10-02 05:48:32'),
(41, 1, 7, '2022-10-03', '요즘 하고 있는 취미생활', '.', '여름방학 부터 당분간 계속 쪼랩(인디스쿨 취미 코딩 커뮤니티)에서 라라벨(laravel) 공부중입니다. 그래서, 잠시 모든 개발을 멈추게 되어습니다. 추후 라라벨 공부가 끝나면 다시 취미 개발을 시작할 예정입니다.', '* 여름방학 부터 당분간 계속 쪼랩(인디스쿨 취미 코딩 커뮤니티)에서 라라벨(laravel) 공부중입니다. 그래서, 잠시 모든 개발을 멈추게 되어습니다. 추후 라라벨 공부가 끝나면 다시 취미 개발을 시작할 예정입니다.', 'https://indischool.com/boards/announcement/37251001?page=2', '', '2022-10-02 05:48:32', '2022-11-02 20:41:05'),
(42, 1, 7, '2023-01-02', '(게시글) 18. 와일드카드 인증서 자동 갱신 (docker + Let\'s Encrypt + wildcard 인증서 + crontab)', '.', '3개월마다 갱신해야 하는 인증서를 자동으로 갱신되도록 하는 방법', '.', 'https://mungkhs1.tistory.com/75', NULL, '2022-11-02 20:45:29', '2023-01-01 22:45:22'),
(45, 1, 7, '2023-01-03', '(게시글)VSCode를 이용한 서버 SSH 접속 및 원격 도커 제어하기', '.', 'VSCode를 이용한 서버 SSH 접속 및 원격 도커 제어하기', '.', 'https://mungkhs1.tistory.com/76', NULL, '2023-01-03 05:20:02', '2023-01-03 05:21:03'),
(46, 1, 7, '2023-01-03', '(게시글)리눅스 시스템, 네트워크 모니터링 툴들', '.', 'top, htop, iftop, nload', '.', 'https://mungkhs1.tistory.com/77', NULL, '2023-01-03 05:22:25', '2023-01-03 05:22:25'),
(47, 1, 7, '2023-01-03', '(게시글)JMeter를 이용한 서버 부하 테스트 방법', '.', 'JMeter를 이용한 서버 부하 테스트 방법', '.', 'https://mungkhs1.tistory.com/78', NULL, '2023-01-03 05:23:38', '2023-01-03 05:24:10'),
(48, 1, 1, '2023-01-06', '(새시스템용)분반(4.1)+일일교육(3.1)+예약(2.3)통합프로그램(이번에는 예약시스템만 업데이트됨)', '.', '예약 프로그램 시간 추가', '예약 프로그램 시간 추가', 'https://mungkhs.tistory.com/122', NULL, '2023-01-06 04:54:25', '2023-01-06 04:55:17'),
(49, 1, 2, '2023-01-28', 'PC음성인식키보드(VoiceTypingForPc)', '1.0', '안드로이드 폰을 이용하여 Windows pc의 모든 프로그램에 직접 음성으로 글을 입력할 수 있음.', '안드로이드 폰을 이용하여 Windows pc의 모든 프로그램에 직접 음성으로 글을 입력할 수 있음.', 'https://mungkhs.tistory.com/124', 'https://youtu.be/Bm21rSqiF1o', '2023-01-27 20:36:15', '2023-01-27 20:36:15'),
(50, 1, 2, '2023-02-15', '이름표 프로그램(이름=>표,낙관,QR 만들어 주는 프로그램)(stamp)', '1.0', '명단을 표,낙관,QR로 만들어 주는 프로그램', '명단을 표,낙관,QR로 만들어 주는 프로그램', 'https://mungkhs.tistory.com/126', 'https://youtu.be/Z5RW-yyrG1M', '2023-02-15 04:24:36', '2023-02-15 04:24:36'),
(51, 1, 2, '2023-02-15', '바탕화면 아이콘 숨기기 프로그램(hideicon)', '1.0', '바탕화면 아이콘을 잠시 숨겨주는 프로그램', '바탕화면 아이콘을 잠시 숨겨주는 프로그램', 'https://mungkhs.tistory.com/127', 'https://youtu.be/wBVP3DNlUoI', '2023-02-15 04:25:56', '2023-02-15 04:25:56');

-- --------------------------------------------------------

--
-- 테이블 구조 `today`
--

CREATE TABLE `today` (
  `id` int NOT NULL,
  `count` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `today`
--

INSERT INTO `today` (`id`, `count`, `name`) VALUES
(1, 23, '홍길동'),
(2, 3, '이기자'),
(3, 3, '이기자'),
(4, 3, '이기자'),
(5, 3, '이기자'),
(6, 3, '이기자');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `today`
--
ALTER TABLE `today`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 테이블의 AUTO_INCREMENT `today`
--
ALTER TABLE `today`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
