??    L      |  e   ?      p     q  
   ?     ?     ?     ?     ?     ?       &   *     Q  .   h  :   ?  7   ?  #   
     .  9   K     ?  '   ?     ?  5   ?     "	     <	  !   O	     q	      ?	     ?	  ,   ?	     ?	      
  4   '
  6   \
     ?
     ?
     ?
     ?
  "   ?
            "   (     K  /   k  
   ?     ?  	   ?     ?     ?     ?               )  2   6  ?   i  D   ?  /   6     f     x     ?  6   ?     ?  2   ?     1     M     \     |     ?     ?     ?  #   ?          "     <     V     ]     d       ?  ?     /     H     [     h     ?  %   ?  5   ?     ?  A        T  %   b  6   ?  <   ?  '   ?     $  N   9  %   ?     ?  -   ?  =   ?      6     W  ?   l     ?  #   ?  $   ?  (        >     Y  #   x  =   ?  "   ?     ?          0  )   I     s     ?  !   ?  +   ?  T   ?     1     9     N     `     y  5   ?     ?     ?     ?  2   ?  N   ,  M   {  @   ?     
     $     <  6   T  8   ?  ;   ?  $         %  '   =  !   e  $   ?  .   ?  !   ?  +   ?     )     G     ]     t  
   }  ,   ?     ?           &   '          #   @   G              5      %       $   >   2   =               (      ?   9   )         -                  3                H   "   +      /   !   7   0          8             J      C       6   D                     L       	   1          *             4      
       I             :   ,   .                 F   K   E   <      ;   A       B         %a %b %e %H:%M:%S %Z %Y  from %.*s  on %.*s %s failed: caught signal %d%s %s failed: exit code %d %s failed: unknown status 0x%x ...Sorry, your time is up!
 ...Time is running out...
 Application needs to call libpam again Authentication failure Authentication information cannot be recovered Authentication service cannot retrieve authentication info Authentication service cannot retrieve user credentials Authentication token aging disabled Authentication token expired Authentication token is no longer valid; new one required Authentication token lock busy Authentication token manipulation error Bad item passed to pam_*_item() Cannot make/remove an entry for the specified session Changing password for %s. Conversation error Conversation is waiting for event Creating directory '%s'. Critical error - immediate abort Error in service module Failed preliminary check by password service Failed to load module Failure setting user credentials Have exhausted maximum number of retries for service Insufficient credentials to access authentication data Last failed login:%s%s%s Last login:%s%s%s Memory buffer error Module is unknown NIS password could not be changed. New %s password:  New password:  No module specific data is present Password has been already used. Password has been already used. Choose another. Password:  Permission denied Retype %s Retype new %s password:  Retype new password:  Sorry, passwords do not match. Success Symbol not found System error The return value should be ignored by PAM dispatch There was %d failed login attempt since the last successful login. There were %d failed login attempts since the last successful login. There were %d failed login attempts since the last successful login. Unable to create and initialize directory '%s'. Unknown PAM error User account has expired User credentials expired User not known to the underlying authentication module Welcome to your new account! Would you like to enter a different role or level? You have mail in folder %s. You have mail. You have new mail in folder %s. You have new mail. You have no mail in folder %s. You have old mail in folder %s. You have old mail. You must choose a shorter password. erroneous conversation (%d)
 failed to initialize PAM
 failed to pam_set_item()
 level: login: login: failure forking: %m role: Project-Id-Version: Linux-PAM
Report-Msgid-Bugs-To: https://github.com/linux-pam/linux-pam/issues
PO-Revision-Date: 2013-04-16 09:34-0400
Last-Translator: eukim <eukim@redhat.com>
Language-Team: Korean (http://www.transifex.com/projects/p/fedora/language/ko/)
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Zanata 3.8.3
  %a %b %e %H:%M:%S %Z %Y  %.*s에서 시작  일시 %.*s %s 실패: 신호 발견 %d%s %s 실패: 종료 코드 %d %s 실패: 알 수 없는 상태 0x%x ...죄송합니다. 시간이 초과되었습니다!
 ..시간 초과...
 libpam을 다시 불러오려면 응용 프로그램이 필요함 인증 실패 인증 정보를 복구할 수 없음 인증 서비스가 인증 정보를 읽을 수 없음 인증 서비스에서 사용자 인증을 읽을 수 없음 인증 토큰 기한이 비활성화됨 인증 토큰 만료 더이상 인증 토큰이 유효하지 않음: 새로운 인증 토큰 필요 인증 토큰 잠금 장치 사용중 인증 토근 수정 오류 pam_*_item()에 잘못된 항목이 전달됨 특정 세션에 대해 항목을 생성/삭제할 수 없음 %s에 대한 암호 변경 중   인증 대화 오류 이벤트를 위해 인증 대화를 기다리는 중 입니다 '%s' 디렉토리 생성 중.   치명적인 오류 - 즉시 중지 서비스 모듈에서 오류 발생 암호 서비스로 사전 확인 실패 모듈 가져오기 실패 사용자 인증 설정 실패 서비스를 최대로 재시도함 인증 데이터에 액세스하기에 인증이 불충분함 마지막 로그인 실패:%s%s%s  마지막 로그인:%s%s%s 메모리 버퍼 오류 모듈을 알 수 없음 NIS 암호는 변경할 수 없습니다. 새 %s 암호: 새 암호: 특정 모듈 데이터가 없음 이미 사용되고 있는 암호입니다. 이미 사용되고 있는 암호입니다. 다른 암호를 선택해 주십시오. 암호: 권한 부여 거부 다시 입력 %s  새 %s 암호 재입력: 새 암호 재입력: 죄송합니다. 암호가 일치하지 않습니다. 성공 기호를 찾을 수 없음 시스템 오류 복귀 값은 PAM 디스패치에 의해 무시됨 마지막 로그인 후 %d 번의 로그인 시도가 실패하였습니다.   마지막 로그인 후 %d 번의 로그인 시도가 실패하였습니다.  '%s' 디렉토리를 생성 및 초기화할 수 없습니다.   알 수 없는 PAM 오류 사용자 계정 만료 사용자 인증 만료 기본 인증 모듈에서 사용자를 알 수 없음 새로운 계정을 사용해 주셔서 감사합니다! 다른 역할 또는 레벨을 입력하시겠습니까?    %s 폴더에 메일이 있습니다. 메일이 있습니다. %s에 새로운 메일이 있습니다. 새로운 메일이 있습니다. %s 폴더에 메일이 없습니다. %s 폴더에 오래된 메일이 있습니다. 오래된 메일이 있습니다. 더 짧은 암호를 선택해야합니다. 잘못된 인증 대화 (%d)
 PAM 초기화 실패
 pam_set_item() 실패
 레벨:  로그인: 로그인: 포크 작업(forking) 실패: %m 역할:  