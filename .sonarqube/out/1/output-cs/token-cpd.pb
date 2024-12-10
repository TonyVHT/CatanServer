œ+
VC:\Users\gearh\source\repos\CatanServer\CatanService\ServiceManagers\ServiceManager.cs
	namespace		 	
CatanService		
 
.		 
Services		 
{

 
public 

class 
ServiceManager 
:  !
IServiceManager" 1
{ 
private 
readonly 
IRepositoryManager +
repositoryManager, =
;= >
private 
IAccountService 
accountService  .
;. /
private 
IProfileService 
profileService  .
;. /
private 
IEmailService 
emailService *
;* +
private 
ISmsService 

smsService &
;& '
private 
ITelegramService  
telegramService! 0
;0 1
private 
IGameService 
gameService (
;( )
private  
IGuestAccountService $
guestAccountService% 8
;8 9
private 
IChatService 
chatService (
;( )
public 
ServiceManager 
( 
IRepositoryManager 0
repositoryManager1 B
)B C
{ 	
this 
. 
repositoryManager "
=# $
repositoryManager% 6
;6 7
} 	
public 
IAccountService 
AccountService -
{ 	
get 
{ 
if 
( 
accountService "
==# %
null& *
)* +
{ 
accountService   "
=  # $
new  % (
AccountService  ) 7
(  7 8
repositoryManager  8 I
,  I J
this  K O
)  O P
;  P Q
}!! 
return## 
accountService## %
;##% &
}$$ 
}%% 	
public&& 
IProfileService&& 
ProfileService&& -
{'' 	
get(( 
{)) 
if** 
(** 
profileService** !
==**" $
null**% )
)**) *
{++ 
profileService,, "
=,,# $
new,,% (
ProfileService,,) 7
(,,7 8
repositoryManager,,8 I
,,,I J
this,,K O
),,O P
;,,P Q
}-- 
return// 
profileService// %
;//% &
}00 
}11 	
public33 
ISmsService33 

SmsService33 %
{44 	
get55 
{66 
if77 
(77 

smsService77 
==77  
null77! %
)77% &
{88 

smsService99 
=99  
new99! $

SmsService99% /
(99/ 0
)990 1
;991 2
}:: 
return<< 

smsService<< !
;<<! "
}== 
}>> 	
public@@ 
ITelegramService@@ 
TelegramService@@  /
{AA 	
getBB 
{CC 
ifDD 
(DD 
telegramServiceDD "
==DD# %
nullDD& *
)DD* +
{EE 
telegramServiceFF #
=FF$ %
newFF& )
TelegramServiceFF* 9
(FF9 :
)FF: ;
;FF; <
}GG 
returnII 
telegramServiceII &
;II& '
}JJ 
}KK 	
publicMM 
IEmailServiceMM 
EmailServiceMM )
{NN 	
getOO 
{PP 
ifQQ 
(QQ 
emailServiceQQ 
==QQ  "
nullQQ# '
)QQ' (
{RR 
emailServiceSS  
=SS! "
newSS# &
EmailServiceSS' 3
(SS3 4
)SS4 5
;SS5 6
}TT 
returnVV 
emailServiceVV #
;VV# $
}WW 
}XX 	
publicZZ 
IGameServiceZZ 
GameServiceZZ '
{[[ 	
get\\ 
{]] 
if^^ 
(^^ 
gameService^^ 
==^^  "
null^^# '
)^^' (
{__ 
gameService`` 
=``  !
new``" %
GameService``& 1
(``1 2
repositoryManager``2 C
,``C D
this``E I
)``I J
;``J K
}aa 
returncc 
gameServicecc "
;cc" #
}dd 
}ee 	
publicgg  
IGuestAccountServicegg #
GuestAccountServicegg$ 7
{hh 	
getii 
{jj 
ifkk 
(kk 
guestAccountServicekk '
==kk( *
nullkk+ /
)kk/ 0
{ll 
guestAccountServicemm '
=mm( )
newmm* -
GuestAccountServicemm. A
(mmA B
repositoryManagermmB S
)mmS T
;mmT U
}nn 
returnpp 
guestAccountServicepp *
;pp* +
}qq 
}rr 	
publictt 
IChatServicett 
ChatServicett '
{uu 	
getvv 
{ww 
ifxx 
(xx 
chatServicexx 
==xx  "
nullxx# '
)xx' (
{yy 
chatServicezz 
=zz  !
newzz" %
ChatServicezz& 1
(zz1 2
)zz2 3
;zz3 4
}{{ 
return}} 
chatService}} "
;}}" #
}~~ 
} 	
}
ÄÄ 
}ÅÅ æ
jC:\Users\gearh\source\repos\CatanServer\CatanService\Services\GuestAccountServices\IGuestAccountService.cs
	namespace		 	
CatanService		
 
.		 
Services		 
{

 
public 

	interface  
IGuestAccountService )
{ 
Task 
< *
OperationResultGuestAccountDto +
>+ ,-
!CreateGuestAccountInDataBaseAsync- N
(N O
stringO U
preferredLanguageV g
)g h
;h i
Task 
< 
bool 
>  
IsOnlineGuestAccount '
(' (
int( +
idGuest, 3
)3 4
;4 5
Task 
< 
GuestAccountDto 
> !
CreateGuestAccountDto 3
(3 4
GuestAccount4 @
guestAccountRecordA S
)S T
;T U
} 
} Ÿ	
WC:\Users\gearh\source\repos\CatanServer\CatanService\ServiceManagers\IServiceManager.cs
	namespace 	
CatanService
 
. 
Services 
{		 
public

 

	interface

 
IServiceManager

 $
{ 
IAccountService 
AccountService &
{' (
get) ,
;, -
}. /
IProfileService 
ProfileService &
{' (
get) ,
;, -
}. /
ISmsService 

SmsService 
{  
get! $
;$ %
}& '
ITelegramService 
TelegramService (
{) *
get+ .
;. /
}0 1
IEmailService 
EmailService "
{# $
get% (
;( )
}* +
IGameService 
GameService  
{! "
get# &
;& '
}( ) 
IGuestAccountService 
GuestAccountService 0
{0 1
get2 5
;5 6
}7 8
IChatService 
ChatService  
{! "
get# &
;& '
}( )
} 
} π%
`C:\Users\gearh\source\repos\CatanServer\CatanService\Services\ProfileServices\IProfileService.cs
	namespace

 	
CatanService


 
.

 
Services

 
{ 
public 

	interface 
IProfileService $
{ 

ProfileDto 
CreateProfileDto #
(# $
Profile$ +
profileRecord, 9
)9 :
;: ;
Task 
< 
Profile 
> $
CreateProfileEntityAsync /
(/ 0
string0 6
name7 ;
,; <
Account= D
accountRecordE R
)R S
;S T
Task 
< 
bool 
> 
IsValidProfileName &
(& '
string' -
name. 2
)2 3
;3 4
Task 
< 
bool 
> 2
&IsProfileNameRegisteredInDataBaseAsync 9
(9 :
string: @
profileNameA L
)L M
;M N
Task 
< %
OperationResultProfileDto &
>& ',
 ChangeProfileNameInDataBaseAsync( H
(H I

ProfileDtoI S
profileClientDtoT d
)d e
;e f
Task 
< %
OperationResultProfileDto &
>& '/
#UploadProfilePictureInDataBaseAsync( K
(K L

ProfileDtoL V
profileClientDtoW g
,g h
Bytei m
[m n
]n o

imageBytesp z
)z {
;{ |
Task 
< %
OperationResultPictureDto &
>& ',
 GetProfilePictureInDataBaseAsync( H
(H I

ProfileDtoI S
profileClientDtoT d
)d e
;e f
Task 
< 
Profile 
> &
GetProfileWithNewSessionId 0
(0 1
int1 4
	accountId5 >
)> ?
;? @
Task 
< 
bool 
> 
IsOnline 
( 
int 
	idProfile  )
,) *
string+ 1
newSessionId2 >
)> ?
;? @
Task 
< 
bool 
> .
"InviteFriendsToGameInDataBaseAsync 5
(5 6
string6 <
namePlayerToInvite= O
,O P
stringQ W
	keyAccessX a
)a b
;b c
bool $
IsActiveWithinTimeLimite %
(% &
DateTime& .
?. /
lastActivity0 <
,< =
DateTime> F
?F G
newActivityH S
,S T
intU X
	timeLimitY b
)b c
;c d
Task 
< )
OperationResultProfileListDto *
>* +)
GetFriendsListInDataBaseAsync, I
(I J

ProfileDtoJ T
profileClientDtoU e
)e f
;f g
Task 
< )
OperationResultProfileListDto *
>* +3
'GetPendingFriendRequestsInDataBaseAsync, S
(S T

ProfileDtoT ^
profileClientDto_ o
)o p
;p q
Task 
< +
OperationResultFriendRequestDto ,
>, -,
 SendFriendRequestInDataBaseAsync. N
(N O
stringO U
nameFriendToInviteV h
,h i

ProfileDtoj t
profileClientDto	u Ö
)
Ö Ü
;
Ü á
Task 
< 
bool 
> .
"AcceptFriendRequestInDataBaseAsync 5
(5 6
string6 <
nameFriendToAccept= O
,O P

ProfileDtoQ [
profileClientDto\ l
)l m
;m n
Task 
< 
bool 
> .
"RejectFriendRequestInDataBaseAsync 5
(5 6
string6 <
nameFriendToReject= O
,O P

ProfileDtoQ [
profileClientDto\ l
)l m
;m n
Task 
< %
OperationResultPictureDto &
>& '+
GetFriendPictureInDataBaseAsync( G
(G H

ProfileDtoH R
profileFriendDtoS c
,c d
stringe k
preferredLanguagel }
)} ~
;~ 
Task 
< 
bool 
> .
"DeleteFriendProfileInDataBaseAsync 5
(5 6
string6 <

friendName= G
,G H

ProfileDtoI S
profileClientDtoT d
)d e
;e f
}   
}!! ˚
bC:\Users\gearh\source\repos\CatanServer\CatanService\Services\TelegramServices\ITelegramService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public		 

	interface		 
ITelegramService		 %
{

 
Task 
SendMessageAsync 
( 
string $
phoneNumber% 0
,0 1
string2 8
message9 @
)@ A
;A B
} 
} Ï
XC:\Users\gearh\source\repos\CatanServer\CatanService\Services\SMSServices\ISmsService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public		 

	interface		 
ISmsService		  
{

 
Task 
SendSmsAsync 
( 
string  
phoneNumber! ,
,, -
string. 4
messageBody5 @
)@ A
;A B
} 
} ™
WC:\Users\gearh\source\repos\CatanServer\CatanService\Services\SMSServices\SMSService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public 

class 

SmsService 
: 
ISmsService )
{ 
private 
readonly 
string 
twilioPhoneNumber  1
;1 2
public 

SmsService 
( 
) 
{ 	
string 

accountSid 
= 
Environment *
.* +"
GetEnvironmentVariable+ A
(A B
ApiServiceUtilitiesB U
.U V 
TWILIO_ENVIROMENT_IDV j
)j k
;k l
string 
	authToken 
= 
Environment *
.* +"
GetEnvironmentVariable+ A
(A B
ApiServiceUtilitiesB U
.U V#
TWILIO_ENVIROMENT_TOKENV m
)m n
;n o
twilioPhoneNumber 
= 
Environment  +
.+ ,"
GetEnvironmentVariable, B
(B C
ApiServiceUtilitiesC V
.V W
TWILIO_PHONE_NUMBERW j
)j k
;k l
TwilioClient 
. 
Init 
( 

accountSid (
,( )
	authToken* 3
)3 4
;4 5
} 	
public 
async 
Task 
SendSmsAsync &
(& '
string' -
phoneNumber. 9
,9 :
string; A
messageBodyB M
)M N
{ 	
try   
{!! 
await"" 
MessageResource"" %
.""% &
CreateAsync""& 1
(""1 2
to""2 4
:""4 5
new""6 9
PhoneNumber"": E
(""E F
phoneNumber""F Q
)""Q R
,""R S
from""T X
:""X Y
new""Z ]
PhoneNumber""^ i
(""i j
twilioPhoneNumber""j {
)""{ |
,""| }
body## 
:## 
messageBody## %
)##% &
;##& '
}$$ 
catch%% 
(%% 
ApiException%% 
apiEx%%  %
)%%% &
{&& 
LoggerUtilities'' 
.''  !
LogErrorCustomMessage''  5
(''5 6
apiEx''6 ;
,''; <
apiEx''= B
.''B C
Message''C J
)''J K
;''K L
}(( 
})) 	
}** 
}++ ïó
_C:\Users\gearh\source\repos\CatanServer\CatanService\Services\ProfileServices\ProfileService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public 

class 
ProfileService 
:  !
IProfileService" 1
{ 
private 
readonly 
IRepositoryManager +
repositoryManager, =
;= >
private 
readonly 
IServiceManager (
serviceManager) 7
;7 8
public 
ProfileService 
( 
IRepositoryManager 0
repositoryManager1 B
,B C
IServiceManagerD S
serviceManagerT b
)b c
{ 	
this 
. 
repositoryManager "
=# $
repositoryManager% 6
;6 7
this 
. 
serviceManager 
=  !
serviceManager" 0
;0 1
} 	
public   
async   
Task   
<   %
OperationResultProfileDto   3
>  3 4,
 ChangeProfileNameInDataBaseAsync  5 U
(  U V

ProfileDto  V `
profileClientDto  a q
)  q r
{!! 	
bool"" 
isProfileNameExists"" $
=""% &
await""' ,
repositoryManager""- >
.""> ?
ProfileRepository""? P
.""P Q(
IsProfileNameRegisteredAsync""Q m
(""m n
profileClientDto""n ~
.""~ 
Name	"" É
)
""É Ñ
;
""Ñ Ö
if$$ 
($$ 
isProfileNameExists$$ #
)$$# $
{%% 
return&& 
new&& %
OperationResultProfileDto&& 4
(&&4 5
false&&5 :
,&&: ;
LanguageUtilities&&< M
.&&M N'
MessageDataBaseUnableToLoad&&N i
(&&i j
profileClientDto&&j z
.&&z {
PreferredLanguage	&&{ å
)
&&å ç
,
&&ç é
null
&&è ì
,
&&ì î%
EnumChangeAccountRegister'' -
.''- .
AlreadyExists''. ;
)''; <
;''< =
}(( 
else)) 
if)) 
()) 
await)) $
HandleSaveProfileNewName)) 3
())3 4
profileClientDto))4 D
)))D E
)))E F
{** 
return++ 
new++ %
OperationResultProfileDto++ 4
(++4 5
true++5 9
,++9 :
LanguageUtilities++; L
.++L M+
MessageDataBaseSuccessFullySave++M l
(++l m
profileClientDto++m }
.++} ~
PreferredLanguage	++~ è
)
++è ê
,
++ê ë
profileClientDto
++í ¢
,
++¢ £%
EnumChangeAccountRegister,, -
.,,- .
Success,,. 5
),,5 6
;,,6 7
}-- 
return.. 
new.. %
OperationResultProfileDto.. 0
(..0 1
false..1 6
,..6 7
LanguageUtilities..8 I
...I J'
MessageDataBaseUnableToLoad..J e
(..e f
profileClientDto..f v
...v w
PreferredLanguage	..w à
)
..à â
,
..â ä%
EnumChangeAccountRegister// )
.//) *
UnableToSaveData//* :
)//: ;
;//; <
}00 	
public22 
async22 
Task22 
<22 
bool22 
>22 $
HandleSaveProfileNewName22  8
(228 9

ProfileDto229 C
profileClientDto22D T
)22T U
{33 	
Profile44 
profileRecord44 !
=44" #
await44$ )
repositoryManager44* ;
.44; <
ProfileRepository44< M
.44M N
FindEntityByIdAsync44N a
(44a b
(44b c
int44c f
)44f g
profileClientDto44g w
.44w x
Id44x z
)44z {
;44{ |
if55 
(55 
profileRecord55 
!=55  
null55! %
)55% &
{66 
profileRecord77 
.77 
Name77 "
=77# $
profileClientDto77% 5
.775 6
Name776 :
;77: ;
await88 
repositoryManager88 '
.88' (
	SaveAsync88( 1
(881 2
)882 3
;883 4
return99 
true99 
;99 
}:: 
return;; 
false;; 
;;; 
}<< 	
public>> 

ProfileDto>> 
CreateProfileDto>> *
(>>* +
Profile>>+ 2
profileRecord>>3 @
)>>@ A
{?? 	

ProfileDto@@ 

profileDto@@ !
=@@" #
new@@$ '

ProfileDto@@( 2
(@@2 3
)@@3 4
;@@4 5

profileDtoAA 
.AA 
NameAA 
=AA 
profileRecordAA +
.AA+ ,
NameAA, 0
;AA0 1

profileDtoBB 
.BB 
IdBB 
=BB 
profileRecordBB )
.BB) *
IdBB* ,
;BB, -

profileDtoCC 
.CC 
CurrentSessionIDCC '
=CC( )
profileRecordCC* 7
.CC7 8
	SessionIdCC8 A
;CCA B

profileDtoDD 
.DD 
PictureVersionDD %
=DD& '
profileRecordDD( 5
.DD5 6
PictureVersionDD6 D
;DDD E

profileDtoEE 
.EE 
IsOnlineEE 
=EE  !
profileRecordEE" /
.EE/ 0
IsOnlineEE0 8
;EE8 9
returnGG 

profileDtoGG 
;GG 
}HH 	
publicJJ 
staticJJ 

ProfileDtoJJ  "
CreateProfileFriendDtoJJ! 7
(JJ7 8
ProfileJJ8 ?
profileRecordJJ@ M
)JJM N
{KK 	

ProfileDtoLL 

profileDtoLL !
=LL" #
newLL$ '

ProfileDtoLL( 2
(LL2 3
)LL3 4
;LL4 5

profileDtoMM 
.MM 
IdMM 
=MM 
profileRecordMM )
.MM) *
IdMM* ,
;MM, -

profileDtoNN 
.NN 
NameNN 
=NN 
profileRecordNN +
.NN+ ,
NameNN, 0
;NN0 1

profileDtoOO 
.OO 
PictureVersionOO %
=OO& '
profileRecordOO( 5
.OO5 6
PictureVersionOO6 D
;OOD E

profileDtoPP 
.PP 
IsOnlinePP 
=PP  !
profileRecordPP" /
.PP/ 0
IsOnlinePP0 8
;PP8 9
returnRR 

profileDtoRR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
ProfileUU !
>UU! "$
CreateProfileEntityAsyncUU# ;
(UU; <
stringUU< B
nameUUC G
,UUG H
AccountUUI P
accountRecordUUQ ^
)UU^ _
{VV 	
ProfileWW 
profileRecordWW !
=WW" #
nullWW$ (
;WW( )
ifYY 
(YY 
awaitYY 
IsValidProfileNameYY (
(YY( )
nameYY) -
)YY- .
)YY. /
{ZZ 
profileRecord[[ 
=[[ 
new[[  #
Profile[[$ +
([[+ ,
)[[, -
;[[- .
profileRecord\\ 
.\\ 
Id\\  
=\\! "
accountRecord\\# 0
.\\0 1
Id\\1 3
;\\3 4
profileRecord]] 
.]] 
Name]] "
=]]# $
name]]% )
;]]) *
profileRecord^^ 
.^^ 
PicturePath^^ )
=^^* +
null^^, 0
;^^0 1
}__ 
awaitaa 
repositoryManageraa #
.aa# $
	SaveAsyncaa$ -
(aa- .
)aa. /
;aa/ 0
returncc 
profileRecordcc  
;cc  !
}dd 	
publicff 
asyncff 
Taskff 
<ff 
boolff 
>ff 2
&IsProfileNameRegisteredInDataBaseAsyncff  F
(ffF G
stringffG M
profileNameffN Y
)ffY Z
{gg 	
returnhh 
awaithh 
repositoryManagerhh *
.hh* +
ProfileRepositoryhh+ <
.hh< =(
IsProfileNameRegisteredAsynchh= Y
(hhY Z
profileNamehhZ e
)hhe f
;hhf g
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
boolkk 
>kk 
IsValidProfileNamekk  2
(kk2 3
stringkk3 9
namekk: >
)kk> ?
{ll 	
boolmm 
isCorrectNamemm 
=mm  
falsemm! &
;mm& '
ifoo 
(oo 
!oo 
stringoo 
.oo 
IsNullOrEmptyoo %
(oo% &
nameoo& *
)oo* +
&&oo, .
nameoo/ 3
.oo3 4
Lengthoo4 :
>=oo; =&
AccountValidationUtilitiesoo> X
.ooX Y
USERNAME_MIN_LENGTHooY l
&&oom o
nameoop t
.oot u
Lengthoou {
<=oo| ~'
AccountValidationUtilities	oo ô
.
ooô ö!
USERNAME_MAX_LENGTH
ooö ≠
)
oo≠ Æ
{pp 
tryqq 
{rr 
constss 
stringss  
	nameRegexss! *
=ss+ ,&
AccountValidationUtilitiesss- G
.ssG H)
REGEX_PROFILE_NAME_VALIDATIONssH e
;sse f
isCorrectNameuu !
=uu" #
Regexuu$ )
.uu) *
IsMatchuu* 1
(uu1 2
nameuu2 6
,uu6 7
	nameRegexuu8 A
,uuA B
RegexOptionsuuC O
.uuO P
NoneuuP T
,uuT U
TimeSpanuuV ^
.uu^ _
FromMillisecondsuu_ o
(uuo p
$numuup t
)uut u
)uuu v
;uuv w
}ww 
catchxx 
(xx 
ArgumentExceptionxx (
exxx) +
)xx+ ,
{yy 
Logzz 
.zz 
Errorzz 
(zz 
exzz  
,zz  !
exzz" $
.zz$ %
Sourcezz% +
)zz+ ,
;zz, -
}{{ 
catch|| 
(|| &
RegexMatchTimeoutException|| 1
ex||2 4
)||4 5
{}} 
Log~~ 
.~~ 
Error~~ 
(~~ 
ex~~  
,~~  !
ex~~" $
.~~$ %
Source~~% +
)~~+ ,
;~~, -
} 
catch
ÄÄ 
(
ÄÄ 
	Exception
ÄÄ  
ex
ÄÄ! #
)
ÄÄ# $
{
ÅÅ 
Log
ÇÇ 
.
ÇÇ 
Error
ÇÇ 
(
ÇÇ 
ex
ÇÇ  
,
ÇÇ  !
ex
ÇÇ" $
.
ÇÇ$ %
Source
ÇÇ% +
)
ÇÇ+ ,
;
ÇÇ, -
}
ÉÉ 
}
ÑÑ 
return
ÜÜ 
await
ÜÜ 
Task
ÜÜ 
.
ÜÜ 

FromResult
ÜÜ (
(
ÜÜ( )
isCorrectName
ÜÜ) 6
)
ÜÜ6 7
;
ÜÜ7 8
}
áá 	
public
àà 
async
àà 
Task
àà 
<
àà '
OperationResultProfileDto
àà 3
>
àà3 41
#UploadProfilePictureInDataBaseAsync
àà5 X
(
ààX Y

ProfileDto
ààY c
profileClientDto
ààd t
,
ààt u
byte
ààv z
[
ààz {
]
àà{ |

imageBytesàà} á
)ààá à
{
ââ 	
try
ää 
{
ãã 
string
åå 
pictureExtension
åå '
=
åå( )
GetImageExtension
åå* ;
(
åå; <

imageBytes
åå< F
)
ååF G
;
ååG H
if
çç 
(
çç 
!
çç 
string
çç 
.
çç 
IsNullOrEmpty
çç )
(
çç) *
pictureExtension
çç* :
)
çç: ;
&&
çç< >
(
çç? @
pictureExtension
çç@ P
==
ççQ S
ProfileUtilities
ççT d
.
ççd e#
PICTURE_EXTENSION_PNG
ççe z
||
çç{ }
pictureExtensionçç~ é
==ççè ë 
ProfileUtilitiesççí ¢
.çç¢ £%
PICTURE_EXTENSION_JPGçç£ ∏
)çç∏ π
)ççπ ∫
{
éé 
string
èè 
picturePath
èè &
=
èè' (#
GetProfilePicturePath
èè) >
(
èè> ?
(
èè? @
int
èè@ C
)
èèC D
profileClientDto
èèD T
.
èèT U
Id
èèU W
,
èèW X
pictureExtension
èèY i
)
èèi j
;
èèj k
	Directory
ëë 
.
ëë 
CreateDirectory
ëë -
(
ëë- .
Path
ëë. 2
.
ëë2 3
GetDirectoryName
ëë3 C
(
ëëC D
picturePath
ëëD O
)
ëëO P
)
ëëP Q
;
ëëQ R
await
ìì 
SaveImageAsync
ìì (
(
ìì( )
picturePath
ìì) 4
,
ìì4 5

imageBytes
ìì6 @
)
ìì@ A
;
ììA B
await
ïï &
UpdateProfilePicturePath
ïï 2
(
ïï2 3
profileClientDto
ïï3 C
,
ïïC D
picturePath
ïïE P
)
ïïP Q
;
ïïQ R
return
óó 
new
óó '
OperationResultProfileDto
óó 8
(
óó8 9
true
óó9 =
,
óó= >
LanguageUtilities
óó? P
.
óóP Q
MessageSuccess
óóQ _
(
óó_ `
profileClientDto
óó` p
.
óóp q 
PreferredLanguageóóq Ç
)óóÇ É
,óóÉ Ñ 
profileClientDtoóóÖ ï
)óóï ñ
;óóñ ó
}
òò 
}
ôô 
catch
öö 
(
öö )
UnauthorizedAccessException
öö .
ex
öö/ 1
)
öö1 2
{
õõ 
Log
úú 
.
úú 
Error
úú 
(
úú 
ex
úú 
,
úú 
ex
úú  
.
úú  !
Source
úú! '
)
úú' (
;
úú( )
}
ùù 
catch
ûû 
(
ûû 
IOException
ûû 
ex
ûû !
)
ûû! "
{
üü 
Log
†† 
.
†† 
Error
†† 
(
†† 
ex
†† 
,
†† 
ex
††  
.
††  !
Source
††! '
)
††' (
;
††( )
}
°° 
catch
¢¢ 
(
¢¢ 
	Exception
¢¢ 
ex
¢¢ 
)
¢¢  
{
££ 
Log
§§ 
.
§§ 
Error
§§ 
(
§§ 
ex
§§ 
,
§§ 
ex
§§  
.
§§  !
Source
§§! '
)
§§' (
;
§§( )
}
•• 
return
¶¶ 
new
¶¶ '
OperationResultProfileDto
¶¶ 0
(
¶¶0 1
false
¶¶1 6
,
¶¶6 7
LanguageUtilities
¶¶8 I
.
¶¶I J%
MessageUnableToSaveData
¶¶J a
(
¶¶a b
profileClientDto
¶¶b r
.
¶¶r s 
PreferredLanguage¶¶s Ñ
)¶¶Ñ Ö
)¶¶Ö Ü
;¶¶Ü á
}
ßß 	
private
©© 
static
©© 
string
©© 
GetImageExtension
©© /
(
©©/ 0
byte
©©0 4
[
©©4 5
]
©©5 6
pictureBytes
©©7 C
)
©©C D
{
™™ 	
using
´´ 
(
´´ 
MemoryStream
´´ 
pictureStream
´´  -
=
´´. /
new
´´0 3
MemoryStream
´´4 @
(
´´@ A
pictureBytes
´´A M
)
´´M N
)
´´N O
using
¨¨ 
(
¨¨ 
Image
¨¨ 
image
¨¨ 
=
¨¨  
Image
¨¨! &
.
¨¨& '

FromStream
¨¨' 1
(
¨¨1 2
pictureStream
¨¨2 ?
)
¨¨? @
)
¨¨@ A
{
≠≠ 
if
ÆÆ 
(
ÆÆ 
image
ÆÆ 
.
ÆÆ 
	RawFormat
ÆÆ #
.
ÆÆ# $
Equals
ÆÆ$ *
(
ÆÆ* +
ImageFormat
ÆÆ+ 6
.
ÆÆ6 7
Jpeg
ÆÆ7 ;
)
ÆÆ; <
)
ÆÆ< =
{
ØØ 
return
∞∞ 
ProfileUtilities
∞∞ +
.
∞∞+ ,#
PICTURE_EXTENSION_JPG
∞∞, A
;
∞∞A B
}
±± 
else
≤≤ 
if
≤≤ 
(
≤≤ 
image
≤≤ 
.
≤≤ 
	RawFormat
≤≤ (
.
≤≤( )
Equals
≤≤) /
(
≤≤/ 0
ImageFormat
≤≤0 ;
.
≤≤; <
Png
≤≤< ?
)
≤≤? @
)
≤≤@ A
{
≥≥ 
return
¥¥ 
ProfileUtilities
¥¥ +
.
¥¥+ ,#
PICTURE_EXTENSION_PNG
¥¥, A
;
¥¥A B
}
µµ 
}
∂∂ 
return
∑∑ 
string
∑∑ 
.
∑∑ 
Empty
∑∑ 
;
∑∑  
}
∏∏ 	
private
∫∫ 
static
∫∫ 
async
∫∫ 
Task
∫∫ !
SaveImageAsync
∫∫" 0
(
∫∫0 1
string
∫∫1 7
filePath
∫∫8 @
,
∫∫@ A
byte
∫∫B F
[
∫∫F G
]
∫∫G H

imageBytes
∫∫I S
)
∫∫S T
{
ªª 	
try
ºº 
{
ΩΩ 
using
ææ 
(
ææ 
var
ææ 

fileStream
ææ %
=
ææ& '
new
ææ( +

FileStream
ææ, 6
(
ææ6 7
filePath
ææ7 ?
,
ææ? @
FileMode
ææA I
.
ææI J
Create
ææJ P
,
ææP Q

FileAccess
ææR \
.
ææ\ ]
Write
ææ] b
,
ææb c
	FileShare
ææd m
.
ææm n
None
ææn r
,
æær s
$num
ææt x
,
ææx y
useAsyncææz Ç
:ææÇ É
trueææÑ à
)ææà â
)ææâ ä
{
øø 
await
¿¿ 

fileStream
¿¿ $
.
¿¿$ %

WriteAsync
¿¿% /
(
¿¿/ 0

imageBytes
¿¿0 :
,
¿¿: ;
$num
¿¿< =
,
¿¿= >

imageBytes
¿¿? I
.
¿¿I J
Length
¿¿J P
)
¿¿P Q
;
¿¿Q R
}
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ #
NotSupportedException
√√ (
ex
√√) +
)
√√+ ,
{
ƒƒ 
Log
≈≈ 
.
≈≈ 
Error
≈≈ 
(
≈≈ 
ex
≈≈ 
,
≈≈ 
ex
≈≈  
.
≈≈  !
Source
≈≈! '
)
≈≈' (
;
≈≈( )
}
∆∆ 
catch
«« 
(
«« #
FileNotFoundException
«« (
ex
««) +
)
««+ ,
{
»» 
Log
…… 
.
…… 
Error
…… 
(
…… 
ex
…… 
,
…… 
ex
……  
.
……  !
Source
……! '
)
……' (
;
……( )
}
   
catch
ÀÀ 
(
ÀÀ 
IOException
ÀÀ 
ex
ÀÀ !
)
ÀÀ! "
{
ÃÃ 
Log
ÕÕ 
.
ÕÕ 
Error
ÕÕ 
(
ÕÕ 
ex
ÕÕ 
,
ÕÕ 
ex
ÕÕ  
.
ÕÕ  !
Source
ÕÕ! '
)
ÕÕ' (
;
ÕÕ( )
}
ŒŒ 
catch
œœ 
(
œœ 
SecurityException
œœ $
ex
œœ% '
)
œœ' (
{
–– 
Log
—— 
.
—— 
Error
—— 
(
—— 
ex
—— 
,
—— 
ex
——  
.
——  !
Source
——! '
)
——' (
;
——( )
}
““ 
catch
”” 
(
”” )
UnauthorizedAccessException
”” .
ex
””/ 1
)
””1 2
{
‘‘ 
Log
’’ 
.
’’ 
Error
’’ 
(
’’ 
ex
’’ 
,
’’ 
ex
’’  
.
’’  !
Source
’’! '
)
’’' (
;
’’( )
}
÷÷ 
catch
◊◊ 
(
◊◊ 
	Exception
◊◊ 
ex
◊◊ 
)
◊◊  
{
ÿÿ 
Log
ŸŸ 
.
ŸŸ 
Error
ŸŸ 
(
ŸŸ 
ex
ŸŸ 
,
ŸŸ 
ex
ŸŸ  
.
ŸŸ  !
Source
ŸŸ! '
)
ŸŸ' (
;
ŸŸ( )
}
⁄⁄ 
}
€€ 	
private
›› 
async
›› 
Task
›› &
UpdateProfilePicturePath
›› 3
(
››3 4

ProfileDto
››4 >
profileClientDto
››? O
,
››O P
string
››Q W
relativeFilePath
››X h
)
››h i
{
ﬁﬁ 	
Profile
ﬂﬂ 
profile
ﬂﬂ 
=
ﬂﬂ 
await
ﬂﬂ #
repositoryManager
ﬂﬂ$ 5
.
ﬂﬂ5 6
ProfileRepository
ﬂﬂ6 G
.
ﬂﬂG H!
FindEntityByIdAsync
ﬂﬂH [
(
ﬂﬂ[ \
(
ﬂﬂ\ ]
int
ﬂﬂ] `
)
ﬂﬂ` a
profileClientDto
ﬂﬂa q
.
ﬂﬂq r
Id
ﬂﬂr t
)
ﬂﬂt u
;
ﬂﬂu v
if
‡‡ 
(
‡‡ 
profile
‡‡ 
!=
‡‡ 
null
‡‡ 
)
‡‡  
{
·· 
profile
‚‚ 
.
‚‚ 
PicturePath
‚‚ #
=
‚‚$ %
relativeFilePath
‚‚& 6
;
‚‚6 7
profile
„„ 
.
„„ 
PictureVersion
„„ &
++
„„& (
;
„„( )
await
‰‰ 
repositoryManager
‰‰ '
.
‰‰' (
	SaveAsync
‰‰( 1
(
‰‰1 2
)
‰‰2 3
;
‰‰3 4
}
ÂÂ 
}
ÊÊ 	
private
ËË 
static
ËË 
string
ËË #
GetProfilePicturePath
ËË 3
(
ËË3 4
int
ËË4 7
	profileId
ËË8 A
,
ËËA B
string
ËËC I
fileExtension
ËËJ W
)
ËËW X
{
ÈÈ 	
string
ÍÍ 

pathFolder
ÍÍ 
=
ÍÍ 
Path
ÍÍ  $
.
ÍÍ$ %
Combine
ÍÍ% ,
(
ÍÍ, -
	AppDomain
ÍÍ- 6
.
ÍÍ6 7
CurrentDomain
ÍÍ7 D
.
ÍÍD E
BaseDirectory
ÍÍE R
,
ÍÍR S
ProfileUtilities
ÍÍT d
.
ÍÍd e$
PICTURE_FILE_DIRECTORY
ÍÍe {
,
ÍÍ{ |
	profileIdÍÍ} Ü
.ÍÍÜ á
ToStringÍÍá è
(ÍÍè ê
)ÍÍê ë
)ÍÍë í
;ÍÍí ì
string
ÎÎ 
fileName
ÎÎ 
=
ÎÎ 
$"
ÎÎ  
{
ÎÎ  !
Guid
ÎÎ! %
.
ÎÎ% &
NewGuid
ÎÎ& -
(
ÎÎ- .
)
ÎÎ. /
}
ÎÎ/ 0
$str
ÎÎ0 1
{
ÎÎ1 2
fileExtension
ÎÎ2 ?
}
ÎÎ? @
"
ÎÎ@ A
;
ÎÎA B
return
ÏÏ 
Path
ÏÏ 
.
ÏÏ 
Combine
ÏÏ 
(
ÏÏ  

pathFolder
ÏÏ  *
,
ÏÏ* +
fileName
ÏÏ, 4
)
ÏÏ4 5
;
ÏÏ5 6
}
ÌÌ 	
public
ÔÔ 
async
ÔÔ 
Task
ÔÔ 
<
ÔÔ '
OperationResultPictureDto
ÔÔ 3
>
ÔÔ3 4-
GetFriendPictureInDataBaseAsync
ÔÔ5 T
(
ÔÔT U

ProfileDto
ÔÔU _
profileFriendDto
ÔÔ` p
,
ÔÔp q
string
ÔÔr x 
preferredLanguageÔÔy ä
)ÔÔä ã
{
 	
Profile
ÒÒ 
profileRecord
ÒÒ !
=
ÒÒ" #
await
ÒÒ$ )
repositoryManager
ÒÒ* ;
.
ÒÒ; <
ProfileRepository
ÒÒ< M
.
ÒÒM N!
FindEntityByIdAsync
ÒÒN a
(
ÒÒa b
(
ÒÒb c
int
ÒÒc f
)
ÒÒf g
profileFriendDto
ÒÒg w
.
ÒÒw x
Id
ÒÒx z
)
ÒÒz {
;
ÒÒ{ |
byte
ÛÛ 
[
ÛÛ 
]
ÛÛ 

imageBytes
ÛÛ 
=
ÛÛ -
HandleGetProfilePictureFromDisk
ÛÛ  ?
(
ÛÛ? @
profileRecord
ÛÛ@ M
)
ÛÛM N
;
ÛÛN O
if
ıı 
(
ıı 

imageBytes
ıı 
!=
ıı 
null
ıı "
)
ıı" #
{
ˆˆ 
return
˜˜ 
new
˜˜ '
OperationResultPictureDto
˜˜ 4
(
˜˜4 5
true
˜˜5 9
,
˜˜9 :
LanguageUtilities
˜˜; L
.
˜˜L M
MessageSuccess
˜˜M [
(
˜˜[ \
preferredLanguage
˜˜\ m
)
˜˜m n
,
˜˜n o

imageBytes
˜˜p z
)
˜˜z {
;
˜˜{ |
}
¯¯ 
else
˘˘ 
{
˙˙ 
return
˚˚ 
new
˚˚ '
OperationResultPictureDto
˚˚ 4
(
˚˚4 5
false
˚˚5 :
,
˚˚: ;
LanguageUtilities
˚˚< M
.
˚˚M N%
MessageUnableToSaveData
˚˚N e
(
˚˚e f
preferredLanguage
˚˚f w
)
˚˚w x
)
˚˚x y
;
˚˚y z
}
¸¸ 
}
˛˛ 	
public
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ '
OperationResultPictureDto
ÄÄ 3
>
ÄÄ3 4.
 GetProfilePictureInDataBaseAsync
ÄÄ5 U
(
ÄÄU V

ProfileDto
ÄÄV `
profileClientDto
ÄÄa q
)
ÄÄq r
{
ÅÅ 	
Profile
ÇÇ 
profileRecord
ÇÇ !
=
ÇÇ" #
await
ÇÇ$ )
repositoryManager
ÇÇ* ;
.
ÇÇ; <
ProfileRepository
ÇÇ< M
.
ÇÇM N!
FindEntityByIdAsync
ÇÇN a
(
ÇÇa b
(
ÇÇb c
int
ÇÇc f
)
ÇÇf g
profileClientDto
ÇÇg w
.
ÇÇw x
Id
ÇÇx z
)
ÇÇz {
;
ÇÇ{ |
byte
ÉÉ 
[
ÉÉ 
]
ÉÉ 

imageBytes
ÉÉ 
=
ÉÉ -
HandleGetProfilePictureFromDisk
ÉÉ  ?
(
ÉÉ? @
profileRecord
ÉÉ@ M
)
ÉÉM N
;
ÉÉN O
if
ÖÖ 
(
ÖÖ 

imageBytes
ÖÖ 
!=
ÖÖ 
null
ÖÖ "
)
ÖÖ" #
{
ÜÜ 
return
áá 
new
áá '
OperationResultPictureDto
áá 4
(
áá4 5
true
áá5 9
,
áá9 :
LanguageUtilities
áá; L
.
ááL M
MessageSuccess
ááM [
(
áá[ \
profileClientDto
áá\ l
.
áál m
PreferredLanguage
áám ~
)
áá~ 
,áá Ä

imageBytesááÅ ã
)ááã å
;ááå ç
}
àà 
else
ââ 
{
ää 
return
ãã 
new
ãã '
OperationResultPictureDto
ãã 4
(
ãã4 5
false
ãã5 :
,
ãã: ;
LanguageUtilities
ãã< M
.
ããM N%
MessageUnableToSaveData
ããN e
(
ããe f
profileClientDto
ããf v
.
ããv w 
PreferredLanguageããw à
)ããà â
)ããâ ä
;ããä ã
}
åå 
}
çç 	
public
èè 
static
èè 
byte
èè 
[
èè 
]
èè -
HandleGetProfilePictureFromDisk
èè <
(
èè< =
Profile
èè= D
profileRecord
èèE R
)
èèR S
{
êê 	
byte
ëë 
[
ëë 
]
ëë 

imageBytes
ëë 
=
ëë 
new
ëë  #
byte
ëë$ (
[
ëë( )
$num
ëë) *
]
ëë* +
;
ëë+ ,
try
ìì 
{
îî 
if
ïï 
(
ïï 
profileRecord
ïï !
!=
ïï" $
null
ïï% )
&&
ïï* ,
!
ïï- .
string
ïï. 4
.
ïï4 5
IsNullOrEmpty
ïï5 B
(
ïïB C
profileRecord
ïïC P
.
ïïP Q
PicturePath
ïïQ \
)
ïï\ ]
&&
ïï^ `
File
ïïa e
.
ïïe f
Exists
ïïf l
(
ïïl m
profileRecord
ïïm z
.
ïïz {
PicturePathïï{ Ü
)ïïÜ á
)ïïá à
{
ññ 
FileInfo
óó 
fileInfo
óó %
=
óó& '
new
óó( +
FileInfo
óó, 4
(
óó4 5
profileRecord
óó5 B
.
óóB C
PicturePath
óóC N
)
óóN O
;
óóO P
string
òò 
	extension
òò $
=
òò% &
Path
òò' +
.
òò+ ,
GetExtension
òò, 8
(
òò8 9
profileRecord
òò9 F
.
òòF G
PicturePath
òòG R
)
òòR S
?
òòS T
.
òòT U
ToLower
òòU \
(
òò\ ]
)
òò] ^
;
òò^ _
if
öö 
(
öö 
(
öö 
	extension
öö "
==
öö# %
ProfileUtilities
öö& 6
.
öö6 7#
PICTURE_EXTENSION_PNG
öö7 L
||
ööM O
	extension
ööP Y
==
ööZ \
ProfileUtilities
öö] m
.
ööm n$
PICTURE_EXTENSION_JPGöön É
)ööÉ Ñ
&&ööÖ á
fileInfo
õõ  
.
õõ  !
Length
õõ! '
>
õõ( )(
AccountValidationUtilities
õõ* D
.
õõD E"
PICTURE_MINIMUN_SIZE
õõE Y
&&
õõZ \
fileInfo
õõ] e
.
õõe f
Length
õõf l
<=
õõm o
ProfileUtilitiesõõp Ä
.õõÄ Å 
PICTURE_MAX_SIZEõõÅ ë
)õõë í
{
úú 
using
ûû 
(
ûû 
var
ûû "
image
ûû# (
=
ûû) *
Image
ûû+ 0
.
ûû0 1
FromFile
ûû1 9
(
ûû9 :
profileRecord
ûû: G
.
ûûG H
PicturePath
ûûH S
)
ûûS T
)
ûûT U
{
üü 

imageBytes
†† &
=
††' (
File
††) -
.
††- .
ReadAllBytes
††. :
(
††: ;
profileRecord
††; H
.
††H I
PicturePath
††I T
)
††T U
;
††U V
}
°° 
}
¢¢ 
}
££ 
}
§§ 
catch
•• 
(
•• 
ArgumentException
•• #
ex
••$ &
)
••& '
{
¶¶ 
Log
ßß 
.
ßß 
Error
ßß 
(
ßß 
ex
ßß 
,
ßß 
ex
ßß  
.
ßß  !
Source
ßß! '
)
ßß' (
;
ßß( )
}
®® 
catch
©© 
(
©© #
FileNotFoundException
©© (
ex
©©) +
)
©©+ ,
{
™™ 
Log
´´ 
.
´´ 
Error
´´ 
(
´´ 
ex
´´ 
,
´´ 
ex
´´  
.
´´  !
Source
´´! '
)
´´' (
;
´´( )
}
¨¨ 
catch
≠≠ 
(
≠≠ )
UnauthorizedAccessException
≠≠ .
ex
≠≠/ 1
)
≠≠1 2
{
ÆÆ 
Log
ØØ 
.
ØØ 
Error
ØØ 
(
ØØ 
ex
ØØ 
,
ØØ 
ex
ØØ  
.
ØØ  !
Source
ØØ! '
)
ØØ' (
;
ØØ( )
}
∞∞ 
catch
±± 
(
±± 
IOException
±± 
ex
±± !
)
±±! "
{
≤≤ 
Log
≥≥ 
.
≥≥ 
Error
≥≥ 
(
≥≥ 
ex
≥≥ 
,
≥≥ 
ex
≥≥  
.
≥≥  !
Source
≥≥! '
)
≥≥' (
;
≥≥( )
}
¥¥ 
catch
µµ 
(
µµ 
	Exception
µµ 
ex
µµ 
)
µµ  
{
∂∂ 
Log
∑∑ 
.
∑∑ 
Error
∑∑ 
(
∑∑ 
ex
∑∑ 
,
∑∑ 
ex
∑∑  
.
∑∑  !
Source
∑∑! '
)
∑∑' (
;
∑∑( )
}
∏∏ 
return
∫∫ 

imageBytes
∫∫ 
;
∫∫ 
}
ªª 	
public
ºº 
async
ºº 
Task
ºº 
<
ºº 
Profile
ºº !
>
ºº! "(
GetProfileWithNewSessionId
ºº# =
(
ºº= >
int
ºº> A
	accountId
ººB K
)
ººK L
{
ΩΩ 	
Profile
ææ 
profileRecord
ææ !
=
ææ" #
await
ææ$ )
repositoryManager
ææ* ;
.
ææ; <
ProfileRepository
ææ< M
.
ææM N!
FindEntityByIdAsync
ææN a
(
ææa b
	accountId
ææb k
)
ææk l
;
ææl m
if
øø 
(
øø 
profileRecord
øø 
!=
øø  
null
øø! %
)
øø% &
{
¿¿ 
profileRecord
¡¡ 
.
¡¡ 
	SessionId
¡¡ '
=
¡¡( )
Guid
¡¡* .
.
¡¡. /
NewGuid
¡¡/ 6
(
¡¡6 7
)
¡¡7 8
.
¡¡8 9
ToString
¡¡9 A
(
¡¡A B
)
¡¡B C
;
¡¡C D
profileRecord
¬¬ 
.
¬¬ 
IsOnline
¬¬ &
=
¬¬' (
true
¬¬) -
;
¬¬- .
profileRecord
√√ 
.
√√ 
LastActivity
√√ *
=
√√+ ,
DateTime
√√- 5
.
√√5 6
UtcNow
√√6 <
;
√√< =
await
ƒƒ 
repositoryManager
ƒƒ '
.
ƒƒ' (
	SaveAsync
ƒƒ( 1
(
ƒƒ1 2
)
ƒƒ2 3
;
ƒƒ3 4
}
≈≈ 
return
∆∆ 
profileRecord
∆∆  
;
∆∆  !
}
«« 	
public
»» 
static
»» 
bool
»» 
CompareSessionID
»» +
(
»»+ ,
string
»», 2
oldSessionId
»»3 ?
,
»»? @
string
»»A G
newSessionId
»»H T
)
»»T U
{
…… 	
return
   
oldSessionId
   
.
    
Equals
    &
(
  & '
newSessionId
  ' 3
)
  3 4
;
  4 5
}
ÀÀ 	
public
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
bool
ÃÃ 
>
ÃÃ 
IsOnline
ÃÃ  (
(
ÃÃ( )
int
ÃÃ) ,
	idProfile
ÃÃ- 6
,
ÃÃ6 7
string
ÃÃ8 >
newSessionId
ÃÃ? K
)
ÃÃK L
{
ÕÕ 	
bool
ŒŒ 
isOnline
ŒŒ 
=
ŒŒ 
false
ŒŒ !
;
ŒŒ! "
Profile
œœ 
profileRecord
œœ !
=
œœ" #
await
œœ$ )
repositoryManager
œœ* ;
.
œœ; <
ProfileRepository
œœ< M
.
œœM N!
FindEntityByIdAsync
œœN a
(
œœa b
	idProfile
œœb k
)
œœk l
;
œœl m
if
—— 
(
—— 
profileRecord
—— 
!=
——  
null
——! %
&&
——& (
!
——) *
string
——* 0
.
——0 1
IsNullOrEmpty
——1 >
(
——> ?
newSessionId
——? K
)
——K L
&&
““ &
IsActiveWithinTimeLimite
““ +
(
““+ ,
profileRecord
““, 9
.
““9 :
LastActivity
““: F
,
““F G
DateTime
““H P
.
““P Q
UtcNow
““Q W
,
““W X
GameUtilities
““Y f
.
““f g/
 TIME_LIMIT_TO_DISCONNECT_PLAYERS““g á
)““á à
&&““â ã
CompareSessionID
””  
(
””  !
profileRecord
””! .
.
””. /
	SessionId
””/ 8
,
””8 9
newSessionId
””: F
)
””F G
)
””G H
{
‘‘ 
profileRecord
’’ 
.
’’ 
LastActivity
’’ *
=
’’+ ,
DateTime
’’- 5
.
’’5 6
UtcNow
’’6 <
;
’’< =
isOnline
÷÷ 
=
÷÷ 
true
÷÷ 
;
÷÷  
}
◊◊ 
else
ÿÿ 
if
ÿÿ 
(
ÿÿ 
profileRecord
ÿÿ !
!=
ÿÿ" $
null
ÿÿ% )
)
ÿÿ) *
{
ŸŸ 
profileRecord
⁄⁄ 
.
⁄⁄ 
IsOnline
⁄⁄ &
=
⁄⁄' (
false
⁄⁄) .
;
⁄⁄. /
}
€€ 
await
›› 
repositoryManager
›› #
.
››# $
	SaveAsync
››$ -
(
››- .
)
››. /
;
››/ 0
return
ﬂﬂ 
isOnline
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
public
·· 
bool
·· &
IsActiveWithinTimeLimite
·· ,
(
··, -
DateTime
··- 5
?
··5 6
lastActivity
··7 C
,
··C D
DateTime
··E M
?
··M N
newActivity
··O Z
,
··Z [
int
··\ _
	timeLimit
··` i
)
··i j
{
‚‚ 	
bool
„„ 
isOnline
„„ 
=
„„ 
false
„„ !
;
„„! "
if
‰‰ 
(
‰‰ 
lastActivity
‰‰ 
!=
‰‰ 
null
‰‰  $
&&
‰‰% '
newActivity
‰‰( 3
!=
‰‰4 6
null
‰‰7 ;
)
‰‰; <
{
ÂÂ 
Double
ÊÊ 
timeDifference
ÊÊ %
=
ÊÊ& '
(
ÊÊ( )
newActivity
ÊÊ) 4
.
ÊÊ4 5
Value
ÊÊ5 :
-
ÊÊ; <
lastActivity
ÊÊ= I
.
ÊÊI J
Value
ÊÊJ O
)
ÊÊO P
.
ÊÊP Q
TotalMinutes
ÊÊQ ]
;
ÊÊ] ^
isOnline
ËË 
=
ËË 
timeDifference
ËË )
<
ËË* +
	timeLimit
ËË, 5
;
ËË5 6
}
ÈÈ 
return
ÎÎ 
isOnline
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
public
ÓÓ 
async
ÓÓ 
Task
ÓÓ 
<
ÓÓ 
bool
ÓÓ 
>
ÓÓ 0
"InviteFriendsToGameInDataBaseAsync
ÓÓ  B
(
ÓÓB C
string
ÓÓC I 
namePlayerToInvite
ÓÓJ \
,
ÓÓ\ ]
string
ÓÓ^ d
	keyAccess
ÓÓe n
)
ÓÓn o
{
ÔÔ 	
int
 
	accountId
 
=
 
await
 !
repositoryManager
" 3
.
3 4
ProfileRepository
4 E
.
E F%
GetProfileIdByNameAsync
F ]
(
] ^ 
namePlayerToInvite
^ p
)
p q
;
q r
if
ÚÚ 
(
ÚÚ 
	accountId
ÚÚ 
!=
ÚÚ  
CharacterUtilities
ÚÚ /
.
ÚÚ/ 0
INT_VALUE_ZERO
ÚÚ0 >
)
ÚÚ> ?
{
ÛÛ 
Account
ÙÙ 
accountRecord
ÙÙ %
=
ÙÙ& '
await
ÙÙ( -
repositoryManager
ÙÙ. ?
.
ÙÙ? @
AccountRepository
ÙÙ@ Q
.
ÙÙQ R!
FindEntityByIdAsync
ÙÙR e
(
ÙÙe f
	accountId
ÙÙf o
)
ÙÙo p
;
ÙÙp q
await
ˆˆ 
serviceManager
ˆˆ $
.
ˆˆ$ %
AccountService
ˆˆ% 3
.
ˆˆ3 4%
SendInviteGameToFriends
ˆˆ4 K
(
ˆˆK L
accountRecord
ˆˆL Y
,
ˆˆY Z
	keyAccess
ˆˆ[ d
)
ˆˆd e
;
ˆˆe f
return
¯¯ 
true
¯¯ 
;
¯¯ 
}
˘˘ 
return
˚˚ 
false
˚˚ 
;
˚˚ 
}
¸¸ 	
public
˛˛ 
async
˛˛ 
Task
˛˛ 
<
˛˛ +
OperationResultProfileListDto
˛˛ 7
>
˛˛7 8+
GetFriendsListInDataBaseAsync
˛˛9 V
(
˛˛V W

ProfileDto
˛˛W a
profileClientDto
˛˛b r
)
˛˛r s
{
ˇˇ 	
List
ÄÄ 
<
ÄÄ 
Profile
ÄÄ 
>
ÄÄ 

friendList
ÄÄ $
=
ÄÄ% &
await
ÄÄ' ,
repositoryManager
ÄÄ- >
.
ÄÄ> ?
ProfileRepository
ÄÄ? P
.
ÄÄP Q(
GetFriendsByProfileIdAsync
ÄÄQ k
(
ÄÄk l
(
ÄÄl m
int
ÄÄm p
)
ÄÄp q
profileClientDtoÄÄq Å
.ÄÄÅ Ç
IdÄÄÇ Ñ
)ÄÄÑ Ö
;ÄÄÖ Ü
List
ÅÅ 
<
ÅÅ 

ProfileDto
ÅÅ 
>
ÅÅ 
friendListDto
ÅÅ *
=
ÅÅ+ ,
new
ÅÅ- 0
List
ÅÅ1 5
<
ÅÅ5 6

ProfileDto
ÅÅ6 @
>
ÅÅ@ A
(
ÅÅA B
)
ÅÅB C
;
ÅÅC D
if
ÉÉ 
(
ÉÉ 

friendList
ÉÉ 
.
ÉÉ 
Any
ÉÉ 
(
ÉÉ 
)
ÉÉ  
)
ÉÉ  !
{
ÑÑ 
friendListDto
ÖÖ 
=
ÖÖ 0
"ConvertFriendListIntoFriendListDto
ÖÖ  B
(
ÖÖB C

friendList
ÖÖC M
)
ÖÖM N
;
ÖÖN O
}
áá 
return
àà 
new
àà +
OperationResultProfileListDto
àà 4
(
àà4 5
true
àà5 9
,
àà9 :
LanguageUtilities
àà; L
.
ààL M
MessageSuccess
ààM [
(
àà[ \
profileClientDto
àà\ l
.
ààl m
PreferredLanguage
ààm ~
)
àà~ 
,àà Ä
friendListDtoààÅ é
)ààé è
;ààè ê
}
ââ 	
public
ãã 
async
ãã 
Task
ãã 
<
ãã +
OperationResultProfileListDto
ãã 7
>
ãã7 85
'GetPendingFriendRequestsInDataBaseAsync
ãã9 `
(
ãã` a

ProfileDto
ããa k
profileClientDto
ããl |
)
ãã| }
{
åå 	
List
çç 
<
çç 
Profile
çç 
>
çç #
pendingFriendRequests
çç /
=
çç0 1
await
çç2 7
repositoryManager
çç8 I
.
ççI J
ProfileRepository
ççJ [
.
çç[ \7
(GetPendingFriendRequestsByProfileIdAsyncçç\ Ñ
(ççÑ Ö
(ççÖ Ü
intççÜ â
)ççâ ä 
profileClientDtoççä ö
.ççö õ
Idççõ ù
)ççù û
;ççû ü
List
éé 
<
éé 

ProfileDto
éé 
>
éé &
pendingFriendRequestsDto
éé 5
=
éé6 7
new
éé8 ;
List
éé< @
<
éé@ A

ProfileDto
ééA K
>
ééK L
(
ééL M
)
ééM N
;
ééN O
if
êê 
(
êê #
pendingFriendRequests
êê %
.
êê% &
Any
êê& )
(
êê) *
)
êê* +
)
êê+ ,
{
ëë &
pendingFriendRequestsDto
íí (
=
íí) *0
"ConvertFriendListIntoFriendListDto
íí+ M
(
ííM N#
pendingFriendRequests
ííN c
)
ííc d
;
ííd e
}
ìì 
return
ïï 
new
ïï +
OperationResultProfileListDto
ïï 4
(
ïï4 5
true
ïï5 9
,
ïï9 :
LanguageUtilities
ïï; L
.
ïïL M
MessageSuccess
ïïM [
(
ïï[ \
profileClientDto
ïï\ l
.
ïïl m
PreferredLanguage
ïïm ~
)
ïï~ 
,ïï Ä(
pendingFriendRequestsDtoïïÅ ô
)ïïô ö
;ïïö õ
}
ññ 	
public
òò 
static
òò 
List
òò 
<
òò 

ProfileDto
òò %
>
òò% &0
"ConvertFriendListIntoFriendListDto
òò' I
(
òòI J
List
òòJ N
<
òòN O
Profile
òòO V
>
òòV W

friendList
òòX b
)
òòb c
{
ôô 	
List
öö 
<
öö 

ProfileDto
öö 
>
öö 
friendListDto
öö *
=
öö+ ,
new
öö- 0
List
öö1 5
<
öö5 6

ProfileDto
öö6 @
>
öö@ A
(
ööA B
)
ööB C
;
ööC D
foreach
úú 
(
úú 
Profile
úú 
friend
úú #
in
úú$ &

friendList
úú' 1
)
úú1 2
{
ùù 

ProfileDto
ûû 
profileServerdto
ûû +
=
ûû, -$
CreateProfileFriendDto
ûû. D
(
ûûD E
friend
ûûE K
)
ûûK L
;
ûûL M
friendListDto
üü 
.
üü 
Add
üü !
(
üü! "
profileServerdto
üü" 2
)
üü2 3
;
üü3 4
}
†† 
return
¢¢ 
friendListDto
¢¢  
;
¢¢  !
}
££ 	
public
•• 
async
•• 
Task
•• 
<
•• -
OperationResultFriendRequestDto
•• 9
>
••9 :.
 SendFriendRequestInDataBaseAsync
••; [
(
••[ \
string
••\ b 
nameFriendToInvite
••c u
,
••u v

ProfileDto••w Å 
profileClientDto••Ç í
)••í ì
{
¶¶ 	
bool
ßß 
isSuccessSend
ßß 
=
ßß  
false
ßß! &
;
ßß& '
int
®® 
idfriend
®® 
=
®® 
await
®®  
repositoryManager
®®! 2
.
®®2 3
ProfileRepository
®®3 D
.
®®D E%
GetProfileIdByNameAsync
®®E \
(
®®\ ] 
nameFriendToInvite
®®] o
)
®®o p
;
®®p q
bool
©© !
existsFriendRequest
©© $
=
©©% &
await
©©' ,
repositoryManager
©©- >
.
©©> ?%
FriendRequestRepository
©©? V
.
©©V W'
ExistsAFriendRequestAsync
©©W p
(
©©p q
(
©©q r
int
©©r u
)
©©u v
profileClientDto©©v Ü
.©©Ü á
Id©©á â
,©©â ä
idfriend©©ã ì
)©©ì î
;©©î ï
if
´´ 
(
´´ 
idfriend
´´ 
!=
´´  
CharacterUtilities
´´ .
.
´´. /
INT_VALUE_ZERO
´´/ =
&&
´´> @
!
´´A B!
existsFriendRequest
´´B U
)
´´U V
{
¨¨ 
isSuccessSend
≠≠ 
=
≠≠ 
await
≠≠  %
repositoryManager
≠≠& 7
.
≠≠7 8
ProfileRepository
≠≠8 I
.
≠≠I J$
SendFriendRequestAsync
≠≠J `
(
≠≠` a
(
≠≠a b
int
≠≠b e
)
≠≠e f
profileClientDto
≠≠f v
.
≠≠v w
Id
≠≠w y
,
≠≠y z
idfriend≠≠{ É
)≠≠É Ñ
;≠≠Ñ Ö
await
ÆÆ 
repositoryManager
ÆÆ '
.
ÆÆ' (
	SaveAsync
ÆÆ( 1
(
ÆÆ1 2
)
ÆÆ2 3
;
ÆÆ3 4
return
ØØ 
new
ØØ -
OperationResultFriendRequestDto
ØØ :
(
ØØ: ;
isSuccessSend
ØØ; H
,
ØØH I
LanguageUtilities
ØØJ [
.
ØØ[ \
MessageSuccess
ØØ\ j
(
ØØj k
profileClientDto
ØØk {
.
ØØ{ | 
PreferredLanguageØØ| ç
)ØØç é
,ØØé è%
EnumSendFriendRequestØØê •
.ØØ• ¶
SuccessSaveØØ¶ ±
)ØØ± ≤
;ØØ≤ ≥
}
∞∞ 
else
±± 
if
±± 
(
±± !
existsFriendRequest
±± '
)
±±' (
{
≤≤ 
return
≥≥ 
new
≥≥ -
OperationResultFriendRequestDto
≥≥ :
(
≥≥: ;
isSuccessSend
≥≥; H
,
≥≥H I
LanguageUtilities
≥≥J [
.
≥≥[ \%
MessageUnableToSaveData
≥≥\ s
(
≥≥s t
profileClientDto≥≥t Ñ
.≥≥Ñ Ö!
PreferredLanguage≥≥Ö ñ
)≥≥ñ ó
,≥≥ó ò%
EnumSendFriendRequest≥≥ô Æ
.≥≥Æ Ø#
ExistsFriendRequest≥≥Ø ¬
)≥≥¬ √
;≥≥√ ƒ
}
¥¥ 
return
∂∂ 
new
∂∂ -
OperationResultFriendRequestDto
∂∂ 6
(
∂∂6 7
isSuccessSend
∂∂7 D
,
∂∂D E
LanguageUtilities
∂∂F W
.
∂∂W X%
MessageUnableToSaveData
∂∂X o
(
∂∂o p
profileClientDto∂∂p Ä
.∂∂Ä Å!
PreferredLanguage∂∂Å í
)∂∂í ì
,∂∂ì î%
EnumSendFriendRequest∂∂ï ™
.∂∂™ ´
NotFoundProfile∂∂´ ∫
)∂∂∫ ª
;∂∂ª º
}
∑∑ 	
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
bool
ππ 
>
ππ 0
"AcceptFriendRequestInDataBaseAsync
ππ  B
(
ππB C
string
ππC I 
nameFriendToAccept
ππJ \
,
ππ\ ]

ProfileDto
ππ^ h
profileClientDto
ππi y
)
ππy z
{
∫∫ 	
bool
ªª 
isSuccessAccept
ªª  
=
ªª! "
false
ªª# (
;
ªª( )
int
ºº 
idFriend
ºº 
=
ºº 
await
ºº  
repositoryManager
ºº! 2
.
ºº2 3
ProfileRepository
ºº3 D
.
ººD E%
GetProfileIdByNameAsync
ººE \
(
ºº\ ] 
nameFriendToAccept
ºº] o
)
ººo p
;
ººp q
if
ææ 
(
ææ 
idFriend
ææ 
!=
ææ  
CharacterUtilities
ææ .
.
ææ. /
INT_VALUE_ZERO
ææ/ =
)
ææ= >
{
øø 
isSuccessAccept
¿¿ 
=
¿¿  !
await
¿¿" '
repositoryManager
¿¿( 9
.
¿¿9 :
ProfileRepository
¿¿: K
.
¿¿K L&
AcceptFriendRequestAsync
¿¿L d
(
¿¿d e
(
¿¿e f
int
¿¿f i
)
¿¿i j
profileClientDto
¿¿j z
.
¿¿z {
Id
¿¿{ }
,
¿¿} ~
idFriend¿¿ á
)¿¿á à
;¿¿à â
await
¡¡ 
repositoryManager
¡¡ '
.
¡¡' (
	SaveAsync
¡¡( 1
(
¡¡1 2
)
¡¡2 3
;
¡¡3 4
}
¬¬ 
return
ƒƒ 
isSuccessAccept
ƒƒ "
;
ƒƒ" #
}
≈≈ 	
public
«« 
async
«« 
Task
«« 
<
«« 
bool
«« 
>
«« 0
"RejectFriendRequestInDataBaseAsync
««  B
(
««B C
string
««C I 
nameFriendToReject
««J \
,
««\ ]

ProfileDto
««^ h
profileClientDto
««i y
)
««y z
{
»» 	
bool
…… 
isSuccessReject
……  
=
……! "
false
……# (
;
……( )
int
   
idFriend
   
=
   
await
    
repositoryManager
  ! 2
.
  2 3
ProfileRepository
  3 D
.
  D E%
GetProfileIdByNameAsync
  E \
(
  \ ] 
nameFriendToReject
  ] o
)
  o p
;
  p q
if
ÃÃ 
(
ÃÃ 
idFriend
ÃÃ 
!=
ÃÃ  
CharacterUtilities
ÃÃ .
.
ÃÃ. /
INT_VALUE_ZERO
ÃÃ/ =
)
ÃÃ= >
{
ÕÕ 
isSuccessReject
ŒŒ 
=
ŒŒ  !
await
ŒŒ" '
repositoryManager
ŒŒ( 9
.
ŒŒ9 :
ProfileRepository
ŒŒ: K
.
ŒŒK L&
RejectFriendRequestAsync
ŒŒL d
(
ŒŒd e
(
ŒŒe f
int
ŒŒf i
)
ŒŒi j
profileClientDto
ŒŒj z
.
ŒŒz {
Id
ŒŒ{ }
,
ŒŒ} ~
idFriendŒŒ á
)ŒŒá à
;ŒŒà â
await
œœ 
repositoryManager
œœ '
.
œœ' (
	SaveAsync
œœ( 1
(
œœ1 2
)
œœ2 3
;
œœ3 4
}
–– 
return
““ 
isSuccessReject
““ "
;
““" #
}
”” 	
public
’’ 
async
’’ 
Task
’’ 
<
’’ 
bool
’’ 
>
’’ 0
"DeleteFriendProfileInDataBaseAsync
’’  B
(
’’B C
string
’’C I

friendName
’’J T
,
’’T U

ProfileDto
’’V `
profileClientDto
’’a q
)
’’q r
{
÷÷ 	
bool
◊◊ 
isSuccessDelete
◊◊  
=
◊◊! "
false
◊◊# (
;
◊◊( )
int
ÿÿ 
idProfileFriend
ÿÿ 
=
ÿÿ  !
await
ÿÿ" '
repositoryManager
ÿÿ( 9
.
ÿÿ9 :
ProfileRepository
ÿÿ: K
.
ÿÿK L%
GetProfileIdByNameAsync
ÿÿL c
(
ÿÿc d

friendName
ÿÿd n
)
ÿÿn o
;
ÿÿo p
if
⁄⁄ 
(
⁄⁄ 
idProfileFriend
⁄⁄ 
!=
⁄⁄  " 
CharacterUtilities
⁄⁄# 5
.
⁄⁄5 6
INT_VALUE_ZERO
⁄⁄6 D
)
⁄⁄D E
{
€€ 
isSuccessDelete
‹‹ 
=
‹‹  !
await
‹‹" '
repositoryManager
‹‹( 9
.
‹‹9 :%
FriendRequestRepository
‹‹: Q
.
‹‹Q R&
DeleteFriendRequestAsync
›› ,
(
››, -
(
››- .
int
››. 1
)
››1 2
profileClientDto
››2 B
.
››B C
Id
››C E
,
››E F
idProfileFriend
››G V
)
››V W
;
››W X
await
ﬂﬂ 
repositoryManager
ﬂﬂ '
.
ﬂﬂ' (
	SaveAsync
ﬂﬂ( 1
(
ﬂﬂ1 2
)
ﬂﬂ2 3
;
ﬂﬂ3 4
}
·· 
return
„„ 
isSuccessDelete
„„ "
;
„„" #
}
‰‰ 	
}
ÂÂ 
}ÊÊ Ñ,
ZC:\Users\gearh\source\repos\CatanServer\CatanService\Services\GameServices\IGameService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public 

	interface 
IGameService !
{ 
Task 
< "
OperationResultGameDto #
># $(
CreateNewGameInDataBaseAsync% A
(A B
GameDtoB I
gameClientDtoJ W
,W X

ProfileDtoY c
profileClientDtod t
,t u
IGameCallback	v É
playerCallback
Ñ í
)
í ì
;
ì î
Task 
< "
OperationResultGameDto #
># $#
JoinGameInDataBaseAsync% <
(< =
string= C

codeAccessD N
,N O

ProfileDtoP Z
profileClientDto[ k
,k l
IGameCallbackm z
gameCallback	{ á
)
á à
;
à â
Task 
< 
OperationResultDto 
>  #
QuitGameInDatabaseAsync! 8
(8 9
GameDto9 @
gameClientDtoA N
,N O

ProfileDtoP Z
profileClientDto[ k
)k l
;l m
Task 
< 
OperationResultDto 
>  2
&QuitGameAsaGuestAccountInDatabaseAsync! G
(G H
GameDtoH O
gameClientDtoP ]
,] ^
GuestAccountDto_ n"
guestAccountClientDto	o Ñ
)
Ñ Ö
;
Ö Ü
Task 
< "
OperationResultGameDto #
># $+
JoinGameAsaGuestInDataBaseAsync% D
(D E
stringE K
	accessKeyL U
,U V
GuestAccountDtoW f!
guestAccountClientDtog |
,| }
IGameCallback	~ ã
playerCallback
å ö
)
ö õ
;
õ ú
Task 
< 
bool 
> %
VoteExpelPlayerInDataBase ,
(, -
ExpelPlayerDto- ;
expelPlayerDto< J
,J K
intL O
idPlayerP X
,X Y
GameDtoZ a
gameClientDtob o
)o p
;p q
Task 
< 
bool 
> (
ExpelPlayerAsAdminInDataBase /
(/ 0
ExpelPlayerDto0 >
expelPlayerDto? M
,M N
GameDtoO V
gameClientDtoW d
,d e
intf i
idPlayerj r
)r s
;s t
Task 
< 
bool 
> 
IsAdminById 
( 
int "
idProfileClient# 2
,2 3
int4 7
idGame8 >
)> ?
;? @
Task 
< .
"OperationResultListOfPlayersInGame /
>/ 0)
GetAllPlayersInGameInDataBase1 N
(N O
GameDtoO V
gameClientDtoW d
,d e
stringf l
preferredLanguagem ~
)~ 
;	 Ä
Task 
< 
bool 
> $
StartGameInDataBaseAsync +
(+ ,
int, /
idPlayer0 8
,8 9
GameDto: A
gameClientDtoB O
)O P
;P Q
Task 
< (
OperationResultListScoreGame )
>) *'
GetScoreGameWorldInDataBase+ F
(F G

ProfileDtoG Q
profileClientDtoR b
)b c
;c d
Task 
< (
OperationResultListScoreGame )
>) *)
GetScoreGameFriendsInDataBase+ H
(H I

ProfileDtoI S
profileClientDtoT d
)d e
;e f
Task 
< 
bool 
> #
NextTurnInDataBaseAsync *
(* +
int+ .
gameId/ 5
,5 6
int7 :
playerId; C
)C D
;D E
Task   $
ThrowDiceInDataBaseAsync   %
(  % &
int  & )
gameId  * 0
,  0 1
int  2 5
playerId  6 >
,  > ?
int  @ C
	valueDice  D M
)  M N
;  N O
Task!! '
QuitGameplayInDataBaseAsync!! (
(!!( )
PlayerGameplayDto!!) :
playerGameplayDto!!; L
,!!L M
GameDto!!N U
gameClientDto!!V c
)!!c d
;!!d e
Task"" 
<"" 
OperationResultDto"" 
>""  "
PlacePieceOnBoardAsync""! 7
(""7 8
PiecePlacementDto""8 I
placementDto""J V
,""V W
PlayerGameplayDto""X i
playerGameplayDto""j {
,""{ |
int	""} Ä
gameId
""Å á
)
""á à
;
""à â
Task## 
<## 
OperationResultDto## 
>##  
StartTradeAsync##! 0
(##0 1
PlayerResourcesDto##1 C
needResources##D Q
,##Q R
PlayerResourcesDto##S e
offerResources##f t
,##t u
int##v y
gameId	##z Ä
)
##Ä Å
;
##Å Ç
Task$$ 
<$$ 
OperationResultDto$$ 
>$$  
AcceptTradeAsync$$! 1
($$1 2
PlayerResourcesDto$$2 D
sendResources$$E R
,$$R S
PlayerResourcesDto$$T f
receiveResources$$g w
,$$w x
int$$y |
gameId	$$} É
)
$$É Ñ
;
$$Ñ Ö
}&& 
}'' ã(
aC:\Users\gearh\source\repos\CatanServer\CatanService\Services\TelegramServices\TelegramService.cs
	namespace

 	
CatanService


 
.

 
Services

 
{ 
public 

class 
TelegramService  
:! "
IDisposable# .
,. /
ITelegramService0 @
{ 
private 
readonly 

HttpClient #

httpClient$ .
;. /
private 
readonly 

Dictionary #
<# $
string$ *
,* +
string, 2
>2 3
IdFromNumbers4 A
;A B
private 
bool 
disposed 
= 
false  %
;% &
public 
TelegramService 
( 
)  
{ 	
string 
botToken 
= 
Environment )
.) *"
GetEnvironmentVariable* @
(@ A
ApiServiceUtilitiesA T
.T U
BOT_TELEGRAM_TOKENU g
)g h
;h i

httpClient 
= 
new 

HttpClient '
{ 
BaseAddress 
= 
new !
Uri" %
(% &
LanguageUtilities& 7
.7 8,
 GetBaseAddressServiceTelegramBot8 X
(X Y
botTokenY a
)a b
)b c
} 
; 
IdFromNumbers 
= 
new 

Dictionary  *
<* +
string+ 1
,1 2
string3 9
>9 :
{ 
{ 
$str  
,  !
$str" .
}/ 0
,0 1
{ 
$str  
,  !
$str" .
}/ 0
} 
; 
} 	
public!! 
async!! 
Task!! 
SendMessageAsync!! *
(!!* +
string!!+ 1
phoneNumber!!2 =
,!!= >
string!!? E
message!!F M
)!!M N
{"" 	
if## 
(## 
string## 
.## 
IsNullOrEmpty## $
(##$ %
phoneNumber##% 0
)##0 1
)##1 2
return##3 9
;##9 :
try$$ 
{%% 
if&& 
(&& 
IdFromNumbers&& !
.&&! "
TryGetValue&&" -
(&&- .
phoneNumber&&. 9
,&&9 :
out&&; >
string&&? E
chatId&&F L
)&&L M
)&&M N
{'' 
await(( 

httpClient(( $
.(($ %
GetAsync((% -
(((- .
LanguageUtilities((. ?
.((? @$
GetAPITelegramMessageURI((@ X
(((X Y
chatId((Y _
,((_ `
message((a h
)((h i
)((i j
;((j k
})) 
}** 
catch++ 
(++ !
ArgumentNullException++ '
ex++( *
)++* +
{,, 
Log-- 
.-- 
Error-- 
(-- 
ex-- 
,-- 
ex--  
.--  !
Source--! '
)--' (
;--( )
}.. 
catch// 
(// 
UriFormatException// $
ex//% '
)//' (
{00 
Log11 
.11 
Error11 
(11 
ex11 
,11 
ex11  
.11  !
Source11! '
)11' (
;11( )
}22 
catch33 
(33  
HttpRequestException33 '
ex33( *
)33* +
{44 
Log55 
.55 
Error55 
(55 
ex55 
,55 
ex55  
.55  !
Source55! '
)55' (
;55( )
}66 
catch77 
(77 !
TaskCanceledException77 (
ex77) +
)77+ ,
{88 
Log99 
.99 
Error99 
(99 
ex99 
,99 
ex99  
.99  !
Source99! '
)99' (
;99( )
}:: 
};; 	
	protected== 
virtual== 
void== 
Dispose== &
(==& '
bool==' +
	disposing==, 5
)==5 6
{>> 	
if?? 
(?? 
!?? 
disposed?? 
)?? 
{@@ 
ifAA 
(AA 
	disposingAA 
)AA 
{BB 

httpClientCC 
?CC 
.CC  
DisposeCC  '
(CC' (
)CC( )
;CC) *
}DD 
disposedEE 
=EE 
trueEE 
;EE  
}FF 
}GG 	
publicII 
voidII 
DisposeII 
(II 
)II 
{JJ 	
DisposeKK 
(KK 
trueKK 
)KK 
;KK 
GCLL 
.LL 
SuppressFinalizeLL 
(LL  
thisLL  $
)LL$ %
;LL% &
}MM 	
}NN 
}PP Ñ@
iC:\Users\gearh\source\repos\CatanServer\CatanService\Services\GuestAccountServices\GuestAccountService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public 

class 
GuestAccountService $
:% & 
IGuestAccountService' ;
{ 
private 
readonly 
IRepositoryManager +
repositoryManager, =
;= >
public 
GuestAccountService "
(" #
IRepositoryManager# 5
repositoryManager6 G
)G H
{ 	
this 
. 
repositoryManager "
=# $
repositoryManager% 6
;6 7
} 	
public 
async 
Task 
< *
OperationResultGuestAccountDto 8
>8 9-
!CreateGuestAccountInDataBaseAsync: [
([ \
string\ b
preferredLanguagec t
)t u
{ 	
GuestAccount 
guestAccountRecord +
=, -
await. 3
CreateGestAccount4 E
(E F
)F G
;G H
GuestAccountDto 
guestAccountDto +
=, -
await. 3!
CreateGuestAccountDto4 I
(I J
guestAccountRecordJ \
)\ ]
;] ^
if 
( 
guestAccountDto 
!=  "
null# '
)' (
{ 
return 
new *
OperationResultGuestAccountDto 9
(9 :
true: >
,> ?
LanguageUtilities@ Q
.Q R
MessageSuccessR `
(` a
preferredLanguagea r
)r s
,s t
guestAccountDto	u Ñ
)
Ñ Ö
;
Ö Ü
} 
return   
new   *
OperationResultGuestAccountDto   5
(  5 6
false  6 ;
,  ; <
LanguageUtilities  = N
.  N O#
MessageUnableToSaveData  O f
(  f g
preferredLanguage  g x
)  x y
)  y z
;  z {
}"" 	
public## 
async## 
Task## 
<## 
GuestAccount## &
>##& '
CreateGestAccount##( 9
(##9 :
)##: ;
{$$ 	
GuestAccount%% 
guestAccountRecord%% +
=%%, -
null%%. 2
;%%2 3
using&& 
(&&  
DbContextTransaction&& '#
guestAccountTransaction&&( ?
=&&@ A
await&&B G
repositoryManager&&H Y
.&&Y Z!
StartTransactionAsync&&Z o
(&&o p
)&&p q
)&&q r
{'' 
guestAccountRecord(( "
=((# $
new((% (
GuestAccount(() 5
(((5 6
)((6 7
;((7 8
guestAccountRecord)) "
.))" #
IsActive))# +
=)), -
true)). 2
;))2 3
guestAccountRecord** "
.**" #
LastActivity**# /
=**0 1
DateTime**2 :
.**: ;
UtcNow**; A
;**A B
repositoryManager,, !
.,,! ""
GuestAccountRepository,," 8
.,,8 9
	AddEntity,,9 B
(,,B C
guestAccountRecord,,C U
),,U V
;,,V W
await-- 
repositoryManager-- '
.--' (
	SaveAsync--( 1
(--1 2
)--2 3
;--3 4
guestAccountRecord// "
.//" #
Name//# '
=//( )&
AccountValidationUtilities//* D
.//D E$
GUEST_USER_RESERVED_NAME//E ]
+//^ _
guestAccountRecord//` r
.//r s
Id//s u
;//u v
await11 
repositoryManager11 '
.11' (
	SaveAsync11( 1
(111 2
)112 3
;113 4#
guestAccountTransaction22 '
.22' (
Commit22( .
(22. /
)22/ 0
;220 1
}33 
return55 
guestAccountRecord55 %
;55% &
}66 	
public88 
async88 
Task88 
<88 
GuestAccountDto88 )
>88) *!
CreateGuestAccountDto88+ @
(88@ A
GuestAccount88A M
guestAccountRecord88N `
)88` a
{99 	
GuestAccountDto:: !
guestAccountServerDto:: 1
=::2 3
null::4 8
;::8 9
if;; 
(;; 
guestAccountRecord;; !
!=;;" $
null;;% )
);;) *
{<< !
guestAccountServerDto== %
===& '
new==( +
GuestAccountDto==, ;
(==; <
)==< =
;=== >!
guestAccountServerDto>> %
.>>% &
Id>>& (
=>>) *
guestAccountRecord>>+ =
.>>= >
Id>>> @
;>>@ A!
guestAccountServerDto?? %
.??% &
Name??& *
=??+ ,
guestAccountRecord??- ?
.??? @
Name??@ D
;??D E
guestAccountRecord@@ "
.@@" #
LastActivity@@# /
=@@0 1
DateTime@@2 :
.@@: ;
UtcNow@@; A
;@@A B
awaitBB 
repositoryManagerBB '
.BB' (
	SaveAsyncBB( 1
(BB1 2
)BB2 3
;BB3 4
}CC 
returnDD !
guestAccountServerDtoDD (
;DD( )
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
boolGG 
>GG  
IsOnlineGuestAccountGG  4
(GG4 5
intGG5 8
idGuestGG9 @
)GG@ A
{HH 	
boolII 
isOnlineII 
=II 
falseII !
;II! "
GuestAccountJJ 
guestAccountRecordJJ +
=JJ, -
awaitJJ. 3
repositoryManagerJJ4 E
.JJE F"
GuestAccountRepositoryJJF \
.JJ\ ]
FindEntityByIdAsyncJJ] p
(JJp q
idGuestJJq x
)JJx y
;JJy z
ifLL 
(LL 
guestAccountRecordLL !
!=LL" $
nullLL% )
)LL) *
{MM 
ifNN 
(NN $
IsActiveWithinTimeLimiteNN ,
(NN, -
guestAccountRecordNN- ?
.NN? @
LastActivityNN@ L
,NNL M
DateTimeNNN V
.NNV W
UtcNowNNW ]
)NN] ^
)NN^ _
{OO 
guestAccountRecordPP &
.PP& '
LastActivityPP' 3
=PP4 5
DateTimePP6 >
.PP> ?
UtcNowPP? E
;PPE F
isOnlineQQ 
=QQ 
trueQQ #
;QQ# $
}RR 
elseSS 
{TT 
guestAccountRecordUU &
.UU& '
IsActiveUU' /
=UU0 1
falseUU2 7
;UU7 8
}VV 
awaitWW 
repositoryManagerWW '
.WW' (
	SaveAsyncWW( 1
(WW1 2
)WW2 3
;WW3 4
}XX 
returnZZ 
isOnlineZZ 
;ZZ 
}\\ 	
public]] 
static]] 
bool]] $
IsActiveWithinTimeLimite]] 3
(]]3 4
DateTime]]4 <
?]]< =
lastActivity]]> J
,]]J K
DateTime]]L T
?]]T U
newActivity]]V a
)]]a b
{^^ 	
bool__ 
isOnline__ 
=__ 
false__ !
;__! "
ifaa 
(aa 
lastActivityaa 
!=aa 
nullaa  $
&&aa% '
newActivityaa( 3
!=aa4 6
nullaa7 ;
)aa; <
{bb 
Doublecc 
timeDifferencecc %
=cc& '
(cc( )
newActivitycc) 4
.cc4 5
Valuecc5 :
-cc; <
lastActivitycc= I
.ccI J
ValueccJ O
)ccO P
.ccP Q
TotalMinutesccQ ]
;cc] ^
isOnlineee 
=ee 
timeDifferenceee )
<ee* +
$numee, .
;ee. /
}ff 
returnhh 
isOnlinehh 
;hh 
}ii 	
}jj 
}kk «
ZC:\Users\gearh\source\repos\CatanServer\CatanService\Services\ChatServices\IChatService.cs
	namespace		 	
CatanService		
 
.		 
Services		 
{

 
public 

	interface 
IChatService !
{ 
Task 
JoinChatAsync 
( 
GameDto "
gameClientDto# 0
,0 1
string2 8

namePlayer9 C
)C D
;D E
Task "
SendMessageToChatAsync #
(# $
GameDto$ +
gameClientDto, 9
,9 :
string; A

namePlayerB L
,L M
stringN T
messageToPlayersU e
)e f
;f g
Task 
LeaveChatAsync 
( 
GameDto #
gameClientDto$ 1
,1 2
string3 9

namePlayer: D
)D E
;E F
} 
} ¥∞
YC:\Users\gearh\source\repos\CatanServer\CatanService\Services\GameServices\GameService.cs
	namespace"" 	
CatanService""
 
."" 
Services"" 
{## 
[$$ 
ServiceBehavior$$ 
($$ 
InstanceContextMode$$ (
=$$) *
InstanceContextMode$$+ >
.$$> ?
Single$$? E
,$$E F
ConcurrencyMode$$G V
=$$W X
ConcurrencyMode$$Y h
.$$h i
Multiple$$i q
)$$q r
]$$r s
public%% 

class%% 
GameService%% 
:%% 
IGameService%% +
{&& 
private'' 
readonly'' 
IRepositoryManager'' +
repositoryManager'', =
;''= >
private(( 
readonly(( 
IServiceManager(( (
serviceManager(() 7
;((7 8
private)) 
readonly))  
ConcurrentDictionary)) -
<))- .
int)). 1
,))1 2
int))3 6
>))6 7
gameCurrentTurns))8 H
=))I J
new))K N 
ConcurrentDictionary))O c
<))c d
int))d g
,))g h
int))i l
>))l m
())m n
)))n o
;))o p
private** 
readonly**  
ConcurrentDictionary** -
<**- .
int**. 1
,**1 2
GameBoardStateDto**3 D
>**D E
gameBoardStates**F U
=**V W
new**X [ 
ConcurrentDictionary**\ p
<**p q
int**q t
,**t u
GameBoardStateDto	**v á
>
**á à
(
**à â
)
**â ä
;
**ä ã
private++ 
readonly++ 

Dictionary++ #
<++# $
int++$ '
,++' (

Dictionary++) 3
<++3 4
int++4 7
,++7 8
PlayerResourcesDto++9 K
>++K L
>++L M
gamePlayerResources++N a
=++b c
new++d g

Dictionary++h r
<++r s
int++s v
,++v w

Dictionary	++x Ç
<
++Ç É
int
++É Ü
,
++Ü á 
PlayerResourcesDto
++à ö
>
++ö õ
>
++õ ú
(
++ú ù
)
++ù û
;
++û ü
private,, 
readonly,,  
ConcurrentDictionary,, -
<,,- .
int,,. 1
,,,1 2
int,,3 6
>,,6 7$
gameCountdownToStartGame,,8 P
=,,Q R
new,,S V 
ConcurrentDictionary,,W k
<,,k l
int,,l o
,,,o p
int,,q t
>,,t u
(,,u v
),,v w
;,,w x
private-- 
readonly--  
ConcurrentDictionary-- -
<--- .
int--. 1
,--1 2
ConcurrentBag--3 @
<--@ A
ConnectedPlayer--A P
>--P Q
>--Q R"
connectedPlayersByGame--S i
=--j k
new--l o!
ConcurrentDictionary	--p Ñ
<
--Ñ Ö
int
--Ö à
,
--à â
ConcurrentBag
--ä ó
<
--ó ò
ConnectedPlayer
--ò ß
>
--ß ®
>
--® ©
(
--© ™
)
--™ ´
;
--´ ¨
private.. 
readonly..  
ConcurrentDictionary.. -
<..- .
int... 1
,..1 2#
CancellationTokenSource..3 J
>..J K$
cancelTokenCountDownGame..L d
=..e f
new..g j 
ConcurrentDictionary..k 
<	.. Ä
int
..Ä É
,
..É Ñ%
CancellationTokenSource
..Ö ú
>
..ú ù
(
..ù û
)
..û ü
;
..ü †
private// 
readonly//  
ConcurrentDictionary// -
<//- .
int//. 1
,//1 2#
CancellationTokenSource//3 J
>//J K$
cancelTokenTurnCountDown//L d
=//e f
new//g j 
ConcurrentDictionary//k 
<	// Ä
int
//Ä É
,
//É Ñ%
CancellationTokenSource
//Ö ú
>
//ú ù
(
//ù û
)
//û ü
;
//ü †
private00 
readonly00  
ConcurrentDictionary00 -
<00- .
int00. 1
,001 2#
CancellationTokenSource003 J
>00J K-
!cancelTokenEliminatePlayersInGame00L m
=00n o
new00p s!
ConcurrentDictionary	00t à
<
00à â
int
00â å
,
00å ç%
CancellationTokenSource
00é •
>
00• ¶
(
00¶ ß
)
00ß ®
;
00® ©
private11 
readonly11 

Dictionary11 #
<11# $
int11$ '
,11' (#
CancellationTokenSource11) @
>11@ A0
$cancelTokenEliminatePlayersInPreGame11B f
=11g h
new11i l

Dictionary11m w
<11w x
int11x {
,11{ |$
CancellationTokenSource	11} î
>
11î ï
(
11ï ñ
)
11ñ ó
;
11ó ò
private22 
static22 
readonly22 
SemaphoreSlim22  -
semaphoreScoreWorld22. A
=22B C
new22D G
SemaphoreSlim22H U
(22U V
$num22V W
,22W X
$num22Y Z
)22Z [
;22[ \
private33 
static33 
readonly33 
SemaphoreSlim33  - 
semaphoreScoreFriend33. B
=33C D
new33E H
SemaphoreSlim33I V
(33V W
$num33W X
,33X Y
$num33Z [
)33[ \
;33\ ]
public77 
GameService77 
(77 
IRepositoryManager77 -
repositoryManager77. ?
,77? @
IServiceManager77A P
serviceManager77Q _
)77_ `
{88 	
this99 
.99 
repositoryManager99 "
=99# $
repositoryManager99% 6
;996 7
this:: 
.:: 
serviceManager:: 
=::  !
serviceManager::" 0
;::0 1
};; 	
public== 
async== 
Task== 
<== "
OperationResultGameDto== 0
>==0 1(
CreateNewGameInDataBaseAsync==2 N
(==N O
GameDto==O V
gameClientDto==W d
,==d e

ProfileDto==f p
profileClientDto	==q Å
,
==Å Ç
IGameCallback
==É ê
playerCallback
==ë ü
)
==ü †
{>> 	
Console?? 
.?? 
	WriteLine?? 
(?? 
$str?? <
)??< =
;??= >
using@@ 
(@@  
DbContextTransaction@@ '
gameTransaction@@( 7
=@@8 9
await@@: ?
repositoryManager@@@ Q
.@@Q R!
StartTransactionAsync@@R g
(@@g h
)@@h i
)@@i j
{AA 
tryBB 
{CC 
GameDD 

gameRecordDD #
=DD$ %
awaitDD& +$
CreateNewRecordGameAsyncDD, D
(DDD E
profileClientDtoDDE U
,DDU V
gameClientDtoDDW d
)DDd e
;DDe f
ConsoleFF 
.FF 
	WriteLineFF %
(FF% &

gameRecordFF& 0
.FF0 1
NameFF1 5
+FF6 7
$strFF8 L
)FFL M
;FFM N
ifHH 
(HH 
playerCallbackHH &
!=HH' )
nullHH* .
&&HH/ 1
(HH2 3
(HH3 4 
ICommunicationObjectHH4 H
)HHH I
playerCallbackHHI W
)HHW X
.HHX Y
StateHHY ^
==HH_ a
CommunicationStateHHb t
.HHt u
OpenedHHu {
)HH{ |
{II 
ConnectedPlayerJJ '
	newPlayerJJ( 1
=JJ2 3
newJJ4 7
ConnectedPlayerJJ8 G
(JJG H
profileClientDtoJJH X
,JJX Y
playerCallbackJJZ h
)JJh i
;JJi j"
SetConnectedPlayerListKK .
(KK. /
	newPlayerKK/ 8
,KK8 9

gameRecordKK: D
)KKD E
;KKE F
awaitLL )
HandleRelationEntityGameAsyncLL ;
(LL; <

gameRecordLL< F
,LLF G
profileClientDtoLLH X
)LLX Y
;LLY Z
awaitMM 
repositoryManagerMM /
.MM/ 0
	SaveAsyncMM0 9
(MM9 :
)MM: ;
;MM; <
gameTransactionNN '
.NN' (
CommitNN( .
(NN. /
)NN/ 0
;NN0 1#
CancellationTokenSourcePP /#
cancellationTokenSourcePP0 G
=PPH I
newPPJ M#
CancellationTokenSourcePPN e
(PPe f
)PPf g
;PPg h0
$cancelTokenEliminatePlayersInPreGameQQ <
[QQ< =

gameRecordQQ= G
.QQG H
IdQQH J
]QQJ K
=QQL M#
cancellationTokenSourceQQN e
;QQe f
_RR 
=RR 
TaskRR  
.RR  !
RunRR! $
(RR$ %
(RR% &
)RR& '
=>RR( */
#StartPeriodicUpdatesCreateGameAsyncRR+ N
(RRN O

gameRecordRRO Y
.RRY Z
IdRRZ \
,RR\ ]#
cancellationTokenSourceRR^ u
)RRu v
)RRv w
;RRw x
returnTT 
newTT ""
OperationResultGameDtoTT# 9
(TT9 :
trueTT: >
,TT> ?
LanguageUtilitiesTT@ Q
.TTQ R
MessageSuccessTTR `
(TT` a
profileClientDtoTTa q
.TTq r
PreferredLanguage	TTr É
)
TTÉ Ñ
,
TTÑ Ö
CreateGameDto
TTÜ ì
(
TTì î

gameRecord
TTî û
)
TTû ü
)
TTü †
;
TT† °
}UU 
}VV 
catchWW 
(WW "
CommunicationExceptionWW -
exWW. 0
)WW0 1
{XX 
LogYY 
.YY 
ErrorYY 
(YY 
exYY  
,YY  !
exYY" $
.YY$ %
SourceYY% +
)YY+ ,
;YY, -
}[[ 
catch\\ 
(\\ 
	Exception\\  
ex\\! #
)\\# $
{]] 
Log^^ 
.^^ 
Error^^ 
(^^ 
ex^^  
,^^  !
ex^^" $
.^^$ %
Source^^% +
)^^+ ,
;^^, -
}__ 
returnaa 
newaa "
OperationResultGameDtoaa 1
(aa1 2
falseaa2 7
,aa7 8
LanguageUtilitiesaa9 J
.aaJ K'
MessageDataBaseUnableToLoadaaK f
(aaf g
profileClientDtoaag w
.aaw x
PreferredLanguage	aax â
)
aaâ ä
)
aaä ã
;
aaã å
}bb 
}cc 	
privatedd 
asyncdd 
Taskdd )
HandleRelationEntityGameAsyncdd 8
(dd8 9
Gamedd9 =

gameRecorddd> H
,ddH I

ProfileDtoddJ T
profileClientDtoddU e
)dde f
{ee 	
Consoleff 
.ff 
	WriteLineff 
(ff 
$strff =
)ff= >
;ff> ?
Profilegg 
profileRecordgg !
=gg" #
awaitgg$ )
repositoryManagergg* ;
.gg; <
ProfileRepositorygg< M
.ggM N
FindEntityByIdAsyncggN a
(gga b
(ggb c
intggc f
)ggf g
profileClientDtoggg w
.ggw x
Idggx z
)ggz {
;gg{ |
ProfileGameii 
profileGameRecordii )
=ii* +
awaitii, 1+
CreateNewRecordProfileGameAsyncii2 Q
(iiQ R
profileRecordiiR _
,ii_ `

gameRecordiia k
)iik l
;iil m
profileGameRecordjj 
.jj 
IsPlayerInGamejj ,
=jj- .
truejj/ 3
;jj3 4
awaitkk 
repositoryManagerkk #
.kk# $
	SaveAsynckk$ -
(kk- .
)kk. /
;kk/ 0
awaitll %
CreateRelationProfileGamell +
(ll+ ,
profileRecordll, 9
,ll9 :
profileGameRecordll; L
,llL M

gameRecordllN X
)llX Y
;llY Z
}mm 	
publicoo 
asyncoo 
Taskoo 
<oo 
ProfileGameoo %
>oo% &+
CreateNewRecordProfileGameAsyncoo' F
(ooF G
ProfileooG N
profileRecordooO \
,oo\ ]
Gameoo^ b

gameRecordooc m
)oom n
{pp 	
Consoleqq 
.qq 
	WriteLineqq 
(qq 
$strqq ?
)qq? @
;qq@ A
ProfileGamess 
profileGameRecordss )
=ss* +
newss, /
ProfileGamess0 ;
(ss; <
)ss< =
;ss= >
profileGameRecordtt 
.tt 
	ProfileIdtt '
=tt( )
profileRecordtt* 7
.tt7 8
Idtt8 :
;tt: ;
profileGameRecorduu 
.uu 
GameIduu $
=uu% &

gameRecorduu' 1
.uu1 2
Iduu2 4
;uu4 5
profileGameRecordvv 
.vv 
Pointsvv $
=vv% &
$numvv' (
;vv( )
profileGameRecordww 
.ww 
IsPlayerInGameww ,
=ww- .
trueww/ 3
;ww3 4
repositoryManageryy 
.yy !
ProfileGameRepositoryyy 3
.yy3 4
	AddEntityyy4 =
(yy= >
profileGameRecordyy> O
)yyO P
;yyP Q
awaitzz 
repositoryManagerzz #
.zz# $
	SaveAsynczz$ -
(zz- .
)zz. /
;zz/ 0
return|| 
profileGameRecord|| $
;||$ %
}}} 	
public 
async 
Task 
< 
bool 
> 
AddPlayersToGame  0
(0 1
Game1 5

gameRecord6 @
)@ A
{
ÄÄ 	
Console
ÅÅ 
.
ÅÅ 
	WriteLine
ÅÅ 
(
ÅÅ 
$str
ÅÅ 0
)
ÅÅ0 1
;
ÅÅ1 2
bool
ÇÇ 
isAdded
ÇÇ 
=
ÇÇ 
false
ÇÇ  
;
ÇÇ  !
if
ÑÑ 
(
ÑÑ 

gameRecord
ÑÑ 
!=
ÑÑ 
null
ÑÑ "
&&
ÑÑ# %

gameRecord
ÑÑ& 0
.
ÑÑ0 1
Status
ÑÑ1 7
==
ÑÑ8 :
GameUtilities
ÑÑ; H
.
ÑÑH I(
DOMAIN_GAME_STATUS_PREGAME
ÑÑI c
)
ÑÑc d
{
ÖÖ 

gameRecord
ÜÜ 
.
ÜÜ 
NumberPlayers
ÜÜ (
++
ÜÜ( *
;
ÜÜ* +
await
áá 
repositoryManager
áá '
.
áá' (
	SaveAsync
áá( 1
(
áá1 2
)
áá2 3
;
áá3 4
isAdded
àà 
=
àà 
true
àà 
;
àà 
}
ââ 
return
ãã 
isAdded
ãã 
;
ãã 
}
åå 	
public
éé 
async
éé 
Task
éé 
<
éé 
bool
éé 
>
éé .
 IsPlayerPreviusJoinedToGameAsync
éé  @
(
éé@ A
Game
ééA E

gameRecord
ééF P
,
ééP Q

ProfileDto
ééR \
profileClientDto
éé] m
)
éém n
{
èè 	
Console
êê 
.
êê 
	WriteLine
êê 
(
êê 
$str
êê @
)
êê@ A
;
êêA B
ProfileGame
íí 
profileGameRecord
íí )
=
íí* +
await
íí, 1
repositoryManager
íí2 C
.
ííC D#
ProfileGameRepository
ííD Y
.
ííY Z'
IsPlayerJoinedToGameAsync
ííZ s
(
íís t
(
íít u
int
ííu x
)
ííx y
profileClientDtoííy â
.ííâ ä
Idííä å
,ííå ç

gameRecordííé ò
.ííò ô
Idííô õ
)ííõ ú
;ííú ù
if
îî 
(
îî 
profileGameRecord
îî !
!=
îî" $
null
îî% )
&&
îî* ,
!
îî- .
profileGameRecord
îî. ?
.
îî? @
IsPlayerInGame
îî@ N
)
îîN O
{
ïï 
await
ññ 
AddPlayersToGame
ññ &
(
ññ& '

gameRecord
ññ' 1
)
ññ1 2
;
ññ2 3
profileGameRecord
óó !
.
óó! "
IsPlayerInGame
óó" 0
=
óó1 2
true
óó3 7
;
óó7 8
}
òò 
await
ôô 
repositoryManager
ôô #
.
ôô# $
	SaveAsync
ôô$ -
(
ôô- .
)
ôô. /
;
ôô/ 0
return
öö 
profileGameRecord
öö $
!=
öö% '
null
öö( ,
;
öö, -
}
õõ 	
public
ùù 
async
ùù 
Task
ùù 
<
ùù 
Game
ùù 
>
ùù &
CreateNewRecordGameAsync
ùù  8
(
ùù8 9

ProfileDto
ùù9 C
profileClientDto
ùùD T
,
ùùT U
GameDto
ùùV ]
gameClientDto
ùù^ k
)
ùùk l
{
ûû 	
Console
üü 
.
üü 
	WriteLine
üü 
(
üü 
$str
üü 8
)
üü8 9
;
üü9 :
Game
†† 

gameRecord
†† 
=
†† 
new
†† !
Game
††" &
(
††& '
)
††' (
;
††( )

gameRecord
°° 
.
°° 
Name
°° 
=
°° 
gameClientDto
°° +
.
°°+ ,
Name
°°, 0
;
°°0 1

gameRecord
¢¢ 
.
¢¢ 
	AccessKey
¢¢  
=
¢¢! "
GenerateAccessKey
¢¢# 4
(
¢¢4 5
profileClientDto
¢¢5 E
)
¢¢E F
;
¢¢F G

gameRecord
££ 
.
££ 
Date
££ 
=
££ 
DateTime
££ &
.
££& '
UtcNow
££' -
;
££- .

gameRecord
§§ 
.
§§ 
Status
§§ 
=
§§ 
GameUtilities
§§  -
.
§§- .(
DOMAIN_GAME_STATUS_PREGAME
§§. H
;
§§H I

gameRecord
•• 
.
•• 
MaxNumberPlayers
•• '
=
••( )
(
••* +
int
••+ .
)
••. /
gameClientDto
••/ <
.
••< =
MaxNumberPlayers
••= M
;
••M N

gameRecord
¶¶ 
.
¶¶ 
AdminGameId
¶¶ "
=
¶¶# $
(
¶¶% &
int
¶¶& )
)
¶¶) *
profileClientDto
¶¶* :
.
¶¶: ;
Id
¶¶; =
;
¶¶= >
repositoryManager
®® 
.
®® 
GameRepository
®® ,
.
®®, -
	AddEntity
®®- 6
(
®®6 7

gameRecord
®®7 A
)
®®A B
;
®®B C
await
©© 
repositoryManager
©© #
.
©©# $
	SaveAsync
©©$ -
(
©©- .
)
©©. /
;
©©/ 0
return
´´ 

gameRecord
´´ 
;
´´ 
}
¨¨ 	
public
ÆÆ 
async
ÆÆ 
Task
ÆÆ '
CreateRelationProfileGame
ÆÆ 3
(
ÆÆ3 4
Profile
ÆÆ4 ;
profileRecord
ÆÆ< I
,
ÆÆI J
ProfileGame
ÆÆK V
profileGameRecord
ÆÆW h
,
ÆÆh i
Game
ÆÆj n

gameRecord
ÆÆo y
)
ÆÆy z
{
ØØ 	
Console
∞∞ 
.
∞∞ 
	WriteLine
∞∞ 
(
∞∞ 
$str
∞∞ 9
)
∞∞9 :
;
∞∞: ;
if
≤≤ 
(
≤≤ 
profileGameRecord
≤≤ !
!=
≤≤" $
null
≤≤% )
&&
≤≤* ,
profileRecord
≤≤- :
!=
≤≤; =
null
≤≤> B
)
≤≤B C
{
≥≥ 
profileRecord
¥¥ 
.
¥¥ "
RelationProfileGames
¥¥ 2
.
¥¥2 3
Add
¥¥3 6
(
¥¥6 7
profileGameRecord
¥¥7 H
)
¥¥H I
;
¥¥I J

gameRecord
µµ 
.
µµ "
RelationProfileGames
µµ /
.
µµ/ 0
Add
µµ0 3
(
µµ3 4
profileGameRecord
µµ4 E
)
µµE F
;
µµF G
profileGameRecord
∂∂ !
.
∂∂! "
RelationGame
∂∂" .
=
∂∂/ 0

gameRecord
∂∂1 ;
;
∂∂; <
profileGameRecord
∑∑ !
.
∑∑! "
RelationProfile
∑∑" 1
=
∑∑2 3
profileRecord
∑∑4 A
;
∑∑A B
await
∏∏ 
repositoryManager
∏∏ '
.
∏∏' (
	SaveAsync
∏∏( 1
(
∏∏1 2
)
∏∏2 3
;
∏∏3 4
}
ππ 
}
∫∫ 	
public
ºº 
async
ºº 
Task
ºº 1
#CreateRelationGuestAccountGameAsync
ºº =
(
ºº= >
Game
ºº> B

gameRecord
ººC M
,
ººM N
GuestAccount
ººO [ 
guestAccountRecord
ºº\ n
,
ººn o
GuestAccountGameººp Ä&
guestAccountGameRecordººÅ ó
)ººó ò
{
ΩΩ 	
Console
ææ 
.
ææ 
	WriteLine
ææ 
(
ææ 
$str
ææ C
)
ææC D
;
ææD E
if
øø 
(
øø $
guestAccountGameRecord
øø &
!=
øø' )
null
øø* .
&&
øø/ 1 
guestAccountRecord
øø2 D
!=
øøE G
null
øøH L
)
øøL M
{
¿¿ 

gameRecord
¡¡ 
.
¡¡ '
RelationGuestAccountGames
¡¡ 4
.
¡¡4 5
Add
¡¡5 8
(
¡¡8 9$
guestAccountGameRecord
¡¡9 O
)
¡¡O P
;
¡¡P Q 
guestAccountRecord
¬¬ "
.
¬¬" #'
RelationGuestAccountGames
¬¬# <
.
¬¬< =
Add
¬¬= @
(
¬¬@ A$
guestAccountGameRecord
¬¬A W
)
¬¬W X
;
¬¬X Y$
guestAccountGameRecord
√√ &
.
√√& '
RelationGame
√√' 3
=
√√4 5

gameRecord
√√6 @
;
√√@ A$
guestAccountGameRecord
ƒƒ &
.
ƒƒ& '"
RelationGuestAccount
ƒƒ' ;
=
ƒƒ< = 
guestAccountRecord
ƒƒ> P
;
ƒƒP Q
}
≈≈ 
await
∆∆ 
repositoryManager
∆∆ #
.
∆∆# $
	SaveAsync
∆∆$ -
(
∆∆- .
)
∆∆. /
;
∆∆/ 0
}
«« 	
public
…… 
static
…… 
bool
……  
CanJoinByGameQuota
…… -
(
……- .
Game
……. 2

gameRecord
……3 =
)
……= >
{
   	
return
ÀÀ 

gameRecord
ÀÀ 
.
ÀÀ 
NumberPlayers
ÀÀ +
<
ÀÀ, -

gameRecord
ÀÀ. 8
.
ÀÀ8 9
MaxNumberPlayers
ÀÀ9 I
;
ÀÀI J
}
ÃÃ 	
public
ŒŒ 
Task
ŒŒ -
SendRemainingTimeToJoinedPlayer
ŒŒ 3
(
ŒŒ3 4
Game
ŒŒ4 8

gameRecord
ŒŒ9 C
,
ŒŒC D
ConnectedPlayer
ŒŒE T
	newPlayer
ŒŒU ^
)
ŒŒ^ _
{
œœ 	
if
–– 
(
–– &
gameCountdownToStartGame
–– (
.
––( )
ContainsKey
––) 4
(
––4 5

gameRecord
––5 ?
.
––? @
Id
––@ B
)
––B C
)
––C D
{
—— 
int
““ 
timeRemaining
““ !
=
““" #&
gameCountdownToStartGame
““$ <
[
““< =

gameRecord
““= G
.
““G H
Id
““H J
]
““J K
;
““K L
try
”” 
{
‘‘ 
	newPlayer
’’ 
.
’’ 
gameCallback
’’ *
?
’’* +
.
’’+ ,#
UpdateTimeToStartGame
’’, A
(
’’A B
timeRemaining
’’B O
)
’’O P
;
’’P Q
}
÷÷ 
catch
◊◊ 
(
◊◊ 
	Exception
◊◊  
ex
◊◊! #
)
◊◊# $
{
ÿÿ 
Log
ŸŸ 
.
ŸŸ 
Error
ŸŸ 
(
ŸŸ 
ex
ŸŸ  
,
ŸŸ  !
ex
ŸŸ" $
.
ŸŸ$ %
Source
ŸŸ% +
)
ŸŸ+ ,
;
ŸŸ, -
}
⁄⁄ 
}
€€ 
return
‹‹ 
Task
‹‹ 
.
‹‹ 
CompletedTask
‹‹ %
;
‹‹% &
}
›› 	
public
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ $
OperationResultGameDto
ﬂﬂ 0
>
ﬂﬂ0 1%
JoinGameInDataBaseAsync
ﬂﬂ2 I
(
ﬂﬂI J
string
ﬂﬂJ P

codeAccess
ﬂﬂQ [
,
ﬂﬂ[ \

ProfileDto
ﬂﬂ] g
profileClientDto
ﬂﬂh x
,
ﬂﬂx y
IGameCallbackﬂﬂz á
gameCallbackﬂﬂà î
)ﬂﬂî ï
{
‡‡ 	
Console
·· 
.
·· 
	WriteLine
·· 
(
·· 
$str
·· 7
)
··7 8
;
··8 9
using
‚‚ 
(
‚‚ "
DbContextTransaction
‚‚ '
gameTransaction
‚‚( 7
=
‚‚8 9
await
‚‚: ?
repositoryManager
‚‚@ Q
.
‚‚Q R#
StartTransactionAsync
‚‚R g
(
‚‚g h
)
‚‚h i
)
‚‚i j
{
„„ 
Game
‰‰ 

gameRecord
‰‰ 
=
‰‰  !
await
‰‰" '
repositoryManager
‰‰( 9
.
‰‰9 :
GameRepository
‰‰: H
.
‰‰H I&
FindGameByKeyAccessAsync
‰‰I a
(
‰‰a b

codeAccess
‰‰b l
)
‰‰l m
;
‰‰m n
if
ÊÊ 
(
ÊÊ 
gameCallback
ÊÊ  
!=
ÊÊ! #
null
ÊÊ$ (
&&
ÊÊ) +
(
ÊÊ, -
(
ÊÊ- ."
ICommunicationObject
ÊÊ. B
)
ÊÊB C
gameCallback
ÊÊC O
)
ÊÊO P
.
ÊÊP Q
State
ÊÊQ V
==
ÊÊW Y 
CommunicationState
ÊÊZ l
.
ÊÊl m
Opened
ÊÊm s
&&
ÊÊt v

gameRecordÊÊw Å
!=ÊÊÇ Ñ
nullÊÊÖ â
)ÊÊâ ä
{
ÁÁ 
ConnectedPlayer
ËË #
	newPlayer
ËË$ -
=
ËË. /
new
ËË0 3
ConnectedPlayer
ËË4 C
(
ËËC D
profileClientDto
ËËD T
,
ËËT U
gameCallback
ËËV b
)
ËËb c
;
ËËc d
if
ÍÍ 
(
ÍÍ  
CanJoinByGameQuota
ÍÍ *
(
ÍÍ* +

gameRecord
ÍÍ+ 5
)
ÍÍ5 6
&&
ÍÍ7 9
(
ÍÍ: ;
!
ÍÍ; <
IsNewPlayer
ÍÍ< G
(
ÍÍG H
	newPlayer
ÍÍH Q
,
ÍÍQ R

gameRecord
ÍÍS ]
.
ÍÍ] ^
Id
ÍÍ^ `
)
ÍÍ` a
||
ÍÍb d
await
ÍÍe j/
 IsPlayerPreviusJoinedToGameAsyncÍÍk ã
(ÍÍã å

gameRecordÍÍå ñ
,ÍÍñ ó 
profileClientDtoÍÍò ®
)ÍÍ® ©
)ÍÍ© ™
)ÍÍ™ ´
{
ÎÎ 
return
ÏÏ 
new
ÏÏ "$
OperationResultGameDto
ÏÏ# 9
(
ÏÏ9 :
true
ÏÏ: >
,
ÏÏ> ?
LanguageUtilities
ÏÏ@ Q
.
ÏÏQ R
MessageSuccess
ÏÏR `
(
ÏÏ` a
profileClientDto
ÏÏa q
.
ÏÏq r 
PreferredLanguageÏÏr É
)ÏÏÉ Ñ
,ÏÏÑ Ö
CreateGameDtoÏÏÜ ì
(ÏÏì î

gameRecordÏÏî û
)ÏÏû ü
)ÏÏü †
;ÏÏ† °
}
ÓÓ 
if
 
(
  
CanJoinByGameQuota
 *
(
* +

gameRecord
+ 5
)
5 6
&&
7 9
await
: ?
AddPlayersToGame
@ P
(
P Q

gameRecord
Q [
)
[ \
)
\ ]
{
ÒÒ $
SetConnectedPlayerList
ÚÚ .
(
ÚÚ. /
	newPlayer
ÚÚ/ 8
,
ÚÚ8 9

gameRecord
ÚÚ: D
)
ÚÚD E
;
ÚÚE F
await
ÛÛ +
HandleRelationEntityGameAsync
ÛÛ ;
(
ÛÛ; <

gameRecord
ÛÛ< F
,
ÛÛF G
profileClientDto
ÛÛH X
)
ÛÛX Y
;
ÛÛY Z
await
ÙÙ ,
SendRemainingTimeToPlayerAsync
ÙÙ <
(
ÙÙ< =

gameRecord
ÙÙ= G
.
ÙÙG H
Id
ÙÙH J
,
ÙÙJ K
	newPlayer
ÙÙL U
)
ÙÙU V
;
ÙÙV W
await
ıı 
repositoryManager
ıı /
.
ıı/ 0
	SaveAsync
ıı0 9
(
ıı9 :
)
ıı: ;
;
ıı; <
gameTransaction
ˆˆ '
.
ˆˆ' (
Commit
ˆˆ( .
(
ˆˆ. /
)
ˆˆ/ 0
;
ˆˆ0 1
return
˜˜ 
new
˜˜ "$
OperationResultGameDto
˜˜# 9
(
˜˜9 :
true
˜˜: >
,
˜˜> ?
LanguageUtilities
˜˜@ Q
.
˜˜Q R
MessageSuccess
˜˜R `
(
˜˜` a
profileClientDto
˜˜a q
.
˜˜q r 
PreferredLanguage˜˜r É
)˜˜É Ñ
,˜˜Ñ Ö
CreateGameDto˜˜Ü ì
(˜˜ì î

gameRecord˜˜î û
)˜˜û ü
)˜˜ü †
;˜˜† °
}
¯¯ 
}
˘˘ 
}
˙˙ 
return
˚˚ 
new
˚˚ $
OperationResultGameDto
˚˚ -
(
˚˚- .
false
˚˚. 3
,
˚˚3 4
LanguageUtilities
˚˚5 F
.
˚˚F G+
MessageUnableToFindInDataBase
˚˚G d
(
˚˚d e
profileClientDto
˚˚e u
.
˚˚u v 
PreferredLanguage˚˚v á
)˚˚á à
)˚˚à â
;˚˚â ä
}
¸¸ 	
public
˝˝ 
async
˝˝ 
Task
˝˝ 1
#HandleRelationGuestAccountGameAsync
˝˝ =
(
˝˝= >
Game
˝˝> B

gameRecord
˝˝C M
,
˝˝M N
GuestAccountDto
˝˝O ^#
guestAccountClientDto
˝˝_ t
)
˝˝t u
{
˛˛ 	
Console
ˇˇ 
.
ˇˇ 
	WriteLine
ˇˇ 
(
ˇˇ 
$str
ˇˇ C
)
ˇˇC D
;
ˇˇD E
GuestAccount
ÄÄ  
guestAccountRecord
ÄÄ +
=
ÄÄ, -
await
ÄÄ. 3
repositoryManager
ÄÄ4 E
.
ÄÄE F$
GuestAccountRepository
ÄÄF \
.
ÄÄ\ ]!
FindEntityByIdAsync
ÄÄ] p
(
ÄÄp q
(
ÄÄq r
int
ÄÄr u
)
ÄÄu v$
guestAccountClientDtoÄÄv ã
.ÄÄã å
IdÄÄå é
)ÄÄé è
;ÄÄè ê
GuestAccountGame
ÅÅ $
guestAccountGameRecord
ÅÅ 3
=
ÅÅ4 5
await
ÅÅ6 ;2
$CreateNewRecordGuestAccountGameAsync
ÅÅ< `
(
ÅÅ` a#
guestAccountClientDto
ÅÅa v
,
ÅÅv w

gameRecordÅÅx Ç
)ÅÅÇ É
;ÅÅÉ Ñ$
guestAccountGameRecord
ÇÇ "
.
ÇÇ" #
IsPlayerInGame
ÇÇ# 1
=
ÇÇ2 3
true
ÇÇ4 8
;
ÇÇ8 9
await
ÑÑ 1
#CreateRelationGuestAccountGameAsync
ÑÑ 5
(
ÑÑ5 6

gameRecord
ÑÑ6 @
,
ÑÑ@ A 
guestAccountRecord
ÑÑB T
,
ÑÑT U$
guestAccountGameRecord
ÑÑV l
)
ÑÑl m
;
ÑÑm n
}
ÖÖ 	
public
ÜÜ 
async
ÜÜ 
Task
ÜÜ 
<
ÜÜ 
bool
ÜÜ 
>
ÜÜ .
 IsGuestAccountPreviusJoinedAsync
ÜÜ  @
(
ÜÜ@ A
Game
ÜÜA E

gameRecord
ÜÜF P
,
ÜÜP Q
GuestAccountDto
ÜÜR a
guestAccountDto
ÜÜb q
,
ÜÜq r
ConnectedPlayerÜÜs Ç
playerÜÜÉ â
)ÜÜâ ä
{
áá 	
Console
àà 
.
àà 
	WriteLine
àà 
(
àà 
$str
àà @
)
àà@ A
;
ààA B
GuestAccountGame
ää $
guestAccountGameRecord
ää 3
=
ää4 5
await
ää6 ;
repositoryManager
ää< M
.
ääM N(
GuestAccountGameRepository
ääN h
.
ääh i.
IsGuestAccountJoinedToGameAsyncääi à
(ääà â
(ääâ ä
intäää ç
)ääç é
guestAccountDtoääé ù
.ääù û
Idääû †
,ää† °

gameRecordää¢ ¨
.ää¨ ≠
Idää≠ Ø
)ääØ ∞
;ää∞ ±
if
åå 
(
åå $
guestAccountGameRecord
åå &
!=
åå' )
null
åå* .
&&
åå/ 1
!
åå2 3$
guestAccountGameRecord
åå3 I
.
ååI J
IsPlayerInGame
ååJ X
)
ååX Y
{
çç 
await
éé 
AddPlayersToGame
éé &
(
éé& '

gameRecord
éé' 1
)
éé1 2
;
éé2 3$
guestAccountGameRecord
èè &
.
èè& '
IsPlayerInGame
èè' 5
=
èè6 7
true
èè8 <
;
èè< =
}
êê 
await
íí 
repositoryManager
íí #
.
íí# $
	SaveAsync
íí$ -
(
íí- .
)
íí. /
;
íí/ 0
return
îî $
guestAccountGameRecord
îî )
!=
îî* ,
null
îî- 1
;
îî1 2
}
ïï 	
public
óó 
async
óó 
Task
óó 
<
óó $
OperationResultGameDto
óó 0
>
óó0 1-
JoinGameAsaGuestInDataBaseAsync
óó2 Q
(
óóQ R
string
óóR X
	accessKey
óóY b
,
óób c
GuestAccountDto
óód s$
guestAccountClientDtoóót â
,óóâ ä
IGameCallbackóóã ò
playerCallbackóóô ß
)óóß ®
{
òò 	
Console
ôô 
.
ôô 
	WriteLine
ôô 
(
ôô 
$str
ôô ?
)
ôô? @
;
ôô@ A
using
öö 
(
öö "
DbContextTransaction
öö '
gameTransaction
öö( 7
=
öö8 9
await
öö: ?
repositoryManager
öö@ Q
.
ööQ R#
StartTransactionAsync
ööR g
(
öög h
)
ööh i
)
ööi j
{
õõ 
Game
úú 

gameRecord
úú 
=
úú  !
await
úú" '
repositoryManager
úú( 9
.
úú9 :
GameRepository
úú: H
.
úúH I&
FindGameByKeyAccessAsync
úúI a
(
úúa b
	accessKey
úúb k
)
úúk l
;
úúl m
if
ûû 
(
ûû 
playerCallback
ûû "
!=
ûû# %
null
ûû& *
&&
ûû+ -
(
ûû. /
(
ûû/ 0"
ICommunicationObject
ûû0 D
)
ûûD E
playerCallback
ûûE S
)
ûûS T
.
ûûT U
State
ûûU Z
==
ûû[ ] 
CommunicationState
ûû^ p
.
ûûp q
Opened
ûûq w
&&
ûûx z

gameRecordûû{ Ö
!=ûûÜ à
nullûûâ ç
)ûûç é
{
üü 
ConnectedPlayer
†† #
	newPlayer
††$ -
=
††. /
new
††0 3
ConnectedPlayer
††4 C
(
††C D
playerCallback
††D R
,
††R S#
guestAccountClientDto
††T i
)
††i j
;
††j k
if
¢¢ 
(
¢¢  
CanJoinByGameQuota
¢¢ *
(
¢¢* +

gameRecord
¢¢+ 5
)
¢¢5 6
&&
¢¢7 9
(
¢¢: ;
!
¢¢; <
IsNewPlayer
¢¢< G
(
¢¢G H
	newPlayer
¢¢H Q
,
¢¢Q R

gameRecord
¢¢S ]
.
¢¢] ^
Id
¢¢^ `
)
¢¢` a
||
¢¢b d
await
¢¢e j/
 IsGuestAccountPreviusJoinedAsync¢¢k ã
(¢¢ã å

gameRecord¢¢å ñ
,¢¢ñ ó%
guestAccountClientDto¢¢ò ≠
,¢¢≠ Æ
	newPlayer¢¢Ø ∏
)¢¢∏ π
)¢¢π ∫
)¢¢∫ ª
{
££ 
return
§§ 
new
§§ "$
OperationResultGameDto
§§# 9
(
§§9 :
true
§§: >
,
§§> ?
LanguageUtilities
§§@ Q
.
§§Q R
MessageSuccess
§§R `
(
§§` a#
guestAccountClientDto
§§a v
.
§§v w 
PreferredLanguage§§w à
)§§à â
,§§â ä
CreateGameDto§§ã ò
(§§ò ô

gameRecord§§ô £
)§§£ §
)§§§ •
;§§• ¶
}
¶¶ 
if
®® 
(
®®  
CanJoinByGameQuota
®® *
(
®®* +

gameRecord
®®+ 5
)
®®5 6
&&
®®7 9
await
®®: ?
AddPlayersToGame
®®@ P
(
®®P Q

gameRecord
®®Q [
)
®®[ \
)
®®\ ]
{
©© $
SetConnectedPlayerList
™™ .
(
™™. /
	newPlayer
™™/ 8
,
™™8 9

gameRecord
™™: D
)
™™D E
;
™™E F
await
´´ 1
#HandleRelationGuestAccountGameAsync
´´ A
(
´´A B

gameRecord
´´B L
,
´´L M#
guestAccountClientDto
´´N c
)
´´c d
;
´´d e
await
¨¨ ,
SendRemainingTimeToPlayerAsync
¨¨ <
(
¨¨< =

gameRecord
¨¨= G
.
¨¨G H
Id
¨¨H J
,
¨¨J K
	newPlayer
¨¨L U
)
¨¨U V
;
¨¨V W
await
≠≠ 
repositoryManager
≠≠ /
.
≠≠/ 0
	SaveAsync
≠≠0 9
(
≠≠9 :
)
≠≠: ;
;
≠≠; <
gameTransaction
ÆÆ '
.
ÆÆ' (
Commit
ÆÆ( .
(
ÆÆ. /
)
ÆÆ/ 0
;
ÆÆ0 1
return
∞∞ 
new
∞∞ "$
OperationResultGameDto
∞∞# 9
(
∞∞9 :
true
∞∞: >
,
∞∞> ?
LanguageUtilities
∞∞@ Q
.
∞∞Q R
MessageSuccess
∞∞R `
(
∞∞` a#
guestAccountClientDto
∞∞a v
.
∞∞v w 
PreferredLanguage∞∞w à
)∞∞à â
,∞∞â ä
CreateGameDto∞∞ã ò
(∞∞ò ô

gameRecord∞∞ô £
)∞∞£ §
)∞∞§ •
;∞∞• ¶
}
±± 
}
≤≤ 
}
≥≥ 
return
µµ 
new
µµ $
OperationResultGameDto
µµ -
(
µµ- .
false
µµ. 3
,
µµ3 4
LanguageUtilities
µµ5 F
.
µµF G%
MessageUnableToSaveData
µµG ^
(
µµ^ _#
guestAccountClientDto
µµ_ t
.
µµt u 
PreferredLanguageµµu Ü
)µµÜ á
)µµá à
;µµà â
}
∂∂ 	
public
∏∏ 
async
∏∏ 
Task
∏∏ 
<
∏∏ 
bool
∏∏ 
>
∏∏ 
SubstractPlayers
∏∏  0
(
∏∏0 1
GameDto
∏∏1 8
gameClientDto
∏∏9 F
,
∏∏F G
int
∏∏H K
idPlayer
∏∏L T
)
∏∏T U
{
ππ 	
Console
∫∫ 
.
∫∫ 
	WriteLine
∫∫ 
(
∫∫ 
$str
∫∫ 0
)
∫∫0 1
;
∫∫1 2
Game
ªª 

gameRecord
ªª 
=
ªª 
await
ªª #
repositoryManager
ªª$ 5
.
ªª5 6
GameRepository
ªª6 D
.
ªªD E!
FindEntityByIdAsync
ªªE X
(
ªªX Y
(
ªªY Z
int
ªªZ ]
)
ªª] ^
gameClientDto
ªª^ k
.
ªªk l
Id
ªªl n
)
ªªn o
;
ªªo p
if
ΩΩ 
(
ΩΩ 

gameRecord
ΩΩ 
!=
ΩΩ 
null
ΩΩ "
)
ΩΩ" #
{
ææ 

gameRecord
øø 
.
øø 
NumberPlayers
øø (
--
øø( *
;
øø* +
if
¡¡ 
(
¡¡ 

gameRecord
¡¡ 
.
¡¡ 
NumberPlayers
¡¡ ,
==
¡¡- /
GameUtilities
¡¡0 =
.
¡¡= >.
 NUMBER_OF_PLAYERS_TO_CANCEL_GAME
¡¡> ^
)
¡¡^ _
{
¬¬ 

gameRecord
√√ 
.
√√ 
Status
√√ %
=
√√& '
GameUtilities
√√( 5
.
√√5 6*
DOMAIN_GAME_STATUS_CANCELLED
√√6 R
;
√√R S
}
ƒƒ 
await
∆∆ 
repositoryManager
∆∆ '
.
∆∆' (
	SaveAsync
∆∆( 1
(
∆∆1 2
)
∆∆2 3
;
∆∆3 4
return
»» 
true
»» 
;
»» 
}
…… 
return
   
false
   
;
   
}
ÀÀ 	
public
ÕÕ 
async
ÕÕ 
Task
ÕÕ 
<
ÕÕ 
bool
ÕÕ 
>
ÕÕ 
ChangeAdminGame
ÕÕ  /
(
ÕÕ/ 0
Game
ÕÕ0 4

gameRecord
ÕÕ5 ?
)
ÕÕ? @
{
ŒŒ 	
Console
œœ 
.
œœ 
	WriteLine
œœ 
(
œœ 
$str
œœ /
)
œœ/ 0
;
œœ0 1
bool
—— #
isPossibleChangeAdmin
—— &
=
——' (
false
——) .
;
——. /
if
”” 
(
”” $
connectedPlayersByGame
”” &
.
””& '
TryGetValue
””' 2
(
””2 3

gameRecord
””3 =
.
””= >
Id
””> @
,
””@ A
out
””B E
ConcurrentBag
””F S
<
””S T
ConnectedPlayer
””T c
>
””c d
playersInGame
””e r
)
””r s
)
””s t
{
‘‘ 
foreach
’’ 
(
’’ 
ConnectedPlayer
’’ (
player
’’) /
in
’’0 2
playersInGame
’’3 @
)
’’@ A
{
÷÷ 
ConnectedPlayer
◊◊ #
newAdminPlayer
◊◊$ 2
=
◊◊3 4
player
◊◊5 ;
;
◊◊; <
int
ŸŸ 
adminId
ŸŸ 
=
ŸŸ  !
newAdminPlayer
ŸŸ" 0
?
ŸŸ0 1
.
ŸŸ1 2
profileClientDto
ŸŸ2 B
?
ŸŸB C
.
ŸŸC D
Id
ŸŸD F
??
ŸŸG I
newAdminPlayer
ŸŸJ X
?
ŸŸX Y
.
ŸŸY Z
guestAccountDto
ŸŸZ i
?
ŸŸi j
.
ŸŸj k
Id
ŸŸk m
??
ŸŸn p!
CharacterUtilitiesŸŸq É
.ŸŸÉ Ñ
NON_VALID_IDŸŸÑ ê
;ŸŸê ë
if
€€ 
(
€€ 
adminId
€€ 
!=
€€  " 
CharacterUtilities
€€# 5
.
€€5 6
NON_VALID_ID
€€6 B
&&
€€C E"
IsPlayerCallbackOpen
€€F Z
(
€€Z [
newAdminPlayer
€€[ i
)
€€i j
)
€€j k
{
‹‹ 

gameRecord
›› "
.
››" #
AdminGameId
››# .
=
››/ 0
adminId
››1 8
;
››8 9
await
ﬁﬁ 
repositoryManager
ﬁﬁ /
.
ﬁﬁ/ 0
	SaveAsync
ﬁﬁ0 9
(
ﬁﬁ9 :
)
ﬁﬁ: ;
;
ﬁﬁ; <
NotifyNewAdminId
ﬂﬂ (
(
ﬂﬂ( )

gameRecord
ﬂﬂ) 3
.
ﬂﬂ3 4
Id
ﬂﬂ4 6
,
ﬂﬂ6 7
adminId
ﬂﬂ8 ?
)
ﬂﬂ? @
;
ﬂﬂ@ A#
isPossibleChangeAdmin
‡‡ -
=
‡‡. /
true
‡‡0 4
;
‡‡4 5
break
·· 
;
·· 
}
‚‚ 
else
„„ 
if
„„ 
(
„„ 
adminId
„„ $
!=
„„% ' 
CharacterUtilities
„„( :
.
„„: ;
NON_VALID_ID
„„; G
)
„„G H
{
‰‰ 
await
ÂÂ &
RemoveDisconnectedPlayer
ÂÂ 6
(
ÂÂ6 7

gameRecord
ÂÂ7 A
.
ÂÂA B
Id
ÂÂB D
,
ÂÂD E
adminId
ÂÂF M
)
ÂÂM N
;
ÂÂN O
}
ÊÊ 
}
ÁÁ 
}
ËË 
if
ÍÍ 
(
ÍÍ 
!
ÍÍ #
isPossibleChangeAdmin
ÍÍ &
)
ÍÍ& '
{
ÎÎ 
await
ÏÏ 
ChangeStatusGame
ÏÏ &
(
ÏÏ& '

gameRecord
ÏÏ' 1
,
ÏÏ1 2
GameUtilities
ÏÏ3 @
.
ÏÏ@ A*
DOMAIN_GAME_STATUS_CANCELLED
ÏÏA ]
)
ÏÏ] ^
;
ÏÏ^ _
}
ÌÌ 
return
ÔÔ #
isPossibleChangeAdmin
ÔÔ (
;
ÔÔ( )
}
 	
public
ÚÚ 
void
ÚÚ 
NotifyNewAdminId
ÚÚ $
(
ÚÚ$ %
int
ÚÚ% (
gameId
ÚÚ) /
,
ÚÚ/ 0
int
ÚÚ1 4

newAdminId
ÚÚ5 ?
)
ÚÚ? @
{
ÛÛ 	
Console
ÙÙ 
.
ÙÙ 
	WriteLine
ÙÙ 
(
ÙÙ 
$str
ÙÙ 0
)
ÙÙ0 1
;
ÙÙ1 2
if
ˆˆ 
(
ˆˆ $
connectedPlayersByGame
ˆˆ &
.
ˆˆ& '
TryGetValue
ˆˆ' 2
(
ˆˆ2 3
gameId
ˆˆ3 9
,
ˆˆ9 :
out
ˆˆ; >
ConcurrentBag
ˆˆ? L
<
ˆˆL M
ConnectedPlayer
ˆˆM \
>
ˆˆ\ ]
playersInGame
ˆˆ^ k
)
ˆˆk l
)
ˆˆl m
{
˜˜ 
foreach
¯¯ 
(
¯¯ 
ConnectedPlayer
¯¯ (
player
¯¯) /
in
¯¯0 2
playersInGame
¯¯3 @
)
¯¯@ A
{
˘˘ 
if
˙˙ 
(
˙˙ "
IsPlayerCallbackOpen
˙˙ ,
(
˙˙, -
player
˙˙- 3
)
˙˙3 4
)
˙˙4 5
{
˚˚ 
try
¸¸ 
{
˝˝ 
player
˛˛ "
.
˛˛" #
gameCallback
˛˛# /
.
˛˛/ 0%
BroadcastNotifyNewAdmin
˛˛0 G
(
˛˛G H

newAdminId
˛˛H R
)
˛˛R S
;
˛˛S T
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ %
ObjectDisposedException
ÄÄ 6
ex
ÄÄ7 9
)
ÄÄ9 :
{
ÅÅ 
Log
ÇÇ 
.
ÇÇ  
Error
ÇÇ  %
(
ÇÇ% &
ex
ÇÇ& (
,
ÇÇ( )
ex
ÇÇ* ,
.
ÇÇ, -
Source
ÇÇ- 3
)
ÇÇ3 4
;
ÇÇ4 5
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ $
CommunicationException
ÑÑ 5
ex
ÑÑ6 8
)
ÑÑ8 9
{
ÖÖ 
Log
ÜÜ 
.
ÜÜ  
Error
ÜÜ  %
(
ÜÜ% &
ex
ÜÜ& (
,
ÜÜ( )
ex
ÜÜ* ,
.
ÜÜ, -
Source
ÜÜ- 3
)
ÜÜ3 4
;
ÜÜ4 5
}
áá 
catch
àà 
(
àà 
	Exception
àà (
ex
àà) +
)
àà+ ,
{
ââ 
Log
ää 
.
ää  
Error
ää  %
(
ää% &
ex
ää& (
,
ää( )
ex
ää* ,
.
ää, -
Source
ää- 3
)
ää3 4
;
ää4 5
}
ãã 
}
åå 
}
çç 
}
éé 
}
èè 	
public
ëë 
async
ëë 
Task
ëë &
RemoveDisconnectedPlayer
ëë 2
(
ëë2 3
int
ëë3 6
gameId
ëë7 =
,
ëë= >
int
ëë? B
playerId
ëëC K
)
ëëK L
{
íí 	
Console
ìì 
.
ìì 
	WriteLine
ìì 
(
ìì 
$str
ìì 8
)
ìì8 9
;
ìì9 :
if
ïï 
(
ïï $
connectedPlayersByGame
ïï &
.
ïï& '
TryGetValue
ïï' 2
(
ïï2 3
gameId
ïï3 9
,
ïï9 :
out
ïï; >
ConcurrentBag
ïï? L
<
ïïL M
ConnectedPlayer
ïïM \
>
ïï\ ]
playersInGame
ïï^ k
)
ïïk l
)
ïïl m
{
ññ 
ConcurrentBag
óó 
<
óó 
ConnectedPlayer
óó -
>
óó- ."
updatedPlayersInGame
óó/ C
=
óóD E
new
óóF I
ConcurrentBag
óóJ W
<
óóW X
ConnectedPlayer
óóX g
>
óóg h
(
óóh i
playersInGame
óói v
.
óóv w
Where
óów |
(
óó| }
playeróó} É
=>óóÑ Ü
!
òò 
(
òò 
player
òò 
.
òò 
profileClientDto
òò -
?
òò- .
.
òò. /
Id
òò/ 1
==
òò2 4
playerId
òò5 =
||
òò> @
player
òòA G
.
òòG H
guestAccountDto
òòH W
?
òòW X
.
òòX Y
Id
òòY [
==
òò\ ^
playerId
òò_ g
)
òòg h
)
òòh i
)
òòi j
;
òòj k
ConnectedPlayer
öö  
disconnectedPlayer
öö  2
=
öö3 4 
GetConnectedPlayer
öö5 G
(
ööG H
gameId
ööH N
,
ööN O
playerId
ööP X
)
ööX Y
;
ööY Z$
connectedPlayersByGame
úú &
[
úú& '
gameId
úú' -
]
úú- .
=
úú/ 0"
updatedPlayersInGame
úú1 E
;
úúE F
if
ûû 
(
ûû  
disconnectedPlayer
ûû &
!=
ûû' )
null
ûû* .
)
ûû. /
{
üü 
Game
†† 

gameRecord
†† #
=
††$ %
await
††& +
repositoryManager
††, =
.
††= >
GameRepository
††> L
.
††L M!
FindEntityByIdAsync
††M `
(
††` a
gameId
††a g
)
††g h
;
††h i
if
¢¢ 
(
¢¢ 
!
¢¢ "
updatedPlayersInGame
¢¢ -
.
¢¢- .
Any
¢¢. 1
(
¢¢1 2
)
¢¢2 3
&&
¢¢4 6

gameRecord
¢¢7 A
!=
¢¢B D
null
¢¢E I
)
¢¢I J
{
££ 
await
§§ 
ChangeStatusGame
§§ .
(
§§. /

gameRecord
§§/ 9
,
§§9 :
GameUtilities
§§; H
.
§§H I*
DOMAIN_GAME_STATUS_CANCELLED
§§I e
)
§§e f
;
§§f g$
connectedPlayersByGame
•• .
.
••. /
	TryRemove
••/ 8
(
••8 9
gameId
••9 ?
,
••? @
out
••A D
ConcurrentBag
••E R
<
••R S
ConnectedPlayer
••S b
>
••b c

updateList
••d n
)
••n o
;
••o p
}
¶¶ 
else
ßß 
if
ßß 
(
ßß 

gameRecord
ßß '
!=
ßß( *
null
ßß+ /
&&
ßß0 2
!
ßß3 4"
updatedPlayersInGame
ßß4 H
.
ßßH I
Any
ßßI L
(
ßßL M
player
ßßM S
=>
ßßT V
player
®® 
.
®® 
profileClientDto
®® /
?
®®/ 0
.
®®0 1
Id
®®1 3
==
®®4 6

gameRecord
®®7 A
.
®®A B
AdminGameId
®®B M
||
®®N P
player
©© 
.
©© 
guestAccountDto
©© .
?
©©. /
.
©©/ 0
Id
©©0 2
==
©©3 5

gameRecord
©©6 @
.
©©@ A
AdminGameId
©©A L
)
©©L M
)
©©M N
{
™™ 
await
´´ 
ChangeAdminGame
´´ -
(
´´- .

gameRecord
´´. 8
)
´´8 9
;
´´9 :
}
¨¨ 
}
≠≠ 
}
ÆÆ 
await
ØØ %
ChangeStatusProfileGame
ØØ )
(
ØØ) *
playerId
ØØ* 2
,
ØØ2 3
false
ØØ4 9
,
ØØ9 :
gameId
ØØ; A
)
ØØA B
;
ØØB C
}
∞∞ 	
public
±± 
async
±± 
Task
±± 
<
±± 
bool
±± 
>
±± %
ChangeStatusProfileGame
±±  7
(
±±7 8
int
±±8 ;
	idProfile
±±< E
,
±±E F
bool
±±G K
isPlayerInGame
±±L Z
,
±±Z [
int
±±\ _
idGame
±±` f
)
±±f g
{
≤≤ 	
Console
≥≥ 
.
≥≥ 
	WriteLine
≥≥ 
(
≥≥ 
$str
≥≥ 7
)
≥≥7 8
;
≥≥8 9
ProfileGame
µµ 
profileGameRecord
µµ )
=
µµ* +
await
µµ, 1
repositoryManager
µµ2 C
.
µµC D#
ProfileGameRepository
µµD Y
.
µµY Z'
IsPlayerJoinedToGameAsync
µµZ s
(
µµs t
	idProfile
µµt }
,
µµ} ~
idGameµµ Ö
)µµÖ Ü
;µµÜ á
Profile
∂∂ 
profileRecord
∂∂ !
=
∂∂" #
await
∂∂$ )
repositoryManager
∂∂* ;
.
∂∂; <
ProfileRepository
∂∂< M
.
∂∂M N!
FindEntityByIdAsync
∂∂N a
(
∂∂a b
	idProfile
∂∂b k
)
∂∂k l
;
∂∂l m
if
∏∏ 
(
∏∏ 
profileGameRecord
∏∏ !
!=
∏∏" $
null
∏∏% )
&&
∏∏* ,
profileRecord
∏∏- :
!=
∏∏; =
null
∏∏> B
)
∏∏B C
{
ππ 
profileGameRecord
∫∫ !
.
∫∫! "
IsPlayerInGame
∫∫" 0
=
∫∫1 2
isPlayerInGame
∫∫3 A
;
∫∫A B
profileRecord
ªª 
.
ªª 
IsOnline
ªª &
=
ªª' (
isPlayerInGame
ªª) 7
;
ªª7 8
await
ºº 
repositoryManager
ºº (
.
ºº( )
	SaveAsync
ºº) 2
(
ºº2 3
)
ºº3 4
;
ºº4 5
}
ΩΩ 
return
ææ 
true
ææ 
;
ææ 
}
øø 	
public
¡¡ 
async
¡¡ 
Task
¡¡ 
<
¡¡  
OperationResultDto
¡¡ ,
>
¡¡, -%
QuitGameInDatabaseAsync
¡¡. E
(
¡¡E F
GameDto
¡¡F M
gameClientDto
¡¡N [
,
¡¡[ \

ProfileDto
¡¡] g
profileClientDto
¡¡h x
)
¡¡x y
{
¬¬ 	
Console
√√ 
.
√√ 
	WriteLine
√√ 
(
√√ 
$str
√√ 7
)
√√7 8
;
√√8 9
using
ƒƒ 
(
ƒƒ "
DbContextTransaction
ƒƒ '
gameTransaction
ƒƒ( 7
=
ƒƒ8 9
await
ƒƒ: ?
repositoryManager
ƒƒ@ Q
.
ƒƒQ R#
StartTransactionAsync
ƒƒR g
(
ƒƒg h
)
ƒƒh i
)
ƒƒi j
{
≈≈ 
Profile
∆∆ 
profileRecord
∆∆ %
=
∆∆& '
await
∆∆( -
repositoryManager
∆∆. ?
.
∆∆? @
ProfileRepository
∆∆@ Q
.
∆∆Q R!
FindEntityByIdAsync
∆∆R e
(
∆∆e f
(
∆∆f g
int
∆∆g j
)
∆∆j k
profileClientDto
∆∆k {
.
∆∆{ |
Id
∆∆| ~
)
∆∆~ 
;∆∆ Ä
if
«« 
(
«« 
profileRecord
«« !
!=
««" $
null
««% )
&&
««* ,
await
««- 2
SubstractPlayers
««3 C
(
««C D
gameClientDto
««D Q
,
««Q R
(
««S T
int
««T W
)
««W X
profileClientDto
««X h
.
««h i
Id
««i k
)
««k l
)
««l m
{
»» 
await
…… &
RemoveDisconnectedPlayer
…… 2
(
……2 3
(
……3 4
int
……4 7
)
……7 8
gameClientDto
……8 E
.
……E F
Id
……F H
,
……H I
(
……J K
int
……K N
)
……N O
profileClientDto
……O _
.
……_ `
Id
……` b
)
……b c
;
……c d
await
   
repositoryManager
   +
.
  + ,
	SaveAsync
  , 5
(
  5 6
)
  6 7
;
  7 8
gameTransaction
ÀÀ #
.
ÀÀ# $
Commit
ÀÀ$ *
(
ÀÀ* +
)
ÀÀ+ ,
;
ÀÀ, -
return
ÃÃ 
new
ÃÃ  
OperationResultDto
ÃÃ 1
(
ÃÃ1 2
true
ÃÃ2 6
,
ÃÃ6 7
LanguageUtilities
ÃÃ8 I
.
ÃÃI J
MessageSuccess
ÃÃJ X
(
ÃÃX Y
profileClientDto
ÃÃY i
.
ÃÃi j
PreferredLanguage
ÃÃj {
)
ÃÃ{ |
)
ÃÃ| }
;
ÃÃ} ~
}
ÕÕ 
}
ŒŒ 
return
œœ 
new
œœ  
OperationResultDto
œœ )
(
œœ) *
false
œœ* /
,
œœ/ 0
LanguageUtilities
œœ1 B
.
œœB C%
MessageUnableToSaveData
œœC Z
(
œœZ [
profileClientDto
œœ[ k
.
œœk l
PreferredLanguage
œœl }
)
œœ} ~
)
œœ~ 
;œœ Ä
}
–– 	
public
““ 
async
““ 
Task
““ 
<
““ 
bool
““ 
>
““ &
ChangeGuestAccountStatus
““  8
(
““8 9
int
““9 <
guestAccountId
““= K
,
““K L
bool
““M Q
isActive
““R Z
,
““Z [
int
““\ _
gameId
““` f
)
““f g
{
”” 	
Console
‘‘ 
.
‘‘ 
	WriteLine
‘‘ 
(
‘‘ 
$str
‘‘ 8
)
‘‘8 9
;
‘‘9 :
GuestAccount
÷÷  
guestAccountRecord
÷÷ +
=
÷÷, -
await
÷÷. 3
repositoryManager
÷÷4 E
.
÷÷E F$
GuestAccountRepository
÷÷F \
.
÷÷\ ]!
FindEntityByIdAsync
÷÷] p
(
÷÷p q
guestAccountId
÷÷q 
)÷÷ Ä
;÷÷Ä Å
GuestAccountGame
◊◊ $
guestAccountGameRecord
◊◊ 3
=
◊◊4 5
await
◊◊6 ;
repositoryManager
◊◊< M
.
◊◊M N(
GuestAccountGameRepository
◊◊N h
.
◊◊h i.
IsGuestAccountJoinedToGameAsync◊◊i à
(◊◊à â
guestAccountId◊◊â ó
,◊◊ó ò
gameId◊◊ô ü
)◊◊ü †
;◊◊† °
if
ÿÿ 
(
ÿÿ  
guestAccountRecord
ÿÿ "
!=
ÿÿ# %
null
ÿÿ& *
&&
ÿÿ+ -$
guestAccountGameRecord
ÿÿ. D
!=
ÿÿE G
null
ÿÿH L
)
ÿÿL M
{
ŸŸ  
guestAccountRecord
⁄⁄ "
.
⁄⁄" #
IsActive
⁄⁄# +
=
⁄⁄, -
isActive
⁄⁄. 6
;
⁄⁄6 7$
guestAccountGameRecord
€€ &
.
€€& '
IsPlayerInGame
€€' 5
=
€€6 7
isActive
€€8 @
;
€€@ A
await
‹‹ 
repositoryManager
‹‹ '
.
‹‹' (
	SaveAsync
‹‹( 1
(
‹‹1 2
)
‹‹2 3
;
‹‹3 4
return
›› 
true
›› 
;
›› 
}
ﬁﬁ 
return
ﬂﬂ 
false
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
public
‚‚ 
async
‚‚ 
Task
‚‚ 
<
‚‚  
OperationResultDto
‚‚ ,
>
‚‚, -4
&QuitGameAsaGuestAccountInDatabaseAsync
‚‚. T
(
‚‚T U
GameDto
‚‚U \
gameClientDto
‚‚] j
,
‚‚j k
GuestAccountDto
‚‚l {$
guestAccountClientDto‚‚| ë
)‚‚ë í
{
„„ 	
Console
‰‰ 
.
‰‰ 
	WriteLine
‰‰ 
(
‰‰ 
$str
‰‰ F
)
‰‰F G
;
‰‰G H
using
ÂÂ 
(
ÂÂ "
DbContextTransaction
ÂÂ '
gameTransaction
ÂÂ( 7
=
ÂÂ8 9
await
ÂÂ: ?
repositoryManager
ÂÂ@ Q
.
ÂÂQ R#
StartTransactionAsync
ÂÂR g
(
ÂÂg h
)
ÂÂh i
)
ÂÂi j
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
await
ÁÁ 
SubstractPlayers
ÁÁ *
(
ÁÁ* +
gameClientDto
ÁÁ+ 8
,
ÁÁ8 9
(
ÁÁ: ;
int
ÁÁ; >
)
ÁÁ> ?#
guestAccountClientDto
ÁÁ? T
.
ÁÁT U
Id
ÁÁU W
)
ÁÁW X
)
ÁÁX Y
{
ËË 
await
ÈÈ &
RemoveDisconnectedPlayer
ÈÈ 2
(
ÈÈ2 3
(
ÈÈ3 4
int
ÈÈ4 7
)
ÈÈ7 8
gameClientDto
ÈÈ8 E
.
ÈÈE F
Id
ÈÈF H
,
ÈÈH I
(
ÈÈJ K
int
ÈÈK N
)
ÈÈN O#
guestAccountClientDto
ÈÈO d
.
ÈÈd e
Id
ÈÈe g
)
ÈÈg h
;
ÈÈh i
await
ÍÍ 
repositoryManager
ÍÍ +
.
ÍÍ+ ,
	SaveAsync
ÍÍ, 5
(
ÍÍ5 6
)
ÍÍ6 7
;
ÍÍ7 8
gameTransaction
ÎÎ #
.
ÎÎ# $
Commit
ÎÎ$ *
(
ÎÎ* +
)
ÎÎ+ ,
;
ÎÎ, -
return
ÏÏ 
new
ÏÏ  
OperationResultDto
ÏÏ 1
(
ÏÏ1 2
true
ÏÏ2 6
,
ÏÏ6 7
LanguageUtilities
ÏÏ8 I
.
ÏÏI J
MessageSuccess
ÏÏJ X
(
ÏÏX Y#
guestAccountClientDto
ÏÏY n
.
ÏÏn o 
PreferredLanguageÏÏo Ä
)ÏÏÄ Å
)ÏÏÅ Ç
;ÏÏÇ É
}
ÌÌ 
return
ÓÓ 
new
ÓÓ  
OperationResultDto
ÓÓ -
(
ÓÓ- .
false
ÓÓ. 3
,
ÓÓ3 4
LanguageUtilities
ÓÓ5 F
.
ÓÓF G%
MessageUnableToSaveData
ÓÓG ^
(
ÓÓ^ _#
guestAccountClientDto
ÓÓ_ t
.
ÓÓt u 
PreferredLanguageÓÓu Ü
)ÓÓÜ á
)ÓÓá à
;ÓÓà â
}
ÔÔ 
}
 	
public
ÚÚ 
async
ÚÚ 
Task
ÚÚ 
<
ÚÚ 
bool
ÚÚ 
>
ÚÚ *
ExpelPlayerAsAdminInDataBase
ÚÚ  <
(
ÚÚ< =
ExpelPlayerDto
ÚÚ= K
expelPlayerDto
ÚÚL Z
,
ÚÚZ [
GameDto
ÚÚ\ c
gameClientDto
ÚÚd q
,
ÚÚq r
int
ÚÚs v
idPlayer
ÚÚw 
)ÚÚ Ä
{
ÛÛ 	
Console
ÙÙ 
.
ÙÙ 
	WriteLine
ÙÙ 
(
ÙÙ 
$str
ÙÙ <
)
ÙÙ< =
;
ÙÙ= >
bool
ıı 
isSuccessExpel
ıı 
=
ıı  !
false
ıı" '
;
ıı' (
if
˜˜ 
(
˜˜ 
await
˜˜ 
serviceManager
˜˜ $
.
˜˜$ %
GameService
˜˜% 0
.
˜˜0 1
IsAdminById
˜˜1 <
(
˜˜< =
idPlayer
˜˜= E
,
˜˜E F
(
˜˜G H
int
˜˜H K
)
˜˜K L
gameClientDto
˜˜L Y
.
˜˜Y Z
Id
˜˜Z \
)
˜˜\ ]
&&
˜˜^ `
expelPlayerDto
˜˜a o
.
˜˜o p
IdPlayerToExpel
˜˜p 
!=˜˜Ä Ç
idPlayer˜˜É ã
&&˜˜å é&
connectedPlayersByGame˜˜è •
.˜˜• ¶
ContainsKey˜˜¶ ±
(˜˜± ≤
(˜˜≤ ≥
int˜˜≥ ∂
)˜˜∂ ∑
gameClientDto˜˜∑ ƒ
.˜˜ƒ ≈
Id˜˜≈ «
)˜˜« »
)˜˜» …
{
¯¯ 
await
˘˘ #
ExpelRegisteredPlayer
˘˘ +
(
˘˘+ ,
expelPlayerDto
˘˘, :
.
˘˘: ;
IdPlayerToExpel
˘˘; J
,
˘˘J K
gameClientDto
˘˘L Y
,
˘˘Y Z
expelPlayerDto
˘˘[ i
.
˘˘i j
Reason
˘˘j p
)
˘˘p q
;
˘˘q r
await
˙˙ 
ExpelGuestPlayer
˙˙ &
(
˙˙& '
expelPlayerDto
˙˙' 5
.
˙˙5 6
IdPlayerToExpel
˙˙6 E
,
˙˙E F
gameClientDto
˙˙G T
,
˙˙T U
expelPlayerDto
˙˙V d
.
˙˙d e
Reason
˙˙e k
)
˙˙k l
;
˙˙l m
isSuccessExpel
˚˚ 
=
˚˚  
true
˚˚! %
;
˚˚% &
}
¸¸ 
return
˛˛ 
isSuccessExpel
˛˛ !
;
˛˛! "
}
ˇˇ 	
private
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
bool
ÅÅ 
>
ÅÅ  #
ExpelRegisteredPlayer
ÅÅ! 6
(
ÅÅ6 7
int
ÅÅ7 :
idPlayerToExpel
ÅÅ; J
,
ÅÅJ K
GameDto
ÅÅL S
gameClientDto
ÅÅT a
,
ÅÅa b
string
ÅÅc i
reason
ÅÅj p
)
ÅÅp q
{
ÇÇ 	
Console
ÉÉ 
.
ÉÉ 
	WriteLine
ÉÉ 
(
ÉÉ 
$str
ÉÉ 5
)
ÉÉ5 6
;
ÉÉ6 7
bool
ÖÖ 
isSuccessExpel
ÖÖ 
=
ÖÖ  !
false
ÖÖ" '
;
ÖÖ' (
ConnectedPlayer
ÜÜ 
profileToExpel
ÜÜ *
=
ÜÜ+ , 
GetConnectedPlayer
ÜÜ- ?
(
ÜÜ? @
(
ÜÜ@ A
int
ÜÜA D
)
ÜÜD E
gameClientDto
ÜÜE R
.
ÜÜR S
Id
ÜÜS U
,
ÜÜU V
idPlayerToExpel
ÜÜW f
)
ÜÜf g
;
ÜÜg h
Game
áá 

gameRecord
áá 
=
áá 
await
áá #
repositoryManager
áá$ 5
.
áá5 6
GameRepository
áá6 D
.
ááD E!
FindEntityByIdAsync
ááE X
(
ááX Y
(
ááY Z
int
ááZ ]
)
áá] ^
gameClientDto
áá^ k
.
áák l
Id
áál n
)
áán o
;
ááo p
if
ââ 
(
ââ 
profileToExpel
ââ 
!=
ââ !
null
ââ" &
&&
ââ' )
profileToExpel
ââ* 8
.
ââ8 9
profileClientDto
ââ9 I
!=
ââJ L
null
ââM Q
&&
ââR T

gameRecord
ââU _
!=
ââ` b
null
ââc g
)
ââg h
{
ää 
try
ãã 
{
åå 
if
çç 
(
çç 
(
çç 
(
çç "
ICommunicationObject
çç .
)
çç. /
profileToExpel
çç/ =
.
çç= >
gameCallback
çç> J
)
ççJ K
.
ççK L
State
ççL Q
==
ççR T 
CommunicationState
ççU g
.
ççg h
Opened
ççh n
)
ççn o
{
éé 
profileToExpel
èè &
.
èè& '
gameCallback
èè' 3
.
èè3 4#
NotifyPlayerExpulsion
èè4 I
(
èèI J
LanguageUtilities
èèJ [
.
èè[ \ 
MessageExpelPlayer
èè\ n
(
èèn o
profileToExpel
èèo }
.
èè} ~
profileClientDtoèè~ é
.èèé è!
PreferredLanguageèèè †
)èè† °
,èè° ¢
reasonèè£ ©
)èè© ™
;èè™ ´-
SendBroadcastMessageExpelPlayer
êê 7
(
êê7 8
gameClientDto
êê8 E
,
êêE F
profileToExpel
êêG U
)
êêU V
;
êêV W
await
ëë %
QuitGameInDatabaseAsync
ëë 5
(
ëë5 6
gameClientDto
ëë6 C
,
ëëC D
profileToExpel
ëëE S
.
ëëS T
profileClientDto
ëëT d
)
ëëd e
;
ëëe f
isSuccessExpel
íí &
=
íí' (
true
íí) -
;
íí- .
}
ìì 
}
îî 
catch
ïï 
(
ïï %
ObjectDisposedException
ïï .
ex
ïï/ 1
)
ïï1 2
{
ññ 
Log
óó 
.
óó 
Error
óó 
(
óó 
ex
óó  
,
óó  !
ex
óó" $
.
óó$ %
Source
óó% +
)
óó+ ,
;
óó, -
}
òò 
catch
ôô 
(
ôô $
CommunicationException
ôô -
ex
ôô. 0
)
ôô0 1
{
öö 
Log
õõ 
.
õõ 
Error
õõ 
(
õõ 
ex
õõ  
,
õõ  !
ex
õõ" $
.
õõ$ %
Source
õõ% +
)
õõ+ ,
;
õõ, -
}
úú 
catch
ùù 
(
ùù 
	Exception
ùù  
ex
ùù! #
)
ùù# $
{
ûû 
Log
üü 
.
üü 
Error
üü 
(
üü 
ex
üü  
,
üü  !
ex
üü" $
.
üü$ %
Source
üü% +
)
üü+ ,
;
üü, -
}
†† 
}
°° 
else
¢¢ 
if
¢¢ 
(
¢¢ 
profileToExpel
¢¢ #
==
¢¢$ &
null
¢¢' +
)
¢¢+ ,
{
££ 
await
§§ &
RemoveDisconnectedPlayer
§§ .
(
§§. /
(
§§/ 0
int
§§0 3
)
§§3 4
gameClientDto
§§4 A
.
§§A B
Id
§§B D
,
§§D E
idPlayerToExpel
§§F U
)
§§U V
;
§§V W
}
•• 
return
¶¶ 
isSuccessExpel
¶¶ !
;
¶¶! "
}
ßß 	
private
©© 
async
©© 
Task
©© 
<
©© 
bool
©© 
>
©©  
ExpelGuestPlayer
©©! 1
(
©©1 2
int
©©2 5
idPlayerToExpel
©©6 E
,
©©E F
GameDto
©©G N
gameClientDto
©©O \
,
©©\ ]
string
©©^ d
reason
©©e k
)
©©k l
{
™™ 	
Console
´´ 
.
´´ 
	WriteLine
´´ 
(
´´ 
$str
´´ 0
)
´´0 1
;
´´1 2
bool
¨¨ 
isSuccessExpel
¨¨ 
=
¨¨  !
false
¨¨" '
;
¨¨' (
ConnectedPlayer
≠≠ 
guestToExpel
≠≠ (
=
≠≠) * 
GetConnectedPlayer
≠≠+ =
(
≠≠= >
(
≠≠> ?
int
≠≠? B
)
≠≠B C
gameClientDto
≠≠C P
.
≠≠P Q
Id
≠≠Q S
,
≠≠S T
idPlayerToExpel
≠≠U d
)
≠≠d e
;
≠≠e f
if
ØØ 
(
ØØ 
guestToExpel
ØØ 
!=
ØØ 
null
ØØ  $
&&
ØØ% '
guestToExpel
ØØ( 4
.
ØØ4 5
guestAccountDto
ØØ5 D
!=
ØØE G
null
ØØH L
)
ØØL M
{
∞∞ 
try
±± 
{
≤≤ 
if
≥≥ 
(
≥≥ 
(
≥≥ 
(
≥≥ "
ICommunicationObject
≥≥ .
)
≥≥. /
guestToExpel
≥≥/ ;
.
≥≥; <
gameCallback
≥≥< H
)
≥≥H I
.
≥≥I J
State
≥≥J O
==
≥≥P R 
CommunicationState
≥≥S e
.
≥≥e f
Opened
≥≥f l
)
≥≥l m
{
¥¥ 
guestToExpel
µµ $
.
µµ$ %
gameCallback
µµ% 1
.
µµ1 2#
NotifyPlayerExpulsion
µµ2 G
(
µµG H
LanguageUtilities
µµH Y
.
µµY Z 
MessageExpelPlayer
µµZ l
(
µµl m
guestToExpel
µµm y
.
µµy z
guestAccountDtoµµz â
.µµâ ä!
PreferredLanguageµµä õ
)µµõ ú
,µµú ù
reasonµµû §
)µµ§ •
;µµ• ¶-
SendBroadcastMessageExpelPlayer
∂∂ 7
(
∂∂7 8
gameClientDto
∂∂8 E
,
∂∂E F
guestToExpel
∂∂G S
)
∂∂S T
;
∂∂T U
await
∑∑ 4
&QuitGameAsaGuestAccountInDatabaseAsync
∑∑ D
(
∑∑D E
gameClientDto
∑∑E R
,
∑∑R S
guestToExpel
∑∑T `
.
∑∑` a
guestAccountDto
∑∑a p
)
∑∑p q
;
∑∑q r
isSuccessExpel
∏∏ &
=
∏∏' (
true
∏∏) -
;
∏∏- .
}
ππ 
}
∫∫ 
catch
ªª 
(
ªª %
ObjectDisposedException
ªª .
ex
ªª/ 1
)
ªª1 2
{
ºº 
Log
ΩΩ 
.
ΩΩ 
Error
ΩΩ 
(
ΩΩ 
ex
ΩΩ  
,
ΩΩ  !
ex
ΩΩ" $
.
ΩΩ$ %
Source
ΩΩ% +
)
ΩΩ+ ,
;
ΩΩ, -
}
ææ 
catch
øø 
(
øø $
CommunicationException
øø -
ex
øø. 0
)
øø0 1
{
¿¿ 
Log
¡¡ 
.
¡¡ 
Error
¡¡ 
(
¡¡ 
ex
¡¡  
,
¡¡  !
ex
¡¡" $
.
¡¡$ %
Source
¡¡% +
)
¡¡+ ,
;
¡¡, -
}
¬¬ 
catch
√√ 
(
√√ 
	Exception
√√  
ex
√√! #
)
√√# $
{
ƒƒ 
Log
≈≈ 
.
≈≈ 
Error
≈≈ 
(
≈≈ 
ex
≈≈  
,
≈≈  !
ex
≈≈" $
.
≈≈$ %
Source
≈≈% +
)
≈≈+ ,
;
≈≈, -
}
∆∆ 
}
«« 
return
»» 
isSuccessExpel
»» !
;
»»! "
}
…… 	
public
ÃÃ 
void
ÃÃ $
SetConnectedPlayerList
ÃÃ *
(
ÃÃ* +
ConnectedPlayer
ÃÃ+ :
	newPlayer
ÃÃ; D
,
ÃÃD E
Game
ÃÃF J

gameRecord
ÃÃK U
)
ÃÃU V
{
ÕÕ 	
Console
ŒŒ 
.
ŒŒ 
	WriteLine
ŒŒ 
(
ŒŒ 
$str
ŒŒ 6
)
ŒŒ6 7
;
ŒŒ7 8
Console
œœ 
.
œœ 
	WriteLine
œœ 
(
œœ 
$str
œœ ,
+
œœ- .
	newPlayer
œœ/ 8
.
œœ8 9
profileClientDto
œœ9 I
?
œœI J
.
œœJ K
Name
œœK O
+
œœP Q
$str
œœR U
+
œœV W
	newPlayer
œœX a
.
œœa b
guestAccountDto
œœb q
?
œœq r
.
œœr s
Name
œœs w
+
œœx y
$str
œœz }
)
œœ} ~
;
œœ~ 
if
–– 
(
–– 
!
–– $
connectedPlayersByGame
–– '
.
––' (
ContainsKey
––( 3
(
––3 4

gameRecord
––4 >
.
––> ?
Id
––? A
)
––A B
)
––B C
{
—— $
connectedPlayersByGame
““ &
[
““& '

gameRecord
““' 1
.
““1 2
Id
““2 4
]
““4 5
=
““6 7
new
““8 ;
ConcurrentBag
““< I
<
““I J
ConnectedPlayer
““J Y
>
““Y Z
(
““Z [
)
““[ \
;
““\ ]
}
”” $
connectedPlayersByGame
‘‘ "
[
‘‘" #

gameRecord
‘‘# -
.
‘‘- .
Id
‘‘. 0
]
‘‘0 1
.
‘‘1 2
Add
‘‘2 5
(
‘‘5 6
	newPlayer
‘‘6 ?
)
‘‘? @
;
‘‘@ A
}
’’ 	
private
◊◊ 
bool
◊◊ 
IsNewPlayer
◊◊  
(
◊◊  !
ConnectedPlayer
◊◊! 0
	newPlayer
◊◊1 :
,
◊◊: ;
int
◊◊< ?
gameId
◊◊@ F
)
◊◊F G
{
ÿÿ 	
Console
ŸŸ 
.
ŸŸ 
	WriteLine
ŸŸ 
(
ŸŸ 
$str
ŸŸ +
)
ŸŸ+ ,
;
ŸŸ, -
return
€€ 
(
€€ 
	newPlayer
€€ 
.
€€ 
profileClientDto
€€ .
!=
€€/ 1
null
€€2 6
||
€€7 9
	newPlayer
€€: C
.
€€C D
guestAccountDto
€€D S
!=
€€T V
null
€€W [
)
€€[ \
&&
€€] _
!
‹‹ $
connectedPlayersByGame
‹‹ *
[
‹‹* +
gameId
‹‹+ 1
]
‹‹1 2
.
‹‹2 3
Any
‹‹3 6
(
‹‹6 7
player
‹‹7 =
=>
‹‹> @
(
‹‹A B
player
‹‹B H
.
‹‹H I
profileClientDto
‹‹I Y
!=
‹‹Z \
null
‹‹] a
&&
‹‹b d
	newPlayer
‹‹e n
.
‹‹n o
profileClientDto
‹‹o 
!=‹‹Ä Ç
null‹‹É á
&&
›› 
player
›› 
.
›› 
profileClientDto
›› -
.
››- .
Id
››. 0
==
››1 3
	newPlayer
››4 =
.
››= >
profileClientDto
››> N
.
››N O
Id
››O Q
)
››Q R
||
››S U
(
››V W
player
››W ]
.
››] ^
guestAccountDto
››^ m
!=
››n p
null
››q u
&&
››v x
	newPlayer››y Ç
.››Ç É
guestAccountDto››É í
!=››ì ï
null››ñ ö
&&
ﬁﬁ 
player
ﬁﬁ 
.
ﬁﬁ 
guestAccountDto
ﬁﬁ ,
.
ﬁﬁ, -
Id
ﬁﬁ- /
==
ﬁﬁ0 2
	newPlayer
ﬁﬁ3 <
.
ﬁﬁ< =
guestAccountDto
ﬁﬁ= L
.
ﬁﬁL M
Id
ﬁﬁM O
)
ﬁﬁO P
)
ﬁﬁP Q
;
ﬁﬁQ R
}
ﬂﬂ 	
public
·· 
static
·· 
async
·· 
Task
··  
<
··  !
GuestAccountGame
··! 1
>
··1 22
$CreateNewRecordGuestAccountGameAsync
··3 W
(
··W X
GuestAccountDto
··X g#
guestAccountClientDto
··h }
,
··} ~
Game·· É

gameRecord··Ñ é
)··é è
{
‚‚ 	
Console
„„ 
.
„„ 
	WriteLine
„„ 
(
„„ 
$str
„„ D
)
„„D E
;
„„E F
GuestAccountGame
‰‰  
guestAccountRecord
‰‰ /
=
‰‰0 1
new
‰‰2 5
GuestAccountGame
‰‰6 F
(
‰‰F G
)
‰‰G H
;
‰‰H I 
guestAccountRecord
ÂÂ 
.
ÂÂ 
GuestAccountId
ÂÂ -
=
ÂÂ. /
(
ÂÂ0 1
int
ÂÂ1 4
)
ÂÂ4 5#
guestAccountClientDto
ÂÂ5 J
.
ÂÂJ K
Id
ÂÂK M
;
ÂÂM N 
guestAccountRecord
ÊÊ 
.
ÊÊ 
GameId
ÊÊ %
=
ÊÊ& '

gameRecord
ÊÊ( 2
.
ÊÊ2 3
Id
ÊÊ3 5
;
ÊÊ5 6
return
ËË 
await
ËË 
Task
ËË 
.
ËË 

FromResult
ËË (
(
ËË( ) 
guestAccountRecord
ËË) ;
)
ËË; <
;
ËË< =
}
ÈÈ 	
public
ÎÎ 
static
ÎÎ 
GameDto
ÎÎ 
CreateGameDto
ÎÎ +
(
ÎÎ+ ,
Game
ÎÎ, 0

gameRecord
ÎÎ1 ;
)
ÎÎ; <
{
ÏÏ 	
Console
ÌÌ 
.
ÌÌ 
	WriteLine
ÌÌ 
(
ÌÌ 
$str
ÌÌ -
)
ÌÌ- .
;
ÌÌ. /
GameDto
ÔÔ 
gameDto
ÔÔ 
=
ÔÔ 
new
ÔÔ !
GameDto
ÔÔ" )
(
ÔÔ) *
)
ÔÔ* +
;
ÔÔ+ ,
if
ÒÒ 
(
ÒÒ 

gameRecord
ÒÒ 
!=
ÒÒ 
null
ÒÒ !
)
ÒÒ! "
{
ÚÚ 
gameDto
ÛÛ 
.
ÛÛ 
Id
ÛÛ 
=
ÛÛ 

gameRecord
ÛÛ '
.
ÛÛ' (
Id
ÛÛ( *
;
ÛÛ* +
gameDto
ÙÙ 
.
ÙÙ 
	AccessKey
ÙÙ !
=
ÙÙ" #

gameRecord
ÙÙ$ .
.
ÙÙ. /
	AccessKey
ÙÙ/ 8
;
ÙÙ8 9
gameDto
ıı 
.
ıı 
Name
ıı 
=
ıı 

gameRecord
ıı )
.
ıı) *
Name
ıı* .
;
ıı. /
gameDto
ˆˆ 
.
ˆˆ 
IdAdminGame
ˆˆ #
=
ˆˆ$ %

gameRecord
ˆˆ& 0
.
ˆˆ0 1
AdminGameId
ˆˆ1 <
;
ˆˆ< =
}
˜˜ 
return
˘˘ 
gameDto
˘˘ 
;
˘˘ 
}
˙˙ 	
public
˚˚ 
static
˚˚ 
string
˚˚ 
GenerateAccessKey
˚˚ .
(
˚˚. /

ProfileDto
˚˚/ 9
profile
˚˚: A
)
˚˚A B
{
¸¸ 	
Console
˝˝ 
.
˝˝ 
	WriteLine
˝˝ 
(
˝˝ 
$str
˝˝ 1
)
˝˝1 2
;
˝˝2 3
const
˛˛ 
string
˛˛ 
alphabet
˛˛ !
=
˛˛" #(
AccountValidationUtilities
˛˛$ >
.
˛˛> ?
ALPHABET_EN
˛˛? J
;
˛˛J K
StringBuilder
ˇˇ 
accessKeyBuilder
ˇˇ *
=
ˇˇ+ ,
new
ˇˇ- 0
StringBuilder
ˇˇ1 >
(
ˇˇ> ?
)
ˇˇ? @
;
ˇˇ@ A
using
ÅÅ 
(
ÅÅ #
RandomNumberGenerator
ÅÅ (
randomNumber
ÅÅ) 5
=
ÅÅ6 7#
RandomNumberGenerator
ÅÅ8 M
.
ÅÅM N
Create
ÅÅN T
(
ÅÅT U
)
ÅÅU V
)
ÅÅV W
{
ÇÇ 
byte
ÉÉ 
[
ÉÉ 
]
ÉÉ 
arrayRandomNumber
ÉÉ (
=
ÉÉ) *
new
ÉÉ+ .
byte
ÉÉ/ 3
[
ÉÉ3 4(
AccountValidationUtilities
ÉÉ4 N
.
ÉÉN O
ACCESS_KEY_LENGTH
ÉÉO `
]
ÉÉ` a
;
ÉÉa b
randomNumber
ÑÑ 
.
ÑÑ 
GetBytes
ÑÑ %
(
ÑÑ% &
arrayRandomNumber
ÑÑ& 7
)
ÑÑ7 8
;
ÑÑ8 9
for
ÜÜ 
(
ÜÜ 
int
ÜÜ 
i
ÜÜ 
=
ÜÜ 
$num
ÜÜ 
;
ÜÜ 
i
ÜÜ  !
<
ÜÜ" #(
AccountValidationUtilities
ÜÜ$ >
.
ÜÜ> ?
ACCESS_KEY_LENGTH
ÜÜ? P
;
ÜÜP Q
i
ÜÜR S
++
ÜÜS U
)
ÜÜU V
{
áá 
accessKeyBuilder
àà $
.
àà$ %
Append
àà% +
(
àà+ ,
alphabet
àà, 4
[
àà4 5
arrayRandomNumber
àà5 F
[
ààF G
i
ààG H
]
ààH I
%
ààJ K
alphabet
ààL T
.
ààT U
Length
ààU [
]
àà[ \
)
àà\ ]
;
àà] ^
}
ââ 
accessKeyBuilder
ää  
.
ää  !
Append
ää! '
(
ää' ( 
CharacterUtilities
ää( :
.
ää: ;
STRING_CHAR_DASH
ää; K
)
ääK L
;
ääL M
accessKeyBuilder
ãã  
.
ãã  !
Append
ãã! '
(
ãã' (
profile
ãã( /
.
ãã/ 0
Id
ãã0 2
)
ãã2 3
;
ãã3 4
accessKeyBuilder
åå  
.
åå  !
Append
åå! '
(
åå' (
GameUtilities
åå( 5
.
åå5 6&
WORDS_DICTIONARY_ANIMALS
åå6 N
[
ååN O
arrayRandomNumber
ååO `
[
åå` a 
CharacterUtilities
ååa s
.
åås t#
FIRST_POSITION_ARRAYååt à
]ååà â
%ååä ã
GameUtilitiesååå ô
.ååô ö(
WORDS_DICTIONARY_ANIMALSååö ≤
.åå≤ ≥
Lengthåå≥ π
]ååπ ∫
)åå∫ ª
;ååª º
}
çç 
return
èè 
accessKeyBuilder
èè #
.
èè# $
ToString
èè$ ,
(
èè, -
)
èè- .
;
èè. /
}
êê 	
public
íí 
async
íí 
Task
íí 
ChangeStatusGame
íí *
(
íí* +
Game
íí+ /

gameRecord
íí0 :
,
íí: ;
string
íí< B
status
ííC I
)
ííI J
{
ìì 	
Console
îî 
.
îî 
	WriteLine
îî 
(
îî 
$str
îî 0
)
îî0 1
;
îî1 2

gameRecord
ïï 
.
ïï 
Status
ïï 
=
ïï 
status
ïï  &
;
ïï& '

gameRecord
ññ 
.
ññ 
NumberPlayers
ññ $
=
ññ% &
$num
ññ' (
;
ññ( )
await
óó 
repositoryManager
óó #
.
óó# $
	SaveAsync
óó$ -
(
óó- .
)
óó. /
;
óó/ 0
}
òò 	
public
öö 
async
öö 
Task
öö 
<
öö 
bool
öö 
>
öö '
VoteExpelPlayerInDataBase
öö  9
(
öö9 :
ExpelPlayerDto
öö: H
expelPlayerDto
ööI W
,
ööW X
int
ööY \
idPlayer
öö] e
,
ööe f
GameDto
öög n
gameClientDto
ööo |
)
öö| }
{
õõ 	
bool
úú 

isExpelled
úú 
=
úú 
false
úú #
;
úú# $
if
ûû 
(
ûû 
idPlayer
ûû 
!=
ûû 
expelPlayerDto
ûû *
.
ûû* +
IdPlayerToExpel
ûû+ :
)
ûû: ;
{
üü 
ConnectedPlayer
†† 
playerToExpel
††  -
=
††. / 
GetConnectedPlayer
††0 B
(
††B C
(
††C D
int
††D G
)
††G H
gameClientDto
††H U
.
††U V
Id
††V X
,
††X Y
expelPlayerDto
††Z h
.
††h i
IdPlayerToExpel
††i x
)
††x y
;
††y z
if
¢¢ 
(
¢¢ 
playerToExpel
¢¢ !
!=
¢¢" $
null
¢¢% )
&&
¢¢* ,
playerToExpel
¢¢- :
.
¢¢: ;
AddVote
¢¢; B
(
¢¢B C
idPlayer
¢¢C K
)
¢¢K L
)
¢¢L M
{
££ 
if
§§ 
(
§§ 
playerToExpel
§§ %
.
§§% &
profileClientDto
§§& 6
!=
§§7 9
null
§§: >
)
§§> ?
{
•• 
playerToExpel
¶¶ %
.
¶¶% &
profileClientDto
¶¶& 6
.
¶¶6 7
votesReceived
¶¶7 D
++
¶¶D F
;
¶¶F G
}
ßß 
else
®® 
if
®® 
(
®® 
playerToExpel
®® *
.
®®* +
guestAccountDto
®®+ :
!=
®®; =
null
®®> B
)
®®B C
{
©© 
playerToExpel
™™ %
.
™™% &
guestAccountDto
™™& 5
.
™™5 6
votesReceived
™™6 C
++
™™C E
;
™™E F
}
´´ 
int
≠≠ 
requiredVotes
≠≠ %
=
≠≠& '$
connectedPlayersByGame
≠≠( >
[
≠≠> ?
(
≠≠? @
int
≠≠@ C
)
≠≠C D
gameClientDto
≠≠D Q
.
≠≠Q R
Id
≠≠R T
]
≠≠T U
.
≠≠U V
Count
≠≠V [
/
≠≠\ ]
$num
≠≠^ _
+
≠≠` a
$num
≠≠b c
;
≠≠c d
if
ØØ 
(
ØØ 
playerToExpel
ØØ %
.
ØØ% &
votesReceived
ØØ& 3
.
ØØ3 4
Count
ØØ4 9
>=
ØØ: <
requiredVotes
ØØ= J
)
ØØJ K
{
∞∞ 
Game
≤≤ 

gameRecord
≤≤ '
=
≤≤( )
await
≤≤* /
repositoryManager
≤≤0 A
.
≤≤A B
GameRepository
≤≤B P
.
≤≤P Q!
FindEntityByIdAsync
≤≤Q d
(
≤≤d e
(
≤≤e f
int
≤≤f i
)
≤≤i j
gameClientDto
≤≤j w
.
≤≤w x
Id
≤≤x z
)
≤≤z {
;
≤≤{ |

isExpelled
¥¥ "
=
¥¥# $
await
¥¥% **
ExpelPlayerAsAdminInDataBase
¥¥+ G
(
¥¥G H
expelPlayerDto
¥¥H V
,
¥¥V W
gameClientDto
¥¥X e
,
¥¥e f

gameRecord
¥¥g q
.
¥¥q r
AdminGameId
¥¥r }
)
¥¥} ~
;
¥¥~ 
return
∂∂ 

isExpelled
∂∂ )
;
∂∂) *
}
∑∑ 
}
ππ 
}
∫∫ 
return
ºº 
true
ºº 
;
ºº 
}
ΩΩ 	
public
øø 
ConnectedPlayer
øø  
GetConnectedPlayer
øø 1
(
øø1 2
int
øø2 5
gameId
øø6 <
,
øø< =
int
øø> A
idPlayer
øøB J
)
øøJ K
{
¿¿ 	
Console
¡¡ 
.
¡¡ 
	WriteLine
¡¡ 
(
¡¡ 
$str
¡¡ 2
)
¡¡2 3
;
¡¡3 4
if
¬¬ 
(
¬¬ $
connectedPlayersByGame
¬¬ &
.
¬¬& '
TryGetValue
¬¬' 2
(
¬¬2 3
gameId
¬¬3 9
,
¬¬9 :
out
¬¬; >
ConcurrentBag
¬¬? L
<
¬¬L M
ConnectedPlayer
¬¬M \
>
¬¬\ ]
playersInGame
¬¬^ k
)
¬¬k l
&&
¬¬m o
playersInGame
¬¬p }
!=¬¬~ Ä
null¬¬Å Ö
&&¬¬Ü à
playersInGame¬¬â ñ
.¬¬ñ ó
Any¬¬ó ö
(¬¬ö õ
)¬¬õ ú
)¬¬ú ù
{
√√ 
return
ƒƒ 
playersInGame
ƒƒ $
.
ƒƒ$ %
FirstOrDefault
ƒƒ% 3
(
ƒƒ3 4
player
ƒƒ4 :
=>
ƒƒ; =
idPlayer
≈≈ 
!=
≈≈  
CharacterUtilities
≈≈  2
.
≈≈2 3
INT_VALUE_ZERO
≈≈3 A
&&
≈≈B D
(
∆∆ 
(
∆∆ 
player
∆∆ 
.
∆∆ 
profileClientDto
∆∆ -
!=
∆∆. 0
null
∆∆1 5
&&
∆∆6 8
player
∆∆9 ?
.
∆∆? @
profileClientDto
∆∆@ P
.
∆∆P Q
Id
∆∆Q S
==
∆∆T V
idPlayer
∆∆W _
)
∆∆_ `
||
∆∆a c
(
«« 
player
«« 
.
«« 
guestAccountDto
«« ,
!=
««- /
null
««0 4
&&
««5 7
player
««8 >
.
««> ?
guestAccountDto
««? N
.
««N O
Id
««O Q
==
««R T
idPlayer
««U ]
)
««] ^
)
««^ _
)
««_ `
;
««` a
}
»» 
return
…… 
null
…… 
;
…… 
}
   	
public
ÃÃ 
void
ÃÃ -
SendBroadcastMessageExpelPlayer
ÃÃ 3
(
ÃÃ3 4
GameDto
ÃÃ4 ;
gameClientDto
ÃÃ< I
,
ÃÃI J
ConnectedPlayer
ÃÃK Z
expelledPlayer
ÃÃ[ i
)
ÃÃi j
{
ÕÕ 	
Console
ŒŒ 
.
ŒŒ 
	WriteLine
ŒŒ 
(
ŒŒ 
$str
ŒŒ ?
)
ŒŒ? @
;
ŒŒ@ A
if
–– 
(
–– 
gameClientDto
–– 
==
––  
null
––! %
||
––& (
expelledPlayer
––) 7
==
––8 :
null
––; ?
||
––@ B
!
––C D$
connectedPlayersByGame
––D Z
.
––Z [
ContainsKey
––[ f
(
––f g
(
––g h
int
––h k
)
––k l
gameClientDto
––l y
.
––y z
Id
––z |
)
––| }
)
––} ~
{
—— 
return
““ 
;
““ 
}
”” 
ConcurrentBag
’’ 
<
’’ 
ConnectedPlayer
’’ )
>
’’) *
playersInGame
’’+ 8
=
’’9 :$
connectedPlayersByGame
’’; Q
[
’’Q R
(
’’R S
int
’’S V
)
’’V W
gameClientDto
’’W d
.
’’d e
Id
’’e g
]
’’g h
;
’’h i
	PlayerDto
◊◊ 
expelledPlayerDto
◊◊ '
=
◊◊( )
CreatePlayerDto
◊◊* 9
(
◊◊9 :
expelledPlayer
◊◊: H
)
◊◊H I
;
◊◊I J
foreach
ŸŸ 
(
ŸŸ 
ConnectedPlayer
ŸŸ $
player
ŸŸ% +
in
ŸŸ, .
playersInGame
ŸŸ/ <
)
ŸŸ< =
{
⁄⁄ %
TrySendBroadcastMessage
€€ '
(
€€' (
player
€€( .
,
€€. /
expelledPlayerDto
€€0 A
)
€€A B
;
€€B C
}
‹‹ 
}
›› 	
private
ﬂﬂ 
	PlayerDto
ﬂﬂ 
CreatePlayerDto
ﬂﬂ )
(
ﬂﬂ) *
ConnectedPlayer
ﬂﬂ* 9
expelledPlayer
ﬂﬂ: H
)
ﬂﬂH I
{
‡‡ 	
return
·· 
new
·· 
	PlayerDto
··  
{
‚‚ 

profileDto
„„ 
=
„„ 
expelledPlayer
„„ +
.
„„+ ,
profileClientDto
„„, <
,
„„< =
guestAccountDto
‰‰ 
=
‰‰  !
expelledPlayer
‰‰" 0
.
‰‰0 1
guestAccountDto
‰‰1 @
}
ÂÂ 
;
ÂÂ 
}
ÊÊ 	
private
ËË 
static
ËË 
void
ËË %
TrySendBroadcastMessage
ËË 3
(
ËË3 4
ConnectedPlayer
ËË4 C
player
ËËD J
,
ËËJ K
	PlayerDto
ËËL U
expelledPlayerDto
ËËV g
)
ËËg h
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
player
ÍÍ 
?
ÍÍ 
.
ÍÍ 
gameCallback
ÍÍ $
==
ÍÍ% '
null
ÍÍ( ,
)
ÍÍ, -
{
ÎÎ 
return
ÏÏ 
;
ÏÏ 
}
ÌÌ 
try
ÔÔ 
{
 
if
ÒÒ 
(
ÒÒ "
IsPlayerCallbackOpen
ÒÒ (
(
ÒÒ( )
player
ÒÒ) /
)
ÒÒ/ 0
)
ÒÒ0 1
{
ÚÚ 
player
ÛÛ 
.
ÛÛ 
gameCallback
ÛÛ '
.
ÛÛ' (#
BroadcastMessageExpel
ÛÛ( =
(
ÛÛ= >
expelledPlayerDto
ÛÛ> O
)
ÛÛO P
;
ÛÛP Q
}
ÙÙ 
}
ıı 
catch
ˆˆ 
(
ˆˆ %
ObjectDisposedException
ˆˆ *
ex
ˆˆ+ -
)
ˆˆ- .
{
˜˜ 
Log
¯¯ 
.
¯¯ 
Error
¯¯ 
(
¯¯ 
ex
¯¯ 
,
¯¯ 
ex
¯¯  
.
¯¯  !
Source
¯¯! '
)
¯¯' (
;
¯¯( )
player
˘˘ 
.
˘˘ 
gameCallback
˘˘ #
=
˘˘$ %
null
˘˘& *
;
˘˘* +
}
˙˙ 
catch
˚˚ 
(
˚˚ $
CommunicationException
˚˚ )
ex
˚˚* ,
)
˚˚, -
{
¸¸ 
Log
˝˝ 
.
˝˝ 
Error
˝˝ 
(
˝˝ 
ex
˝˝ 
,
˝˝ 
ex
˝˝  
.
˝˝  !
Source
˝˝! '
)
˝˝' (
;
˝˝( )
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
	Exception
ˇˇ 
ex
ˇˇ 
)
ˇˇ  
{
ÄÄ 
Log
ÅÅ 
.
ÅÅ 
Error
ÅÅ 
(
ÅÅ 
ex
ÅÅ 
,
ÅÅ 
ex
ÅÅ  
.
ÅÅ  !
Source
ÅÅ! '
)
ÅÅ' (
;
ÅÅ( )
}
ÇÇ 
}
ÉÉ 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
bool
ÖÖ 
>
ÖÖ 
IsAdminById
ÖÖ  +
(
ÖÖ+ ,
int
ÖÖ, /
idProfileClient
ÖÖ0 ?
,
ÖÖ? @
int
ÖÖA D
idGame
ÖÖE K
)
ÖÖK L
{
ÜÜ 	
Console
áá 
.
áá 
	WriteLine
áá 
(
áá 
$str
áá +
)
áá+ ,
;
áá, -
return
àà 
await
àà 
repositoryManager
àà *
.
àà* +
GameRepository
àà+ 9
.
àà9 :"
IsGameAdminByIdAsync
àà: N
(
ààN O
idProfileClient
ààO ^
,
àà^ _
idGame
àà` f
)
ààf g
;
ààg h
}
ââ 	
public
ãã 
Task
ãã 
<
ãã 0
"OperationResultListOfPlayersInGame
ãã 6
>
ãã6 7+
GetAllPlayersInGameInDataBase
ãã8 U
(
ããU V
GameDto
ããV ]
gameClientDto
ãã^ k
,
ããk l
string
ããm s 
preferredLanguageããt Ö
)ããÖ Ü
{
åå 	
Console
çç 
.
çç 
	WriteLine
çç 
(
çç 
$str
çç =
)
çç= >
;
çç> ?
if
éé 
(
éé $
connectedPlayersByGame
éé &
.
éé& '
TryGetValue
éé' 2
(
éé2 3
(
éé3 4
int
éé4 7
)
éé7 8
gameClientDto
éé8 E
.
ééE F
Id
ééF H
,
ééH I
out
ééJ M
ConcurrentBag
ééN [
<
éé[ \
ConnectedPlayer
éé\ k
>
éék l
playersInGame
éém z
)
ééz {
)
éé{ |
{
èè 
List
êê 
<
êê 
ConnectedPlayer
êê $
>
êê$ %
playersCopy
êê& 1
=
êê2 3
playersInGame
êê4 A
.
êêA B
ToList
êêB H
(
êêH I
)
êêI J
;
êêJ K
return
ëë 
Task
ëë 
.
ëë 

FromResult
ëë &
(
ëë& '
new
ëë' *0
"OperationResultListOfPlayersInGame
ëë+ M
(
ëëM N
true
íí 
,
íí 
LanguageUtilities
ìì %
.
ìì% &
MessageSuccess
ìì& 4
(
ìì4 5
preferredLanguage
ìì5 F
)
ììF G
,
ììG H(
GetRegisteredPlayersInGame
îî .
(
îî. /
playersCopy
îî/ :
)
îî: ;
,
îî; <*
GetGuestAccountPlayersInGame
ïï 0
(
ïï0 1
playersCopy
ïï1 <
)
ïï< =
)
ññ 
)
ññ 
;
ññ 
}
óó 
return
ôô 
Task
ôô 
.
ôô 

FromResult
ôô "
(
ôô" #
new
ôô# &0
"OperationResultListOfPlayersInGame
ôô' I
(
ôôI J
false
ôôJ O
,
ôôO P
LanguageUtilities
ôôQ b
.
ôôb c,
MessageUnableToFindInDataBaseôôc Ä
(ôôÄ Å!
preferredLanguageôôÅ í
)ôôí ì
)ôôì î
)ôôî ï
;ôôï ñ
}
öö 	
public
úú 
static
úú 
List
úú 
<
úú 

ProfileDto
úú %
>
úú% &(
GetRegisteredPlayersInGame
úú' A
(
úúA B
List
úúB F
<
úúF G
ConnectedPlayer
úúG V
>
úúV W
playersInGame
úúX e
)
úúe f
{
ùù 	
Console
ûû 
.
ûû 
	WriteLine
ûû 
(
ûû 
$str
ûû :
)
ûû: ;
;
ûû; <
List
üü 
<
üü 

ProfileDto
üü 
>
üü 
profileServerDtos
üü .
=
üü/ 0
new
üü1 4
List
üü5 9
<
üü9 :

ProfileDto
üü: D
>
üüD E
(
üüE F
)
üüF G
;
üüG H
try
†† 
{
°° 
if
¢¢ 
(
¢¢ 
playersInGame
¢¢ !
!=
¢¢" $
null
¢¢% )
)
¢¢) *
{
££ 
profileServerDtos
§§ %
=
§§& '
playersInGame
§§( 5
.
§§5 6
Where
§§6 ;
(
§§; <
playerConnected
§§< K
=>
§§L N
playerConnected
§§O ^
.
§§^ _
profileClientDto
§§_ o
!=
§§p r
null
§§s w
)
§§w x
.
§§x y
Select
§§y 
(§§ Ä
playerConnected§§Ä è
=>§§ê í
playerConnected§§ì ¢
.§§¢ £ 
profileClientDto§§£ ≥
)§§≥ ¥
.
•• 
ToList
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 
}
ßß 
catch
®® 
(
®® #
ArgumentNullException
®® (
ex
®®) +
)
®®+ ,
{
©© 
Log
™™ 
.
™™ 
Error
™™ 
(
™™ 
ex
™™ 
,
™™ 
ex
™™  
.
™™  !
Source
™™! '
)
™™' (
;
™™( )
}
´´ 
catch
¨¨ 
(
¨¨ 
	Exception
¨¨ 
ex
¨¨ 
)
¨¨  
{
≠≠ 
Log
ÆÆ 
.
ÆÆ 
Error
ÆÆ 
(
ÆÆ 
ex
ÆÆ 
,
ÆÆ 
ex
ÆÆ  
.
ÆÆ  !
Source
ÆÆ! '
)
ÆÆ' (
;
ÆÆ( )
}
ØØ 
return
±± 
profileServerDtos
±± $
;
±±$ %
}
≤≤ 	
public
¥¥ 
static
¥¥ 
List
¥¥ 
<
¥¥ 
GuestAccountDto
¥¥ *
>
¥¥* +*
GetGuestAccountPlayersInGame
¥¥, H
(
¥¥H I
List
¥¥I M
<
¥¥M N
ConnectedPlayer
¥¥N ]
>
¥¥] ^
playersInGame
¥¥_ l
)
¥¥l m
{
µµ 	
Console
∂∂ 
.
∂∂ 
	WriteLine
∂∂ 
(
∂∂ 
$str
∂∂ <
)
∂∂< =
;
∂∂= >
List
∑∑ 
<
∑∑ 
GuestAccountDto
∑∑  
>
∑∑  !$
guestAccountServerDtos
∑∑" 8
=
∑∑9 :
new
∑∑; >
List
∑∑? C
<
∑∑C D
GuestAccountDto
∑∑D S
>
∑∑S T
(
∑∑T U
)
∑∑U V
;
∑∑V W
try
∏∏ 
{
ππ 
if
∫∫ 
(
∫∫ 
playersInGame
∫∫ !
!=
∫∫" $
null
∫∫% )
)
∫∫) *
{
ªª $
guestAccountServerDtos
ºº *
=
ºº+ ,
playersInGame
ºº- :
.
ºº: ;
Where
ºº; @
(
ºº@ A
playerConnected
ººA P
=>
ººQ S
playerConnected
ººT c
.
ººc d
guestAccountDto
ººd s
!=
ººt v
null
ººw {
)
ºº{ |
.
ºº| }
Selectºº} É
(ººÉ Ñ
playerConnectedººÑ ì
=>
ΩΩ 
playerConnected
ΩΩ '
.
ΩΩ' (
guestAccountDto
ΩΩ( 7
)
ΩΩ7 8
.
ΩΩ8 9
ToList
ΩΩ9 ?
(
ΩΩ? @
)
ΩΩ@ A
;
ΩΩA B
}
ææ 
}
øø 
catch
¿¿ 
(
¿¿ #
ArgumentNullException
¿¿ (
ex
¿¿) +
)
¿¿+ ,
{
¡¡ 
Log
¬¬ 
.
¬¬ 
Error
¬¬ 
(
¬¬ 
ex
¬¬ 
,
¬¬ 
ex
¬¬  
.
¬¬  !
Source
¬¬! '
)
¬¬' (
;
¬¬( )
}
√√ 
catch
ƒƒ 
(
ƒƒ 
	Exception
ƒƒ 
ex
ƒƒ 
)
ƒƒ  
{
≈≈ 
Log
∆∆ 
.
∆∆ 
Error
∆∆ 
(
∆∆ 
ex
∆∆ 
,
∆∆ 
ex
∆∆  
.
∆∆  !
Source
∆∆! '
)
∆∆' (
;
∆∆( )
}
«« 
return
…… $
guestAccountServerDtos
…… )
;
……) *
}
   	
private
ÃÃ 
async
ÃÃ 
Task
ÃÃ ,
SendRemainingTimeToPlayerAsync
ÃÃ 9
(
ÃÃ9 :
int
ÃÃ: =
gameId
ÃÃ> D
,
ÃÃD E
ConnectedPlayer
ÃÃF U
player
ÃÃV \
)
ÃÃ\ ]
{
ÕÕ 	
Console
ŒŒ 
.
ŒŒ 
	WriteLine
ŒŒ 
(
ŒŒ 
$str
ŒŒ >
)
ŒŒ> ?
;
ŒŒ? @
await
–– 
Task
–– 
.
–– 
Run
–– 
(
–– 
(
–– 
)
–– 
=>
––  
{
—— 
if
““ 
(
““ &
gameCountdownToStartGame
““ ,
.
““, -
TryGetValue
““- 8
(
““8 9
gameId
““9 ?
,
““? @
out
““A D
int
““E H
timeRemaining
““I V
)
““V W
)
““W X
{
”” 
try
‘‘ 
{
’’ 
player
÷÷ 
.
÷÷ 
gameCallback
÷÷ +
?
÷÷+ ,
.
÷÷, -$
UpdateTimeWhenJoinGame
÷÷- C
(
÷÷C D
timeRemaining
÷÷D Q
)
÷÷Q R
;
÷÷R S
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
	Exception
ÿÿ $
ex
ÿÿ% '
)
ÿÿ' (
{
ŸŸ 
Log
⁄⁄ 
.
⁄⁄ 
Error
⁄⁄ !
(
⁄⁄! "
ex
⁄⁄" $
,
⁄⁄$ %
ex
⁄⁄& (
.
⁄⁄( )
Source
⁄⁄) /
)
⁄⁄/ 0
;
⁄⁄0 1
}
€€ 
}
‹‹ 
}
›› 
)
›› 
;
›› 
}
ﬁﬁ 	
private
‡‡ 
int
‡‡ 
CountPlayersReady
‡‡ %
(
‡‡% &
int
‡‡& )
gameId
‡‡* 0
)
‡‡0 1
{
·· 	
if
‚‚ 
(
‚‚ $
connectedPlayersByGame
‚‚ &
.
‚‚& '
TryGetValue
‚‚' 2
(
‚‚2 3
gameId
‚‚3 9
,
‚‚9 :
out
‚‚; >
var
‚‚? B
playersInGame
‚‚C P
)
‚‚P Q
)
‚‚Q R
{
„„ 
return
‰‰ 
playersInGame
‰‰ $
.
‰‰$ %
Count
‰‰% *
(
‰‰* +
player
‰‰+ 1
=>
‰‰2 4
player
‰‰5 ;
.
‰‰; <
IsReadyToPlay
‰‰< I
)
‰‰I J
;
‰‰J K
}
ÂÂ 
return
ÁÁ 
$num
ÁÁ 
;
ÁÁ 
}
ËË 	
private
ÍÍ 
void
ÍÍ 
SetPlayerReady
ÍÍ #
(
ÍÍ# $
int
ÍÍ$ '
gameId
ÍÍ( .
,
ÍÍ. /
int
ÍÍ0 3
playerId
ÍÍ4 <
)
ÍÍ< =
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ $
connectedPlayersByGame
ÏÏ &
.
ÏÏ& '
TryGetValue
ÏÏ' 2
(
ÏÏ2 3
gameId
ÏÏ3 9
,
ÏÏ9 :
out
ÏÏ; >
var
ÏÏ? B
playersInGame
ÏÏC P
)
ÏÏP Q
)
ÏÏQ R
{
ÌÌ 
ConnectedPlayer
ÓÓ 
player
ÓÓ  &
=
ÓÓ' (
playersInGame
ÓÓ) 6
.
ÓÓ6 7
FirstOrDefault
ÓÓ7 E
(
ÓÓE F
p
ÓÓF G
=>
ÓÓH J
(
ÔÔ 
p
ÔÔ 
.
ÔÔ 
profileClientDto
ÔÔ '
?
ÔÔ' (
.
ÔÔ( )
Id
ÔÔ) +
==
ÔÔ, .
playerId
ÔÔ/ 7
||
ÔÔ8 :
p
ÔÔ; <
.
ÔÔ< =
guestAccountDto
ÔÔ= L
?
ÔÔL M
.
ÔÔM N
Id
ÔÔN P
==
ÔÔQ S
playerId
ÔÔT \
)
ÔÔ\ ]
)
ÔÔ] ^
;
ÔÔ^ _
if
ÒÒ 
(
ÒÒ 
player
ÒÒ 
!=
ÒÒ 
null
ÒÒ "
)
ÒÒ" #
{
ÚÚ 
player
ÛÛ 
.
ÛÛ 
IsReadyToPlay
ÛÛ (
=
ÛÛ) *
true
ÛÛ+ /
;
ÛÛ/ 0
}
ÙÙ 
}
ıı 
}
ˆˆ 	
public
˘˘ 
async
˘˘ 
Task
˘˘ 
<
˘˘ 
bool
˘˘ 
>
˘˘ &
StartGameInDataBaseAsync
˘˘  8
(
˘˘8 9
int
˘˘9 <
idPlayer
˘˘= E
,
˘˘E F
GameDto
˘˘G N
gameClientDto
˘˘O \
)
˘˘\ ]
{
˙˙ 	
Console
˚˚ 
.
˚˚ 
	WriteLine
˚˚ 
(
˚˚ 
$str
˚˚ 8
)
˚˚8 9
;
˚˚9 :
bool
¸¸ "
isSuccessTransaction
¸¸ %
=
¸¸& '
false
¸¸( -
;
¸¸- .
using
˛˛ 
(
˛˛ "
DbContextTransaction
˛˛ '
gameTransaction
˛˛( 7
=
˛˛8 9
await
˛˛: ?
repositoryManager
˛˛@ Q
.
˛˛Q R#
StartTransactionAsync
˛˛R g
(
˛˛g h
)
˛˛h i
)
˛˛i j
{
ˇˇ "
isSuccessTransaction
ÄÄ $
=
ÄÄ% &
await
ÄÄ' ,7
)HandleStartGameUsingConnectedPlayersAsync
ÄÄ- V
(
ÄÄV W
idPlayer
ÄÄW _
,
ÄÄ_ `
gameClientDto
ÄÄa n
)
ÄÄn o
;
ÄÄo p
if
ÇÇ 
(
ÇÇ "
isSuccessTransaction
ÇÇ (
)
ÇÇ( )
{
ÉÉ 
await
ÖÖ .
 FinalizeTransactionAndClearVotes
ÖÖ :
(
ÖÖ: ;
gameTransaction
ÖÖ; J
)
ÖÖJ K
;
ÖÖK L
int
áá 
gameId
áá 
=
áá  
(
áá! "
int
áá" %
)
áá% &
gameClientDto
áá& 3
.
áá3 4
Id
áá4 6
;
áá6 7
SetPlayerReady
ââ "
(
ââ" #
gameId
ââ# )
,
ââ) *
idPlayer
ââ+ 3
)
ââ3 4
;
ââ4 5
int
ãã 
readyPlayers
ãã $
=
ãã% &
CountPlayersReady
ãã' 8
(
ãã8 9
gameId
ãã9 ?
)
ãã? @
;
ãã@ A
int
åå 
totalPlayers
åå $
=
åå% &#
GetTotalPlayersInGame
åå' <
(
åå< =
gameId
åå= C
)
ååC D
;
ååD E
if
éé 
(
éé 
readyPlayers
éé $
>=
éé% '
totalPlayers
éé( 4
&&
éé5 7
readyPlayers
éé8 D
>
ééE F
GameUtilities
ééG T
.
ééT U%
MINIMUN_PLAYERS_BY_GAME
ééU l
)
éél m
{
èè 
await
êê &
SetCountdownToTenSeconds
êê 6
(
êê6 7
gameId
êê7 =
)
êê= >
;
êê> ?
}
ëë 
else
íí 
if
íí 
(
íí 
readyPlayers
íí )
>=
íí* ,
GameUtilities
íí- :
.
íí: ;+
MINIMUN_PLAYERS_TO_START_GAME
íí; X
)
ííX Y
{
ìì 
await
îî )
StartOrUpdateCountdownAsync
îî 9
(
îî9 :
gameId
îî: @
,
îî@ A
readyPlayers
îîB N
)
îîN O
;
îîO P
}
ïï 
}
ññ 
}
óó 
return
òò "
isSuccessTransaction
òò '
;
òò' (
}
ôô 	
private
öö 
int
öö #
GetTotalPlayersInGame
öö )
(
öö) *
int
öö* -
gameId
öö. 4
)
öö4 5
{
õõ 	
return
úú $
connectedPlayersByGame
úú )
.
úú) *
TryGetValue
úú* 5
(
úú5 6
gameId
úú6 <
,
úú< =
out
úú> A
ConcurrentBag
úúB O
<
úúO P
ConnectedPlayer
úúP _
>
úú_ `
playersInGame
úúa n
)
úún o
?
úúp q
playersInGame
úúr 
.úú Ä
CountúúÄ Ö
:úúÜ á
GameUtilitiesúúà ï
.úúï ñ0
 NUMBER_OF_PLAYERS_TO_CANCEL_GAMEúúñ ∂
;úú∂ ∑
}
ùù 	
private
üü 
async
üü 
Task
üü &
SetCountdownToTenSeconds
üü 3
(
üü3 4
int
üü4 7
gameId
üü8 >
)
üü> ?
{
†† 	
if
°° 
(
°° &
cancelTokenCountDownGame
°° (
.
°°( )
TryGetValue
°°) 4
(
°°4 5
gameId
°°5 ;
,
°°; <
out
°°= @
var
°°A D
existingCts
°°E P
)
°°P Q
)
°°Q R
{
¢¢ 
existingCts
££ 
.
££ 
Cancel
££ "
(
££" #
)
££# $
;
££$ %&
cancelTokenCountDownGame
§§ (
.
§§( )
	TryRemove
§§) 2
(
§§2 3
gameId
§§3 9
,
§§9 :
out
§§; >%
CancellationTokenSource
§§? V
lastCancelToken
§§W f
)
§§f g
;
§§g h
}
•• &
gameCountdownToStartGame
ßß $
[
ßß$ %
gameId
ßß% +
]
ßß+ ,
=
ßß- .
GameUtilities
ßß/ <
.
ßß< =*
TIME_TO_START_GAME_COUNTDOWN
ßß= Y
;
ßßY Z
await
©© %
UpdateTimeForAllPlayers
©© )
(
©©) *
gameId
©©* 0
,
©©0 1
GameUtilities
©©2 ?
.
©©? @*
TIME_TO_START_GAME_COUNTDOWN
©©@ \
)
©©\ ]
;
©©] ^%
CancellationTokenSource
´´ #
cancelToken
´´$ /
=
´´0 1
new
´´2 5%
CancellationTokenSource
´´6 M
(
´´M N
)
´´N O
;
´´O P&
cancelTokenCountDownGame
¨¨ $
.
¨¨$ %
TryAdd
¨¨% +
(
¨¨+ ,
gameId
¨¨, 2
,
¨¨2 3
cancelToken
¨¨4 ?
)
¨¨? @
;
¨¨@ A
await
ÆÆ %
StartGameCountdownAsync
ÆÆ )
(
ÆÆ) *
gameId
ÆÆ* 0
,
ÆÆ0 1
cancelToken
ÆÆ2 =
.
ÆÆ= >
Token
ÆÆ> C
)
ÆÆC D
;
ÆÆD E
}
ØØ 	
private
∞∞ 
async
∞∞ 
Task
∞∞ )
StartOrUpdateCountdownAsync
∞∞ 6
(
∞∞6 7
int
∞∞7 :
gameId
∞∞; A
,
∞∞A B
int
∞∞C F

clickCount
∞∞G Q
)
∞∞Q R
{
±± 	
int
≤≤ 
reductionTime
≤≤ 
=
≤≤ $
CalculateReductionTime
≤≤  6
(
≤≤6 7

clickCount
≤≤7 A
)
≤≤A B
;
≤≤B C
if
¥¥ 
(
¥¥ &
cancelTokenCountDownGame
¥¥ (
.
¥¥( )
TryGetValue
¥¥) 4
(
¥¥4 5
gameId
¥¥5 ;
,
¥¥; <
out
¥¥= @%
CancellationTokenSource
¥¥A X
existingCts
¥¥Y d
)
¥¥d e
)
¥¥e f
{
µµ 
existingCts
∂∂ 
.
∂∂ 
Cancel
∂∂ "
(
∂∂" #
)
∂∂# $
;
∂∂$ %&
cancelTokenCountDownGame
∑∑ (
.
∑∑( )
	TryRemove
∑∑) 2
(
∑∑2 3
gameId
∑∑3 9
,
∑∑9 :
out
∑∑; >%
CancellationTokenSource
∑∑? V
	lastToken
∑∑W `
)
∑∑` a
;
∑∑a b
}
∏∏ 
if
∫∫ 
(
∫∫ &
gameCountdownToStartGame
∫∫ (
.
∫∫( )
ContainsKey
∫∫) 4
(
∫∫4 5
gameId
∫∫5 ;
)
∫∫; <
)
∫∫< =
{
ªª 
await
ºº "
UpdateCountdownTimer
ºº *
(
ºº* +
gameId
ºº+ 1
,
ºº1 2
reductionTime
ºº3 @
)
ºº@ A
;
ººA B
}
ΩΩ 
else
ææ 
{
øø 
await
¿¿ )
InitializeAndStartCountdown
¿¿ 1
(
¿¿1 2
gameId
¿¿2 8
,
¿¿8 9
reductionTime
¿¿: G
)
¿¿G H
;
¿¿H I
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
async
ƒƒ 
Task
ƒƒ )
InitializeAndStartCountdown
ƒƒ 6
(
ƒƒ6 7
int
ƒƒ7 :
gameId
ƒƒ; A
,
ƒƒA B
int
ƒƒC F
reductionTime
ƒƒG T
)
ƒƒT U
{
≈≈ 	
Console
∆∆ 
.
∆∆ 
	WriteLine
∆∆ 
(
∆∆ 
$"
∆∆  
$str
∆∆  Q
{
∆∆Q R
gameId
∆∆R X
}
∆∆X Y
"
∆∆Y Z
)
∆∆Z [
;
∆∆[ \&
gameCountdownToStartGame
«« $
[
««$ %
gameId
««% +
]
««+ ,
=
««- .$
EnsureMinimumCountdown
««/ E
(
««E F
GameplayUtilities
««F W
.
««W X 
TIME_TO_START_GAME
««X j
-
««k l
reductionTime
««m z
)
««z {
;
««{ |%
CancellationTokenSource
…… #
cts
……$ '
=
……( )
new
……* -%
CancellationTokenSource
……. E
(
……E F
)
……F G
;
……G H&
cancelTokenCountDownGame
   $
.
  $ %
TryAdd
  % +
(
  + ,
gameId
  , 2
,
  2 3
cts
  4 7
)
  7 8
;
  8 9
await
ÃÃ %
StartGameCountdownAsync
ÃÃ )
(
ÃÃ) *
gameId
ÃÃ* 0
,
ÃÃ0 1
cts
ÃÃ2 5
.
ÃÃ5 6
Token
ÃÃ6 ;
)
ÃÃ; <
;
ÃÃ< =
}
ÕÕ 	
private
œœ 
static
œœ 
int
œœ $
EnsureMinimumCountdown
œœ 1
(
œœ1 2
int
œœ2 5
time
œœ6 :
)
œœ: ;
{
–– 	
return
—— 
Math
—— 
.
—— 
Max
—— 
(
—— 
time
——  
,
——  !
GameUtilities
——" /
.
——/ 0*
TIME_TO_START_GAME_COUNTDOWN
——0 L
)
——L M
;
——M N
}
““ 	
private
’’ 
static
’’ 
int
’’ $
CalculateReductionTime
’’ 1
(
’’1 2
int
’’2 5

clickCount
’’6 @
)
’’@ A
{
÷÷ 	
return
◊◊ 
GameUtilities
◊◊  
.
◊◊  !*
TIME_TO_START_GAME_COUNTDOWN
◊◊! =
*
◊◊> ?

clickCount
◊◊@ J
;
◊◊J K
}
ÿÿ 	
private
ŸŸ 
async
ŸŸ 
Task
ŸŸ "
UpdateCountdownTimer
ŸŸ /
(
ŸŸ/ 0
int
ŸŸ0 3
gameId
ŸŸ4 :
,
ŸŸ: ;
int
ŸŸ< ?
reductionTime
ŸŸ@ M
)
ŸŸM N
{
⁄⁄ 	
Console
€€ 
.
€€ 
	WriteLine
€€ 
(
€€ 
$str
€€ W
)
€€W X
;
€€X Y
int
‹‹ 
newTime
‹‹ 
=
‹‹ 
Math
‹‹ 
.
‹‹ 
Max
‹‹ "
(
‹‹" #
GameplayUtilities
‹‹# 4
.
‹‹4 5 
TIME_TO_START_GAME
‹‹5 G
-
‹‹H I
reductionTime
‹‹J W
,
‹‹W X
GameUtilities
‹‹Y f
.
‹‹f g+
TIME_TO_START_GAME_COUNTDOWN‹‹g É
)‹‹É Ñ
;‹‹Ñ Ö&
gameCountdownToStartGame
›› $
[
››$ %
gameId
››% +
]
››+ ,
=
››- .
newTime
››/ 6
;
››6 7
await
ﬁﬁ %
UpdateTimeForAllPlayers
ﬁﬁ )
(
ﬁﬁ) *
gameId
ﬁﬁ* 0
,
ﬁﬁ0 1
newTime
ﬁﬁ2 9
)
ﬁﬁ9 :
;
ﬁﬁ: ;
}
ﬂﬂ 	
private
‡‡ 
async
‡‡ 
Task
‡‡ .
 FinalizeTransactionAndClearVotes
‡‡ ;
(
‡‡; <"
DbContextTransaction
‡‡< P
gameTransaction
‡‡Q `
)
‡‡` a
{
·· 	
await
‚‚ 
repositoryManager
‚‚ #
.
‚‚# $
	SaveAsync
‚‚$ -
(
‚‚- .
)
‚‚. /
;
‚‚/ 0
gameTransaction
„„ 
.
„„ 
Commit
„„ "
(
„„" #
)
„„# $
;
„„$ %
}
‰‰ 	
private
ÊÊ 
async
ÊÊ 
Task
ÊÊ %
StartGameCountdownAsync
ÊÊ 2
(
ÊÊ2 3
int
ÊÊ3 6
gameId
ÊÊ7 =
,
ÊÊ= >
CancellationToken
ÊÊ? P
cancellationToken
ÊÊQ b
)
ÊÊb c
{
ÁÁ 	
if
ËË 
(
ËË 
!
ËË $
connectedPlayersByGame
ËË '
.
ËË' (
TryGetValue
ËË( 3
(
ËË3 4
gameId
ËË4 :
,
ËË: ;
out
ËË< ?
ConcurrentBag
ËË@ M
<
ËËM N
ConnectedPlayer
ËËN ]
>
ËË] ^
playersInGame
ËË_ l
)
ËËl m
)
ËËm n
return
ËËo u
;
ËËu v
int
ÍÍ 
timeRemaining
ÍÍ 
=
ÍÍ &
gameCountdownToStartGame
ÍÍ  8
[
ÍÍ8 9
gameId
ÍÍ9 ?
]
ÍÍ? @
;
ÍÍ@ A
try
ÏÏ 
{
ÌÌ 
while
ÓÓ 
(
ÓÓ 
timeRemaining
ÓÓ $
>
ÓÓ% &
GameUtilities
ÓÓ' 4
.
ÓÓ4 5#
TIME_MINIMUN_TO_START
ÓÓ5 J
)
ÓÓJ K
{
ÔÔ &
gameCountdownToStartGame
 ,
[
, -
gameId
- 3
]
3 4
=
5 6
timeRemaining
7 D
;
D E
if
ÚÚ 
(
ÚÚ 
timeRemaining
ÚÚ %
==
ÚÚ& (
GameUtilities
ÚÚ) 6
.
ÚÚ6 7'
TIME_LAST_SECOND_TO_START
ÚÚ7 P
||
ÚÚQ S
timeRemaining
ÚÚT a
%
ÚÚb c
GameUtilities
ÚÚd q
.
ÚÚq r+
TIME_TO_START_GAME_COUNTDOWNÚÚr é
==ÚÚè ë
GameUtilitiesÚÚí ü
.ÚÚü †%
TIME_MINIMUN_TO_STARTÚÚ† µ
)ÚÚµ ∂
{
ÛÛ 
await
ÙÙ %
UpdateTimeForAllPlayers
ÙÙ 5
(
ÙÙ5 6
gameId
ÙÙ6 <
,
ÙÙ< =
timeRemaining
ÙÙ> K
)
ÙÙK L
;
ÙÙL M
}
ıı 
await
˜˜ 
Task
˜˜ 
.
˜˜ 
Delay
˜˜ $
(
˜˜$ %
GameUtilities
˜˜% 2
.
˜˜2 3
TIME_MILISECONDS
˜˜3 C
,
˜˜C D
cancellationToken
˜˜E V
)
˜˜V W
;
˜˜W X
timeRemaining
˘˘ !
--
˘˘! #
;
˘˘# $
int
˙˙ 
readyPlayers
˙˙ $
=
˙˙% &
CountPlayersReady
˙˙' 8
(
˙˙8 9
gameId
˙˙9 ?
)
˙˙? @
;
˙˙@ A
if
¸¸ 
(
¸¸ 
timeRemaining
¸¸ %
<=
¸¸& (
$num
¸¸) *
&&
¸¸+ -
readyPlayers
¸¸. :
>
¸¸; <
GameUtilities
¸¸= J
.
¸¸J K%
MINIMUN_PLAYERS_BY_GAME
¸¸K b
)
¸¸b c
{
˝˝ 
await
˛˛ )
StartGameForAllPlayersAsync
˛˛ 9
(
˛˛9 :
gameId
˛˛: @
)
˛˛@ A
;
˛˛A B!
InitializeGameBoard
ˇˇ +
(
ˇˇ+ ,
gameId
ˇˇ, 2
)
ˇˇ2 3
;
ˇˇ3 4&
gameCountdownToStartGame
ÇÇ 0
.
ÇÇ0 1
	TryRemove
ÇÇ1 :
(
ÇÇ: ;
gameId
ÇÇ; A
,
ÇÇA B
out
ÇÇC F
int
ÇÇG J
lastTime
ÇÇK S
)
ÇÇS T
;
ÇÇT U&
cancelTokenCountDownGame
ÉÉ 0
.
ÉÉ0 1
	TryRemove
ÉÉ1 :
(
ÉÉ: ;
gameId
ÉÉ; A
,
ÉÉA B
out
ÉÉC F%
CancellationTokenSource
ÉÉG ^
cancelToken
ÉÉ_ j
)
ÉÉj k
;
ÉÉk l
}
ÑÑ 
}
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá #
TaskCanceledException
áá (
ex
áá) +
)
áá+ ,
{
àà 
Log
ââ 
.
ââ 
Error
ââ 
(
ââ 
ex
ââ 
,
ââ 
ex
ââ  
.
ââ  !
Source
ââ! '
)
ââ' (
;
ââ( )
}
ää 
finally
ãã 
{
åå &
cancelTokenCountDownGame
çç (
.
çç( )
	TryRemove
çç) 2
(
çç2 3
gameId
çç3 9
,
çç9 :
out
çç; >%
CancellationTokenSource
çç? V
cancelToken
ççW b
)
ççb c
;
ççc d
}
éé 
}
èè 	
private
ìì 
async
ìì 
Task
ìì %
UpdateTimeForAllPlayers
ìì 2
(
ìì2 3
int
ìì3 6
gameId
ìì7 =
,
ìì= >
int
ìì? B
timeRemaining
ììC P
)
ììP Q
{
îî 	
if
ïï 
(
ïï 
!
ïï $
connectedPlayersByGame
ïï '
.
ïï' (
TryGetValue
ïï( 3
(
ïï3 4
gameId
ïï4 :
,
ïï: ;
out
ïï< ?
ConcurrentBag
ïï@ M
<
ïïM N
ConnectedPlayer
ïïN ]
>
ïï] ^
playersInGame
ïï_ l
)
ïïl m
)
ïïm n
{
ññ 
return
óó 
;
óó 
}
òò 
bool
öö 
isConnected
öö 
=
öö 
false
öö $
;
öö$ %
foreach
úú 
(
úú 
ConnectedPlayer
úú $
player
úú% +
in
úú, .
playersInGame
úú/ <
)
úú< =
{
ùù 
int
ûû 
idplayer
ûû 
=
ûû 
player
ûû %
.
ûû% &
profileClientDto
ûû& 6
?
ûû6 7
.
ûû7 8
Id
ûû8 :
??
ûû; =
player
ûû> D
.
ûûD E
guestAccountDto
ûûE T
?
ûûT U
.
ûûU V
Id
ûûV X
??
ûûY [ 
CharacterUtilities
ûû\ n
.
ûûn o
NON_VALID_ID
ûûo {
;
ûû{ |
try
üü 
{
†† 
if
°° 
(
°° "
IsPlayerCallbackOpen
°° +
(
°°+ ,
player
°°, 2
)
°°2 3
)
°°3 4
{
¢¢ 
player
££ 
.
££ 
gameCallback
££ +
?
££+ ,
.
££, -$
UpdateTimeWhenJoinGame
££- C
(
££C D
timeRemaining
££D Q
)
££Q R
;
££R S
isConnected
§§ #
=
§§$ %
true
§§& *
;
§§* +
}
•• 
}
¶¶ 
catch
ßß 
(
ßß %
ObjectDisposedException
ßß -
ex
ßß. 0
)
ßß0 1
{
®® 
Log
©© 
.
©© 
Error
©© 
(
©© 
ex
©©  
,
©©  !
ex
©©" $
.
©©$ %
Source
©©% +
)
©©+ ,
;
©©, -
}
™™ 
catch
´´ 
(
´´ $
CommunicationException
´´ -
ex
´´. 0
)
´´0 1
{
¨¨ 
Log
≠≠ 
.
≠≠ 
Error
≠≠ 
(
≠≠ 
ex
≠≠  
,
≠≠  !
ex
≠≠" $
.
≠≠$ %
Source
≠≠% +
)
≠≠+ ,
;
≠≠, -
}
ÆÆ 
catch
ØØ 
(
ØØ 
	Exception
ØØ  
ex
ØØ! #
)
ØØ# $
{
∞∞ 
Log
±± 
.
±± 
Error
±± 
(
±± 
ex
±±  
,
±±  !
ex
±±" $
.
±±$ %
Source
±±% +
)
±±+ ,
;
±±, -
}
≤≤ 
if
¥¥ 
(
¥¥ 
!
¥¥ 
isConnected
¥¥ 
)
¥¥  
{
µµ 
await
∂∂ &
RemoveDisconnectedPlayer
∂∂ 2
(
∂∂2 3
gameId
∂∂3 9
,
∂∂9 :
idplayer
∂∂; C
)
∂∂C D
;
∂∂D E
}
∑∑ 
}
∏∏ 
}
ππ 	
public
ªª 
async
ªª 
Task
ªª '
SendUpdateConnectedPlayer
ªª 3
(
ªª3 4
int
ªª4 7
gameId
ªª8 >
)
ªª> ?
{
ºº 	
Console
ΩΩ 
.
ΩΩ 
	WriteLine
ΩΩ 
(
ΩΩ 
$str
ΩΩ 9
)
ΩΩ9 :
;
ΩΩ: ;
bool
øø 
eliminatePlayer
øø  
=
øø! "
true
øø# '
;
øø' (
if
¡¡ 
(
¡¡ 
!
¡¡ $
connectedPlayersByGame
¡¡ '
.
¡¡' (
TryGetValue
¡¡( 3
(
¡¡3 4
gameId
¡¡4 :
,
¡¡: ;
out
¡¡< ?
ConcurrentBag
¡¡@ M
<
¡¡M N
ConnectedPlayer
¡¡N ]
>
¡¡] ^
playersInGame
¡¡_ l
)
¡¡l m
)
¡¡m n
{
¬¬ 
return
√√ 
;
√√ 
}
ƒƒ 
List
∆∆ 
<
∆∆ 
ConnectedPlayer
∆∆  
>
∆∆  !
orderedPlayers
∆∆" 0
=
∆∆1 2
playersInGame
∆∆3 @
.
∆∆@ A
OrderBy
∆∆A H
(
∆∆H I
player
∆∆I O
=>
∆∆P R
player
∆∆S Y
.
∆∆Y Z
JoinedAt
∆∆Z b
)
∆∆b c
.
∆∆c d
ToList
∆∆d j
(
∆∆j k
)
∆∆k l
;
∆∆l m
foreach
»» 
(
»» 
ConnectedPlayer
»» $
player
»»% +
in
»», .
orderedPlayers
»»/ =
)
»»= >
{
…… 
int
   
idplayer
   
=
   
player
   %
.
  % &
profileClientDto
  & 6
?
  6 7
.
  7 8
Id
  8 :
??
  ; =
player
  > D
.
  D E
guestAccountDto
  E T
?
  T U
.
  U V
Id
  V X
??
  Y [ 
CharacterUtilities
  \ n
.
  n o
NON_VALID_ID
  o {
;
  { |
try
ÀÀ 
{
ÃÃ 
if
ÕÕ 
(
ÕÕ "
IsPlayerCallbackOpen
ÕÕ ,
(
ÕÕ, -
player
ÕÕ- 3
)
ÕÕ3 4
)
ÕÕ4 5
{
ŒŒ 
eliminatePlayer
œœ '
=
œœ( )
false
œœ* /
;
œœ/ 0
}
–– 
}
—— 
catch
““ 
(
““ 1
#CommunicationObjectAbortedException
““ :
ex
““; =
)
““= >
{
”” 
Log
‘‘ 
.
‘‘ 
Error
‘‘ 
(
‘‘ 
ex
‘‘  
,
‘‘  !
ex
‘‘" $
.
‘‘$ %
Source
‘‘% +
)
‘‘+ ,
;
‘‘, -
}
’’ 
catch
÷÷ 
(
÷÷ $
CommunicationException
÷÷ -
ex
÷÷. 0
)
÷÷0 1
{
◊◊ 
Log
ÿÿ 
.
ÿÿ 
Error
ÿÿ 
(
ÿÿ 
ex
ÿÿ  
,
ÿÿ  !
ex
ÿÿ" $
.
ÿÿ$ %
Source
ÿÿ% +
)
ÿÿ+ ,
;
ÿÿ, -
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
	Exception
⁄⁄  
ex
⁄⁄! #
)
⁄⁄# $
{
€€ 
Log
‹‹ 
.
‹‹ 
Error
‹‹ 
(
‹‹ 
ex
‹‹  
,
‹‹  !
ex
‹‹" $
.
‹‹$ %
Source
‹‹% +
)
‹‹+ ,
;
‹‹, -
}
›› 
if
ﬂﬂ 
(
ﬂﬂ 
eliminatePlayer
ﬂﬂ #
)
ﬂﬂ# $
{
‡‡ 
await
·· &
RemoveDisconnectedPlayer
·· 2
(
··2 3
gameId
··3 9
,
··9 :
idplayer
··; C
)
··C D
;
··D E
}
‚‚ 
}
„„ 
if
ÂÂ 
(
ÂÂ 
orderedPlayers
ÂÂ 
.
ÂÂ 
IsNullOrEmpty
ÂÂ ,
(
ÂÂ, -
)
ÂÂ- .
)
ÂÂ. /
{
ÊÊ $
CancelExistingNotifier
ÁÁ &
(
ÁÁ& '
gameId
ÁÁ' -
)
ÁÁ- .
;
ÁÁ. /
}
ËË 
}
ÈÈ 	
public
ÎÎ 
async
ÎÎ 
Task
ÎÎ 1
#StartPeriodicUpdatesCreateGameAsync
ÎÎ =
(
ÎÎ= >
int
ÎÎ> A
gameId
ÎÎB H
,
ÎÎH I%
CancellationTokenSource
ÎÎJ a%
cancellationTokenSource
ÎÎb y
)
ÎÎy z
{
ÏÏ 	
if
ÌÌ 
(
ÌÌ 
!
ÌÌ $
connectedPlayersByGame
ÌÌ '
.
ÌÌ' (
TryGetValue
ÌÌ( 3
(
ÌÌ3 4
gameId
ÌÌ4 :
,
ÌÌ: ;
out
ÌÌ< ?
ConcurrentBag
ÌÌ@ M
<
ÌÌM N
ConnectedPlayer
ÌÌN ]
>
ÌÌ] ^
playersInGame
ÌÌ_ l
)
ÌÌl m
)
ÌÌm n
{
ÓÓ 
return
ÔÔ 
;
ÔÔ 
}
 
try
ÚÚ 
{
ÛÛ 
while
ÙÙ 
(
ÙÙ 
!
ÙÙ %
cancellationTokenSource
ÙÙ /
.
ÙÙ/ 0%
IsCancellationRequested
ÙÙ0 G
)
ÙÙG H
{
ıı 
await
ˆˆ '
SendUpdateConnectedPlayer
ˆˆ 3
(
ˆˆ3 4
gameId
ˆˆ4 :
)
ˆˆ: ;
;
ˆˆ; <
await
¯¯ 
Task
¯¯ 
.
¯¯ 
Delay
¯¯ $
(
¯¯$ %
TimeSpan
¯¯% -
.
¯¯- .
FromSeconds
¯¯. 9
(
¯¯9 :
$num
¯¯: <
)
¯¯< =
,
¯¯= >%
cancellationTokenSource
¯¯? V
.
¯¯V W
Token
¯¯W \
)
¯¯\ ]
;
¯¯] ^
}
˘˘ 
}
˙˙ 
catch
˚˚ 
(
˚˚ #
TaskCanceledException
˚˚ (
ex
˚˚) +
)
˚˚+ ,
{
¸¸ 
Log
˝˝ 
.
˝˝ 
Error
˝˝ 
(
˝˝ 
ex
˝˝ 
,
˝˝ 
ex
˝˝  
.
˝˝  !
Source
˝˝! '
)
˝˝' (
;
˝˝( )
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
	Exception
ˇˇ 
ex
ˇˇ 
)
ˇˇ 
{
Ä	Ä	 
Log
Å	Å	 
.
Å	Å	 
Error
Å	Å	 
(
Å	Å	 
ex
Å	Å	 
,
Å	Å	 
ex
Å	Å	  
.
Å	Å	  !
Source
Å	Å	! '
)
Å	Å	' (
;
Å	Å	( )
}
Ç	Ç	 
}
É	É	 	
public
à	à	 
async
à	à	 
Task
à	à	 
<
à	à	 
bool
à	à	 
>
à	à	 7
)HandleStartGameUsingConnectedPlayersAsync
à	à	  I
(
à	à	I J
int
à	à	J M
idPlayer
à	à	N V
,
à	à	V W
GameDto
à	à	X _
gameClientDto
à	à	` m
)
à	à	m n
{
â	â	 	
Console
ä	ä	 
.
ä	ä	 
	WriteLine
ä	ä	 
(
ä	ä	 
$str
ä	ä	 I
)
ä	ä	I J
;
ä	ä	J K
if
ã	ã	 
(
ã	ã	 $
connectedPlayersByGame
ã	ã	 &
.
ã	ã	& '
TryGetValue
ã	ã	' 2
(
ã	ã	2 3
(
ã	ã	3 4
int
ã	ã	4 7
)
ã	ã	7 8
gameClientDto
ã	ã	8 E
.
ã	ã	E F
Id
ã	ã	F H
,
ã	ã	H I
out
ã	ã	J M
ConcurrentBag
ã	ã	N [
<
ã	ã	[ \
ConnectedPlayer
ã	ã	\ k
>
ã	ã	k l
playersInGame
ã	ã	m z
)
ã	ã	z {
)
ã	ã	{ |
{
å	å	 
ConnectedPlayer
ç	ç	 
player
ç	ç	  &
=
ç	ç	' (
playersInGame
ç	ç	) 6
.
ç	ç	6 7
FirstOrDefault
ç	ç	7 E
(
ç	ç	E F
players
ç	ç	F M
=>
ç	ç	N P
(
é	é	 
players
é	é	 
.
é	é	 
profileClientDto
é	é	 -
?
é	é	- .
.
é	é	. /
Id
é	é	/ 1
==
é	é	2 4
idPlayer
é	é	5 =
||
é	é	> @
players
é	é	A H
.
é	é	H I
guestAccountDto
é	é	I X
?
é	é	X Y
.
é	é	Y Z
Id
é	é	Z \
==
é	é	] _
idPlayer
é	é	` h
)
é	é	h i
)
é	é	i j
;
é	é	j k
if
ê	ê	 
(
ê	ê	 
player
ê	ê	 
!=
ê	ê	 
null
ê	ê	 "
)
ê	ê	" #
{
ë	ë	 
if
í	í	 
(
í	í	 
player
í	í	 
.
í	í	 
profileClientDto
í	í	 /
!=
í	í	0 2
null
í	í	3 7
)
í	í	7 8
{
ì	ì	 
await
î	î	 
repositoryManager
î	î	 /
.
î	î	/ 0#
ProfileGameRepository
î	î	0 E
.
î	î	E F
StartGameProfile
î	î	F V
(
î	î	V W
(
î	î	W X
int
î	î	X [
)
î	î	[ \
gameClientDto
î	î	\ i
.
î	î	i j
Id
î	î	j l
,
î	î	l m
(
î	î	n o
int
î	î	o r
)
î	î	r s
player
î	î	s y
.
î	î	y z
profileClientDtoî	î	z ä
.î	î	ä ã
Idî	î	ã ç
)î	î	ç é
;î	î	é è
}
ï	ï	 
else
ñ	ñ	 
if
ñ	ñ	 
(
ñ	ñ	 
player
ñ	ñ	 #
.
ñ	ñ	# $
guestAccountDto
ñ	ñ	$ 3
!=
ñ	ñ	4 6
null
ñ	ñ	7 ;
)
ñ	ñ	; <
{
ó	ó	 
await
ò	ò	 
repositoryManager
ò	ò	 /
.
ò	ò	/ 0(
GuestAccountGameRepository
ò	ò	0 J
.
ò	ò	J K(
StartGameGuestAccountAsync
ò	ò	K e
(
ò	ò	e f
(
ò	ò	f g
int
ò	ò	g j
)
ò	ò	j k
gameClientDto
ò	ò	k x
.
ò	ò	x y
Id
ò	ò	y {
,
ò	ò	{ |
(
ò	ò	} ~
intò	ò	~ Å
)ò	ò	Å Ç
playerò	ò	Ç à
.ò	ò	à â
guestAccountDtoò	ò	â ò
.ò	ò	ò ô
Idò	ò	ô õ
)ò	ò	õ ú
;ò	ò	ú ù
}
ô	ô	 
return
ö	ö	 
true
ö	ö	 
;
ö	ö	  
}
õ	õ	 
}
ú	ú	 
return
ù	ù	 
false
ù	ù	 
;
ù	ù	 
}
û	û	 	
public
†	†	 
static
†	†	 
ProfileScoreDto
†	†	 %#
CreateProfileScoreDto
†	†	& ;
(
†	†	; <
Profile
†	†	< C
profileClient
†	†	D Q
,
†	†	Q R
int
†	†	S V
position
†	†	W _
,
†	†	_ `
int
†	†	a d
gamesWon
†	†	e m
,
†	†	m n
int
†	†	o r

totalScore
†	†	s }
)
†	†	} ~
{
°	°	 	
Console
¢	¢	 
.
¢	¢	 
	WriteLine
¢	¢	 
(
¢	¢	 
$str
¢	¢	 5
)
¢	¢	5 6
;
¢	¢	6 7
ProfileScoreDto
£	£	 
profileScoreDto
£	£	 +
=
£	£	, -
new
£	£	. 1
ProfileScoreDto
£	£	2 A
(
£	£	A B
)
£	£	B C
;
£	£	C D
if
•	•	 
(
•	•	 
profileClient
•	•	 
!=
•	•	 
null
•	•	  $
)
•	•	$ %
{
¶	¶	 
profileScoreDto
ß	ß	 
.
ß	ß	  
Name
ß	ß	  $
=
ß	ß	% &
profileClient
ß	ß	' 4
.
ß	ß	4 5
Name
ß	ß	5 9
;
ß	ß	9 :
profileScoreDto
®	®	 
.
®	®	  
Score
®	®	  %
=
®	®	& '

totalScore
®	®	( 2
;
®	®	2 3
profileScoreDto
©	©	 
.
©	©	  
Position
©	©	  (
=
©	©	) *
position
©	©	+ 3
;
©	©	3 4
profileScoreDto
™	™	 
.
™	™	  
GamesWon
™	™	  (
=
™	™	) *
gamesWon
™	™	+ 3
;
™	™	3 4
}
´	´	 
return
¨	¨	 
profileScoreDto
¨	¨	 "
;
¨	¨	" #
}
≠	≠	 	
public
Ø	Ø	 
static
Ø	Ø	 
ProfileScoreDto
Ø	Ø	 %/
!CreateProfileScoreWhenNotGamesDto
Ø	Ø	& G
(
Ø	Ø	G H

ProfileDto
Ø	Ø	H R
profileClientDto
Ø	Ø	S c
)
Ø	Ø	c d
{
∞	∞	 	
ProfileScoreDto
±	±	 
profileScoreDto
±	±	 +
=
±	±	, -
new
±	±	. 1
ProfileScoreDto
±	±	2 A
(
±	±	A B
)
±	±	B C
;
±	±	C D
profileScoreDto
≤	≤	 
.
≤	≤	 
Name
≤	≤	  
=
≤	≤	! "
profileClientDto
≤	≤	# 3
.
≤	≤	3 4
Name
≤	≤	4 8
;
≤	≤	8 9
return
≥	≥	 
profileScoreDto
≥	≥	 "
;
≥	≥	" #
}
¥	¥	 	
public
∂	∂	 
async
∂	∂	 
Task
∂	∂	 
<
∂	∂	 *
OperationResultListScoreGame
∂	∂	 6
>
∂	∂	6 7)
GetScoreGameWorldInDataBase
∂	∂	8 S
(
∂	∂	S T

ProfileDto
∂	∂	T ^
profileClientDto
∂	∂	_ o
)
∂	∂	o p
{
∑	∑	 	
await
∏	∏	 !
semaphoreScoreWorld
∏	∏	 %
.
∏	∏	% &
	WaitAsync
∏	∏	& /
(
∏	∏	/ 0
)
∏	∏	0 1
;
∏	∏	1 2
try
π	π	 
{
∫	∫	 
List
ª	ª	 
<
ª	ª	 
ProfileGame
ª	ª	  
>
ª	ª	  !#
listProfileGameRecord
ª	ª	" 7
=
ª	ª	8 9
await
ª	ª	: ?$
GetTenBestPlayersAsync
ª	ª	@ V
(
ª	ª	V W
)
ª	ª	W X
;
ª	ª	X Y
List
º	º	 
<
º	º	 
ProfileScoreDto
º	º	 $
>
º	º	$ %
listScoreGameDtos
º	º	& 7
=
º	º	8 9
await
º	º	: ?#
GetProfileScoresAsync
º	º	@ U
(
º	º	U V#
listProfileGameRecord
º	º	V k
)
º	º	k l
;
º	º	l m
listScoreGameDtos
ø	ø	 !
=
ø	ø	" #
listScoreGameDtos
ø	ø	$ 5
.
¿	¿	 
OrderByDescending
¿	¿	 &
(
¿	¿	& '
dto
¿	¿	' *
=>
¿	¿	+ -
dto
¿	¿	. 1
.
¿	¿	1 2
GamesWon
¿	¿	2 :
)
¿	¿	: ;
.
¡	¡	 
ThenByDescending
¡	¡	 %
(
¡	¡	% &
dto
¡	¡	& )
=>
¡	¡	* ,
dto
¡	¡	- 0
.
¡	¡	0 1
Score
¡	¡	1 6
)
¡	¡	6 7
.
¬	¬	 
ToList
¬	¬	 
(
¬	¬	 
)
¬	¬	 
;
¬	¬	 
AssignPositions
≈	≈	 
(
≈	≈	  
listScoreGameDtos
≈	≈	  1
)
≈	≈	1 2
;
≈	≈	2 3
return
«	«	 
new
«	«	 *
OperationResultListScoreGame
«	«	 7
(
«	«	7 8
true
«	«	8 <
,
«	«	< =
LanguageUtilities
«	«	> O
.
«	«	O P
MessageSuccess
«	«	P ^
(
«	«	^ _
profileClientDto
«	«	_ o
.
«	«	o p 
PreferredLanguage«	«	p Å
)«	«	Å Ç
,«	«	Ç É!
listScoreGameDtos«	«	Ñ ï
)«	«	ï ñ
;«	«	ñ ó
}
»	»	 
catch
…	…	 
(
…	…	 
	Exception
…	…	 
ex
…	…	 
)
…	…	  
{
 	 	 
Log
À	À	 
.
À	À	 
Error
À	À	 
(
À	À	 
ex
À	À	 
,
À	À	 
ex
À	À	  
.
À	À	  !
Source
À	À	! '
)
À	À	' (
;
À	À	( )
return
Ã	Ã	 
new
Ã	Ã	 *
OperationResultListScoreGame
Ã	Ã	 7
(
Ã	Ã	7 8
false
Ã	Ã	8 =
,
Ã	Ã	= >
LanguageUtilities
Ã	Ã	? P
.
Ã	Ã	P Q%
MessageUnableToSaveData
Ã	Ã	Q h
(
Ã	Ã	h i
profileClientDto
Ã	Ã	i y
.
Ã	Ã	y z 
PreferredLanguageÃ	Ã	z ã
)Ã	Ã	ã å
,Ã	Ã	å ç
nullÃ	Ã	é í
)Ã	Ã	í ì
;Ã	Ã	ì î
}
Õ	Õ	 
finally
Œ	Œ	 
{
œ	œ	 !
semaphoreScoreWorld
–	–	 #
.
–	–	# $
Release
–	–	$ +
(
–	–	+ ,
)
–	–	, -
;
–	–	- .
}
—	—	 
}
“	“	 	
private
‘	‘	 
async
‘	‘	 
Task
‘	‘	 
<
‘	‘	 
List
‘	‘	 
<
‘	‘	  
ProfileGame
‘	‘	  +
>
‘	‘	+ ,
>
‘	‘	, -$
GetTenBestPlayersAsync
‘	‘	. D
(
‘	‘	D E
)
‘	‘	E F
{
’	’	 	
return
÷	÷	 
await
÷	÷	 
repositoryManager
÷	÷	 *
.
÷	÷	* +#
ProfileGameRepository
÷	÷	+ @
.
÷	÷	@ A
GetTenBestPlayers
÷	÷	A R
(
÷	÷	R S
)
÷	÷	S T
;
÷	÷	T U
}
◊	◊	 	
private
Ÿ	Ÿ	 
async
Ÿ	Ÿ	 
static
Ÿ	Ÿ	 
Task
Ÿ	Ÿ	 !
<
Ÿ	Ÿ	! "
List
Ÿ	Ÿ	" &
<
Ÿ	Ÿ	& '
ProfileScoreDto
Ÿ	Ÿ	' 6
>
Ÿ	Ÿ	6 7
>
Ÿ	Ÿ	7 8#
GetProfileScoresAsync
Ÿ	Ÿ	9 N
(
Ÿ	Ÿ	N O
List
Ÿ	Ÿ	O S
<
Ÿ	Ÿ	S T
ProfileGame
Ÿ	Ÿ	T _
>
Ÿ	Ÿ	_ `
profileGames
Ÿ	Ÿ	a m
)
Ÿ	Ÿ	m n
{
⁄	⁄	 	
IEnumerable
€	€	 
<
€	€	 
Task
€	€	 
<
€	€	 
ProfileScoreDto
€	€	 ,
>
€	€	, -
>
€	€	- .
tasks
€	€	/ 4
=
€	€	5 6
profileGames
€	€	7 C
.
€	€	C D
Select
€	€	D J
(
€	€	J K
async
€	€	K P
(
€	€	Q R
profileGame
€	€	R ]
)
€	€	] ^
=>
€	€	_ a
{
‹	‹	 
using
›	›	 
(
›	›	 
var
›	›	 
context
›	›	 "
=
›	›	# $
new
›	›	% (
CatanDBContext
›	›	) 7
(
›	›	7 8
)
›	›	8 9
)
›	›	9 :
{
ﬁ	ﬁ	 
var
ﬂ	ﬂ	 #
profileGameRepository
ﬂ	ﬂ	 -
=
ﬂ	ﬂ	. /
new
ﬂ	ﬂ	0 3#
ProfileGameRepository
ﬂ	ﬂ	4 I
(
ﬂ	ﬂ	I J
context
ﬂ	ﬂ	J Q
)
ﬂ	ﬂ	Q R
;
ﬂ	ﬂ	R S
var
‡	‡	 
profileRepository
‡	‡	 )
=
‡	‡	* +
new
‡	‡	, /
ProfileRepository
‡	‡	0 A
(
‡	‡	A B
context
‡	‡	B I
)
‡	‡	I J
;
‡	‡	J K
int
‚	‚	 
gamesWon
‚	‚	  
=
‚	‚	! "
await
‚	‚	# (#
profileGameRepository
‚	‚	) >
.
‚	‚	> ?!
GetGamesWonByPlayer
‚	‚	? R
(
‚	‚	R S
profileGame
‚	‚	S ^
.
‚	‚	^ _
	ProfileId
‚	‚	_ h
)
‚	‚	h i
;
‚	‚	i j
int
„	„	 

totalScore
„	„	 "
=
„	„	# $
await
„	„	% *#
profileGameRepository
„	„	+ @
.
„	„	@ A$
GetTotalPointsByPlayer
„	„	A W
(
„	„	W X
profileGame
„	„	X c
.
„	„	c d
	ProfileId
„	„	d m
)
„	„	m n
;
„	„	n o
Profile
‰	‰	 
profileRecord
‰	‰	 )
=
‰	‰	* +
await
‰	‰	, 1
profileRepository
‰	‰	2 C
.
‰	‰	C D!
FindEntityByIdAsync
‰	‰	D W
(
‰	‰	W X
profileGame
‰	‰	X c
.
‰	‰	c d
	ProfileId
‰	‰	d m
)
‰	‰	m n
;
‰	‰	n o
ProfileScoreDto
Â	Â	 #
profileScoreDto
Â	Â	$ 3
=
Â	Â	4 5#
CreateProfileScoreDto
Â	Â	6 K
(
Â	Â	K L
profileRecord
Â	Â	L Y
,
Â	Â	Y Z
$num
Â	Â	[ \
,
Â	Â	\ ]
gamesWon
Â	Â	^ f
,
Â	Â	f g

totalScore
Â	Â	h r
)
Â	Â	r s
;
Â	Â	s t
return
Á	Á	 
profileScoreDto
Á	Á	 *
;
Á	Á	* +
}
Ë	Ë	 
}
È	È	 
)
È	È	 
;
È	È	 
ProfileScoreDto
Î	Î	 
[
Î	Î	 
]
Î	Î	 
results
Î	Î	 %
=
Î	Î	& '
await
Î	Î	( -
Task
Î	Î	. 2
.
Î	Î	2 3
WhenAll
Î	Î	3 :
(
Î	Î	: ;
tasks
Î	Î	; @
)
Î	Î	@ A
;
Î	Î	A B
return
Ï	Ï	 
results
Ï	Ï	 
.
Ï	Ï	 
Where
Ï	Ï	  
(
Ï	Ï	  !
dto
Ï	Ï	! $
=>
Ï	Ï	% '
dto
Ï	Ï	( +
!=
Ï	Ï	, .
null
Ï	Ï	/ 3
)
Ï	Ï	3 4
.
Ï	Ï	4 5
ToList
Ï	Ï	5 ;
(
Ï	Ï	; <
)
Ï	Ï	< =
;
Ï	Ï	= >
}
Ì	Ì	 	
private
Ô	Ô	 
static
Ô	Ô	 
async
Ô	Ô	 
Task
Ô	Ô	 !
<
Ô	Ô	! "
List
Ô	Ô	" &
<
Ô	Ô	& '
ProfileScoreDto
Ô	Ô	' 6
>
Ô	Ô	6 7
>
Ô	Ô	7 8#
GetProfileScoresAsync
Ô	Ô	9 N
(
Ô	Ô	N O
List
Ô	Ô	O S
<
Ô	Ô	S T
Profile
Ô	Ô	T [
>
Ô	Ô	[ \
profiles
Ô	Ô	] e
)
Ô	Ô	e f
{
		 	
IEnumerable
Ò	Ò	 
<
Ò	Ò	 
Task
Ò	Ò	 
<
Ò	Ò	 
ProfileScoreDto
Ò	Ò	 ,
>
Ò	Ò	, -
>
Ò	Ò	- .
tasks
Ò	Ò	/ 4
=
Ò	Ò	5 6
profiles
Ò	Ò	7 ?
.
Ò	Ò	? @
Select
Ò	Ò	@ F
(
Ò	Ò	F G
async
Ò	Ò	G L
(
Ò	Ò	M N
profile
Ò	Ò	N U
)
Ò	Ò	U V
=>
Ò	Ò	W Y
{
Ú	Ú	 
using
Û	Û	 
(
Û	Û	 
var
Û	Û	 
context
Û	Û	 "
=
Û	Û	# $
new
Û	Û	% (
CatanDBContext
Û	Û	) 7
(
Û	Û	7 8
)
Û	Û	8 9
)
Û	Û	9 :
{
Ù	Ù	 
var
ı	ı	 #
profileGameRepository
ı	ı	 -
=
ı	ı	. /
new
ı	ı	0 3#
ProfileGameRepository
ı	ı	4 I
(
ı	ı	I J
context
ı	ı	J Q
)
ı	ı	Q R
;
ı	ı	R S
var
ˆ	ˆ	 
profileRepository
ˆ	ˆ	 )
=
ˆ	ˆ	* +
new
ˆ	ˆ	, /
ProfileRepository
ˆ	ˆ	0 A
(
ˆ	ˆ	A B
context
ˆ	ˆ	B I
)
ˆ	ˆ	I J
;
ˆ	ˆ	J K
int
¯	¯	 
gamesWon
¯	¯	  
=
¯	¯	! "
await
¯	¯	# (#
profileGameRepository
¯	¯	) >
.
¯	¯	> ?!
GetGamesWonByPlayer
¯	¯	? R
(
¯	¯	R S
profile
¯	¯	S Z
.
¯	¯	Z [
Id
¯	¯	[ ]
)
¯	¯	] ^
;
¯	¯	^ _
int
˘	˘	 

totalScore
˘	˘	 "
=
˘	˘	# $
await
˘	˘	% *#
profileGameRepository
˘	˘	+ @
.
˘	˘	@ A$
GetTotalPointsByPlayer
˘	˘	A W
(
˘	˘	W X
profile
˘	˘	X _
.
˘	˘	_ `
Id
˘	˘	` b
)
˘	˘	b c
;
˘	˘	c d
Profile
˙	˙	 
profileRecord
˙	˙	 )
=
˙	˙	* +
await
˙	˙	, 1
profileRepository
˙	˙	2 C
.
˙	˙	C D!
FindEntityByIdAsync
˙	˙	D W
(
˙	˙	W X
profile
˙	˙	X _
.
˙	˙	_ `
Id
˙	˙	` b
)
˙	˙	b c
;
˙	˙	c d
ProfileScoreDto
˚	˚	 #
profileScoreDto
˚	˚	$ 3
=
˚	˚	4 5#
CreateProfileScoreDto
˚	˚	6 K
(
˚	˚	K L
profileRecord
˚	˚	L Y
,
˚	˚	Y Z
$num
˚	˚	[ \
,
˚	˚	\ ]
gamesWon
˚	˚	^ f
,
˚	˚	f g

totalScore
˚	˚	h r
)
˚	˚	r s
;
˚	˚	s t
return
˝	˝	 
profileScoreDto
˝	˝	 *
;
˝	˝	* +
}
˛	˛	 
}
ˇ	ˇ	 
)
ˇ	ˇ	 
;
ˇ	ˇ	 
ProfileScoreDto
Å
Å
 
[
Å
Å
 
]
Å
Å
 
results
Å
Å
 %
=
Å
Å
& '
await
Å
Å
( -
Task
Å
Å
. 2
.
Å
Å
2 3
WhenAll
Å
Å
3 :
(
Å
Å
: ;
tasks
Å
Å
; @
)
Å
Å
@ A
;
Å
Å
A B
return
Ç
Ç
 
results
Ç
Ç
 
.
Ç
Ç
 
Where
Ç
Ç
  
(
Ç
Ç
  !
dto
Ç
Ç
! $
=>
Ç
Ç
% '
dto
Ç
Ç
( +
!=
Ç
Ç
, .
null
Ç
Ç
/ 3
)
Ç
Ç
3 4
.
Ç
Ç
4 5
ToList
Ç
Ç
5 ;
(
Ç
Ç
; <
)
Ç
Ç
< =
;
Ç
Ç
= >
}
É
É
 	
public
Ö
Ö
 
async
Ö
Ö
 
Task
Ö
Ö
 
<
Ö
Ö
 *
OperationResultListScoreGame
Ö
Ö
 6
>
Ö
Ö
6 7+
GetScoreGameFriendsInDataBase
Ö
Ö
8 U
(
Ö
Ö
U V

ProfileDto
Ö
Ö
V `
profileClientDto
Ö
Ö
a q
)
Ö
Ö
q r
{
Ü
Ü
 	
await
á
á
 "
semaphoreScoreFriend
á
á
 &
.
á
á
& '
	WaitAsync
á
á
' 0
(
á
á
0 1
)
á
á
1 2
;
á
á
2 3
try
à
à
 
{
â
â
 
List
ä
ä
 
<
ä
ä
 
Profile
ä
ä
 
>
ä
ä
 
listFriends
ä
ä
 )
=
ä
ä
* +
await
ä
ä
, 1$
GetFriendsAndSelfAsync
ä
ä
2 H
(
ä
ä
H I
profileClientDto
ä
ä
I Y
)
ä
ä
Y Z
;
ä
ä
Z [
List
ã
ã
 
<
ã
ã
 
ProfileScoreDto
ã
ã
 $
>
ã
ã
$ %
listScoreGameDtos
ã
ã
& 7
=
ã
ã
8 9
await
ã
ã
: ?#
GetProfileScoresAsync
ã
ã
@ U
(
ã
ã
U V
listFriends
ã
ã
V a
)
ã
ã
a b
;
ã
ã
b c
listScoreGameDtos
ç
ç
 !
=
ç
ç
" #
listScoreGameDtos
ç
ç
$ 5
.
é
é
 
OrderByDescending
é
é
 &
(
é
é
& '
dto
é
é
' *
=>
é
é
+ -
dto
é
é
. 1
.
é
é
1 2
GamesWon
é
é
2 :
)
é
é
: ;
.
è
è
 
ThenByDescending
è
è
 %
(
è
è
% &
dto
è
è
& )
=>
è
è
* ,
dto
è
è
- 0
.
è
è
0 1
Score
è
è
1 6
)
è
è
6 7
.
ê
ê
 
ToList
ê
ê
 
(
ê
ê
 
)
ê
ê
 
;
ê
ê
 
AssignPositions
í
í
 
(
í
í
  
listScoreGameDtos
í
í
  1
)
í
í
1 2
;
í
í
2 3
return
î
î
 
new
î
î
 *
OperationResultListScoreGame
î
î
 7
(
î
î
7 8
true
î
î
8 <
,
î
î
< =
LanguageUtilities
î
î
> O
.
î
î
O P
MessageSuccess
î
î
P ^
(
î
î
^ _
profileClientDto
î
î
_ o
.
î
î
o p 
PreferredLanguageî
î
p Å
)î
î
Å Ç
,î
î
Ç É!
listScoreGameDtosî
î
Ñ ï
)î
î
ï ñ
;î
î
ñ ó
}
ï
ï
 
finally
ñ
ñ
 
{
ó
ó
 "
semaphoreScoreFriend
ò
ò
 $
.
ò
ò
$ %
Release
ò
ò
% ,
(
ò
ò
, -
)
ò
ò
- .
;
ò
ò
. /
}
ô
ô
 
}
ö
ö
 	
private
ú
ú
 
async
ú
ú
 
Task
ú
ú
 
<
ú
ú
 
List
ú
ú
 
<
ú
ú
  
Profile
ú
ú
  '
>
ú
ú
' (
>
ú
ú
( )$
GetFriendsAndSelfAsync
ú
ú
* @
(
ú
ú
@ A

ProfileDto
ú
ú
A K
profileClientDto
ú
ú
L \
)
ú
ú
\ ]
{
ù
ù
 	
List
û
û
 
<
û
û
 
Profile
û
û
 
>
û
û
 
listFriends
û
û
 %
=
û
û
& '
await
û
û
( -
repositoryManager
û
û
. ?
.
û
û
? @
ProfileRepository
û
û
@ Q
.
û
û
Q R(
GetFriendsByProfileIdAsync
û
û
R l
(
û
û
l m
(
û
û
m n
int
û
û
n q
)
û
û
q r
profileClientDtoû
û
r Ç
.û
û
Ç É
Idû
û
É Ö
)û
û
Ö Ü
;û
û
Ü á
Profile
ü
ü
 !
profileClientRecord
ü
ü
 '
=
ü
ü
( )
await
ü
ü
* /
repositoryManager
ü
ü
0 A
.
ü
ü
A B
ProfileRepository
ü
ü
B S
.
ü
ü
S T!
FindEntityByIdAsync
ü
ü
T g
(
ü
ü
g h
(
ü
ü
h i
int
ü
ü
i l
)
ü
ü
l m
profileClientDto
ü
ü
m }
.
ü
ü
} ~
Idü
ü
~ Ä
)ü
ü
Ä Å
;ü
ü
Å Ç
listFriends
†
†
 
.
†
†
 
Add
†
†
 
(
†
†
 !
profileClientRecord
†
†
 /
)
†
†
/ 0
;
†
†
0 1
return
°
°
 
listFriends
°
°
 
;
°
°
 
}
¢
¢
 	
private
§
§
 
static
§
§
 
void
§
§
 
AssignPositions
§
§
 +
(
§
§
+ ,
List
§
§
, 0
<
§
§
0 1
ProfileScoreDto
§
§
1 @
>
§
§
@ A
listScoreGameDtos
§
§
B S
)
§
§
S T
{
•
•
 	
for
¶
¶
 
(
¶
¶
 
int
¶
¶
 
i
¶
¶
 
=
¶
¶
 
$num
¶
¶
 
;
¶
¶
 
i
¶
¶
 
<
¶
¶
 
listScoreGameDtos
¶
¶
  1
.
¶
¶
1 2
Count
¶
¶
2 7
;
¶
¶
7 8
i
¶
¶
9 :
++
¶
¶
: <
)
¶
¶
< =
{
ß
ß
 
listScoreGameDtos
®
®
 !
[
®
®
! "
i
®
®
" #
]
®
®
# $
.
®
®
$ %
Position
®
®
% -
=
®
®
. /
i
®
®
0 1
+
®
®
2 3
$num
®
®
4 5
;
®
®
5 6
}
©
©
 
}
™
™
 	
public
´
´
 
async
´
´
 
Task
´
´
 )
StartGameForAllPlayersAsync
´
´
 5
(
´
´
5 6
int
´
´
6 9
gameId
´
´
: @
)
´
´
@ A
{
¨
¨
 	
if
≠
≠
 
(
≠
≠
 $
connectedPlayersByGame
≠
≠
 &
.
≠
≠
& '
TryGetValue
≠
≠
' 2
(
≠
≠
2 3
gameId
≠
≠
3 9
,
≠
≠
9 :
out
≠
≠
; >
var
≠
≠
? B
playersInGame
≠
≠
C P
)
≠
≠
P Q
)
≠
≠
Q R
{
Æ
Æ
 
Game
Ø
Ø
 

gameRecord
Ø
Ø
 
=
Ø
Ø
  !
await
Ø
Ø
" '
repositoryManager
Ø
Ø
( 9
.
Ø
Ø
9 :
GameRepository
Ø
Ø
: H
.
Ø
Ø
H I!
FindEntityByIdAsync
Ø
Ø
I \
(
Ø
Ø
\ ]
gameId
Ø
Ø
] c
)
Ø
Ø
c d
;
Ø
Ø
d e
await
∞
∞
 
ChangeStatusGame
∞
∞
 &
(
∞
∞
& '

gameRecord
∞
∞
' 1
,
∞
∞
1 2
GameUtilities
∞
∞
3 @
.
∞
∞
@ A'
DOMAIN_GAME_STATUS_INGAME
∞
∞
A Z
)
∞
∞
Z [
;
∞
∞
[ \$
CancelExistingNotifier
±
±
 &
(
±
±
& '
gameId
±
±
' -
)
±
±
- .
;
±
±
. /
await
≤
≤
 )
NotifyPlayersGameStartAsync
≤
≤
 1
(
≤
≤
1 2
gameId
≤
≤
2 8
,
≤
≤
8 9
playersInGame
≤
≤
: G
)
≤
≤
G H
;
≤
≤
H I
await
≥
≥
 %
NextTurnInDataBaseAsync
≥
≥
 -
(
≥
≥
- .
gameId
≥
≥
. 4
,
≥
≥
4 5
-
≥
≥
6 7
$num
≥
≥
7 8
)
≥
≥
8 9
;
≥
≥
9 :-
StartPeriodicPlayerListNotifier
¥
¥
 /
(
¥
¥
/ 0
gameId
¥
¥
0 6
)
¥
¥
6 7
;
¥
¥
7 8(
DistributeInitialResources
µ
µ
 *
(
µ
µ
* +
gameId
µ
µ
+ 1
)
µ
µ
1 2
;
µ
µ
2 3(
NotifyPlayersWithResources
∂
∂
 *
(
∂
∂
* +
gameId
∂
∂
+ 1
)
∂
∂
1 2
;
∂
∂
2 3
}
∑
∑
 
}
∏
∏
 	
private
∫
∫
 
async
∫
∫
 
Task
∫
∫
 )
NotifyPlayersGameStartAsync
∫
∫
 6
(
∫
∫
6 7
int
∫
∫
7 :
gameId
∫
∫
; A
,
∫
∫
A B
ConcurrentBag
∫
∫
C P
<
∫
∫
P Q
ConnectedPlayer
∫
∫
Q `
>
∫
∫
` a
playersInGame
∫
∫
b o
)
∫
∫
o p
{
ª
ª
 	
List
º
º
 
<
º
º
 
Task
º
º
 
>
º
º
 
notificationTasks
º
º
 (
=
º
º
) *
new
º
º
+ .
List
º
º
/ 3
<
º
º
3 4
Task
º
º
4 8
>
º
º
8 9
(
º
º
9 :
)
º
º
: ;
;
º
º
; <
List
Ω
Ω
 
<
Ω
Ω
 
ConnectedPlayer
Ω
Ω
  
>
Ω
Ω
  !!
disconnectedPlayers
Ω
Ω
" 5
=
Ω
Ω
6 7
new
Ω
Ω
8 ;
List
Ω
Ω
< @
<
Ω
Ω
@ A
ConnectedPlayer
Ω
Ω
A P
>
Ω
Ω
P Q
(
Ω
Ω
Q R
)
Ω
Ω
R S
;
Ω
Ω
S T
foreach
ø
ø
 
(
ø
ø
 
ConnectedPlayer
ø
ø
 $
player
ø
ø
% +
in
ø
ø
, .
playersInGame
ø
ø
/ <
)
ø
ø
< =
{
¿
¿
 
notificationTasks
¡
¡
 !
.
¡
¡
! "
Add
¡
¡
" %
(
¡
¡
% &(
NotifyPlayerGameStartAsync
¡
¡
& @
(
¡
¡
@ A
player
¡
¡
A G
,
¡
¡
G H!
disconnectedPlayers
¡
¡
I \
)
¡
¡
\ ]
)
¡
¡
] ^
;
¡
¡
^ _
}
¬
¬
 
await
ƒ
ƒ
 
Task
ƒ
ƒ
 
.
ƒ
ƒ
 
WhenAll
ƒ
ƒ
 
(
ƒ
ƒ
 
notificationTasks
ƒ
ƒ
 0
)
ƒ
ƒ
0 1
;
ƒ
ƒ
1 2,
HandleDisconnectedPlayersStart
∆
∆
 *
(
∆
∆
* +
gameId
∆
∆
+ 1
,
∆
∆
1 2
playersInGame
∆
∆
3 @
,
∆
∆
@ A!
disconnectedPlayers
∆
∆
B U
)
∆
∆
U V
;
∆
∆
V W
}
«
«
 	
private
»
»
 
static
»
»
 
async
»
»
 
Task
»
»
 !(
NotifyPlayerGameStartAsync
»
»
" <
(
»
»
< =
ConnectedPlayer
»
»
= L
player
»
»
M S
,
»
»
S T
List
»
»
U Y
<
»
»
Y Z
ConnectedPlayer
»
»
Z i
>
»
»
i j!
disconnectedPlayers
»
»
k ~
)
»
»
~ 
{
…
…
 	
bool
 
 
 
isDisconnected
 
 
 
=
 
 
  !
true
 
 
" &
;
 
 
& '
try
Ã
Ã
 
{
Õ
Õ
 
if
Œ
Œ
 
(
Œ
Œ
 "
IsPlayerCallbackOpen
Œ
Œ
 (
(
Œ
Œ
( )
player
Œ
Œ
) /
)
Œ
Œ
/ 0
)
Œ
Œ
0 1
{
œ
œ
 
await
–
–
 
Task
–
–
 
.
–
–
 
Run
–
–
 "
(
–
–
" #
(
–
–
# $
)
–
–
$ %
=>
–
–
& (
player
–
–
) /
.
–
–
/ 0
gameCallback
–
–
0 <
.
–
–
< =$
StartGameForAllPlayers
–
–
= S
(
–
–
S T
)
–
–
T U
)
–
–
U V
;
–
–
V W
isDisconnected
—
—
 "
=
—
—
# $
false
—
—
% *
;
—
—
* +
}
“
“
 
}
”
”
 
catch
‘
‘
 
(
‘
‘
 1
#CommunicationObjectAbortedException
‘
‘
 6
ex
‘
‘
7 9
)
‘
‘
9 :
{
’
’
 
Log
÷
÷
 
.
÷
÷
 
Error
÷
÷
 
(
÷
÷
 
ex
÷
÷
 
,
÷
÷
 
ex
÷
÷
  
.
÷
÷
  !
Source
÷
÷
! '
)
÷
÷
' (
;
÷
÷
( )
}
◊
◊
 
catch
ÿ
ÿ
 
(
ÿ
ÿ
 $
CommunicationException
ÿ
ÿ
 )
ex
ÿ
ÿ
* ,
)
ÿ
ÿ
, -
{
Ÿ
Ÿ
 
Log
⁄
⁄
 
.
⁄
⁄
 
Error
⁄
⁄
 
(
⁄
⁄
 
ex
⁄
⁄
 
,
⁄
⁄
 
ex
⁄
⁄
  
.
⁄
⁄
  !
Source
⁄
⁄
! '
)
⁄
⁄
' (
;
⁄
⁄
( )
}
€
€
 
catch
‹
‹
 
(
‹
‹
 
	Exception
‹
‹
 
ex
‹
‹
 
)
‹
‹
  
{
›
›
 
Log
ﬁ
ﬁ
 
.
ﬁ
ﬁ
 
Error
ﬁ
ﬁ
 
(
ﬁ
ﬁ
 
ex
ﬁ
ﬁ
 
,
ﬁ
ﬁ
 
ex
ﬁ
ﬁ
  
.
ﬁ
ﬁ
  !
Source
ﬁ
ﬁ
! '
)
ﬁ
ﬁ
' (
;
ﬁ
ﬁ
( )
}
ﬂ
ﬂ
 
if
·
·
 
(
·
·
 
isDisconnected
·
·
 
)
·
·
 
{
‚
‚
 
lock
„
„
 
(
„
„
 !
disconnectedPlayers
„
„
 )
)
„
„
) *
{
‰
‰
 !
disconnectedPlayers
Â
Â
 '
.
Â
Â
' (
Add
Â
Â
( +
(
Â
Â
+ ,
player
Â
Â
, 2
)
Â
Â
2 3
;
Â
Â
3 4
}
Ê
Ê
 
}
Á
Á
 
}
Ë
Ë
 	
private
È
È
 
void
È
È
 ,
HandleDisconnectedPlayersStart
È
È
 3
(
È
È
3 4
int
È
È
4 7
gameId
È
È
8 >
,
È
È
> ?
ConcurrentBag
È
È
@ M
<
È
È
M N
ConnectedPlayer
È
È
N ]
>
È
È
] ^
playersInGame
È
È
_ l
,
È
È
l m
List
È
È
n r
<
È
È
r s
ConnectedPlayerÈ
È
s Ç
>È
È
Ç É#
disconnectedPlayersÈ
È
Ñ ó
)È
È
ó ò
{
Í
Í
 	
if
Î
Î
 
(
Î
Î
 !
disconnectedPlayers
Î
Î
 #
.
Î
Î
# $
Any
Î
Î
$ '
(
Î
Î
' (
)
Î
Î
( )
)
Î
Î
) *
{
Ï
Ï
 
List
Ì
Ì
 
<
Ì
Ì
 
ConnectedPlayer
Ì
Ì
 $
>
Ì
Ì
$ %
updatedPlayers
Ì
Ì
& 4
=
Ì
Ì
5 6
playersInGame
Ì
Ì
7 D
.
Ì
Ì
D E
Except
Ì
Ì
E K
(
Ì
Ì
K L!
disconnectedPlayers
Ì
Ì
L _
)
Ì
Ì
_ `
.
Ì
Ì
` a
ToList
Ì
Ì
a g
(
Ì
Ì
g h
)
Ì
Ì
h i
;
Ì
Ì
i j$
connectedPlayersByGame
Ó
Ó
 &
[
Ó
Ó
& '
gameId
Ó
Ó
' -
]
Ó
Ó
- .
=
Ó
Ó
/ 0
new
Ó
Ó
1 4
ConcurrentBag
Ó
Ó
5 B
<
Ó
Ó
B C
ConnectedPlayer
Ó
Ó
C R
>
Ó
Ó
R S
(
Ó
Ó
S T
updatedPlayers
Ó
Ó
T b
)
Ó
Ó
b c
;
Ó
Ó
c d
}
Ô
Ô
 
}


 	
public
Ú
Ú
 
async
Ú
Ú
 
Task
Ú
Ú
 
<
Ú
Ú
 
bool
Ú
Ú
 
>
Ú
Ú
 %
NextTurnInDataBaseAsync
Ú
Ú
  7
(
Ú
Ú
7 8
int
Ú
Ú
8 ;
gameId
Ú
Ú
< B
,
Ú
Ú
B C
int
Ú
Ú
D G
playerId
Ú
Ú
H P
)
Ú
Ú
P Q
{
Û
Û
 	
if
Ù
Ù
 
(
Ù
Ù
 $
IsGameReadyForNextTurn
Ù
Ù
 &
(
Ù
Ù
& '
gameId
Ù
Ù
' -
)
Ù
Ù
- .
)
Ù
Ù
. /
{
ı
ı
 
List
ˆ
ˆ
 
<
ˆ
ˆ
 
ConnectedPlayer
ˆ
ˆ
 $
>
ˆ
ˆ
$ %
orderedPlayers
ˆ
ˆ
& 4
=
ˆ
ˆ
5 6
GetOrderedPlayers
ˆ
ˆ
7 H
(
ˆ
ˆ
H I
gameId
ˆ
ˆ
I O
)
ˆ
ˆ
O P
;
ˆ
ˆ
P Q
int
˜
˜
 
currentTurnIndex
˜
˜
 $
=
˜
˜
% &!
GetCurrentTurnIndex
˜
˜
' :
(
˜
˜
: ;
gameId
˜
˜
; A
)
˜
˜
A B
;
˜
˜
B C
return
˘
˘
 
await
˘
˘
 
ProcessTurn
˘
˘
 (
(
˘
˘
( )
gameId
˘
˘
) /
,
˘
˘
/ 0
playerId
˘
˘
1 9
,
˘
˘
9 :
orderedPlayers
˘
˘
; I
,
˘
˘
I J
currentTurnIndex
˘
˘
K [
)
˘
˘
[ \
;
˘
˘
\ ]
}
˙
˙
 
return
˚
˚
 
false
˚
˚
 
;
˚
˚
 
}
¸
¸
 	
private
˛
˛
 
bool
˛
˛
 $
IsGameReadyForNextTurn
˛
˛
 +
(
˛
˛
+ ,
int
˛
˛
, /
gameId
˛
˛
0 6
)
˛
˛
6 7
{
ˇ
ˇ
 	
return
ÄÄ $
connectedPlayersByGame
ÄÄ )
.
ÄÄ) *
TryGetValue
ÄÄ* 5
(
ÄÄ5 6
gameId
ÄÄ6 <
,
ÄÄ< =
out
ÄÄ> A
var
ÄÄB E
playersInGame
ÄÄF S
)
ÄÄS T
&&
ÅÅ 
playersInGame
ÅÅ #
.
ÅÅ# $
Count
ÅÅ$ )
>
ÅÅ* +
GameUtilities
ÅÅ, 9
.
ÅÅ9 :%
MINIMUN_PLAYERS_BY_GAME
ÅÅ: Q
;
ÅÅQ R
}
ÇÇ 	
private
ÑÑ 
List
ÑÑ 
<
ÑÑ 
ConnectedPlayer
ÑÑ $
>
ÑÑ$ %
GetOrderedPlayers
ÑÑ& 7
(
ÑÑ7 8
int
ÑÑ8 ;
gameId
ÑÑ< B
)
ÑÑB C
{
ÖÖ 	
var
ÜÜ 
playersInGame
ÜÜ 
=
ÜÜ $
connectedPlayersByGame
ÜÜ  6
[
ÜÜ6 7
gameId
ÜÜ7 =
]
ÜÜ= >
;
ÜÜ> ?
return
áá 
playersInGame
áá  
.
áá  !
OrderBy
áá! (
(
áá( )
player
áá) /
=>
áá0 2
player
áá3 9
.
áá9 :
JoinedAt
áá: B
)
ááB C
.
ááC D
ToList
ááD J
(
ááJ K
)
ááK L
;
ááL M
}
àà 	
private
ää 
int
ää !
GetCurrentTurnIndex
ää '
(
ää' (
int
ää( +
gameId
ää, 2
)
ää2 3
{
ãã 	
return
åå 
gameCurrentTurns
åå #
.
åå# $
GetOrAdd
åå$ ,
(
åå, -
gameId
åå- 3
,
åå3 4
GameUtilities
åå5 B
.
ååB C 
NOT_TURNS_ASSIGNED
ååC U
)
ååU V
;
ååV W
}
çç 	
private
èè 
async
èè 
Task
èè 
<
èè 
bool
èè 
>
èè  
ProcessTurn
èè! ,
(
èè, -
int
èè- 0
gameId
èè1 7
,
èè7 8
int
èè9 <
playerId
èè= E
,
èèE F
List
èèG K
<
èèK L
ConnectedPlayer
èèL [
>
èè[ \
orderedPlayers
èè] k
,
èèk l
int
èèm p
currentTurnIndexèèq Å
)èèÅ Ç
{
êê 	
if
ëë 
(
ëë 
currentTurnIndex
ëë  
==
ëë! #
GameUtilities
ëë$ 1
.
ëë1 2 
NOT_TURNS_ASSIGNED
ëë2 D
)
ëëD E
{
íí 
return
ìì 
await
ìì 
StartFirstTurn
ìì +
(
ìì+ ,
gameId
ìì, 2
,
ìì2 3
orderedPlayers
ìì4 B
)
ììB C
;
ììC D
}
îî 
if
ññ 
(
ññ 
playerId
ññ 
==
ññ 
GameUtilities
ññ )
.
ññ) * 
NOT_TURNS_ASSIGNED
ññ* <
)
ññ< =
{
óó 
CancelTurnTimer
òò 
(
òò  
gameId
òò  &
)
òò& '
;
òò' (
return
ôô 
await
ôô 
HandleNextTurn
ôô +
(
ôô+ ,
gameId
ôô, 2
,
ôô2 3
orderedPlayers
ôô4 B
,
ôôB C
currentTurnIndex
ôôD T
)
ôôT U
;
ôôU V
}
öö 
return
úú 
await
úú 
HandlePlayerTurn
úú )
(
úú) *
gameId
úú* 0
,
úú0 1
playerId
úú2 :
,
úú: ;
orderedPlayers
úú< J
,
úúJ K
currentTurnIndex
úúL \
)
úú\ ]
;
úú] ^
}
ùù 	
private
üü 
async
üü 
Task
üü 
<
üü 
bool
üü 
>
üü  
StartFirstTurn
üü! /
(
üü/ 0
int
üü0 3
gameId
üü4 :
,
üü: ;
List
üü< @
<
üü@ A
ConnectedPlayer
üüA P
>
üüP Q
orderedPlayers
üüR `
)
üü` a
{
†† 	
int
°° 
currentTurnIndex
°°  
=
°°! "
$num
°°# $
;
°°$ %
gameCurrentTurns
¢¢ 
[
¢¢ 
gameId
¢¢ #
]
¢¢# $
=
¢¢% &
currentTurnIndex
¢¢' 7
;
¢¢7 8
await
§§ '
NotifyAllPlayersAboutTurn
§§ +
(
§§+ ,
gameId
§§, 2
,
§§2 3
orderedPlayers
§§4 B
,
§§B C
currentTurnIndex
§§D T
)
§§T U
;
§§U V
_
•• 
=
•• 
Task
•• 
.
•• 
Run
•• 
(
•• 
(
•• 
)
•• 
=>
•• 
StartTurnTimer
•• -
(
••- .
gameId
••. 4
,
••4 5
orderedPlayers
••6 D
,
••D E
currentTurnIndex
••F V
)
••V W
)
••W X
;
••X Y
return
ßß 
true
ßß 
;
ßß 
}
®® 	
private
™™ 
async
™™ 
Task
™™ 
<
™™ 
bool
™™ 
>
™™  
HandlePlayerTurn
™™! 1
(
™™1 2
int
™™2 5
gameId
™™6 <
,
™™< =
int
™™> A
playerId
™™B J
,
™™J K
List
™™L P
<
™™P Q
ConnectedPlayer
™™Q `
>
™™` a
orderedPlayers
™™b p
,
™™p q
int
™™r u
currentTurnIndex™™v Ü
)™™Ü á
{
´´ 	
if
¨¨ 
(
¨¨ 
!
¨¨ #
IsPlayerInCurrentTurn
¨¨ &
(
¨¨& '
orderedPlayers
¨¨' 5
,
¨¨5 6
playerId
¨¨7 ?
,
¨¨? @
currentTurnIndex
¨¨A Q
)
¨¨Q R
)
¨¨R S
{
≠≠ 
return
ÆÆ 
false
ÆÆ 
;
ÆÆ 
}
ØØ 
CancelTurnTimer
±± 
(
±± 
gameId
±± "
)
±±" #
;
±±# $
return
≤≤ 
await
≤≤ 
HandleNextTurn
≤≤ '
(
≤≤' (
gameId
≤≤( .
,
≤≤. /
orderedPlayers
≤≤0 >
,
≤≤> ?
currentTurnIndex
≤≤@ P
)
≤≤P Q
;
≤≤Q R
}
≥≥ 	
private
µµ 
static
µµ 
bool
µµ #
IsPlayerInCurrentTurn
µµ 1
(
µµ1 2
List
µµ2 6
<
µµ6 7
ConnectedPlayer
µµ7 F
>
µµF G
orderedPlayers
µµH V
,
µµV W
int
µµX [
playerId
µµ\ d
,
µµd e
int
µµf i
currentTurnIndex
µµj z
)
µµz {
{
∂∂ 	
int
∑∑ 
currentIndex
∑∑ 
=
∑∑ 
orderedPlayers
∑∑ -
.
∑∑- .
	FindIndex
∑∑. 7
(
∑∑7 8
player
∑∑8 >
=>
∑∑? A
player
∏∏ 
.
∏∏ 
profileClientDto
∏∏ '
?
∏∏' (
.
∏∏( )
Id
∏∏) +
==
∏∏, .
playerId
∏∏/ 7
||
∏∏8 :
player
∏∏; A
.
∏∏A B
guestAccountDto
∏∏B Q
?
∏∏Q R
.
∏∏R S
Id
∏∏S U
==
∏∏V X
playerId
∏∏Y a
)
∏∏a b
;
∏∏b c
return
∫∫ 
currentIndex
∫∫ 
!=
∫∫  "
GameUtilities
∫∫# 0
.
∫∫0 1 
NOT_TURNS_ASSIGNED
∫∫1 C
&&
∫∫D F
currentIndex
∫∫G S
==
∫∫T V
currentTurnIndex
∫∫W g
;
∫∫g h
}
ªª 	
private
ææ 
async
ææ 
Task
ææ 
<
ææ 
bool
ææ 
>
ææ  
HandleNextTurn
ææ! /
(
ææ/ 0
int
ææ0 3
gameId
ææ4 :
,
ææ: ;
List
ææ< @
<
ææ@ A
ConnectedPlayer
ææA P
>
ææP Q
orderedPlayers
ææR `
,
ææ` a
int
ææb e
currentTurnIndex
ææf v
)
ææv w
{
øø 	
if
¿¿ 
(
¿¿ 
orderedPlayers
¿¿ 
.
¿¿ 
Count
¿¿ $
==
¿¿% '
GameUtilities
¿¿( 5
.
¿¿5 6%
MINIMUN_PLAYERS_BY_GAME
¿¿6 M
)
¿¿M N
{
¡¡ 
EndGame
¬¬ 
(
¬¬ 
gameId
¬¬ 
)
¬¬ 
;
¬¬  
return
√√ 
false
√√ 
;
√√ 
}
ƒƒ 
bool
∆∆  
continueProcessing
∆∆ #
=
∆∆$ %
true
∆∆& *
;
∆∆* +
while
»» 
(
»»  
continueProcessing
»» %
)
»»% &
{
…… 
int
   
	nextIndex
   
=
   
(
    !
currentTurnIndex
  ! 1
+
  2 3
GameUtilities
  4 A
.
  A B
ONE_TURN
  B J
)
  J K
%
  L M
orderedPlayers
  N \
.
  \ ]
Count
  ] b
;
  b c
ConnectedPlayer
ÀÀ 
player
ÀÀ  &
=
ÀÀ' (
orderedPlayers
ÀÀ) 7
[
ÀÀ7 8
	nextIndex
ÀÀ8 A
]
ÀÀA B
;
ÀÀB C
if
ÕÕ 
(
ÕÕ "
IsPlayerCallbackOpen
ÕÕ (
(
ÕÕ( )
player
ÕÕ) /
)
ÕÕ/ 0
)
ÕÕ0 1
{
ŒŒ 
gameCurrentTurns
œœ $
[
œœ$ %
gameId
œœ% +
]
œœ+ ,
=
œœ- .
	nextIndex
œœ/ 8
;
œœ8 9
await
–– '
NotifyAllPlayersAboutTurn
–– 3
(
––3 4
gameId
––4 :
,
––: ;
orderedPlayers
––< J
,
––J K
	nextIndex
––L U
)
––U V
;
––V W
_
—— 
=
—— 
Task
—— 
.
—— 
Run
——  
(
——  !
(
——! "
)
——" #
=>
——$ &
StartTurnTimer
——' 5
(
——5 6
gameId
——6 <
,
——< =
orderedPlayers
——> L
,
——L M
	nextIndex
——N W
)
——W X
)
——X Y
;
——Y Z 
continueProcessing
““ &
=
““' (
false
““) .
;
““. /
}
”” 
else
‘‘ 
{
’’ 
orderedPlayers
÷÷ "
.
÷÷" #
RemoveAt
÷÷# +
(
÷÷+ ,
	nextIndex
÷÷, 5
)
÷÷5 6
;
÷÷6 7
int
ÿÿ 
playerId
ÿÿ  
=
ÿÿ! ",
GetPlayerIdFromConnectedPlayer
ÿÿ# A
(
ÿÿA B
player
ÿÿB H
)
ÿÿH I
;
ÿÿI J
await
ŸŸ &
RemoveDisconnectedPlayer
ŸŸ 2
(
ŸŸ2 3
gameId
ŸŸ3 9
,
ŸŸ9 :
playerId
ŸŸ; C
)
ŸŸC D
;
ŸŸD E
if
€€ 
(
€€ 
orderedPlayers
€€ &
.
€€& '
Count
€€' ,
==
€€- /
GameUtilities
€€0 =
.
€€= >.
 NUMBER_OF_PLAYERS_TO_CANCEL_GAME
€€> ^
)
€€^ _
{
‹‹ 
gameCurrentTurns
›› (
.
››( )
	TryRemove
››) 2
(
››2 3
gameId
››3 9
,
››9 :
out
››; >
_
››? @
)
››@ A
;
››A B
CancelTurnTimer
ﬁﬁ '
(
ﬁﬁ' (
gameId
ﬁﬁ( .
)
ﬁﬁ. /
;
ﬁﬁ/ 0 
continueProcessing
ﬂﬂ *
=
ﬂﬂ+ ,
false
ﬂﬂ- 2
;
ﬂﬂ2 3
}
‡‡ 
else
·· 
{
‚‚ 
currentTurnIndex
„„ (
=
„„) *
	nextIndex
„„+ 4
%
„„5 6
orderedPlayers
„„7 E
.
„„E F
Count
„„F K
;
„„K L
}
‰‰ 
}
ÂÂ 
}
ÊÊ 
return
ËË 
!
ËË  
continueProcessing
ËË &
;
ËË& '
}
ÈÈ 	
private
ÎÎ 
async
ÎÎ 
Task
ÎÎ '
NotifyAllPlayersAboutTurn
ÎÎ 4
(
ÎÎ4 5
int
ÎÎ5 8
gameId
ÎÎ9 ?
,
ÎÎ? @
List
ÎÎA E
<
ÎÎE F
ConnectedPlayer
ÎÎF U
>
ÎÎU V
orderedPlayers
ÎÎW e
,
ÎÎe f
int
ÎÎg j
currentTurnIndex
ÎÎk {
)
ÎÎ{ |
{
ÏÏ 	
List
ÌÌ 
<
ÌÌ !
PlayerTurnStatusDto
ÌÌ $
>
ÌÌ$ %
playersTurnStatus
ÌÌ& 7
=
ÌÌ8 9.
 OrderPlayerTurnStatusByIndexList
ÌÌ: Z
(
ÌÌZ [
orderedPlayers
ÌÌ[ i
,
ÌÌi j
currentTurnIndex
ÌÌk {
)
ÌÌ{ |
;
ÌÌ| }
bool
ÔÔ "
needEliminatePlayers
ÔÔ %
=
ÔÔ& '
true
ÔÔ( ,
;
ÔÔ, -
List
 
<
 
ConnectedPlayer
  
>
  !!
disconnectedPlayers
" 5
=
6 7
new
8 ;
List
< @
<
@ A
ConnectedPlayer
A P
>
P Q
(
Q R
)
R S
;
S T
foreach
ÚÚ 
(
ÚÚ 
ConnectedPlayer
ÚÚ $
player
ÚÚ% +
in
ÚÚ, .
orderedPlayers
ÚÚ/ =
)
ÚÚ= >
{
ÛÛ 
try
ÙÙ 
{
ıı 
if
ˆˆ 
(
ˆˆ "
IsPlayerCallbackOpen
ˆˆ ,
(
ˆˆ, -
player
ˆˆ- 3
)
ˆˆ3 4
)
ˆˆ4 5
{
˜˜ 
await
¯¯ 
Task
¯¯ "
.
¯¯" #
Run
¯¯# &
(
¯¯& '
(
¯¯' (
)
¯¯( )
=>
¯¯* ,
player
¯¯- 3
.
¯¯3 4
gameCallback
¯¯4 @
?
¯¯@ A
.
¯¯A B
UpdateTurnStatus
¯¯B R
(
¯¯R S
playersTurnStatus
¯¯S d
)
¯¯d e
)
¯¯e f
;
¯¯f g"
needEliminatePlayers
˘˘ ,
=
˘˘- .
false
˘˘/ 4
;
˘˘4 5
}
˙˙ 
}
˚˚ 
catch
¸¸ 
(
¸¸ 1
#CommunicationObjectAbortedException
¸¸ :
ex
¸¸; =
)
¸¸= >
{
˝˝ 
Log
˛˛ 
.
˛˛ 
Error
˛˛ 
(
˛˛ 
ex
˛˛  
,
˛˛  !
ex
˛˛" $
.
˛˛$ %
Source
˛˛% +
)
˛˛+ ,
;
˛˛, -
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ $
CommunicationException
ÄÄ -
ex
ÄÄ. 0
)
ÄÄ0 1
{
ÅÅ 
Log
ÇÇ 
.
ÇÇ 
Error
ÇÇ 
(
ÇÇ 
ex
ÇÇ  
,
ÇÇ  !
ex
ÇÇ" $
.
ÇÇ$ %
Source
ÇÇ% +
)
ÇÇ+ ,
;
ÇÇ, -
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
	Exception
ÑÑ  
ex
ÑÑ! #
)
ÑÑ# $
{
ÖÖ 
Log
ÜÜ 
.
ÜÜ 
Error
ÜÜ 
(
ÜÜ 
ex
ÜÜ  
,
ÜÜ  !
ex
ÜÜ" $
.
ÜÜ$ %
Source
ÜÜ% +
)
ÜÜ+ ,
;
ÜÜ, -
}
áá 
if
ââ 
(
ââ "
needEliminatePlayers
ââ (
)
ââ( )
{
ää !
disconnectedPlayers
ãã '
.
ãã' (
Add
ãã( +
(
ãã+ ,
player
ãã, 2
)
ãã2 3
;
ãã3 4
}
åå 
}
çç 
if
èè 
(
èè !
disconnectedPlayers
èè #
.
èè# $
Any
èè$ '
(
èè' (
)
èè( )
)
èè) *
{
êê 
await
ëë '
RemoveDisconnectedPlayers
ëë /
(
ëë/ 0
gameId
ëë0 6
,
ëë6 7!
disconnectedPlayers
ëë8 K
)
ëëK L
;
ëëL M
}
íí 
}
ìì 	
private
ïï 
List
ïï 
<
ïï !
PlayerTurnStatusDto
ïï (
>
ïï( ).
 OrderPlayerTurnStatusByIndexList
ïï* J
(
ïïJ K
List
ïïK O
<
ïïO P
ConnectedPlayer
ïïP _
>
ïï_ `
orderedPlayers
ïïa o
,
ïïo p
int
ïïq t
currentTurnIndexïïu Ö
)ïïÖ Ü
{
ññ 	
return
óó 
orderedPlayers
óó !
.
óó! "
Select
óó" (
(
óó( )
(
óó) *
player
óó* 0
,
óó0 1
index
óó2 7
)
óó7 8
=>
óó9 ;
new
óó< ?!
PlayerTurnStatusDto
óó@ S
{
òò 
ProfileTurnDto
ôô 
=
ôô  
player
ôô! '
.
ôô' (
profileClientDto
ôô( 8
,
ôô8 9!
GuestAccountTurnDto
öö #
=
öö$ %
player
öö& ,
.
öö, -
guestAccountDto
öö- <
,
öö< =
IsTurn
õõ 
=
õõ 
index
õõ 
==
õõ !
currentTurnIndex
õõ" 2
,
õõ2 3
Points
úú 
=
úú 
player
úú 
.
úú  
Points
úú  &
}
ûû 
)
ûû 
.
ûû 
ToList
ûû 
(
ûû 
)
ûû 
;
ûû 
}
üü 	
private
†† 
async
†† 
Task
†† 
StartTurnTimer
†† )
(
††) *
int
††* -
gameId
††. 4
,
††4 5
List
††6 :
<
††: ;
ConnectedPlayer
††; J
>
††J K
orderedPlayers
††L Z
,
††Z [
int
††\ _
currentTurnIndex
††` p
,
††p q
int
††r u"
turnDurationSeconds††v â
=††ä ã
GameUtilities††å ô
.††ô ö"
TIME_TURN_DURATION††ö ¨
)††¨ ≠
{
°° 	
if
¢¢ 
(
¢¢ &
cancelTokenTurnCountDown
¢¢ (
.
¢¢( )
	TryRemove
¢¢) 2
(
¢¢2 3
gameId
¢¢3 9
,
¢¢9 :
out
¢¢; >%
CancellationTokenSource
¢¢? V!
existingCancelToken
¢¢W j
)
¢¢j k
)
¢¢k l
{
££ !
existingCancelToken
§§ #
.
§§# $
Cancel
§§$ *
(
§§* +
)
§§+ ,
;
§§, -
}
•• %
CancellationTokenSource
ßß #
cancellationToken
ßß$ 5
=
ßß6 7
new
ßß8 ;%
CancellationTokenSource
ßß< S
(
ßßS T
)
ßßT U
;
ßßU V&
cancelTokenTurnCountDown
®® $
[
®®$ %
gameId
®®% +
]
®®+ ,
=
®®- .
cancellationToken
®®/ @
;
®®@ A
try
™™ 
{
´´ 
for
¨¨ 
(
¨¨ 
int
¨¨ 
remainingTime
¨¨ &
=
¨¨' (!
turnDurationSeconds
¨¨) <
;
¨¨< =
remainingTime
¨¨> K
>
¨¨L M
GameUtilities
¨¨N [
.
¨¨[ \#
TIME_MINIMUN_TO_START
¨¨\ q
;
¨¨q r
remainingTime¨¨s Ä
--¨¨Ä Ç
)¨¨Ç É
{
≠≠ 
await
ÆÆ *
NotifyTimeRemainingToPlayers
ÆÆ 6
(
ÆÆ6 7
gameId
ÆÆ7 =
,
ÆÆ= >
remainingTime
ÆÆ? L
)
ÆÆL M
;
ÆÆM N
await
ØØ 
Task
ØØ 
.
ØØ 
Delay
ØØ $
(
ØØ$ %
GameUtilities
ØØ% 2
.
ØØ2 3
TIME_MILISECONDS
ØØ3 C
,
ØØC D
cancellationToken
ØØE V
.
ØØV W
Token
ØØW \
)
ØØ\ ]
;
ØØ] ^
}
∞∞ 
await
≤≤ 
HandleNextTurn
≤≤ $
(
≤≤$ %
gameId
≤≤% +
,
≤≤+ ,
orderedPlayers
≤≤- ;
,
≤≤; <
currentTurnIndex
≤≤= M
)
≤≤M N
;
≤≤N O
}
≥≥ 
catch
¥¥ 
(
¥¥ #
TaskCanceledException
¥¥ (
ex
¥¥) +
)
¥¥+ ,
{
µµ 
Log
∂∂ 
.
∂∂ 
Error
∂∂ 
(
∂∂ 
ex
∂∂ 
,
∂∂ 
ex
∂∂  
.
∂∂  !
Source
∂∂! '
)
∂∂' (
;
∂∂( )
}
∑∑ 
}
∏∏ 	
private
∫∫ 
async
∫∫ 
Task
∫∫ *
NotifyTimeRemainingToPlayers
∫∫ 7
(
∫∫7 8
int
∫∫8 ;
gameId
∫∫< B
,
∫∫B C
int
∫∫D G
remainingTime
∫∫H U
)
∫∫U V
{
ªª 	
if
ºº 
(
ºº $
connectedPlayersByGame
ºº &
.
ºº& '
TryGetValue
ºº' 2
(
ºº2 3
gameId
ºº3 9
,
ºº9 :
out
ºº; >
var
ºº? B
playersInGame
ººC P
)
ººP Q
)
ººQ R
{
ΩΩ 
foreach
ææ 
(
ææ 
var
ææ 
player
ææ #
in
ææ$ &
playersInGame
ææ' 4
)
ææ4 5
{
øø 
try
¿¿ 
{
¡¡ 
if
¬¬ 
(
¬¬ 
player
¬¬ "
.
¬¬" #
gameCallback
¬¬# /
!=
¬¬0 2
null
¬¬3 7
&&
¬¬8 :"
IsPlayerCallbackOpen
¬¬; O
(
¬¬O P
player
¬¬P V
)
¬¬V W
)
¬¬W X
{
√√ 
await
ƒƒ !
Task
ƒƒ" &
.
ƒƒ& '
Run
ƒƒ' *
(
ƒƒ* +
(
ƒƒ+ ,
)
ƒƒ, -
=>
ƒƒ. 0
player
ƒƒ1 7
.
ƒƒ7 8
gameCallback
ƒƒ8 D
.
ƒƒD E%
UpdateTurnTimeRemaining
ƒƒE \
(
ƒƒ\ ]
remainingTime
ƒƒ] j
)
ƒƒj k
)
ƒƒk l
;
ƒƒl m
}
≈≈ 
}
∆∆ 
catch
«« 
(
«« 1
#CommunicationObjectAbortedException
«« >
ex
««? A
)
««A B
{
»» 
Log
…… 
.
…… 
Error
…… !
(
……! "
ex
……" $
,
……$ %
ex
……& (
.
……( )
Source
……) /
)
……/ 0
;
……0 1
}
   
catch
ÀÀ 
(
ÀÀ $
CommunicationException
ÀÀ 1
ex
ÀÀ2 4
)
ÀÀ4 5
{
ÃÃ 
Log
ÕÕ 
.
ÕÕ 
Error
ÕÕ !
(
ÕÕ! "
ex
ÕÕ" $
,
ÕÕ$ %
ex
ÕÕ& (
.
ÕÕ( )
Source
ÕÕ) /
)
ÕÕ/ 0
;
ÕÕ0 1
}
ŒŒ 
catch
œœ 
(
œœ 
	Exception
œœ $
ex
œœ% '
)
œœ' (
{
–– 
Log
—— 
.
—— 
Error
—— !
(
——! "
ex
——" $
,
——$ %
ex
——& (
.
——( )
Source
——) /
)
——/ 0
;
——0 1
}
““ 
}
”” 
}
‘‘ 
}
’’ 	
private
◊◊ 
void
◊◊ 
CancelTurnTimer
◊◊ $
(
◊◊$ %
int
◊◊% (
gameId
◊◊) /
)
◊◊/ 0
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ &
cancelTokenTurnCountDown
ŸŸ (
.
ŸŸ( )
	TryRemove
ŸŸ) 2
(
ŸŸ2 3
gameId
ŸŸ3 9
,
ŸŸ9 :
out
ŸŸ; >%
CancellationTokenSource
ŸŸ? V

cancelTime
ŸŸW a
)
ŸŸa b
)
ŸŸb c
{
⁄⁄ 
try
€€ 
{
‹‹ 

cancelTime
›› 
.
›› 
Cancel
›› %
(
››% &
)
››& '
;
››' (
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ %
ObjectDisposedException
ﬂﬂ -
ex
ﬂﬂ. 0
)
ﬂﬂ0 1
{
‡‡ 
Log
·· 
.
·· 
Information
·· #
(
··# $
ex
··$ &
,
··& '
ex
··( *
.
··* +
Source
··+ 1
)
··1 2
;
··2 3
}
‚‚ 
catch
„„ 
(
„„  
AggregateException
„„ (
ex
„„) +
)
„„+ ,
{
‰‰ 
Log
ÂÂ 
.
ÂÂ 
Information
ÂÂ #
(
ÂÂ# $
ex
ÂÂ$ &
,
ÂÂ& '
ex
ÂÂ( *
.
ÂÂ* +
Source
ÂÂ+ 1
)
ÂÂ1 2
;
ÂÂ2 3
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ 
	Exception
ÁÁ 
ex
ÁÁ  "
)
ÁÁ" #
{
ËË 
Log
ÈÈ 
.
ÈÈ 
Information
ÈÈ #
(
ÈÈ# $
ex
ÈÈ$ &
,
ÈÈ& '
ex
ÈÈ( *
.
ÈÈ* +
Source
ÈÈ+ 1
)
ÈÈ1 2
;
ÈÈ2 3
}
ÍÍ 
}
ÎÎ 
}
ÏÏ 	
private
ÌÌ 
async
ÌÌ 
Task
ÌÌ '
RemoveDisconnectedPlayers
ÌÌ 4
(
ÌÌ4 5
int
ÌÌ5 8
gameId
ÌÌ9 ?
,
ÌÌ? @
List
ÌÌA E
<
ÌÌE F
ConnectedPlayer
ÌÌF U
>
ÌÌU V!
disconnectedPlayers
ÌÌW j
)
ÌÌj k
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ $
connectedPlayersByGame
ÔÔ &
.
ÔÔ& '
TryGetValue
ÔÔ' 2
(
ÔÔ2 3
gameId
ÔÔ3 9
,
ÔÔ9 :
out
ÔÔ; >
var
ÔÔ? B
playersInGame
ÔÔC P
)
ÔÔP Q
)
ÔÔQ R
{
 
List
ÒÒ 
<
ÒÒ 
ConnectedPlayer
ÒÒ $
>
ÒÒ$ %
updatedPlayers
ÒÒ& 4
=
ÒÒ5 6
playersInGame
ÒÒ7 D
.
ÒÒD E
Except
ÒÒE K
(
ÒÒK L!
disconnectedPlayers
ÒÒL _
)
ÒÒ_ `
.
ÒÒ` a
ToList
ÒÒa g
(
ÒÒg h
)
ÒÒh i
;
ÒÒi j
await
ÛÛ '
ProcessDisconnectedPlayer
ÛÛ /
(
ÛÛ/ 0!
disconnectedPlayers
ÛÛ0 C
,
ÛÛC D
gameId
ÛÛE K
)
ÛÛK L
;
ÛÛL M
if
ıı 
(
ıı 
updatedPlayers
ıı "
.
ıı" #
Count
ıı# (
==
ıı) +
GameUtilities
ıı, 9
.
ıı9 :%
MINIMUN_PLAYERS_BY_GAME
ıı: Q
)
ııQ R
{
ˆˆ 
EndGame
˜˜ 
(
˜˜ 
gameId
˜˜ "
)
˜˜" #
;
˜˜# $
return
¯¯ 
;
¯¯ 
}
˘˘ 
if
˚˚ 
(
˚˚ 
updatedPlayers
˚˚ "
.
˚˚" #
Any
˚˚# &
(
˚˚& '
)
˚˚' (
)
˚˚( )
{
¸¸ $
connectedPlayersByGame
˝˝ *
[
˝˝* +
gameId
˝˝+ 1
]
˝˝1 2
=
˝˝3 4
new
˝˝5 8
ConcurrentBag
˝˝9 F
<
˝˝F G
ConnectedPlayer
˝˝G V
>
˝˝V W
(
˝˝W X
updatedPlayers
˝˝X f
)
˝˝f g
;
˝˝g h
if
ˇˇ 
(
ˇˇ 
gameCurrentTurns
ˇˇ (
.
ˇˇ( )
TryGetValue
ˇˇ) 4
(
ˇˇ4 5
gameId
ˇˇ5 ;
,
ˇˇ; <
out
ˇˇ= @
int
ˇˇA D
currentTurnIndex
ˇˇE U
)
ˇˇU V
)
ˇˇV W
{
ÄÄ 
ConnectedPlayer
ÅÅ '
currentTurnPlayer
ÅÅ( 9
=
ÅÅ: ;
playersInGame
ÅÅ< I
.
ÅÅI J 
ElementAtOrDefault
ÅÅJ \
(
ÅÅ\ ]
currentTurnIndex
ÅÅ] m
)
ÅÅm n
;
ÅÅn o
if
ÉÉ 
(
ÉÉ !
disconnectedPlayers
ÉÉ /
.
ÉÉ/ 0
Contains
ÉÉ0 8
(
ÉÉ8 9
currentTurnPlayer
ÉÉ9 J
)
ÉÉJ K
)
ÉÉK L
{
ÑÑ 
await
ÖÖ !
HandleNextTurn
ÖÖ" 0
(
ÖÖ0 1
gameId
ÖÖ1 7
,
ÖÖ7 8
updatedPlayers
ÖÖ9 G
,
ÖÖG H
currentTurnIndex
ÖÖI Y
)
ÖÖY Z
;
ÖÖZ [
}
ÜÜ 
}
áá 
}
àà 
else
ââ 
{
ää $
connectedPlayersByGame
ãã *
.
ãã* +
	TryRemove
ãã+ 4
(
ãã4 5
gameId
ãã5 ;
,
ãã; <
out
ãã= @
_
ããA B
)
ããB C
;
ããC D
CancelTurnTimer
åå #
(
åå# $
gameId
åå$ *
)
åå* +
;
åå+ ,
}
çç 
}
éé 
}
èè 	
private
ëë 
async
ëë 
Task
ëë '
ProcessDisconnectedPlayer
ëë 4
(
ëë4 5
List
ëë5 9
<
ëë9 :
ConnectedPlayer
ëë: I
>
ëëI J!
disconnectedPlayers
ëëK ^
,
ëë^ _
int
ëë` c
gameId
ëëd j
)
ëëj k
{
íí 	
foreach
ìì 
(
ìì 
ConnectedPlayer
ìì $ 
disconnectedPlayer
ìì% 7
in
ìì8 :!
disconnectedPlayers
ìì; N
)
ììN O
{
îî 
int
ïï 
?
ïï 
playerId
ïï 
=
ïï  
disconnectedPlayer
ïï  2
.
ïï2 3
profileClientDto
ïï3 C
?
ïïC D
.
ïïD E
Id
ïïE G
??
ïïH J 
disconnectedPlayer
ïïK ]
.
ïï] ^
guestAccountDto
ïï^ m
?
ïïm n
.
ïïn o
Id
ïïo q
;
ïïq r
if
óó 
(
óó 
playerId
óó 
.
óó 
HasValue
óó %
)
óó% &
{
òò 
await
ôô &
RemoveDisconnectedPlayer
ôô 2
(
ôô2 3
gameId
ôô3 9
,
ôô9 :
playerId
ôô; C
.
ôôC D
Value
ôôD I
)
ôôI J
;
ôôJ K
}
öö 
}
õõ 
}
úú 	
public
üü 
async
üü 
Task
üü &
ThrowDiceInDataBaseAsync
üü 2
(
üü2 3
int
üü3 6
gameId
üü7 =
,
üü= >
int
üü? B
playerId
üüC K
,
üüK L
int
üüM P
	valueDice
üüQ Z
)
üüZ [
{
†† 	
int
°° 

resultDice
°° 
=
°° 
	valueDice
°° &
;
°°& '
if
££ 
(
££ $
connectedPlayersByGame
££ &
.
££& '
TryGetValue
££' 2
(
££2 3
gameId
££3 9
,
££9 :
out
££; >
ConcurrentBag
££? L
<
££L M
ConnectedPlayer
££M \
>
££\ ]
playersInGame
££^ k
)
££k l
)
££l m
{
§§ 
ConnectedPlayer
•• 
senderPlayer
••  ,
=
••- . 
GetConnectedPlayer
••/ A
(
••A B
gameId
••B H
,
••H I
playerId
••J R
)
••R S
;
••S T
List
ßß 
<
ßß 
Task
ßß 
>
ßß 
tasks
ßß  
=
ßß! "
new
ßß# &
List
ßß' +
<
ßß+ ,
Task
ßß, 0
>
ßß0 1
(
ßß1 2
)
ßß2 3
;
ßß3 4
foreach
©© 
(
©© 
ConnectedPlayer
©© (
player
©©) /
in
©©0 2
playersInGame
©©3 @
)
©©@ A
{
™™ 
tasks
´´ 
.
´´ 
Add
´´ 
(
´´ -
NotifyPlayerWithDiceResultAsync
´´ =
(
´´= >
player
´´> D
,
´´D E
senderPlayer
´´F R
,
´´R S

resultDice
´´T ^
)
´´^ _
)
´´_ `
;
´´` a
}
¨¨ 
await
ÆÆ 
Task
ÆÆ 
.
ÆÆ 
WhenAll
ÆÆ "
(
ÆÆ" #
tasks
ÆÆ# (
)
ÆÆ( )
;
ÆÆ) *
await
ØØ &
DistributeResourcesAsync
ØØ .
(
ØØ. /
gameId
ØØ/ 5
,
ØØ5 6

resultDice
ØØ7 A
)
ØØA B
;
ØØB C
}
∞∞ 
}
±± 	
private
≤≤ 
static
≤≤ 
async
≤≤ 
Task
≤≤ !-
NotifyPlayerWithDiceResultAsync
≤≤" A
(
≤≤A B
ConnectedPlayer
≤≤B Q
player
≤≤R X
,
≤≤X Y
ConnectedPlayer
≤≤Z i
senderPlayer
≤≤j v
,
≤≤v w
int
≤≤x {

resultDice≤≤| Ü
)≤≤Ü á
{
≥≥ 	
if
¥¥ 
(
¥¥ 
player
¥¥ 
==
¥¥ 
null
¥¥ 
||
¥¥ !
player
¥¥" (
==
¥¥) +
senderPlayer
¥¥, 8
||
¥¥9 ;
player
¥¥< B
.
¥¥B C
gameCallback
¥¥C O
==
¥¥P R
null
¥¥S W
)
¥¥W X
{
µµ 
return
∂∂ 
;
∂∂ 
}
∑∑ 
if
ππ 
(
ππ "
IsPlayerCallbackOpen
ππ $
(
ππ$ %
player
ππ% +
)
ππ+ ,
)
ππ, -
{
∫∫ 
await
ªª ,
HandlePlayerCommunicationAsync
ªª 4
(
ªª4 5
player
ªª5 ;
,
ªª; <

resultDice
ªª= G
)
ªªG H
;
ªªH I
}
ºº 
}
ΩΩ 	
private
øø 
static
øø 
async
øø 
Task
øø !,
HandlePlayerCommunicationAsync
øø" @
(
øø@ A
ConnectedPlayer
øøA P
player
øøQ W
,
øøW X
int
øøY \

resultDice
øø] g
)
øøg h
{
¿¿ 	
try
¡¡ 
{
¬¬ 
await
√√ 
Task
√√ 
.
√√ 
Run
√√ 
(
√√ 
(
√√  
)
√√  !
=>
√√" $
player
√√% +
.
√√+ ,
gameCallback
√√, 8
.
√√8 9
SendDiceResult
√√9 G
(
√√G H

resultDice
√√H R
)
√√R S
)
√√S T
;
√√T U
}
ƒƒ 
catch
≈≈ 
(
≈≈ 1
#CommunicationObjectAbortedException
≈≈ 6
ex
≈≈7 9
)
≈≈9 :
{
∆∆ 
Log
«« 
.
«« 
Error
«« 
(
«« 
ex
«« 
,
«« 
ex
««  
.
««  !
Source
««! '
)
««' (
;
««( )
}
»» 
catch
…… 
(
…… $
CommunicationException
…… )
ex
……* ,
)
……, -
{
   
Log
ÀÀ 
.
ÀÀ 
Error
ÀÀ 
(
ÀÀ 
ex
ÀÀ 
,
ÀÀ 
ex
ÀÀ  
.
ÀÀ  !
Source
ÀÀ! '
)
ÀÀ' (
;
ÀÀ( )
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 
	Exception
ÕÕ 
ex
ÕÕ 
)
ÕÕ  
{
ŒŒ 
Log
œœ 
.
œœ 
Error
œœ 
(
œœ 
ex
œœ 
,
œœ 
ex
œœ  
.
œœ  !
Source
œœ! '
)
œœ' (
;
œœ( )
}
–– 
}
—— 	
public
”” 
async
”” 
Task
”” )
QuitGameplayInDataBaseAsync
”” 5
(
””5 6
PlayerGameplayDto
””6 G
playerGameplayDto
””H Y
,
””Y Z
GameDto
””[ b
gameClientDto
””c p
)
””p q
{
‘‘ 	
Profile
’’ 
profileRecord
’’ !
=
’’" #
await
’’$ )
repositoryManager
’’* ;
.
’’; <
ProfileRepository
’’< M
.
’’M N!
FindEntityByIdAsync
’’N a
(
’’a b
playerGameplayDto
’’b s
.
’’s t
Id
’’t v
)
’’v w
;
’’w x
GuestAccount
÷÷  
guestAccountRecord
÷÷ +
=
÷÷, -
await
÷÷. 3
repositoryManager
÷÷4 E
.
÷÷E F$
GuestAccountRepository
÷÷F \
.
÷÷\ ]!
FindEntityByIdAsync
÷÷] p
(
÷÷p q 
playerGameplayDto÷÷q Ç
.÷÷Ç É
Id÷÷É Ö
)÷÷Ö Ü
;÷÷Ü á
await
ÿÿ %
NextTurnInDataBaseAsync
ÿÿ )
(
ÿÿ) *
(
ÿÿ* +
int
ÿÿ+ .
)
ÿÿ. /
gameClientDto
ÿÿ/ <
.
ÿÿ< =
Id
ÿÿ= ?
,
ÿÿ? @
playerGameplayDto
ÿÿA R
.
ÿÿR S
Id
ÿÿS U
)
ÿÿU V
;
ÿÿV W
if
€€ 
(
€€ 
profileRecord
€€ 
!=
€€  
null
€€! %
)
€€% &
{
‹‹ 

ProfileDto
›› 
profileServerDto
›› +
=
››, -
serviceManager
››. <
.
››< =
ProfileService
››= K
.
››K L
CreateProfileDto
››L \
(
››\ ]
profileRecord
››] j
)
››j k
;
››k l
await
ﬁﬁ %
QuitGameInDatabaseAsync
ﬁﬁ -
(
ﬁﬁ- .
gameClientDto
ﬁﬁ. ;
,
ﬁﬁ; <
profileServerDto
ﬁﬁ= M
)
ﬁﬁM N
;
ﬁﬁN O
}
ﬂﬂ 
else
‡‡ 
if
‡‡ 
(
‡‡  
guestAccountRecord
‡‡ '
!=
‡‡( *
null
‡‡+ /
)
‡‡/ 0
{
·· 
GuestAccountDto
‚‚ #
guestAccountServerDto
‚‚  5
=
‚‚6 7
await
‚‚8 =
serviceManager
‚‚> L
.
‚‚L M!
GuestAccountService
‚‚M `
.
‚‚` a#
CreateGuestAccountDto
‚‚a v
(
‚‚v w!
guestAccountRecord‚‚w â
)‚‚â ä
;‚‚ä ã
await
„„ 4
&QuitGameAsaGuestAccountInDatabaseAsync
„„ <
(
„„< =
gameClientDto
„„= J
,
„„J K#
guestAccountServerDto
„„L a
)
„„a b
;
„„b c
}
‰‰ 
}
ÂÂ 	
private
ÊÊ 
void
ÊÊ -
StartPeriodicPlayerListNotifier
ÊÊ 4
(
ÊÊ4 5
int
ÊÊ5 8
gameId
ÊÊ9 ?
,
ÊÊ? @
int
ÊÊA D
intervalSeconds
ÊÊE T
=
ÊÊU V
GameUtilities
ÊÊW d
.
ÊÊd e(
TIME_PING_INTERVAL_SECONDS
ÊÊe 
)ÊÊ Ä
{
ÁÁ 	%
CancellationTokenSource
ËË #%
cancellationTokenSource
ËË$ ;
=
ËË< =
new
ËË> A%
CancellationTokenSource
ËËB Y
(
ËËY Z
)
ËËZ [
;
ËË[ \/
!cancelTokenEliminatePlayersInGame
ÈÈ -
[
ÈÈ- .
gameId
ÈÈ. 4
]
ÈÈ4 5
=
ÈÈ6 7%
cancellationTokenSource
ÈÈ8 O
;
ÈÈO P
Task
ÎÎ 
.
ÎÎ 
Run
ÎÎ 
(
ÎÎ 
(
ÎÎ 
)
ÎÎ 
=>
ÎÎ &
PeriodicNotificationLoop
ÎÎ 3
(
ÎÎ3 4
gameId
ÎÎ4 :
,
ÎÎ: ;
intervalSeconds
ÎÎ< K
,
ÎÎK L%
cancellationTokenSource
ÎÎM d
)
ÎÎd e
)
ÎÎe f
;
ÎÎf g
}
ÏÏ 	
private
ÓÓ 
void
ÓÓ $
CancelExistingNotifier
ÓÓ +
(
ÓÓ+ ,
int
ÓÓ, /
gameId
ÓÓ0 6
)
ÓÓ6 7
{
ÔÔ 	
if
 
(
 2
$cancelTokenEliminatePlayersInPreGame
 4
.
4 5
TryGetValue
5 @
(
@ A
gameId
A G
,
G H
out
I L%
CancellationTokenSource
M d!
existingCancelToken
e x
)
x y
)
y z
{
ÒÒ 
try
ÚÚ 
{
ÛÛ !
existingCancelToken
ÙÙ '
.
ÙÙ' (
Cancel
ÙÙ( .
(
ÙÙ. /
)
ÙÙ/ 0
;
ÙÙ0 1
}
ıı 
catch
ˆˆ 
(
ˆˆ %
ObjectDisposedException
ˆˆ -
ex
ˆˆ. 0
)
ˆˆ0 1
{
˜˜ 
Log
¯¯ 
.
¯¯ 
Information
¯¯ #
(
¯¯# $
ex
¯¯$ &
,
¯¯& '
ex
¯¯( *
.
¯¯* +
Source
¯¯+ 1
)
¯¯1 2
;
¯¯2 3
}
˘˘ 
catch
˙˙ 
(
˙˙  
AggregateException
˙˙ )
ex
˙˙* ,
)
˙˙, -
{
˚˚ 
Log
¸¸ 
.
¸¸ 
Information
¸¸ #
(
¸¸# $
ex
¸¸$ &
,
¸¸& '
ex
¸¸( *
.
¸¸* +
Source
¸¸+ 1
)
¸¸1 2
;
¸¸2 3
}
˝˝ 
catch
˛˛ 
(
˛˛ 
	Exception
˛˛  
ex
˛˛! #
)
˛˛# $
{
ˇˇ 
Log
ÄÄ 
.
ÄÄ 
Information
ÄÄ #
(
ÄÄ# $
ex
ÄÄ$ &
,
ÄÄ& '
ex
ÄÄ( *
.
ÄÄ* +
Source
ÄÄ+ 1
)
ÄÄ1 2
;
ÄÄ2 3
}
ÅÅ 
finally
ÇÇ 
{
ÉÉ 2
$cancelTokenEliminatePlayersInPreGame
ÑÑ 8
.
ÑÑ8 9
Remove
ÑÑ9 ?
(
ÑÑ? @
gameId
ÑÑ@ F
)
ÑÑF G
;
ÑÑG H
}
ÖÖ 
}
ÜÜ 
}
áá 	
private
ââ 
async
ââ 
Task
ââ &
PeriodicNotificationLoop
ââ 3
(
ââ3 4
int
ââ4 7
gameId
ââ8 >
,
ââ> ?
int
ââ@ C
intervalSeconds
ââD S
,
ââS T%
CancellationTokenSource
ââU l&
cancellationTokenSourceââm Ñ
)ââÑ Ö
{
ää 	
try
ãã 
{
åå 
while
çç 
(
çç 
!
çç %
cancellationTokenSource
çç /
.
çç/ 0
Token
çç0 5
.
çç5 6%
IsCancellationRequested
çç6 M
)
ççM N
{
éé 
if
èè 
(
èè $
connectedPlayersByGame
èè .
.
èè. /
TryGetValue
èè/ :
(
èè: ;
gameId
èè; A
,
èèA B
out
èèC F
ConcurrentBag
èèG T
<
èèT U
ConnectedPlayer
èèU d
>
èèd e
playersInGame
èèf s
)
èès t
)
èèt u
{
êê 
await
ëë '
HandleDisconnectedPlayers
ëë 7
(
ëë7 8
gameId
ëë8 >
,
ëë> ?
playersInGame
ëë@ M
)
ëëM N
;
ëëN O
if
ìì 
(
ìì 
!
ìì 
playersInGame
ìì *
.
ìì* +
Any
ìì+ .
(
ìì. /
)
ìì/ 0
)
ìì0 1
{
îî ,
StopPeriodicPlayerListNotifier
ïï :
(
ïï: ;
gameId
ïï; A
)
ïïA B
;
ïïB C
EndGame
ññ #
(
ññ# $
gameId
ññ$ *
)
ññ* +
;
ññ+ ,
return
óó "
;
óó" #
}
òò 
}
ôô 
if
õõ 
(
õõ 
!
õõ 
gameCurrentTurns
õõ )
.
õõ) *
TryGetValue
õõ* 5
(
õõ5 6
gameId
õõ6 <
,
õõ< =
out
õõ> A
int
õõB E
currentTurnIndex
õõF V
)
õõV W
)
õõW X
{
úú ,
StopPeriodicPlayerListNotifier
ùù 6
(
ùù6 7
gameId
ùù7 =
)
ùù= >
;
ùù> ?
return
ûû 
;
ûû 
}
üü 
await
°° &
NotifyAllPlayersWithList
°° 2
(
°°2 3
gameId
°°3 9
,
°°9 :
currentTurnIndex
°°; K
)
°°K L
;
°°L M
await
¢¢ 
Task
¢¢ 
.
¢¢ 
Delay
¢¢ $
(
¢¢$ %
intervalSeconds
¢¢% 4
*
¢¢5 6
GameUtilities
¢¢7 D
.
¢¢D E
TIME_MILISECONDS
¢¢E U
,
¢¢U V%
cancellationTokenSource
¢¢W n
.
¢¢n o
Token
¢¢o t
)
¢¢t u
;
¢¢u v
}
££ 
}
§§ 
catch
•• 
(
•• #
TaskCanceledException
•• (
ex
••) +
)
••+ ,
{
¶¶ 
Log
ßß 
.
ßß 
Error
ßß 
(
ßß 
ex
ßß 
,
ßß 
ex
ßß  
.
ßß  !
Source
ßß! '
)
ßß' (
;
ßß( )
}
®® 
catch
©© 
(
©© 
	Exception
©© 
ex
©© 
)
©©  
{
™™ 
Log
´´ 
.
´´ 
Error
´´ 
(
´´ 
ex
´´ 
,
´´ 
ex
´´  
.
´´  !
Source
´´! '
)
´´' (
;
´´( )
}
¨¨ 
}
≠≠ 	
private
ØØ 
async
ØØ 
Task
ØØ '
HandleDisconnectedPlayers
ØØ 4
(
ØØ4 5
int
ØØ5 8
gameId
ØØ9 ?
,
ØØ? @
ConcurrentBag
ØØA N
<
ØØN O
ConnectedPlayer
ØØO ^
>
ØØ^ _
playersInGame
ØØ` m
)
ØØm n
{
∞∞ 	
List
±± 
<
±± 
ConnectedPlayer
±±  
>
±±  !!
disconnectedPlayers
±±" 5
=
±±6 7
playersInGame
±±8 E
.
≤≤ 
Where
≤≤ 
(
≤≤ 
player
≤≤ 
=>
≤≤  
player
≤≤! '
.
≤≤' (
gameCallback
≤≤( 4
==
≤≤5 7
null
≤≤8 <
||
≤≤= ?
(
≤≤@ A
(
≤≤A B"
ICommunicationObject
≤≤B V
)
≤≤V W
player
≤≤W ]
.
≤≤] ^
gameCallback
≤≤^ j
)
≤≤j k
.
≤≤k l
State
≤≤l q
!=
≤≤r t!
CommunicationState≤≤u á
.≤≤á à
Opened≤≤à é
)≤≤é è
.
≥≥ 
ToList
≥≥ 
(
≥≥ 
)
≥≥ 
;
≥≥ 
foreach
µµ 
(
µµ 
ConnectedPlayer
µµ $
player
µµ% +
in
µµ, .!
disconnectedPlayers
µµ/ B
)
µµB C
{
∂∂ 
int
∑∑ 
idPlayer
∑∑ 
=
∑∑ 
player
∑∑ %
.
∑∑% &
profileClientDto
∑∑& 6
?
∑∑6 7
.
∑∑7 8
Id
∑∑8 :
??
∑∑; =
player
∑∑> D
.
∑∑D E
guestAccountDto
∑∑E T
?
∑∑T U
.
∑∑U V
Id
∑∑V X
??
∑∑Y [ 
CharacterUtilities
∑∑\ n
.
∑∑n o
NON_VALID_ID
∑∑o {
;
∑∑{ |
await
∏∏ &
RemoveDisconnectedPlayer
∏∏ .
(
∏∏. /
gameId
∏∏/ 5
,
∏∏5 6
idPlayer
∏∏7 ?
)
∏∏? @
;
∏∏@ A
}
ππ 
if
ªª 
(
ªª !
disconnectedPlayers
ªª #
.
ªª# $
Any
ªª$ '
(
ªª' (
)
ªª( )
)
ªª) *
{
ºº 
await
ΩΩ '
RemoveDisconnectedPlayers
ΩΩ /
(
ΩΩ/ 0
gameId
ΩΩ0 6
,
ΩΩ6 7!
disconnectedPlayers
ΩΩ8 K
)
ΩΩK L
;
ΩΩL M
}
ææ 
}
øø 	
private
¬¬ 
async
¬¬ 
Task
¬¬ &
NotifyAllPlayersWithList
¬¬ 3
(
¬¬3 4
int
¬¬4 7
gameId
¬¬8 >
,
¬¬> ?
int
¬¬@ C
currentTurnIndex
¬¬D T
)
¬¬T U
{
√√ 	
if
ƒƒ 
(
ƒƒ $
connectedPlayersByGame
ƒƒ &
.
ƒƒ& '
TryGetValue
ƒƒ' 2
(
ƒƒ2 3
gameId
ƒƒ3 9
,
ƒƒ9 :
out
ƒƒ; >
ConcurrentBag
ƒƒ? L
<
ƒƒL M
ConnectedPlayer
ƒƒM \
>
ƒƒ\ ]
playersInGame
ƒƒ^ k
)
ƒƒk l
)
ƒƒl m
{
≈≈ 
List
∆∆ 
<
∆∆ 
ConnectedPlayer
∆∆ $
>
∆∆$ %
orderedPlayers
∆∆& 4
=
∆∆5 6
playersInGame
∆∆7 D
.
∆∆D E
OrderBy
∆∆E L
(
∆∆L M
player
∆∆M S
=>
∆∆T V
player
∆∆W ]
.
∆∆] ^
JoinedAt
∆∆^ f
)
∆∆f g
.
∆∆g h
ToList
∆∆h n
(
∆∆n o
)
∆∆o p
;
∆∆p q
List
»» 
<
»» !
PlayerTurnStatusDto
»» (
>
»»( )
playersTurnStatus
»»* ;
=
»»< =&
GeneratePlayerTurnStatus
»»> V
(
»»V W
orderedPlayers
»»W e
,
»»e f
currentTurnIndex
»»g w
)
»»w x
;
»»x y
List
   
<
   
ConnectedPlayer
   $
>
  $ %
openPlayers
  & 1
=
  2 3
playersInGame
  4 A
.
ÀÀ 
Where
ÀÀ 
(
ÀÀ 
player
ÀÀ !
=>
ÀÀ" $
player
ÀÀ% +
.
ÀÀ+ ,
gameCallback
ÀÀ, 8
!=
ÀÀ9 ;
null
ÀÀ< @
&&
ÀÀA C
(
ÀÀD E
(
ÀÀE F"
ICommunicationObject
ÀÀF Z
)
ÀÀZ [
player
ÀÀ[ a
.
ÀÀa b
gameCallback
ÀÀb n
)
ÀÀn o
.
ÀÀo p
State
ÀÀp u
==
ÀÀv x!
CommunicationStateÀÀy ã
.ÀÀã å
OpenedÀÀå í
)ÀÀí ì
.
ÃÃ 
ToList
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ 
await
ŒŒ 
Task
ŒŒ 
.
ŒŒ 
WhenAll
ŒŒ "
(
ŒŒ" #
openPlayers
ŒŒ# .
.
ŒŒ. /
Select
ŒŒ/ 5
(
ŒŒ5 6
async
ŒŒ6 ;
player
ŒŒ< B
=>
ŒŒC E
{
œœ 
try
–– 
{
—— 
if
““ 
(
““ 
player
““ "
.
““" #
gameCallback
““# /
!=
““0 2
null
““3 7
)
““7 8
{
”” 
player
‘‘ "
.
‘‘" #
gameCallback
‘‘# /
?
‘‘/ 0
.
‘‘0 1&
UpdateListOfPlayersTurns
‘‘1 I
(
‘‘I J
playersTurnStatus
‘‘J [
)
‘‘[ \
;
‘‘\ ]
}
’’ 
}
÷÷ 
catch
◊◊ 
(
◊◊ $
CommunicationException
◊◊ 1
ex
◊◊2 4
)
◊◊4 5
{
ÿÿ 
Log
ŸŸ 
.
ŸŸ 
Error
ŸŸ !
(
ŸŸ! "
ex
ŸŸ" $
,
ŸŸ$ %
ex
ŸŸ& (
.
ŸŸ( )
Source
ŸŸ) /
)
ŸŸ/ 0
;
ŸŸ0 1
}
⁄⁄ 
catch
€€ 
(
€€ 
	Exception
€€ $
ex
€€% '
)
€€' (
{
‹‹ 
Log
›› 
.
›› 
Error
›› !
(
››! "
ex
››" $
,
››$ %
ex
››& (
.
››( )
Source
››) /
)
››/ 0
;
››0 1
}
ﬁﬁ 
await
‡‡ 
Task
‡‡ 
.
‡‡ 
CompletedTask
‡‡ ,
;
‡‡, -
}
·· 
)
·· 
)
·· 
;
·· 
}
‚‚ 
}
„„ 	
private
ÊÊ 
List
ÊÊ 
<
ÊÊ !
PlayerTurnStatusDto
ÊÊ (
>
ÊÊ( )&
GeneratePlayerTurnStatus
ÊÊ* B
(
ÊÊB C
List
ÊÊC G
<
ÊÊG H
ConnectedPlayer
ÊÊH W
>
ÊÊW X
orderedPlayers
ÊÊY g
,
ÊÊg h
int
ÊÊi l
currentTurnIndex
ÊÊm }
)
ÊÊ} ~
{
ÁÁ 	
return
ËË 
orderedPlayers
ËË !
.
ËË! "
Select
ËË" (
(
ËË( )
(
ËË) *
player
ËË* 0
,
ËË0 1
index
ËË2 7
)
ËË7 8
=>
ËË9 ;
new
ËË< ?!
PlayerTurnStatusDto
ËË@ S
{
ÈÈ 
ProfileTurnDto
ÍÍ 
=
ÍÍ  
player
ÍÍ! '
.
ÍÍ' (
profileClientDto
ÍÍ( 8
,
ÍÍ8 9!
GuestAccountTurnDto
ÎÎ #
=
ÎÎ$ %
player
ÎÎ& ,
.
ÎÎ, -
guestAccountDto
ÎÎ- <
,
ÎÎ< =
Points
ÏÏ 
=
ÏÏ 
player
ÏÏ 
.
ÏÏ  
Points
ÏÏ  &
,
ÏÏ& '
IsTurn
ÌÌ 
=
ÌÌ 
index
ÌÌ 
==
ÌÌ !
currentTurnIndex
ÌÌ" 2
}
ÓÓ 
)
ÓÓ 
.
ÓÓ 
ToList
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
private
ÒÒ 
void
ÒÒ ,
StopPeriodicPlayerListNotifier
ÒÒ 3
(
ÒÒ3 4
int
ÒÒ4 7
gameId
ÒÒ8 >
)
ÒÒ> ?
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ /
!cancelTokenEliminatePlayersInGame
ÛÛ 1
.
ÛÛ1 2
	TryRemove
ÛÛ2 ;
(
ÛÛ; <
gameId
ÛÛ< B
,
ÛÛB C
out
ÛÛD G
var
ÛÛH K%
cancellationTokenSource
ÛÛL c
)
ÛÛc d
)
ÛÛd e
{
ÙÙ %
cancellationTokenSource
ıı '
.
ıı' (
Cancel
ıı( .
(
ıı. /
)
ıı/ 0
;
ıı0 1
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ 
EndGame
˘˘ 
(
˘˘ 
int
˘˘  
gameId
˘˘! '
)
˘˘' (
{
˙˙ 	
if
˚˚ 
(
˚˚ $
connectedPlayersByGame
˚˚ &
.
˚˚& '
	TryRemove
˚˚' 0
(
˚˚0 1
gameId
˚˚1 7
,
˚˚7 8
out
˚˚9 <
var
˚˚= @
playersInGame
˚˚A N
)
˚˚N O
)
˚˚O P
{
¸¸ 
foreach
˝˝ 
(
˝˝ 
var
˝˝ 
player
˝˝ #
in
˝˝$ &
playersInGame
˝˝' 4
)
˝˝4 5
{
˛˛ 
int
ˇˇ 
idPlayer
ˇˇ  
=
ˇˇ! "
player
ˇˇ# )
.
ˇˇ) *
profileClientDto
ˇˇ* :
?
ˇˇ: ;
.
ˇˇ; <
Id
ˇˇ< >
??
ˇˇ? A
player
ˇˇB H
.
ˇˇH I
guestAccountDto
ˇˇI X
?
ˇˇX Y
.
ˇˇY Z
Id
ˇˇZ \
??
ˇˇ] _ 
CharacterUtilities
ˇˇ` r
.
ˇˇr s
NON_VALID_ID
ˇˇs 
;ˇˇ Ä
if
ÄÄ 
(
ÄÄ 
player
ÄÄ 
.
ÄÄ 
gameCallback
ÄÄ +
!=
ÄÄ, .
null
ÄÄ/ 3
&&
ÄÄ4 6
(
ÄÄ7 8
(
ÄÄ8 9"
ICommunicationObject
ÄÄ9 M
)
ÄÄM N
player
ÄÄN T
.
ÄÄT U
gameCallback
ÄÄU a
)
ÄÄa b
.
ÄÄb c
State
ÄÄc h
==
ÄÄi k 
CommunicationState
ÄÄl ~
.
ÄÄ~ 
OpenedÄÄ Ö
)ÄÄÖ Ü
{
ÅÅ 
try
ÇÇ 
{
ÉÉ 
Task
ÑÑ  
.
ÑÑ  !
Run
ÑÑ! $
(
ÑÑ$ %
(
ÑÑ% &
)
ÑÑ& '
=>
ÑÑ( *
player
ÑÑ+ 1
.
ÑÑ1 2
gameCallback
ÑÑ2 >
.
ÑÑ> ?(
EndGameDisconnectedPlayers
ÑÑ? Y
(
ÑÑY Z
)
ÑÑZ [
)
ÑÑ[ \
.
ÑÑ\ ]
Wait
ÑÑ] a
(
ÑÑa b
)
ÑÑb c
;
ÑÑc d&
RemoveDisconnectedPlayer
ÖÖ 4
(
ÖÖ4 5
gameId
ÖÖ5 ;
,
ÖÖ; <
idPlayer
ÖÖ= E
)
ÖÖE F
.
ÖÖF G
Wait
ÖÖG K
(
ÖÖK L
)
ÖÖL M
;
ÖÖM N
}
ÜÜ 
catch
áá 
(
áá 1
#CommunicationObjectAbortedException
áá B
ex
ááC E
)
ááE F
{
àà 
Log
ââ 
.
ââ  
Error
ââ  %
(
ââ% &
ex
ââ& (
,
ââ( )
ex
ââ* ,
.
ââ, -
Source
ââ- 3
)
ââ3 4
;
ââ4 5
}
ää 
catch
ãã 
(
ãã $
CommunicationException
ãã 5
ex
ãã6 8
)
ãã8 9
{
åå 
Log
çç 
.
çç  
Error
çç  %
(
çç% &
ex
çç& (
,
çç( )
ex
çç* ,
.
çç, -
Source
çç- 3
)
çç3 4
;
çç4 5
}
éé 
catch
èè 
(
èè 
	Exception
èè (
ex
èè) +
)
èè+ ,
{
êê 
Log
ëë 
.
ëë  
Error
ëë  %
(
ëë% &
ex
ëë& (
,
ëë( )
ex
ëë* ,
.
ëë, -
Source
ëë- 3
)
ëë3 4
;
ëë4 5
}
íí 
}
ìì 
}
îî 
}
ïï ,
StopPeriodicPlayerListNotifier
ññ *
(
ññ* +
gameId
ññ+ 1
)
ññ1 2
;
ññ2 3
}
óó 	
public
ôô 
void
ôô !
InitializeGameBoard
ôô '
(
ôô' (
int
ôô( +
gameId
ôô, 2
)
ôô2 3
{
öö 	
if
úú 
(
úú 
gameBoardStates
úú 
.
úú  
TryGetValue
úú  +
(
úú+ ,
gameId
úú, 2
,
úú2 3
out
úú4 7
GameBoardStateDto
úú8 I 
existingBoardState
úúJ \
)
úú\ ]
)
úú] ^
{
ùù (
NotifyPlayersWithGameBoard
ûû *
(
ûû* +
gameId
ûû+ 1
,
ûû1 2 
existingBoardState
ûû3 E
)
ûûE F
;
ûûF G
return
üü 
;
üü 
}
†† 
List
¢¢ 
<
¢¢ 

HexTileDto
¢¢ 
>
¢¢ 
hexTiles
¢¢ %
=
¢¢& '
GenerateHexTiles
¢¢( 8
(
¢¢8 9
)
¢¢9 :
;
¢¢: ;
GameplayRules
§§ 
.
§§ .
 GenerateVerticesAndEdgesForHexes
§§ :
(
§§: ;
hexTiles
§§; C
)
§§C D
;
§§D E
GameplayRules
¶¶ 
.
¶¶ ,
ConnectVerticesWithManualRules
¶¶ 8
(
¶¶8 9
hexTiles
¶¶9 A
)
¶¶A B
;
¶¶B C
GameBoardStateDto
®® 
gameBoardState
®® ,
=
®®- .
new
®®/ 2
GameBoardStateDto
®®3 D
{
©© 
GameId
™™ 
=
™™ 
gameId
™™ 
,
™™  
HexTiles
´´ 
=
´´ 
hexTiles
´´ #
}
¨¨ 
;
¨¨ 
gameBoardStates
ÆÆ 
[
ÆÆ 
gameId
ÆÆ "
]
ÆÆ" #
=
ÆÆ$ %
gameBoardState
ÆÆ& 4
;
ÆÆ4 5(
NotifyPlayersWithGameBoard
∞∞ &
(
∞∞& '
gameId
∞∞' -
,
∞∞- .
gameBoardState
∞∞/ =
)
∞∞= >
;
∞∞> ?
}
≤≤ 	
private
¥¥ 
void
¥¥ (
NotifyPlayersWithGameBoard
¥¥ /
(
¥¥/ 0
int
¥¥0 3
gameId
¥¥4 :
,
¥¥: ;
GameBoardStateDto
¥¥< M
gameBoardState
¥¥N \
)
¥¥\ ]
{
µµ 	
if
∂∂ 
(
∂∂ $
connectedPlayersByGame
∂∂ &
.
∂∂& '
TryGetValue
∂∂' 2
(
∂∂2 3
gameId
∂∂3 9
,
∂∂9 :
out
∂∂; >
ConcurrentBag
∂∂? L
<
∂∂L M
ConnectedPlayer
∂∂M \
>
∂∂\ ]
playersInGame
∂∂^ k
)
∂∂k l
)
∂∂l m
{
∑∑ 
playersInGame
∏∏ 
.
ππ 
Where
ππ 
(
ππ 
player
ππ !
=>
ππ" $
player
ππ% +
.
ππ+ ,
gameCallback
ππ, 8
!=
ππ9 ;
null
ππ< @
&&
ππA C
(
ππD E
(
ππE F"
ICommunicationObject
ππF Z
)
ππZ [
player
ππ[ a
.
ππa b
gameCallback
ππb n
)
ππn o
.
ππo p
State
ππp u
==
ππv x!
CommunicationStateππy ã
.ππã å
Openedππå í
)ππí ì
.
∫∫ 
ToList
∫∫ 
(
∫∫ 
)
∫∫ 
.
ªª 
ForEach
ªª 
(
ªª 
player
ªª #
=>
ªª$ &
{
ºº 
try
ΩΩ 
{
ææ 
player
øø "
.
øø" #
gameCallback
øø# /
.
øø/ 0(
NotifyGameBoardInitialized
øø0 J
(
øøJ K
gameBoardState
øøK Y
)
øøY Z
;
øøZ [
}
¿¿ 
catch
¡¡ 
(
¡¡ 1
#CommunicationObjectAbortedException
¡¡ B
ex
¡¡C E
)
¡¡E F
{
¬¬ 
Log
√√ 
.
√√  
Error
√√  %
(
√√% &
ex
√√& (
,
√√( )
ex
√√* ,
.
√√, -
Source
√√- 3
)
√√3 4
;
√√4 5
}
ƒƒ 
catch
≈≈ 
(
≈≈ $
CommunicationException
≈≈ 5
ex
≈≈6 8
)
≈≈8 9
{
∆∆ 
Log
«« 
.
««  
Error
««  %
(
««% &
ex
««& (
,
««( )
ex
««* ,
.
««, -
Source
««- 3
)
««3 4
;
««4 5
}
»» 
catch
…… 
(
…… 
	Exception
…… (
ex
……) +
)
……+ ,
{
   
Log
ÀÀ 
.
ÀÀ  
Error
ÀÀ  %
(
ÀÀ% &
ex
ÀÀ& (
,
ÀÀ( )
ex
ÀÀ* ,
.
ÀÀ, -
Source
ÀÀ- 3
)
ÀÀ3 4
;
ÀÀ4 5
}
ÃÃ 
}
ÕÕ 
)
ÕÕ 
;
ÕÕ 
}
ŒŒ 
}
œœ 	
private
”” 
void
”” &
NotifyPlayersPiecePlaced
”” -
(
””- .
int
””. 1
gameId
””2 8
,
””8 9
PlayerGameplayDto
””: K
playerGameplayDto
””L ]
)
””] ^
{
‘‘ 	
if
’’ 
(
’’ $
connectedPlayersByGame
’’ &
.
’’& '
TryGetValue
’’' 2
(
’’2 3
gameId
’’3 9
,
’’9 :
out
’’; >
var
’’? B
playersInGame
’’C P
)
’’P Q
&&
’’R T
gameBoardStates
’’U d
.
’’d e
TryGetValue
’’e p
(
’’p q
gameId
’’q w
,
’’w x
out
’’y |
var’’} Ä
gameBoardState’’Å è
)’’è ê
)’’ê ë
{
÷÷ 
GameBoardStateDto
◊◊ !
gameBoardStateDto
◊◊" 3
=
◊◊4 5
gameBoardStates
◊◊6 E
[
◊◊E F
gameId
◊◊F L
]
◊◊L M
;
◊◊M N
playersInGame
ŸŸ 
.
⁄⁄ 
Where
⁄⁄ 
(
⁄⁄ 
player
⁄⁄ !
=>
⁄⁄" $
player
⁄⁄% +
.
⁄⁄+ ,
gameCallback
⁄⁄, 8
!=
⁄⁄9 ;
null
⁄⁄< @
&&
⁄⁄A C
(
⁄⁄D E
(
⁄⁄E F"
ICommunicationObject
⁄⁄F Z
)
⁄⁄Z [
player
⁄⁄[ a
.
⁄⁄a b
gameCallback
⁄⁄b n
)
⁄⁄n o
.
⁄⁄o p
State
⁄⁄p u
==
⁄⁄v x!
CommunicationState⁄⁄y ã
.⁄⁄ã å
Opened⁄⁄å í
)⁄⁄í ì
.
€€ 
ToList
€€ 
(
€€ 
)
€€ 
.
‹‹ 
ForEach
‹‹ 
(
‹‹ 
player
‹‹ #
=>
‹‹$ &
{
›› 
try
ﬁﬁ 
{
ﬂﬂ 
player
‡‡ "
.
‡‡" #
gameCallback
‡‡# /
.
‡‡/ 0%
NotifyPlayerPlacedPiece
‡‡0 G
(
‡‡G H
gameBoardStateDto
‡‡H Y
,
‡‡Y Z
playerGameplayDto
‡‡[ l
)
‡‡l m
;
‡‡m n
}
·· 
catch
‚‚ 
(
‚‚ 1
#CommunicationObjectAbortedException
‚‚ B
ex
‚‚C E
)
‚‚E F
{
„„ 
Log
‰‰ 
.
‰‰  
Error
‰‰  %
(
‰‰% &
ex
‰‰& (
,
‰‰( )
ex
‰‰* ,
.
‰‰, -
Source
‰‰- 3
)
‰‰3 4
;
‰‰4 5
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ $
CommunicationException
ÊÊ 5
ex
ÊÊ6 8
)
ÊÊ8 9
{
ÁÁ 
Log
ËË 
.
ËË  
Error
ËË  %
(
ËË% &
ex
ËË& (
,
ËË( )
ex
ËË* ,
.
ËË, -
Source
ËË- 3
)
ËË3 4
;
ËË4 5
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
	Exception
ÍÍ (
ex
ÍÍ) +
)
ÍÍ+ ,
{
ÎÎ 
Log
ÏÏ 
.
ÏÏ  
Error
ÏÏ  %
(
ÏÏ% &
ex
ÏÏ& (
,
ÏÏ( )
ex
ÏÏ* ,
.
ÏÏ, -
Source
ÏÏ- 3
)
ÏÏ3 4
;
ÏÏ4 5
}
ÌÌ 
}
ÓÓ 
)
ÓÓ 
;
ÓÓ 
}
ÔÔ 
}
 	
private
ÚÚ 
static
ÚÚ 
List
ÚÚ 
<
ÚÚ 

HexTileDto
ÚÚ &
>
ÚÚ& '
GenerateHexTiles
ÚÚ( 8
(
ÚÚ8 9
)
ÚÚ9 :
{
ÛÛ 	
string
ÙÙ 
[
ÙÙ 
]
ÙÙ 
	resources
ÙÙ 
=
ÙÙ  
GameplayUtilities
ÙÙ! 2
.
ÙÙ2 3
RESOURCES_GAME
ÙÙ3 A
;
ÙÙA B
int
ıı 
[
ıı 
]
ıı 

diceValues
ıı 
=
ıı 
GameplayUtilities
ıı 0
.
ıı0 1
DICE_VALUES
ıı1 <
;
ıı< =
Random
˜˜ 
random
˜˜ 
=
˜˜ 
new
˜˜ 
Random
˜˜  &
(
˜˜& '
)
˜˜' (
;
˜˜( )
List
¯¯ 
<
¯¯ 

HexTileDto
¯¯ 
>
¯¯ 
hexTiles
¯¯ %
=
¯¯& '
new
¯¯( +
List
¯¯, 0
<
¯¯0 1

HexTileDto
¯¯1 ;
>
¯¯; <
(
¯¯< =
)
¯¯= >
;
¯¯> ?
int
˙˙ 
[
˙˙ 
]
˙˙ 
[
˙˙ 
]
˙˙ 
hexTileLayout
˙˙ !
=
˙˙" #
GameplayUtilities
˙˙$ 5
.
˙˙5 6
HEX_TILE_LAYOUT
˙˙6 E
;
˙˙E F
int
¸¸ 
hexId
¸¸ 
=
¸¸ 
GameplayUtilities
¸¸ )
.
¸¸) * 
HEXTILE_INITIAL_ID
¸¸* <
;
¸¸< =
for
˛˛ 
(
˛˛ 
int
˛˛ 
row
˛˛ 
=
˛˛ 
$num
˛˛ 
;
˛˛ 
row
˛˛ !
<
˛˛" #
hexTileLayout
˛˛$ 1
.
˛˛1 2
Length
˛˛2 8
;
˛˛8 9
row
˛˛: =
++
˛˛= ?
)
˛˛? @
{
ˇˇ 
for
ÄÄ 
(
ÄÄ 
int
ÄÄ 
column
ÄÄ 
=
ÄÄ  !
$num
ÄÄ" #
;
ÄÄ# $
column
ÄÄ% +
<
ÄÄ, -
hexTileLayout
ÄÄ. ;
[
ÄÄ; <
row
ÄÄ< ?
]
ÄÄ? @
.
ÄÄ@ A
Length
ÄÄA G
;
ÄÄG H
column
ÄÄI O
++
ÄÄO Q
)
ÄÄQ R
{
ÅÅ 

HexTileDto
ÇÇ 
newHext
ÇÇ &
=
ÇÇ' (
new
ÇÇ) ,

HexTileDto
ÇÇ- 7
(
ÇÇ7 8
)
ÇÇ8 9
;
ÇÇ9 :
newHext
ÉÉ 
.
ÉÉ 
Id
ÉÉ 
=
ÉÉ  
hexId
ÉÉ! &
++
ÉÉ& (
;
ÉÉ( )
newHext
ÑÑ 
.
ÑÑ 
Resource
ÑÑ $
=
ÑÑ% &
	resources
ÑÑ' 0
[
ÑÑ0 1
random
ÑÑ1 7
.
ÑÑ7 8
Next
ÑÑ8 <
(
ÑÑ< =
	resources
ÑÑ= F
.
ÑÑF G
Length
ÑÑG M
)
ÑÑM N
]
ÑÑN O
;
ÑÑO P
newHext
ÖÖ 
.
ÖÖ 
	DiceValue
ÖÖ %
=
ÖÖ& '

diceValues
ÖÖ( 2
[
ÖÖ2 3
random
ÖÖ3 9
.
ÖÖ9 :
Next
ÖÖ: >
(
ÖÖ> ?

diceValues
ÖÖ? I
.
ÖÖI J
Length
ÖÖJ P
)
ÖÖP Q
]
ÖÖQ R
;
ÖÖR S
newHext
ÜÜ 
.
ÜÜ 
Row
ÜÜ 
=
ÜÜ  !
row
ÜÜ" %
;
ÜÜ% &
newHext
áá 
.
áá 
Column
áá "
=
áá# $
column
áá% +
;
áá+ ,
newHext
àà 
.
àà 
Vertices
àà $
=
àà% &
new
àà' *
List
àà+ /
<
àà/ 0
	VertexDto
àà0 9
>
àà9 :
(
àà: ;
GameplayUtilities
àà; L
.
ààL M 
NUMBER_OF_VERTICES
ààM _
)
àà_ `
;
àà` a
newHext
ââ 
.
ââ 
Edges
ââ !
=
ââ" #
new
ââ$ '
List
ââ( ,
<
ââ, -
EdgeDto
ââ- 4
>
ââ4 5
(
ââ5 6
GameplayUtilities
ââ6 G
.
ââG H 
NUMBER_OF_VERTICES
ââH Z
)
ââZ [
;
ââ[ \
hexTiles
ãã 
.
ãã 
Add
ãã  
(
ãã  !
newHext
ãã! (
)
ãã( )
;
ãã) *
}
åå 
}
çç 
return
èè 
hexTiles
èè 
;
èè 
}
êê 	
private
íí 
void
íí "
UpdateGameBoardState
íí )
(
íí) *
int
íí* -
gameId
íí. 4
,
íí4 5
GameBoardStateDto
íí6 G#
updatedGameBoardState
ííH ]
)
íí] ^
{
ìì 	
gameBoardStates
îî 
[
îî 
gameId
îî "
]
îî" #
=
îî$ %#
updatedGameBoardState
îî& ;
;
îî; <
}
ïï 	
public
òò 
async
òò 
Task
òò 
<
òò  
OperationResultDto
òò ,
>
òò, -$
PlacePieceOnBoardAsync
òò. D
(
òòD E
PiecePlacementDto
òòE V
placementDto
òòW c
,
òòc d
PlayerGameplayDto
òòe v 
playerGameplayDtoòòw à
,òòà â
intòòä ç
gameIdòòé î
)òòî ï
{
ôô 	
if
öö 
(
öö 
gameBoardStates
öö 
.
öö  
TryGetValue
öö  +
(
öö+ ,
gameId
öö, 2
,
öö2 3
out
öö4 7
GameBoardStateDto
öö8 I
gameBoardState
ööJ X
)
ööX Y
)
ööY Z
{
õõ 
return
úú 
await
úú '
HandlePiecePlacementAsync
úú 6
(
úú6 7
gameBoardState
úú7 E
,
úúE F
placementDto
úúG S
,
úúS T
playerGameplayDto
úúU f
,
úúf g
gameId
úúh n
)
úún o
;
úúo p
}
ùù 
return
üü 
new
üü  
OperationResultDto
üü )
(
üü) *
false
üü* /
,
üü/ 0
LanguageUtilities
üü1 B
.
üüB C%
MessageUnableToSaveData
üüC Z
(
üüZ [
LanguageUtilities
üü[ l
.
üül m+
LANGUAGE_ENGLISH_FORMAT_RESXüüm â
)üüâ ä
)üüä ã
;üüã å
}
†† 	
private
££ 
async
££ 
Task
££ 
<
££  
OperationResultDto
££ -
>
££- .'
HandlePiecePlacementAsync
££/ H
(
££H I
GameBoardStateDto
££I Z
gameBoardState
££[ i
,
££i j
PiecePlacementDto
££k |
placementDto££} â
,££â ä!
PlayerGameplayDto££ã ú!
playerGameplayDto££ù Æ
,££Æ Ø
int££∞ ≥
gameId££¥ ∫
)££∫ ª
{
§§ 	 
OperationResultDto
•• 
result
•• %
;
••% &
switch
ßß 
(
ßß 
placementDto
ßß  
.
ßß  !
	PieceType
ßß! *
)
ßß* +
{
®® 
case
©© 
GameplayUtilities
©© &
.
©©& '&
PIECE_GAMEPLAY_SETTLEMEN
©©' ?
:
©©? @
result
™™ 
=
™™ 
PlaceSettlement
™™ ,
(
™™, -
gameBoardState
™™- ;
,
™™; <
placementDto
™™= I
,
™™I J
playerGameplayDto
™™K \
,
™™\ ]
gameId
™™^ d
)
™™d e
;
™™e f
break
´´ 
;
´´ 
case
≠≠ 
GameplayUtilities
≠≠ &
.
≠≠& '!
PIECE_GAMEPLAY_ROAD
≠≠' :
:
≠≠: ;
result
ÆÆ 
=
ÆÆ 
	PlaceRoad
ÆÆ &
(
ÆÆ& '
gameBoardState
ÆÆ' 5
,
ÆÆ5 6
placementDto
ÆÆ7 C
,
ÆÆC D
playerGameplayDto
ÆÆE V
,
ÆÆV W
gameId
ÆÆX ^
)
ÆÆ^ _
;
ÆÆ_ `
break
ØØ 
;
ØØ 
case
±± 
GameplayUtilities
±± &
.
±±& '!
PIECE_GAMEPLAY_CITY
±±' :
:
±±: ;
result
≤≤ 
=
≤≤ 
	PlaceCity
≤≤ &
(
≤≤& '
gameBoardState
≤≤' 5
,
≤≤5 6
placementDto
≤≤7 C
,
≤≤C D
playerGameplayDto
≤≤E V
,
≤≤V W
gameId
≤≤X ^
)
≤≤^ _
;
≤≤_ `
break
≥≥ 
;
≥≥ 
default
µµ 
:
µµ 
result
∂∂ 
=
∂∂ 
new
∂∂   
OperationResultDto
∂∂! 3
(
∂∂3 4
false
∂∂4 9
,
∂∂9 :
LanguageUtilities
∂∂; L
.
∂∂L M%
MessageUnableToSaveData
∂∂M d
(
∂∂d e
LanguageUtilities
∂∂e v
.
∂∂v w+
LANGUAGE_ENGLISH_FORMAT_RESX∂∂w ì
)∂∂ì î
)∂∂î ï
;∂∂ï ñ
break
∑∑ 
;
∑∑ 
}
∏∏ 
return
∫∫ 
await
∫∫ 
Task
∫∫ 
.
∫∫ 

FromResult
∫∫ (
(
∫∫( )
result
∫∫) /
)
∫∫/ 0
;
∫∫0 1
}
ªª 	
private
ΩΩ  
OperationResultDto
ΩΩ "
PlaceSettlement
ΩΩ# 2
(
ΩΩ2 3
GameBoardStateDto
ΩΩ3 D
gameBoardState
ΩΩE S
,
ΩΩS T
PiecePlacementDto
ΩΩU f
placementDto
ΩΩg s
,
ΩΩs t 
PlayerGameplayDtoΩΩu Ü!
playerGameplayDtoΩΩá ò
,ΩΩò ô
intΩΩö ù
gameIdΩΩû §
)ΩΩ§ •
{
ææ 	
	VertexDto
øø 
vertex
øø 
=
øø 
gameBoardState
øø -
.
øø- .
HexTiles
øø. 6
.
øø6 7

SelectMany
øø7 A
(
øøA B
hextile
øøB I
=>
øøJ L
hextile
øøM T
.
øøT U
Vertices
øøU ]
)
øø] ^
.
øø^ _
FirstOrDefault
øø_ m
(
øøm n
vertices
øøn v
=>
øøw y
verticesøøz Ç
.øøÇ É
IdøøÉ Ö
==øøÜ à
placementDtoøøâ ï
.øøï ñ
TargetVertexIdøøñ §
)øø§ •
;øø• ¶

Dictionary
¡¡ 
<
¡¡ 
string
¡¡ 
,
¡¡ 
int
¡¡ "
>
¡¡" #
cost
¡¡$ (
=
¡¡) *
new
¡¡+ .

Dictionary
¡¡/ 9
<
¡¡9 :
string
¡¡: @
,
¡¡@ A
int
¡¡B E
>
¡¡E F
{
¬¬ 
{
√√ 
GameplayUtilities
√√ #
.
√√# $ 
RESOURCE_TRITONIUM
√√$ 6
,
√√6 7
$num
√√8 9
}
√√: ;
,
√√; <
{
ƒƒ 
GameplayUtilities
ƒƒ #
.
ƒƒ# $
RESOURCE_GRX_810
ƒƒ$ 4
,
ƒƒ4 5
$num
ƒƒ6 7
}
ƒƒ8 9
,
ƒƒ9 :
{
≈≈ 
GameplayUtilities
≈≈ #
.
≈≈# $'
RESOURCE_ALPHA_NANOFIBERS
≈≈$ =
,
≈≈= >
$num
≈≈? @
}
≈≈A B
,
≈≈B C
{
∆∆ 
GameplayUtilities
∆∆ #
.
∆∆# $&
RESOURCE_EPSILON_BIOMASS
∆∆$ <
,
∆∆< =
$num
∆∆> ?
}
∆∆@ A
}
«« 
;
«« 
if
…… 
(
…… 
vertex
…… 
==
…… 
null
…… 
||
…… !
vertex
……" (
.
……( )

IsOccupied
……) 3
||
……4 6
!
……7 8
DeductResources
……8 G
(
……G H!
gamePlayerResources
……H [
[
……[ \
gameId
……\ b
]
……b c
,
……c d
playerGameplayDto
……e v
.
……v w
Id
……w y
,
……y z
cost
……{ 
)…… Ä
)……Ä Å
{
   
return
ÀÀ 
new
ÀÀ  
OperationResultDto
ÀÀ -
(
ÀÀ- .
false
ÀÀ. 3
,
ÀÀ3 4
LanguageUtilities
ÀÀ5 F
.
ÀÀF G%
MessageUnableToSaveData
ÀÀG ^
(
ÀÀ^ _
LanguageUtilities
ÀÀ_ p
.
ÀÀp q+
LANGUAGE_ENGLISH_FORMAT_RESXÀÀq ç
)ÀÀç é
)ÀÀé è
;ÀÀè ê
}
ÃÃ 
vertex
ŒŒ 
.
ŒŒ 

IsOccupied
ŒŒ 
=
ŒŒ 
true
ŒŒ  $
;
ŒŒ$ %
vertex
œœ 
.
œœ 
OwnerPlayerId
œœ  
=
œœ! "
playerGameplayDto
œœ# 4
.
œœ4 5
Id
œœ5 7
;
œœ7 8"
UpdateGameBoardState
——  
(
——  !
gameId
——! '
,
——' (
gameBoardState
——) 7
)
——7 8
;
——8 9
_
”” 
=
”” 
AddPointsToPlayer
”” !
(
””! "
playerGameplayDto
””" 3
.
””3 4
Id
””4 6
,
””6 7
$num
””8 9
,
””9 :
gameId
””; A
)
””A B
;
””B C&
NotifyPlayersPiecePlaced
’’ $
(
’’$ %
gameId
’’% +
,
’’+ ,
playerGameplayDto
’’- >
)
’’> ?
;
’’? @(
NotifyPlayersWithResources
÷÷ &
(
÷÷& '
gameId
÷÷' -
)
÷÷- .
;
÷÷. /
return
ÿÿ 
new
ÿÿ  
OperationResultDto
ÿÿ )
(
ÿÿ) *
true
ÿÿ* .
,
ÿÿ. /
LanguageUtilities
ÿÿ0 A
.
ÿÿA B
MessageSuccess
ÿÿB P
(
ÿÿP Q
LanguageUtilities
ÿÿQ b
.
ÿÿb c*
LANGUAGE_ENGLISH_FORMAT_RESX
ÿÿc 
)ÿÿ Ä
)ÿÿÄ Å
;ÿÿÅ Ç
}
ŸŸ 	
private
€€  
OperationResultDto
€€ "
	PlaceRoad
€€# ,
(
€€, -
GameBoardStateDto
€€- >
gameBoardState
€€? M
,
€€M N
PiecePlacementDto
€€O `
placementDto
€€a m
,
€€m n 
PlayerGameplayDto€€o Ä!
playerGameplayDto€€Å í
,€€í ì
int€€î ó
gameId€€ò û
)€€û ü
{
‹‹ 	
EdgeDto
›› 
edge
›› 
=
›› 
gameBoardState
›› )
.
››) *
HexTiles
››* 2
.
››2 3

SelectMany
››3 =
(
››= >
hextile
››> E
=>
››F H
hextile
››I P
.
››P Q
Edges
››Q V
)
››V W
.
››W X
FirstOrDefault
››X f
(
››f g
edges
››g l
=>
››m o
edges
››p u
.
››u v
Id
››v x
==
››y {
placementDto››| à
.››à â
TargetEdgeId››â ï
)››ï ñ
;››ñ ó

Dictionary
ﬁﬁ 
<
ﬁﬁ 
string
ﬁﬁ 
,
ﬁﬁ 
int
ﬁﬁ "
>
ﬁﬁ" #
cost
ﬁﬁ$ (
=
ﬁﬁ) *
new
ﬁﬁ+ .

Dictionary
ﬁﬁ/ 9
<
ﬁﬁ9 :
string
ﬁﬁ: @
,
ﬁﬁ@ A
int
ﬁﬁB E
>
ﬁﬁE F
{
ﬂﬂ 
{
‡‡ 
GameplayUtilities
‡‡ #
.
‡‡# $ 
RESOURCE_TRITONIUM
‡‡$ 6
,
‡‡6 7
$num
‡‡8 9
}
‡‡: ;
,
‡‡; <
{
·· 
GameplayUtilities
·· #
.
··# $
RESOURCE_GRX_810
··$ 4
,
··4 5
$num
··6 7
}
··8 9
}
‚‚ 
;
‚‚ 
if
‰‰ 
(
‰‰ 
edge
‰‰ 
==
‰‰ 
null
‰‰ 
||
‰‰ 
edge
‰‰  $
.
‰‰$ %

IsOccupied
‰‰% /
||
‰‰0 2
!
‰‰3 4!
PlayerHasSettlement
‰‰4 G
(
‰‰G H
gameBoardState
‰‰H V
,
‰‰V W
playerGameplayDto
‰‰X i
.
‰‰i j
Id
‰‰j l
)
‰‰l m
||
‰‰n p
!
‰‰q r
DeductResources‰‰r Å
(‰‰Å Ç#
gamePlayerResources‰‰Ç ï
[‰‰ï ñ
gameId‰‰ñ ú
]‰‰ú ù
,‰‰ù û!
playerGameplayDto‰‰ü ∞
.‰‰∞ ±
Id‰‰± ≥
,‰‰≥ ¥
cost‰‰µ π
)‰‰π ∫
)‰‰∫ ª
{
ÂÂ 
return
ÊÊ 
new
ÊÊ  
OperationResultDto
ÊÊ -
(
ÊÊ- .
false
ÊÊ. 3
,
ÊÊ3 4
LanguageUtilities
ÊÊ5 F
.
ÊÊF G%
MessageUnableToSaveData
ÊÊG ^
(
ÊÊ^ _
LanguageUtilities
ÊÊ_ p
.
ÊÊp q+
LANGUAGE_ENGLISH_FORMAT_RESXÊÊq ç
)ÊÊç é
)ÊÊé è
;ÊÊè ê
}
ÁÁ 
edge
ÈÈ 
.
ÈÈ 

IsOccupied
ÈÈ 
=
ÈÈ 
true
ÈÈ "
;
ÈÈ" #
edge
ÍÍ 
.
ÍÍ 
OwnerPlayerId
ÍÍ 
=
ÍÍ  
playerGameplayDto
ÍÍ! 2
.
ÍÍ2 3
Id
ÍÍ3 5
;
ÍÍ5 6"
UpdateGameBoardState
ÏÏ  
(
ÏÏ  !
gameId
ÏÏ! '
,
ÏÏ' (
gameBoardState
ÏÏ) 7
)
ÏÏ7 8
;
ÏÏ8 9
_
ÓÓ 
=
ÓÓ 
AddPointsToPlayer
ÓÓ !
(
ÓÓ! "
playerGameplayDto
ÓÓ" 3
.
ÓÓ3 4
Id
ÓÓ4 6
,
ÓÓ6 7
$num
ÓÓ8 9
,
ÓÓ9 :
gameId
ÓÓ; A
)
ÓÓA B
;
ÓÓB C&
NotifyPlayersPiecePlaced
 $
(
$ %
gameId
% +
,
+ ,
playerGameplayDto
- >
)
> ?
;
? @(
NotifyPlayersWithResources
ÒÒ &
(
ÒÒ& '
gameId
ÒÒ' -
)
ÒÒ- .
;
ÒÒ. /
return
ÙÙ 
new
ÙÙ  
OperationResultDto
ÙÙ )
(
ÙÙ) *
true
ÙÙ* .
,
ÙÙ. /
LanguageUtilities
ÙÙ0 A
.
ÙÙA B
MessageSuccess
ÙÙB P
(
ÙÙP Q
LanguageUtilities
ÙÙQ b
.
ÙÙb c*
LANGUAGE_ENGLISH_FORMAT_RESX
ÙÙc 
)ÙÙ Ä
)ÙÙÄ Å
;ÙÙÅ Ç
}
ıı 	
private
˜˜ 
static
˜˜ 
bool
˜˜ !
PlayerHasSettlement
˜˜ /
(
˜˜/ 0
GameBoardStateDto
˜˜0 A
gameBoardState
˜˜B P
,
˜˜P Q
int
˜˜R U
playerId
˜˜V ^
)
˜˜^ _
{
¯¯ 	
return
˘˘ 
gameBoardState
˘˘ !
.
˘˘! "
HexTiles
˘˘" *
.
˙˙ 

SelectMany
˙˙ 
(
˙˙ 
hextile
˙˙ #
=>
˙˙$ &
hextile
˙˙' .
.
˙˙. /
Vertices
˙˙/ 7
)
˙˙7 8
.
˚˚ 
Any
˚˚ 
(
˚˚ 
vertex
˚˚ 
=>
˚˚ 
vertex
˚˚ %
.
˚˚% &
OwnerPlayerId
˚˚& 3
==
˚˚4 6
playerId
˚˚7 ?
&&
˚˚@ B
vertex
˚˚C I
.
˚˚I J

IsOccupied
˚˚J T
&&
˚˚U W
!
˚˚X Y
vertex
˚˚Y _
.
˚˚_ `
IsCity
˚˚` f
)
˚˚f g
;
˚˚g h
}
¸¸ 	
private
ˇˇ  
OperationResultDto
ˇˇ "
	PlaceCity
ˇˇ# ,
(
ˇˇ, -
GameBoardStateDto
ˇˇ- >
gameBoardState
ˇˇ? M
,
ˇˇM N
PiecePlacementDto
ˇˇO `
placementDto
ˇˇa m
,
ˇˇm n 
PlayerGameplayDtoˇˇo Ä!
playerGameplayDtoˇˇÅ í
,ˇˇí ì
intˇˇî ó
gameIdˇˇò û
)ˇˇû ü
{
ÄÄ 	
	VertexDto
ÅÅ 
vertex
ÅÅ 
=
ÅÅ 
gameBoardState
ÅÅ -
.
ÅÅ- .
HexTiles
ÅÅ. 6
.
ÅÅ6 7

SelectMany
ÅÅ7 A
(
ÅÅA B
hextile
ÅÅB I
=>
ÅÅJ L
hextile
ÅÅM T
.
ÅÅT U
Vertices
ÅÅU ]
)
ÅÅ] ^
.
ÅÅ^ _
FirstOrDefault
ÅÅ_ m
(
ÅÅm n
v
ÅÅn o
=>
ÅÅp r
v
ÅÅs t
.
ÅÅt u
Id
ÅÅu w
==
ÅÅx z
placementDtoÅÅ{ á
.ÅÅá à
TargetVertexIdÅÅà ñ
)ÅÅñ ó
;ÅÅó ò

Dictionary
ÉÉ 
<
ÉÉ 
string
ÉÉ 
,
ÉÉ 
int
ÉÉ "
>
ÉÉ" #
cost
ÉÉ$ (
=
ÉÉ) *
new
ÉÉ+ .

Dictionary
ÉÉ/ 9
<
ÉÉ9 :
string
ÉÉ: @
,
ÉÉ@ A
int
ÉÉB E
>
ÉÉE F
{
ÑÑ 
{
ÖÖ 
GameplayUtilities
ÖÖ #
.
ÖÖ# $&
RESOURCE_EPSILON_BIOMASS
ÖÖ$ <
,
ÖÖ< =
$num
ÖÖ> ?
}
ÖÖ@ A
,
ÖÖA B
{
ÜÜ 
GameplayUtilities
ÜÜ #
.
ÜÜ# $"
RESOURCE_LUNAR_STONE
ÜÜ$ 8
,
ÜÜ8 9
$num
ÜÜ: ;
}
ÜÜ< =
}
áá 
;
áá 
if
ââ 
(
ââ 
vertex
ââ 
==
ââ 
null
ââ 
||
ââ !
!
ââ" #
GameplayRules
ââ# 0
.
ââ0 1
CanUpgradeToCity
ââ1 A
(
ââA B
vertex
ââB H
,
ââH I
playerGameplayDto
ââJ [
.
ââ[ \
Id
ââ\ ^
)
ââ^ _
||
ââ` b
!
ââc d
DeductResources
ââd s
(
ââs t"
gamePlayerResourcesâât á
[ââá à
gameIdââà é
]ââé è
,ââè ê!
playerGameplayDtoââë ¢
.ââ¢ £
Idââ£ •
,ââ• ¶
costââß ´
)ââ´ ¨
)ââ¨ ≠
{
ää 
return
ãã 
new
ãã  
OperationResultDto
ãã -
(
ãã- .
false
ãã. 3
,
ãã3 4
LanguageUtilities
ãã5 F
.
ããF G%
MessageUnableToSaveData
ããG ^
(
ãã^ _
LanguageUtilities
ãã_ p
.
ããp q+
LANGUAGE_ENGLISH_FORMAT_RESXããq ç
)ããç é
)ããé è
;ããè ê
}
åå 
vertex
éé 
.
éé 
IsCity
éé 
=
éé 
true
éé  
;
éé  !"
UpdateGameBoardState
êê  
(
êê  !
gameId
êê! '
,
êê' (
gameBoardState
êê) 7
)
êê7 8
;
êê8 9
_
íí 
=
íí 
AddPointsToPlayer
íí !
(
íí! "
playerGameplayDto
íí" 3
.
íí3 4
Id
íí4 6
,
íí6 7
$num
íí8 9
,
íí9 :
gameId
íí; A
)
ííA B
;
ííB C&
NotifyPlayersPiecePlaced
îî $
(
îî$ %
gameId
îî% +
,
îî+ ,
playerGameplayDto
îî- >
)
îî> ?
;
îî? @(
NotifyPlayersWithResources
ïï &
(
ïï& '
gameId
ïï' -
)
ïï- .
;
ïï. /
return
óó 
new
óó  
OperationResultDto
óó )
(
óó) *
true
óó* .
,
óó. /
LanguageUtilities
óó0 A
.
óóA B
MessageSuccess
óóB P
(
óóP Q
LanguageUtilities
óóQ b
.
óób c*
LANGUAGE_ENGLISH_FORMAT_RESX
óóc 
)óó Ä
)óóÄ Å
;óóÅ Ç
}
òò 	
private
öö 
static
öö 
bool
öö 
DeductResources
öö +
(
öö+ ,

Dictionary
öö, 6
<
öö6 7
int
öö7 :
,
öö: ; 
PlayerResourcesDto
öö< N
>
ööN O 
playerResourcesMap
ööP b
,
ööb c
int
ööd g
playerId
ööh p
,
ööp q

Dictionary
öör |
<
öö| }
stringöö} É
,ööÉ Ñ
intööÖ à
>ööà â
costööä é
)ööé è
{
õõ 	
if
úú 
(
úú 
!
úú  
playerResourcesMap
úú #
.
úú# $
TryGetValue
úú$ /
(
úú/ 0
playerId
úú0 8
,
úú8 9
out
úú: =
var
úú> A
	resources
úúB K
)
úúK L
)
úúL M
{
ùù 
return
ûû 
false
ûû 
;
ûû 
}
üü 
foreach
°° 
(
°° 
var
°° 
resource
°° !
in
°°" $
cost
°°% )
)
°°) *
{
¢¢ 
var
££ 
currentQuantity
££ #
=
££$ %!
GetResourceQuantity
££& 9
(
££9 :
	resources
££: C
,
££C D
resource
££E M
.
££M N
Key
££N Q
)
££Q R
;
££R S
if
§§ 
(
§§ 
currentQuantity
§§ #
<
§§$ %
resource
§§& .
.
§§. /
Value
§§/ 4
)
§§4 5
{
•• 
return
¶¶ 
false
¶¶  
;
¶¶  !
}
ßß 
}
®® 
foreach
™™ 
(
™™ 
var
™™ 
resource
™™ !
in
™™" $
cost
™™% )
)
™™) *
{
´´ 
DeductResource
¨¨ 
(
¨¨ 
	resources
¨¨ (
,
¨¨( )
resource
¨¨* 2
.
¨¨2 3
Key
¨¨3 6
,
¨¨6 7
resource
¨¨8 @
.
¨¨@ A
Value
¨¨A F
)
¨¨F G
;
¨¨G H
}
≠≠ 
return
ØØ 
true
ØØ 
;
ØØ 
}
∞∞ 	
private
≤≤ 
static
≤≤ 
bool
≤≤ 
DeductResources
≤≤ +
(
≤≤+ ,

Dictionary
≤≤, 6
<
≤≤6 7
int
≤≤7 :
,
≤≤: ; 
PlayerResourcesDto
≤≤< N
>
≤≤N O 
playerResourcesMap
≤≤P b
,
≤≤b c
int
≤≤d g
playerId
≤≤h p
,
≤≤p q!
PlayerResourcesDto≤≤r Ñ
	resources≤≤Ö é
)≤≤é è
{
≥≥ 	

Dictionary
¥¥ 
<
¥¥ 
string
¥¥ 
,
¥¥ 
int
¥¥ "
>
¥¥" #
cost
¥¥$ (
=
¥¥) *
new
¥¥+ .

Dictionary
¥¥/ 9
<
¥¥9 :
string
¥¥: @
,
¥¥@ A
int
¥¥B E
>
¥¥E F
{
µµ 
{
∂∂ 
GameplayUtilities
∂∂ #
.
∂∂# $"
RESOURCE_LUNAR_STONE
∂∂$ 8
,
∂∂8 9
	resources
∂∂: C
.
∂∂C D

LunarStone
∂∂D N
.
∂∂N O
Quantity
∂∂O W
}
∂∂X Y
,
∂∂Y Z
{
∑∑ 
GameplayUtilities
∑∑ #
.
∑∑# $ 
RESOURCE_TRITONIUM
∑∑$ 6
,
∑∑6 7
	resources
∑∑8 A
.
∑∑A B
	Tritonium
∑∑B K
.
∑∑K L
Quantity
∑∑L T
}
∑∑U V
,
∑∑V W
{
∏∏ 
GameplayUtilities
∏∏ #
.
∏∏# $'
RESOURCE_ALPHA_NANOFIBERS
∏∏$ =
,
∏∏= >
	resources
∏∏? H
.
∏∏H I
AlphaNanofibers
∏∏I X
.
∏∏X Y
Quantity
∏∏Y a
}
∏∏b c
,
∏∏c d
{
ππ 
GameplayUtilities
ππ #
.
ππ# $&
RESOURCE_EPSILON_BIOMASS
ππ$ <
,
ππ< =
	resources
ππ> G
.
ππG H
EpsilonBiomass
ππH V
.
ππV W
Quantity
ππW _
}
ππ` a
,
ππa b
{
∫∫ 
GameplayUtilities
∫∫ #
.
∫∫# $
RESOURCE_GRX_810
∫∫$ 4
,
∫∫4 5
	resources
∫∫6 ?
.
∫∫? @
Grx810
∫∫@ F
.
∫∫F G
Quantity
∫∫G O
}
∫∫P Q
}
ªª 
;
ªª 
return
ΩΩ 
DeductResources
ΩΩ "
(
ΩΩ" # 
playerResourcesMap
ΩΩ# 5
,
ΩΩ5 6
playerId
ΩΩ7 ?
,
ΩΩ? @
cost
ΩΩA E
)
ΩΩE F
;
ΩΩF G
}
ææ 	
private
øø 
static
øø 
void
øø 
DeductResource
øø *
(
øø* + 
PlayerResourcesDto
øø+ =
	resources
øø> G
,
øøG H
string
øøI O
resourceName
øøP \
,
øø\ ]
int
øø^ a
amount
øøb h
)
øøh i
{
¿¿ 	
switch
¡¡ 
(
¡¡ 
resourceName
¡¡  
)
¡¡  !
{
¬¬ 
case
√√ 
GameplayUtilities
√√ &
.
√√& '"
RESOURCE_LUNAR_STONE
√√' ;
:
√√; <
	resources
ƒƒ 
.
ƒƒ 

LunarStone
ƒƒ (
.
ƒƒ( )
Quantity
ƒƒ) 1
-=
ƒƒ2 4
amount
ƒƒ5 ;
;
ƒƒ; <
break
≈≈ 
;
≈≈ 
case
∆∆ 
GameplayUtilities
∆∆ &
.
∆∆& ' 
RESOURCE_TRITONIUM
∆∆' 9
:
∆∆9 :
	resources
«« 
.
«« 
	Tritonium
«« '
.
««' (
Quantity
««( 0
-=
««1 3
amount
««4 :
;
««: ;
break
»» 
;
»» 
case
…… 
GameplayUtilities
…… &
.
……& ''
RESOURCE_ALPHA_NANOFIBERS
……' @
:
……@ A
	resources
   
.
   
AlphaNanofibers
   -
.
  - .
Quantity
  . 6
-=
  7 9
amount
  : @
;
  @ A
break
ÀÀ 
;
ÀÀ 
case
ÃÃ 
GameplayUtilities
ÃÃ &
.
ÃÃ& '&
RESOURCE_EPSILON_BIOMASS
ÃÃ' ?
:
ÃÃ? @
	resources
ÕÕ 
.
ÕÕ 
EpsilonBiomass
ÕÕ ,
.
ÕÕ, -
Quantity
ÕÕ- 5
-=
ÕÕ6 8
amount
ÕÕ9 ?
;
ÕÕ? @
break
ŒŒ 
;
ŒŒ 
case
œœ 
GameplayUtilities
œœ &
.
œœ& '
RESOURCE_GRX_810
œœ' 7
:
œœ7 8
	resources
–– 
.
–– 
Grx810
–– $
.
––$ %
Quantity
––% -
-=
––. 0
amount
––1 7
;
––7 8
break
—— 
;
—— 
}
““ 
}
”” 	
private
÷÷ 
static
÷÷ 
int
÷÷ !
GetResourceQuantity
÷÷ .
(
÷÷. / 
PlayerResourcesDto
÷÷/ A
	resources
÷÷B K
,
÷÷K L
string
÷÷M S
resourceName
÷÷T `
)
÷÷` a
{
◊◊ 	
switch
ÿÿ 
(
ÿÿ 
resourceName
ÿÿ  
)
ÿÿ  !
{
ŸŸ 
case
⁄⁄ 
GameplayUtilities
⁄⁄ &
.
⁄⁄& '"
RESOURCE_LUNAR_STONE
⁄⁄' ;
:
⁄⁄; <
return
€€ 
	resources
€€ $
.
€€$ %

LunarStone
€€% /
.
€€/ 0
Quantity
€€0 8
;
€€8 9
case
‹‹ 
GameplayUtilities
‹‹ &
.
‹‹& ' 
RESOURCE_TRITONIUM
‹‹' 9
:
‹‹9 :
return
›› 
	resources
›› $
.
››$ %
	Tritonium
››% .
.
››. /
Quantity
››/ 7
;
››7 8
case
ﬁﬁ 
GameplayUtilities
ﬁﬁ &
.
ﬁﬁ& ''
RESOURCE_ALPHA_NANOFIBERS
ﬁﬁ' @
:
ﬁﬁ@ A
return
ﬂﬂ 
	resources
ﬂﬂ $
.
ﬂﬂ$ %
AlphaNanofibers
ﬂﬂ% 4
.
ﬂﬂ4 5
Quantity
ﬂﬂ5 =
;
ﬂﬂ= >
case
‡‡ 
GameplayUtilities
‡‡ &
.
‡‡& '&
RESOURCE_EPSILON_BIOMASS
‡‡' ?
:
‡‡? @
return
·· 
	resources
·· $
.
··$ %
EpsilonBiomass
··% 3
.
··3 4
Quantity
··4 <
;
··< =
case
‚‚ 
GameplayUtilities
‚‚ &
.
‚‚& '
RESOURCE_GRX_810
‚‚' 7
:
‚‚7 8
return
„„ 
	resources
„„ $
.
„„$ %
Grx810
„„% +
.
„„+ ,
Quantity
„„, 4
;
„„4 5
default
‰‰ 
:
‰‰ 
return
ÂÂ 
$num
ÂÂ 
;
ÂÂ 
}
ÊÊ 
}
ÁÁ 	
private
ÈÈ 
async
ÈÈ 
Task
ÈÈ 
AddPointsToPlayer
ÈÈ ,
(
ÈÈ, -
int
ÈÈ- 0
playerId
ÈÈ1 9
,
ÈÈ9 :
int
ÈÈ; >
points
ÈÈ? E
,
ÈÈE F
int
ÈÈG J
gameId
ÈÈK Q
)
ÈÈQ R
{
ÍÍ 	
if
ÎÎ 
(
ÎÎ $
connectedPlayersByGame
ÎÎ &
.
ÎÎ& '
TryGetValue
ÎÎ' 2
(
ÎÎ2 3
gameId
ÎÎ3 9
,
ÎÎ9 :
out
ÎÎ; >
var
ÎÎ? B
playersInGame
ÎÎC P
)
ÎÎP Q
)
ÎÎQ R
{
ÏÏ 
ConnectedPlayer
ÌÌ 
player
ÌÌ  &
=
ÌÌ' (
playersInGame
ÌÌ) 6
.
ÌÌ6 7
FirstOrDefault
ÌÌ7 E
(
ÌÌE F
p
ÌÌF G
=>
ÌÌH J
p
ÓÓ 
.
ÓÓ 
profileClientDto
ÓÓ &
?
ÓÓ& '
.
ÓÓ' (
Id
ÓÓ( *
==
ÓÓ+ -
playerId
ÓÓ. 6
||
ÓÓ7 9
p
ÓÓ: ;
.
ÓÓ; <
guestAccountDto
ÓÓ< K
?
ÓÓK L
.
ÓÓL M
Id
ÓÓM O
==
ÓÓP R
playerId
ÓÓS [
)
ÓÓ[ \
;
ÓÓ\ ]
if
 
(
 
player
 
!=
 
null
 "
)
" #
{
ÒÒ 
player
ÚÚ 
.
ÚÚ 
Points
ÚÚ !
+=
ÚÚ" $
points
ÚÚ% +
;
ÚÚ+ ,
if
ÙÙ 
(
ÙÙ 
player
ÙÙ 
.
ÙÙ 
Points
ÙÙ %
>=
ÙÙ& (
GameplayUtilities
ÙÙ) :
.
ÙÙ: ;
WIN_POINTS_TO_WIN
ÙÙ; L
)
ÙÙL M
{
ıı 
Game
ˆˆ 

gameRecord
ˆˆ '
=
ˆˆ( )
await
ˆˆ* /
repositoryManager
ˆˆ0 A
.
ˆˆA B
GameRepository
ˆˆB P
.
ˆˆP Q!
FindEntityByIdAsync
ˆˆQ d
(
ˆˆd e
gameId
ˆˆe k
)
ˆˆk l
;
ˆˆl m
await
˜˜ 
ChangeStatusGame
˜˜ .
(
˜˜. /

gameRecord
˜˜/ 9
,
˜˜9 :
GameUtilities
˜˜; H
.
˜˜H I)
DOMAIN_GAME_STATUS_POSTGAME
˜˜I d
)
˜˜d e
;
˜˜e f
int
¯¯ 
idPlayer
¯¯ $
=
¯¯% &
player
¯¯' -
.
¯¯- .
profileClientDto
¯¯. >
?
¯¯> ?
.
¯¯? @
Id
¯¯@ B
??
¯¯C E
player
¯¯F L
.
¯¯L M
guestAccountDto
¯¯M \
?
¯¯\ ]
.
¯¯] ^
Id
¯¯^ `
??
¯¯a c 
CharacterUtilities
¯¯d v
.
¯¯v w
NON_VALID_ID¯¯w É
;¯¯É Ñ
ProfileGame
˘˘ #
profileGameRecord
˘˘$ 5
=
˘˘6 7
await
˘˘8 =
repositoryManager
˘˘> O
.
˘˘O P#
ProfileGameRepository
˘˘P e
.
˘˘e f'
IsPlayerJoinedToGameAsync
˘˘f 
(˘˘ Ä
idPlayer˘˘Ä à
,˘˘à â
gameId˘˘ä ê
)˘˘ê ë
;˘˘ë í
if
˙˙ 
(
˙˙ 
profileGameRecord
˙˙ ,
!=
˙˙- /
null
˙˙0 4
)
˙˙4 5
{
˚˚ 
profileGameRecord
¸¸ -
.
¸¸- .
Points
¸¸. 4
=
¸¸5 6
GameplayUtilities
¸¸7 H
.
¸¸H I
WIN_POINTS_TO_WIN
¸¸I Z
;
¸¸Z [
profileGameRecord
˝˝ -
.
˝˝- .
IsPlayerInGame
˝˝. <
=
˝˝= >
false
˝˝? D
;
˝˝D E
}
˛˛ 
CancelTurnTimer
ˇˇ '
(
ˇˇ' (
gameId
ˇˇ( .
)
ˇˇ. /
;
ˇˇ/ 0
await
ÄÄ 
Task
ÄÄ "
.
ÄÄ" #
Delay
ÄÄ# (
(
ÄÄ( )
$num
ÄÄ) -
)
ÄÄ- .
;
ÄÄ. /
await
ÅÅ 
repositoryManager
ÅÅ /
.
ÅÅ/ 0
	SaveAsync
ÅÅ0 9
(
ÅÅ9 :
)
ÅÅ: ;
;
ÅÅ; <
await
ÇÇ 
EndGameWithWinner
ÇÇ /
(
ÇÇ/ 0
player
ÇÇ0 6
,
ÇÇ6 7
gameId
ÇÇ8 >
)
ÇÇ> ?
;
ÇÇ? @
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 
}
ÜÜ 	
private
àà 
async
àà 
Task
àà 
EndGameWithWinner
àà ,
(
àà, -
ConnectedPlayer
àà- <
winnerPlayer
àà= I
,
ààI J
int
ààK N
gameId
ààO U
)
ààU V
{
ââ 	
if
ää 
(
ää $
connectedPlayersByGame
ää &
.
ää& '
TryGetValue
ää' 2
(
ää2 3
gameId
ää3 9
,
ää9 :
out
ää; >
ConcurrentBag
ää? L
<
ääL M
ConnectedPlayer
ääM \
>
ää\ ]
playersInGame
ää^ k
)
ääk l
)
ääl m
{
ãã 
foreach
åå 
(
åå 
ConnectedPlayer
åå (
player
åå) /
in
åå0 2
playersInGame
åå3 @
)
åå@ A
{
çç 
try
éé 
{
èè 
if
êê 
(
êê "
IsPlayerCallbackOpen
êê 0
(
êê0 1
player
êê1 7
)
êê7 8
)
êê8 9
{
ëë 
string
íí "

nameWinner
íí# -
=
íí. /
winnerPlayer
íí0 <
?
íí< =
.
íí= >
profileClientDto
íí> N
?
ííN O
.
ííO P
Name
ííP T
??
ííU W
winnerPlayer
ííX d
?
ííd e
.
ííe f
guestAccountDto
ííf u
?
ííu v
.
íív w
Name
ííw {
;
íí{ |
player
ìì "
.
ìì" #
gameCallback
ìì# /
.
ìì/ 0
NotifyWinner
ìì0 <
(
ìì< =

nameWinner
ìì= G
)
ììG H
;
ììH I
}
îî 
}
ïï 
catch
ññ 
(
ññ 1
#CommunicationObjectAbortedException
ññ >
ex
ññ? A
)
ññA B
{
óó 
Log
òò 
.
òò 
Error
òò !
(
òò! "
ex
òò" $
,
òò$ %
ex
òò& (
.
òò( )
Source
òò) /
)
òò/ 0
;
òò0 1
}
ôô 
catch
öö 
(
öö $
CommunicationException
öö 1
ex
öö2 4
)
öö4 5
{
õõ 
Log
úú 
.
úú 
Error
úú !
(
úú! "
ex
úú" $
,
úú$ %
ex
úú& (
.
úú( )
Source
úú) /
)
úú/ 0
;
úú0 1
}
ùù 
catch
ûû 
(
ûû 
	Exception
ûû $
ex
ûû% '
)
ûû' (
{
üü 
Log
†† 
.
†† 
Error
†† !
(
††! "
ex
††" $
,
††$ %
ex
††& (
.
††( )
Source
††) /
)
††/ 0
;
††0 1
}
°° 
}
¢¢ 
}
££ 
await
§§ 
Task
§§ 
.
§§ 
Delay
§§ 
(
§§ 
GameplayUtilities
§§ .
.
§§. /'
TIME_PREVIOUS_TO_END_GAME
§§/ H
)
§§H I
;
§§I J
EndGame
•• 
(
•• 
gameId
•• 
)
•• 
;
•• 
}
¶¶ 	
public
©© 
async
©© 
Task
©© &
DistributeResourcesAsync
©© 2
(
©©2 3
int
©©3 6
gameId
©©7 =
,
©©= >
int
©©? B
	diceValue
©©C L
)
©©L M
{
™™ 	
if
´´ 
(
´´ 
!
´´ 
gameBoardStates
´´  
.
´´  !
TryGetValue
´´! ,
(
´´, -
gameId
´´- 3
,
´´3 4
out
´´5 8
GameBoardStateDto
´´9 J
gameBoardState
´´K Y
)
´´Y Z
)
´´Z [
{
¨¨ 
return
≠≠ 
;
≠≠ 
}
ÆÆ 
if
∞∞ 
(
∞∞ 
!
∞∞ !
gamePlayerResources
∞∞ $
.
∞∞$ %
ContainsKey
∞∞% 0
(
∞∞0 1
gameId
∞∞1 7
)
∞∞7 8
)
∞∞8 9
{
±± !
gamePlayerResources
≤≤ #
[
≤≤# $
gameId
≤≤$ *
]
≤≤* +
=
≤≤, -
new
≤≤. 1

Dictionary
≤≤2 <
<
≤≤< =
int
≤≤= @
,
≤≤@ A 
PlayerResourcesDto
≤≤B T
>
≤≤T U
(
≤≤U V
)
≤≤V W
;
≤≤W X
}
≥≥ 
var
µµ &
activatedHexesWithOwners
µµ (
=
µµ) *)
GetActivatedHexesWithOwners
µµ+ F
(
µµF G
gameBoardState
µµG U
,
µµU V
	diceValue
µµW `
)
µµ` a
;
µµa b
if
∑∑ 
(
∑∑ 
!
∑∑ &
activatedHexesWithOwners
∑∑ )
.
∑∑) *
Any
∑∑* -
(
∑∑- .
)
∑∑. /
)
∑∑/ 0
{
∏∏ 
return
ππ 
;
ππ 
}
∫∫ 4
&UpdatePlayerResourcesForActivatedHexes
ºº 2
(
ºº2 3
gameId
ºº3 9
,
ºº9 :&
activatedHexesWithOwners
ºº; S
)
ººS T
;
ººT U(
NotifyPlayersWithResources
ææ &
(
ææ& '
gameId
ææ' -
)
ææ- .
;
ææ. /
await
¿¿ 
Task
¿¿ 
.
¿¿ 
CompletedTask
¿¿ $
;
¿¿$ %
}
¡¡ 	
private
√√ 
void
√√ (
DistributeInitialResources
√√ /
(
√√/ 0
int
√√0 3
gameId
√√4 :
)
√√: ;
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
!
≈≈ $
connectedPlayersByGame
≈≈ '
.
≈≈' (
TryGetValue
≈≈( 3
(
≈≈3 4
gameId
≈≈4 :
,
≈≈: ;
out
≈≈< ?
var
≈≈@ C
playersInGame
≈≈D Q
)
≈≈Q R
)
≈≈R S
return
≈≈T Z
;
≈≈Z [
if
«« 
(
«« 
!
«« !
gamePlayerResources
«« $
.
««$ %
ContainsKey
««% 0
(
««0 1
gameId
««1 7
)
««7 8
)
««8 9
{
»» !
gamePlayerResources
…… #
[
……# $
gameId
……$ *
]
……* +
=
……, -
new
……. 1

Dictionary
……2 <
<
……< =
int
……= @
,
……@ A 
PlayerResourcesDto
……B T
>
……T U
(
……U V
)
……V W
;
……W X
}
   
var
ÃÃ  
playerResourcesMap
ÃÃ "
=
ÃÃ# $!
gamePlayerResources
ÃÃ% 8
[
ÃÃ8 9
gameId
ÃÃ9 ?
]
ÃÃ? @
;
ÃÃ@ A
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ 
player
ŒŒ 
in
ŒŒ  "
playersInGame
ŒŒ# 0
)
ŒŒ0 1
{
œœ 
int
–– 
playerId
–– 
=
–– ,
GetPlayerIdFromConnectedPlayer
–– =
(
––= >
player
––> D
)
––D E
;
––E F
if
““ 
(
““ 
!
““  
playerResourcesMap
““ '
.
““' (
ContainsKey
““( 3
(
““3 4
playerId
““4 <
)
““< =
)
““= >
{
””  
playerResourcesMap
‘‘ &
[
‘‘& '
playerId
‘‘' /
]
‘‘/ 0
=
‘‘1 2
new
‘‘3 6 
PlayerResourcesDto
‘‘7 I
{
’’ 
PlayerId
÷÷  
=
÷÷! "
playerId
÷÷# +
,
÷÷+ ,

LunarStone
◊◊ "
=
◊◊# $
new
◊◊% (
ResourceDto
◊◊) 4
{
◊◊5 6
ResourceName
◊◊7 C
=
◊◊D E
GameplayUtilities
◊◊F W
.
◊◊W X"
RESOURCE_LUNAR_STONE
◊◊X l
,
◊◊l m
Quantity
◊◊n v
=
◊◊w x 
GameplayUtilities◊◊y ä
.◊◊ä ã3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS◊◊ã Æ
}◊◊Ø ∞
,◊◊∞ ±
	Tritonium
ÿÿ !
=
ÿÿ" #
new
ÿÿ$ '
ResourceDto
ÿÿ( 3
{
ÿÿ4 5
ResourceName
ÿÿ6 B
=
ÿÿC D
GameplayUtilities
ÿÿE V
.
ÿÿV W 
RESOURCE_TRITONIUM
ÿÿW i
,
ÿÿi j
Quantity
ÿÿk s
=
ÿÿt u 
GameplayUtilitiesÿÿv á
.ÿÿá à3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERSÿÿà ´
}ÿÿ¨ ≠
,ÿÿ≠ Æ
AlphaNanofibers
ŸŸ '
=
ŸŸ( )
new
ŸŸ* -
ResourceDto
ŸŸ. 9
{
ŸŸ: ;
ResourceName
ŸŸ< H
=
ŸŸI J
GameplayUtilities
ŸŸK \
.
ŸŸ\ ]'
RESOURCE_ALPHA_NANOFIBERS
ŸŸ] v
,
ŸŸv w
QuantityŸŸx Ä
=ŸŸÅ Ç!
GameplayUtilitiesŸŸÉ î
.ŸŸî ï3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERSŸŸï ∏
}ŸŸπ ∫
,ŸŸ∫ ª
EpsilonBiomass
⁄⁄ &
=
⁄⁄' (
new
⁄⁄) ,
ResourceDto
⁄⁄- 8
{
⁄⁄9 :
ResourceName
⁄⁄; G
=
⁄⁄H I
GameplayUtilities
⁄⁄J [
.
⁄⁄[ \&
RESOURCE_EPSILON_BIOMASS
⁄⁄\ t
,
⁄⁄t u
Quantity
⁄⁄v ~
=⁄⁄ Ä!
GameplayUtilities⁄⁄Å í
.⁄⁄í ì3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS⁄⁄ì ∂
}⁄⁄∑ ∏
,⁄⁄∏ π
Grx810
€€ 
=
€€  
new
€€! $
ResourceDto
€€% 0
{
€€1 2
ResourceName
€€3 ?
=
€€@ A
GameplayUtilities
€€B S
.
€€S T
RESOURCE_GRX_810
€€T d
,
€€d e
Quantity
€€f n
=
€€o p 
GameplayUtilities€€q Ç
.€€Ç É3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS€€É ¶
}€€ß ®
}
‹‹ 
;
‹‹ 
}
›› 
}
ﬁﬁ 
}
ﬂﬂ 	
private
·· 
void
·· 4
&UpdatePlayerResourcesForActivatedHexes
·· ;
(
··; <
int
··< ?
gameId
··@ F
,
··F G
List
··H L
<
··L M
(
··M N

HexTileDto
··N X
,
··X Y

Dictionary
··Z d
<
··d e
int
··e h
,
··h i
int
··j m
>
··m n
)
··n o
>
··o p'
activatedHexesWithOwners··q â
)··â ä
{
‚‚ 	
if
‰‰ 
(
‰‰ 
!
‰‰ !
gamePlayerResources
‰‰ $
.
‰‰$ %
ContainsKey
‰‰% 0
(
‰‰0 1
gameId
‰‰1 7
)
‰‰7 8
)
‰‰8 9
{
ÂÂ !
gamePlayerResources
ÊÊ #
[
ÊÊ# $
gameId
ÊÊ$ *
]
ÊÊ* +
=
ÊÊ, -
new
ÊÊ. 1

Dictionary
ÊÊ2 <
<
ÊÊ< =
int
ÊÊ= @
,
ÊÊ@ A 
PlayerResourcesDto
ÊÊB T
>
ÊÊT U
(
ÊÊU V
)
ÊÊV W
;
ÊÊW X
}
ÁÁ 

Dictionary
ÈÈ 
<
ÈÈ 
int
ÈÈ 
,
ÈÈ  
PlayerResourcesDto
ÈÈ .
>
ÈÈ. / 
playerResourcesMap
ÈÈ0 B
=
ÈÈC D!
gamePlayerResources
ÈÈE X
[
ÈÈX Y
gameId
ÈÈY _
]
ÈÈ_ `
;
ÈÈ` a
foreach
ÎÎ 
(
ÎÎ 
var
ÎÎ 
(
ÎÎ 
hex
ÎÎ 
,
ÎÎ 
playerResources
ÎÎ .
)
ÎÎ. /
in
ÎÎ0 2&
activatedHexesWithOwners
ÎÎ3 K
)
ÎÎK L
{
ÏÏ 
foreach
ÌÌ 
(
ÌÌ 
var
ÌÌ 
playerResource
ÌÌ +
in
ÌÌ, .
playerResources
ÌÌ/ >
)
ÌÌ> ?
{
ÓÓ 
int
ÔÔ 
playerId
ÔÔ  
=
ÔÔ! "
playerResource
ÔÔ# 1
.
ÔÔ1 2
Key
ÔÔ2 5
;
ÔÔ5 6
int
 
resourceAmount
 &
=
' (
playerResource
) 7
.
7 8
Value
8 =
;
= >
if
ÚÚ 
(
ÚÚ 
!
ÚÚ  
playerResourcesMap
ÚÚ +
.
ÚÚ+ ,
TryGetValue
ÚÚ, 7
(
ÚÚ7 8
playerId
ÚÚ8 @
,
ÚÚ@ A
out
ÚÚB E
var
ÚÚF I
	resources
ÚÚJ S
)
ÚÚS T
)
ÚÚT U
{
ÛÛ 
continue
ÙÙ  
;
ÙÙ  !
}
ıı 
switch
˜˜ 
(
˜˜ 
hex
˜˜ 
.
˜˜  
Resource
˜˜  (
)
˜˜( )
{
¯¯ 
case
˘˘ 
GameplayUtilities
˘˘ .
.
˘˘. /"
RESOURCE_LUNAR_STONE
˘˘/ C
:
˘˘C D
	resources
˙˙ %
.
˙˙% &

LunarStone
˙˙& 0
.
˙˙0 1
Quantity
˙˙1 9
+=
˙˙: <
resourceAmount
˙˙= K
;
˙˙K L
break
˚˚ !
;
˚˚! "
case
¸¸ 
GameplayUtilities
¸¸ .
.
¸¸. / 
RESOURCE_TRITONIUM
¸¸/ A
:
¸¸A B
	resources
˝˝ %
.
˝˝% &
	Tritonium
˝˝& /
.
˝˝/ 0
Quantity
˝˝0 8
+=
˝˝9 ;
resourceAmount
˝˝< J
;
˝˝J K
break
˛˛ !
;
˛˛! "
case
ˇˇ 
GameplayUtilities
ˇˇ .
.
ˇˇ. /'
RESOURCE_ALPHA_NANOFIBERS
ˇˇ/ H
:
ˇˇH I
	resources
ÄÄ %
.
ÄÄ% &
AlphaNanofibers
ÄÄ& 5
.
ÄÄ5 6
Quantity
ÄÄ6 >
+=
ÄÄ? A
resourceAmount
ÄÄB P
;
ÄÄP Q
break
ÅÅ !
;
ÅÅ! "
case
ÇÇ 
GameplayUtilities
ÇÇ .
.
ÇÇ. /&
RESOURCE_EPSILON_BIOMASS
ÇÇ/ G
:
ÇÇG H
	resources
ÉÉ %
.
ÉÉ% &
EpsilonBiomass
ÉÉ& 4
.
ÉÉ4 5
Quantity
ÉÉ5 =
+=
ÉÉ> @
resourceAmount
ÉÉA O
;
ÉÉO P
break
ÑÑ !
;
ÑÑ! "
case
ÖÖ 
GameplayUtilities
ÖÖ .
.
ÖÖ. /
RESOURCE_GRX_810
ÖÖ/ ?
:
ÖÖ? @
	resources
ÜÜ %
.
ÜÜ% &
Grx810
ÜÜ& ,
.
ÜÜ, -
Quantity
ÜÜ- 5
+=
ÜÜ6 8
resourceAmount
ÜÜ9 G
;
ÜÜG H
break
áá !
;
áá! "
}
àà 
}
ââ 
}
ää 
}
ãã 	
private
çç 
void
çç (
NotifyPlayersWithResources
çç /
(
çç/ 0
int
çç0 3
gameId
çç4 :
)
çç: ;
{
éé 	
if
èè 
(
èè $
connectedPlayersByGame
èè &
.
èè& '
TryGetValue
èè' 2
(
èè2 3
gameId
èè3 9
,
èè9 :
out
èè; >
ConcurrentBag
èè? L
<
èèL M
ConnectedPlayer
èèM \
>
èè\ ]
playersInGame
èè^ k
)
èèk l
&&
èèm o!
gamePlayerResources
êê #
.
êê# $
TryGetValue
êê$ /
(
êê/ 0
gameId
êê0 6
,
êê6 7
out
êê8 ;
var
êê< ? 
playerResourcesMap
êê@ R
)
êêR S
)
êêS T
{
ëë 
foreach
íí 
(
íí 
ConnectedPlayer
íí (
player
íí) /
in
íí0 2
playersInGame
íí3 @
)
íí@ A
{
ìì 
try
îî 
{
ïï 
int
ññ 
playerId
ññ $
=
ññ% &,
GetPlayerIdFromConnectedPlayer
ññ' E
(
ññE F
player
ññF L
)
ññL M
;
ññM N 
PlayerResourcesDto
òò *
	resources
òò+ 4
=
òò5 6 
playerResourcesMap
òò7 I
[
òòI J
playerId
òòJ R
]
òòR S
;
òòS T
if
öö 
(
öö "
IsPlayerCallbackOpen
öö 0
(
öö0 1
player
öö1 7
)
öö7 8
&&
öö9 ;
	resources
öö< E
!=
ööF H
null
ööI M
)
ööM N
{
õõ 
player
úú "
.
úú" #
gameCallback
úú# /
.
úú/ 0(
NotifyResourcesDistributed
úú0 J
(
úúJ K
	resources
úúK T
)
úúT U
;
úúU V
}
ùù 
}
ûû 
catch
üü 
(
üü 1
#CommunicationObjectAbortedException
üü >
ex
üü? A
)
üüA B
{
†† 
Log
°° 
.
°° 
Error
°° !
(
°°! "
ex
°°" $
,
°°$ %
ex
°°& (
.
°°( )
Source
°°) /
)
°°/ 0
;
°°0 1
}
¢¢ 
catch
££ 
(
££ $
CommunicationException
££ 1
ex
££2 4
)
££4 5
{
§§ 
Log
•• 
.
•• 
Error
•• !
(
••! "
ex
••" $
,
••$ %
ex
••& (
.
••( )
Source
••) /
)
••/ 0
;
••0 1
}
¶¶ 
catch
ßß 
(
ßß 
	Exception
ßß $
ex
ßß% '
)
ßß' (
{
®® 
Log
©© 
.
©© 
Error
©© !
(
©©! "
ex
©©" $
,
©©$ %
ex
©©& (
.
©©( )
Source
©©) /
)
©©/ 0
;
©©0 1
}
™™ 
}
´´ 
}
¨¨ 
}
≠≠ 	
public
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ  
OperationResultDto
ØØ ,
>
ØØ, -
StartTradeAsync
ØØ. =
(
ØØ= > 
PlayerResourcesDto
ØØ> P
needResources
ØØQ ^
,
ØØ^ _ 
PlayerResourcesDto
ØØ` r
offerResourcesØØs Å
,ØØÅ Ç
intØØÉ Ü
gameIdØØá ç
)ØØç é
{
∞∞ 	
if
±± 
(
±± 
!
±± $
HasSufficientResources
±± '
(
±±' (
gameId
±±( .
,
±±. /
offerResources
±±0 >
.
±±> ?
PlayerId
±±? G
,
±±G H
offerResources
±±I W
)
±±W X
)
±±X Y
{
≤≤ 
return
≥≥ 
new
≥≥  
OperationResultDto
≥≥ -
(
≥≥- .
false
≥≥. 3
,
≥≥3 4
LanguageUtilities
≥≥5 F
.
≥≥F G%
MessageUnableToSaveData
≥≥G ^
(
≥≥^ _
LanguageUtilities
≥≥_ p
.
≥≥p q+
LANGUAGE_ENGLISH_FORMAT_RESX≥≥q ç
)≥≥ç é
)≥≥é è
;≥≥è ê
}
¥¥ %
NotifyPlayersAboutTrade
∂∂ #
(
∂∂# $
gameId
∂∂$ *
,
∂∂* +
needResources
∂∂, 9
,
∂∂9 :
offerResources
∂∂; I
)
∂∂I J
;
∂∂J K
await
∏∏ 
Task
∏∏ 
.
∏∏ 
CompletedTask
∏∏ $
;
∏∏$ %
return
∫∫ 
new
∫∫  
OperationResultDto
∫∫ )
(
∫∫) *
true
∫∫* .
,
∫∫. /
LanguageUtilities
∫∫0 A
.
∫∫A B
MessageSuccess
∫∫B P
(
∫∫P Q
LanguageUtilities
∫∫Q b
.
∫∫b c*
LANGUAGE_ENGLISH_FORMAT_RESX
∫∫c 
)∫∫ Ä
)∫∫Ä Å
;∫∫Å Ç
}
ªª 	
private
ΩΩ 
bool
ΩΩ $
HasSufficientResources
ΩΩ +
(
ΩΩ+ ,
int
ΩΩ, /
gameId
ΩΩ0 6
,
ΩΩ6 7
int
ΩΩ8 ;
playerId
ΩΩ< D
,
ΩΩD E 
PlayerResourcesDto
ΩΩF X
offerResources
ΩΩY g
)
ΩΩg h
{
ææ 	
if
øø 
(
øø 
!
øø !
gamePlayerResources
øø $
.
øø$ %
ContainsKey
øø% 0
(
øø0 1
gameId
øø1 7
)
øø7 8
||
øø9 ;
!
øø< =!
gamePlayerResources
øø= P
[
øøP Q
gameId
øøQ W
]
øøW X
.
øøX Y
ContainsKey
øøY d
(
øød e
playerId
øøe m
)
øøm n
)
øøn o
{
¿¿ 
return
¡¡ 
false
¡¡ 
;
¡¡ 
}
¬¬ 
var
ƒƒ 
playerResources
ƒƒ 
=
ƒƒ  !!
gamePlayerResources
ƒƒ" 5
[
ƒƒ5 6
gameId
ƒƒ6 <
]
ƒƒ< =
[
ƒƒ= >
playerId
ƒƒ> F
]
ƒƒF G
;
ƒƒG H
return
∆∆ '
CheckResourceAvailability
∆∆ ,
(
∆∆, -
playerResources
∆∆- <
,
∆∆< =
offerResources
∆∆> L
)
∆∆L M
;
∆∆M N
}
«« 	
private
…… 
static
…… 
bool
…… '
CheckResourceAvailability
…… 5
(
……5 6 
PlayerResourcesDto
……6 H
playerResources
……I X
,
……X Y 
PlayerResourcesDto
……Z l
offerResources
……m {
)
……{ |
{
   	
if
ÀÀ 
(
ÀÀ 
offerResources
ÀÀ 
.
ÀÀ 

LunarStone
ÀÀ )
.
ÀÀ) *
Quantity
ÀÀ* 2
>
ÀÀ3 4
playerResources
ÀÀ5 D
.
ÀÀD E

LunarStone
ÀÀE O
.
ÀÀO P
Quantity
ÀÀP X
||
ÀÀY [
offerResources
ÀÀ\ j
.
ÀÀj k
	Tritonium
ÀÀk t
.
ÀÀt u
Quantity
ÀÀu }
>
ÀÀ~ 
playerResourcesÀÀÄ è
.ÀÀè ê
	TritoniumÀÀê ô
.ÀÀô ö
QuantityÀÀö ¢
||
ÃÃ 
offerResources
ÃÃ !
.
ÃÃ! "
AlphaNanofibers
ÃÃ" 1
.
ÃÃ1 2
Quantity
ÃÃ2 :
>
ÃÃ; <
playerResources
ÃÃ= L
.
ÃÃL M
AlphaNanofibers
ÃÃM \
.
ÃÃ\ ]
Quantity
ÃÃ] e
||
ÃÃf h
offerResources
ÃÃi w
.
ÃÃw x
EpsilonBiomassÃÃx Ü
.ÃÃÜ á
QuantityÃÃá è
>ÃÃê ë
playerResourcesÃÃí °
.ÃÃ° ¢
EpsilonBiomassÃÃ¢ ∞
.ÃÃ∞ ±
QuantityÃÃ± π
||
ÕÕ 
offerResources
ÕÕ !
.
ÕÕ! "
Grx810
ÕÕ" (
.
ÕÕ( )
Quantity
ÕÕ) 1
>
ÕÕ2 3
playerResources
ÕÕ4 C
.
ÕÕC D
Grx810
ÕÕD J
.
ÕÕJ K
Quantity
ÕÕK S
)
ÕÕS T
{
ŒŒ 
return
œœ 
false
œœ 
;
œœ 
}
–– 
return
““ 
true
““ 
;
““ 
}
”” 	
private
’’ 
void
’’ %
NotifyPlayersAboutTrade
’’ ,
(
’’, -
int
’’- 0
gameId
’’1 7
,
’’7 8 
PlayerResourcesDto
’’9 K
needResources
’’L Y
,
’’Y Z 
PlayerResourcesDto
’’[ m
offerResources
’’n |
)
’’| }
{
÷÷ 	
if
◊◊ 
(
◊◊ $
connectedPlayersByGame
◊◊ &
.
◊◊& '
TryGetValue
◊◊' 2
(
◊◊2 3
gameId
◊◊3 9
,
◊◊9 :
out
◊◊; >
var
◊◊? B
playersInGame
◊◊C P
)
◊◊P Q
)
◊◊Q R
{
ÿÿ 
foreach
ŸŸ 
(
ŸŸ 
ConnectedPlayer
ŸŸ (
player
ŸŸ) /
in
ŸŸ0 2
playersInGame
ŸŸ3 @
)
ŸŸ@ A
{
⁄⁄ 
try
€€ 
{
‹‹ 
int
›› 
playerId
›› $
=
››% &,
GetPlayerIdFromConnectedPlayer
››' E
(
››E F
player
››F L
)
››L M
;
››M N
if
ﬂﬂ 
(
ﬂﬂ "
IsPlayerCallbackOpen
ﬂﬂ 0
(
ﬂﬂ0 1
player
ﬂﬂ1 7
)
ﬂﬂ7 8
&&
ﬂﬂ9 ;
playerId
ﬂﬂ< D
!=
ﬂﬂE G
needResources
ﬂﬂH U
.
ﬂﬂU V
PlayerId
ﬂﬂV ^
)
ﬂﬂ^ _
{
‡‡ 
player
·· "
.
··" #
gameCallback
··# /
.
··/ 0 
NotifyTradeRequest
··0 B
(
··B C
needResources
··C P
,
··P Q
offerResources
··R `
)
··` a
;
··a b
}
‚‚ 
}
„„ 
catch
‰‰ 
(
‰‰ 1
#CommunicationObjectAbortedException
‰‰ >
ex
‰‰? A
)
‰‰A B
{
ÂÂ 
Log
ÊÊ 
.
ÊÊ 
Error
ÊÊ !
(
ÊÊ! "
ex
ÊÊ" $
,
ÊÊ$ %
ex
ÊÊ& (
.
ÊÊ( )
Source
ÊÊ) /
)
ÊÊ/ 0
;
ÊÊ0 1
}
ÁÁ 
catch
ËË 
(
ËË $
CommunicationException
ËË 1
ex
ËË2 4
)
ËË4 5
{
ÈÈ 
Log
ÍÍ 
.
ÍÍ 
Error
ÍÍ !
(
ÍÍ! "
ex
ÍÍ" $
,
ÍÍ$ %
ex
ÍÍ& (
.
ÍÍ( )
Source
ÍÍ) /
)
ÍÍ/ 0
;
ÍÍ0 1
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ 
	Exception
ÏÏ $
ex
ÏÏ% '
)
ÏÏ' (
{
ÌÌ 
Log
ÓÓ 
.
ÓÓ 
Error
ÓÓ !
(
ÓÓ! "
ex
ÓÓ" $
,
ÓÓ$ %
ex
ÓÓ& (
.
ÓÓ( )
Source
ÓÓ) /
)
ÓÓ/ 0
;
ÓÓ0 1
}
ÔÔ 
}
 
}
ÒÒ 
}
ÚÚ 	
public
ÙÙ 
async
ÙÙ 
Task
ÙÙ 
<
ÙÙ  
OperationResultDto
ÙÙ ,
>
ÙÙ, -
AcceptTradeAsync
ÙÙ. >
(
ÙÙ> ? 
PlayerResourcesDto
ÙÙ? Q
sendResources
ÙÙR _
,
ÙÙ_ ` 
PlayerResourcesDto
ÙÙa s
receiveResourcesÙÙt Ñ
,ÙÙÑ Ö
intÙÙÜ â
gameIdÙÙä ê
)ÙÙê ë
{
ıı 	
if
˜˜ 
(
˜˜ 
!
˜˜ $
HasSufficientResources
˜˜ '
(
˜˜' (
gameId
˜˜( .
,
˜˜. /
receiveResources
˜˜0 @
.
˜˜@ A
PlayerId
˜˜A I
,
˜˜I J
receiveResources
˜˜K [
)
˜˜[ \
||
˜˜] _
!
˜˜` a$
HasSufficientResources
˜˜a w
(
˜˜w x
gameId
˜˜x ~
,
˜˜~ 
sendResources˜˜Ä ç
.˜˜ç é
PlayerId˜˜é ñ
,˜˜ñ ó
sendResources˜˜ò •
)˜˜• ¶
||
¯¯ 
!
¯¯ 
DeductResources
¯¯ #
(
¯¯# $!
gamePlayerResources
¯¯$ 7
[
¯¯7 8
gameId
¯¯8 >
]
¯¯> ?
,
¯¯? @
sendResources
¯¯A N
.
¯¯N O
PlayerId
¯¯O W
,
¯¯W X
sendResources
¯¯Y f
)
¯¯f g
||
¯¯h j
!
¯¯k l
DeductResources
¯¯l {
(
¯¯{ |"
gamePlayerResources¯¯| è
[¯¯è ê
gameId¯¯ê ñ
]¯¯ñ ó
,¯¯ó ò 
receiveResources¯¯ô ©
.¯¯© ™
PlayerId¯¯™ ≤
,¯¯≤ ≥ 
receiveResources¯¯¥ ƒ
)¯¯ƒ ≈
||
˘˘ 
!
˘˘ 
AddResources
˘˘  
(
˘˘  !!
gamePlayerResources
˘˘! 4
[
˘˘4 5
gameId
˘˘5 ;
]
˘˘; <
,
˘˘< =
receiveResources
˘˘> N
.
˘˘N O
PlayerId
˘˘O W
,
˘˘W X
sendResources
˘˘Y f
)
˘˘f g
||
˙˙ 
!
˙˙ 
AddResources
˙˙  
(
˙˙  !!
gamePlayerResources
˙˙! 4
[
˙˙4 5
gameId
˙˙5 ;
]
˙˙; <
,
˙˙< =
sendResources
˙˙> K
.
˙˙K L
PlayerId
˙˙L T
,
˙˙T U
receiveResources
˙˙V f
)
˙˙f g
)
˙˙g h
{
˚˚ 
return
¸¸ 
new
¸¸  
OperationResultDto
¸¸ -
(
¸¸- .
false
¸¸. 3
,
¸¸3 4
LanguageUtilities
¸¸5 F
.
¸¸F G%
MessageUnableToSaveData
¸¸G ^
(
¸¸^ _
LanguageUtilities
¸¸_ p
.
¸¸p q+
LANGUAGE_ENGLISH_FORMAT_RESX¸¸q ç
)¸¸ç é
)¸¸é è
;¸¸è ê
}
˝˝ /
!NotifyPlayersAboutTradeCompletion
ˇˇ -
(
ˇˇ- .
gameId
ˇˇ. 4
,
ˇˇ4 5
sendResources
ˇˇ6 C
,
ˇˇC D
receiveResources
ˇˇE U
)
ˇˇU V
;
ˇˇV W
await
ÅÅ 
Task
ÅÅ 
.
ÅÅ 
CompletedTask
ÅÅ $
;
ÅÅ$ %
return
ÉÉ 
new
ÉÉ  
OperationResultDto
ÉÉ )
(
ÉÉ) *
true
ÉÉ* .
,
ÉÉ. /
LanguageUtilities
ÉÉ0 A
.
ÉÉA B
MessageSuccess
ÉÉB P
(
ÉÉP Q
LanguageUtilities
ÉÉQ b
.
ÉÉb c*
LANGUAGE_ENGLISH_FORMAT_RESX
ÉÉc 
)ÉÉ Ä
)ÉÉÄ Å
;ÉÉÅ Ç
}
ÑÑ 	
private
ÜÜ 
static
ÜÜ 
bool
ÜÜ 
AddResources
ÜÜ (
(
ÜÜ( )

Dictionary
ÜÜ) 3
<
ÜÜ3 4
int
ÜÜ4 7
,
ÜÜ7 8 
PlayerResourcesDto
ÜÜ9 K
>
ÜÜK L 
playerResourcesMap
ÜÜM _
,
ÜÜ_ `
int
ÜÜa d
playerId
ÜÜe m
,
ÜÜm n!
PlayerResourcesDtoÜÜo Å
	resourcesÜÜÇ ã
)ÜÜã å
{
áá 	
if
àà 
(
àà 
!
àà  
playerResourcesMap
àà #
.
àà# $
ContainsKey
àà$ /
(
àà/ 0
playerId
àà0 8
)
àà8 9
)
àà9 :
{
ââ 
return
ää 
false
ää 
;
ää 
}
ãã  
PlayerResourcesDto
çç 
playerResources
çç .
=
çç/ 0 
playerResourcesMap
çç1 C
[
ççC D
playerId
ççD L
]
ççL M
;
ççM N
playerResources
èè 
.
èè 

LunarStone
èè &
.
èè& '
Quantity
èè' /
+=
èè0 2
	resources
èè3 <
.
èè< =

LunarStone
èè= G
.
èèG H
Quantity
èèH P
;
èèP Q
playerResources
êê 
.
êê 
	Tritonium
êê %
.
êê% &
Quantity
êê& .
+=
êê/ 1
	resources
êê2 ;
.
êê; <
	Tritonium
êê< E
.
êêE F
Quantity
êêF N
;
êêN O
playerResources
ëë 
.
ëë 
AlphaNanofibers
ëë +
.
ëë+ ,
Quantity
ëë, 4
+=
ëë5 7
	resources
ëë8 A
.
ëëA B
AlphaNanofibers
ëëB Q
.
ëëQ R
Quantity
ëëR Z
;
ëëZ [
playerResources
íí 
.
íí 
EpsilonBiomass
íí *
.
íí* +
Quantity
íí+ 3
+=
íí4 6
	resources
íí7 @
.
íí@ A
EpsilonBiomass
ííA O
.
ííO P
Quantity
ííP X
;
ííX Y
playerResources
ìì 
.
ìì 
Grx810
ìì "
.
ìì" #
Quantity
ìì# +
+=
ìì, .
	resources
ìì/ 8
.
ìì8 9
Grx810
ìì9 ?
.
ìì? @
Quantity
ìì@ H
;
ììH I
return
ïï 
true
ïï 
;
ïï 
}
ññ 	
private
òò 
void
òò /
!NotifyPlayersAboutTradeCompletion
òò 6
(
òò6 7
int
òò7 :
gameId
òò; A
,
òòA B 
PlayerResourcesDto
òòC U
sendResources
òòV c
,
òòc d 
PlayerResourcesDto
òòe w
receiveResourcesòòx à
)òòà â
{
ôô 	
var
öö 
involvedPlayers
öö 
=
öö  !
new
öö" %
List
öö& *
<
öö* +
int
öö+ .
>
öö. /
{
öö0 1
sendResources
öö2 ?
.
öö? @
PlayerId
öö@ H
,
ööH I
receiveResources
ööJ Z
.
ööZ [
PlayerId
öö[ c
}
ööd e
;
ööe f
if
ùù 
(
ùù $
connectedPlayersByGame
ùù &
.
ùù& '
TryGetValue
ùù' 2
(
ùù2 3
gameId
ùù3 9
,
ùù9 :
out
ùù; >
var
ùù? B
playersInGame
ùùC P
)
ùùP Q
)
ùùQ R
{
ûû (
NotifyPlayersWithResources
üü *
(
üü* +
gameId
üü+ 1
)
üü1 2
;
üü2 3
foreach
†† 
(
†† 
ConnectedPlayer
†† (
player
††) /
in
††0 2
playersInGame
††3 @
)
††@ A
{
°° 
try
¢¢ 
{
££ 
int
§§ 
playerId
§§ $
=
§§% &,
GetPlayerIdFromConnectedPlayer
§§' E
(
§§E F
player
§§F L
)
§§L M
;
§§M N
if
¶¶ 
(
¶¶ 
involvedPlayers
¶¶ +
.
¶¶+ ,
Contains
¶¶, 4
(
¶¶4 5
playerId
¶¶5 =
)
¶¶= >
&&
¶¶? A"
IsPlayerCallbackOpen
¶¶B V
(
¶¶V W
player
¶¶W ]
)
¶¶] ^
)
¶¶^ _
{
ßß 
player
®® "
.
®®" #
gameCallback
®®# /
.
®®/ 0#
NotifyTradeCompletion
®®0 E
(
®®E F
)
®®F G
;
®®G H
}
©© 
}
™™ 
catch
´´ 
(
´´ 1
#CommunicationObjectAbortedException
´´ >
ex
´´? A
)
´´A B
{
¨¨ 
Log
≠≠ 
.
≠≠ 
Error
≠≠ !
(
≠≠! "
ex
≠≠" $
,
≠≠$ %
ex
≠≠& (
.
≠≠( )
Source
≠≠) /
)
≠≠/ 0
;
≠≠0 1
}
ÆÆ 
catch
ØØ 
(
ØØ $
CommunicationException
ØØ 1
ex
ØØ2 4
)
ØØ4 5
{
∞∞ 
Log
±± 
.
±± 
Error
±± !
(
±±! "
ex
±±" $
,
±±$ %
ex
±±& (
.
±±( )
Source
±±) /
)
±±/ 0
;
±±0 1
}
≤≤ 
catch
≥≥ 
(
≥≥ 
	Exception
≥≥ $
ex
≥≥% '
)
≥≥' (
{
¥¥ 
Log
µµ 
.
µµ 
Error
µµ !
(
µµ! "
ex
µµ" $
,
µµ$ %
ex
µµ& (
.
µµ( )
Source
µµ) /
)
µµ/ 0
;
µµ0 1
}
∂∂ 
}
∑∑ 
}
∏∏ 
}
ππ 	
private
ªª 
static
ªª 
int
ªª ,
GetPlayerIdFromConnectedPlayer
ªª 9
(
ªª9 :
ConnectedPlayer
ªª: I
player
ªªJ P
)
ªªP Q
{
ºº 	
return
ΩΩ 
player
ΩΩ 
.
ΩΩ 
profileClientDto
ΩΩ *
?
ΩΩ* +
.
ΩΩ+ ,
Id
ΩΩ, .
??
ΩΩ/ 1
player
ΩΩ2 8
.
ΩΩ8 9
guestAccountDto
ΩΩ9 H
?
ΩΩH I
.
ΩΩI J
Id
ΩΩJ L
??
ΩΩM O(
AccountValidationUtilities
ΩΩP j
.
ΩΩj k 
ACCOUNT_ID_DEFAULT
ΩΩk }
;
ΩΩ} ~
}
ææ 	
private
¿¿ 
static
¿¿ 
bool
¿¿ "
IsPlayerCallbackOpen
¿¿ 0
(
¿¿0 1
ConnectedPlayer
¿¿1 @
player
¿¿A G
)
¿¿G H
{
¡¡ 	
return
¬¬ 
player
¬¬ 
.
¬¬ 
gameCallback
¬¬ &
!=
¬¬' )
null
¬¬* .
&&
¬¬/ 1
(
¬¬2 3
(
¬¬3 4"
ICommunicationObject
¬¬4 H
)
¬¬H I
player
¬¬I O
.
¬¬O P
gameCallback
¬¬P \
)
¬¬\ ]
.
¬¬] ^
State
¬¬^ c
==
¬¬d f 
CommunicationState
¬¬g y
.
¬¬y z
Opened¬¬z Ä
;¬¬Ä Å
}
√√ 	
private
≈≈ 
void
≈≈ 
AssignResources
≈≈ $
(
≈≈$ %

Dictionary
≈≈% /
<
≈≈/ 0
int
≈≈0 3
,
≈≈3 4

Dictionary
≈≈5 ?
<
≈≈? @
int
≈≈@ C
,
≈≈C D 
PlayerResourcesDto
≈≈E W
>
≈≈W X
>
≈≈X Y!
gamePlayerResources
≈≈Z m
,
≈≈m n
int
≈≈o r
gameId
≈≈s y
,
≈≈y z
int
≈≈{ ~
playerId≈≈ á
,≈≈á à
string≈≈â è
resourceName≈≈ê ú
,≈≈ú ù
int≈≈û °
amount≈≈¢ ®
)≈≈® ©
{
∆∆ 	
if
«« 
(
«« 
!
«« !
gamePlayerResources
«« $
.
««$ %
ContainsKey
««% 0
(
««0 1
gameId
««1 7
)
««7 8
)
««8 9
{
»» !
gamePlayerResources
…… #
[
……# $
gameId
……$ *
]
……* +
=
……, -
new
……. 1

Dictionary
……2 <
<
……< =
int
……= @
,
……@ A 
PlayerResourcesDto
……B T
>
……T U
(
……U V
)
……V W
;
……W X
}
   
var
ÃÃ  
playerResourcesMap
ÃÃ "
=
ÃÃ# $!
gamePlayerResources
ÃÃ% 8
[
ÃÃ8 9
gameId
ÃÃ9 ?
]
ÃÃ? @
;
ÃÃ@ A
if
ŒŒ 
(
ŒŒ 
!
ŒŒ  
playerResourcesMap
ŒŒ #
.
ŒŒ# $
ContainsKey
ŒŒ$ /
(
ŒŒ/ 0
playerId
ŒŒ0 8
)
ŒŒ8 9
)
ŒŒ9 :
{
œœ  
playerResourcesMap
–– "
[
––" #
playerId
––# +
]
––+ ,
=
––- .
new
––/ 2 
PlayerResourcesDto
––3 E
{
––F G
PlayerId
––H P
=
––Q R
playerId
––S [
}
––\ ]
;
––] ^
}
—— 
var
”” 
	resources
”” 
=
””  
playerResourcesMap
”” .
[
””. /
playerId
””/ 7
]
””7 8
;
””8 9
switch
’’ 
(
’’ 
resourceName
’’  
)
’’  !
{
÷÷ 
case
◊◊ 
GameplayUtilities
◊◊ &
.
◊◊& '"
RESOURCE_LUNAR_STONE
◊◊' ;
:
◊◊; <
	resources
ÿÿ 
.
ÿÿ 

LunarStone
ÿÿ (
.
ÿÿ( )
Quantity
ÿÿ) 1
+=
ÿÿ2 4
amount
ÿÿ5 ;
;
ÿÿ; <
break
ŸŸ 
;
ŸŸ 
case
⁄⁄ 
GameplayUtilities
⁄⁄ &
.
⁄⁄& ' 
RESOURCE_TRITONIUM
⁄⁄' 9
:
⁄⁄9 :
	resources
€€ 
.
€€ 
	Tritonium
€€ '
.
€€' (
Quantity
€€( 0
+=
€€1 3
amount
€€4 :
;
€€: ;
break
‹‹ 
;
‹‹ 
case
›› 
GameplayUtilities
›› &
.
››& ''
RESOURCE_ALPHA_NANOFIBERS
››' @
:
››@ A
	resources
ﬁﬁ 
.
ﬁﬁ 
AlphaNanofibers
ﬁﬁ -
.
ﬁﬁ- .
Quantity
ﬁﬁ. 6
+=
ﬁﬁ7 9
amount
ﬁﬁ: @
;
ﬁﬁ@ A
break
ﬂﬂ 
;
ﬂﬂ 
case
‡‡ 
GameplayUtilities
‡‡ &
.
‡‡& '&
RESOURCE_EPSILON_BIOMASS
‡‡' ?
:
‡‡? @
	resources
·· 
.
·· 
EpsilonBiomass
·· ,
.
··, -
Quantity
··- 5
+=
··6 8
amount
··9 ?
;
··? @
break
‚‚ 
;
‚‚ 
case
„„ 
GameplayUtilities
„„ &
.
„„& '
RESOURCE_GRX_810
„„' 7
:
„„7 8
	resources
‰‰ 
.
‰‰ 
Grx810
‰‰ $
.
‰‰$ %
Quantity
‰‰% -
+=
‰‰. 0
amount
‰‰1 7
;
‰‰7 8
break
ÂÂ 
;
ÂÂ 
default
ÊÊ 
:
ÊÊ 
break
ÁÁ 
;
ÁÁ 
}
ËË 
}
ÈÈ 	
public
ÏÏ 
List
ÏÏ 
<
ÏÏ 
(
ÏÏ 

HexTileDto
ÏÏ 
,
ÏÏ  

Dictionary
ÏÏ! +
<
ÏÏ+ ,
int
ÏÏ, /
,
ÏÏ/ 0
int
ÏÏ1 4
>
ÏÏ4 5
)
ÏÏ5 6
>
ÏÏ6 7)
GetActivatedHexesWithOwners
ÏÏ8 S
(
ÏÏS T
GameBoardStateDto
ÏÏT e
gameBoardState
ÏÏf t
,
ÏÏt u
int
ÏÏv y
	diceValueÏÏz É
)ÏÏÉ Ñ
{
ÌÌ 	
List
ÓÓ 
<
ÓÓ 

HexTileDto
ÓÓ 
>
ÓÓ 
activatedHexes
ÓÓ +
=
ÓÓ, -
GetActivatedHexes
ÓÓ. ?
(
ÓÓ? @
gameBoardState
ÓÓ@ N
,
ÓÓN O
	diceValue
ÓÓP Y
)
ÓÓY Z
;
ÓÓZ [
var
ÔÔ 
hexesWithOwners
ÔÔ 
=
ÔÔ  !
new
ÔÔ" %
List
ÔÔ& *
<
ÔÔ* +
(
ÔÔ+ ,

HexTileDto
ÔÔ, 6
,
ÔÔ6 7

Dictionary
ÔÔ8 B
<
ÔÔB C
int
ÔÔC F
,
ÔÔF G
int
ÔÔH K
>
ÔÔK L
)
ÔÔL M
>
ÔÔM N
(
ÔÔN O
)
ÔÔO P
;
ÔÔP Q
var
 
hexMap
 
=
 
gameBoardState
 '
.
' (
HexTiles
( 0
.
0 1
ToDictionary
1 =
(
= >
h
> ?
=>
@ B
h
C D
.
D E
Id
E G
)
G H
;
H I
var
ÒÒ 
vertexConnections
ÒÒ !
=
ÒÒ" #
GameplayUtilities
ÒÒ$ 5
.
ÒÒ5 6
GET_MAP_HEXTILES
ÒÒ6 F
(
ÒÒF G
)
ÒÒG H
;
ÒÒH I
foreach
ÛÛ 
(
ÛÛ 
var
ÛÛ 
hex
ÛÛ 
in
ÛÛ 
activatedHexes
ÛÛ  .
)
ÛÛ. /
{
ÙÙ 
var
ıı 
playerResources
ıı #
=
ıı$ %

ProcessHex
ıı& 0
(
ıı0 1
hex
ıı1 4
,
ıı4 5
gameBoardState
ıı6 D
,
ııD E
	diceValue
ııF O
,
ııO P
hexMap
ııQ W
,
ııW X
vertexConnections
ııY j
)
ııj k
;
ıık l
hexesWithOwners
ˆˆ 
.
ˆˆ  
Add
ˆˆ  #
(
ˆˆ# $
(
ˆˆ$ %
hex
ˆˆ% (
,
ˆˆ( )
playerResources
ˆˆ* 9
)
ˆˆ9 :
)
ˆˆ: ;
;
ˆˆ; <
}
˜˜ (
NotifyPlayersWithResources
˘˘ &
(
˘˘& '
gameBoardState
˘˘' 5
.
˘˘5 6
GameId
˘˘6 <
)
˘˘< =
;
˘˘= >
return
˙˙ 
hexesWithOwners
˙˙ "
;
˙˙" #
}
˚˚ 	
private
˝˝ 
static
˝˝ 
List
˝˝ 
<
˝˝ 

HexTileDto
˝˝ &
>
˝˝& '
GetActivatedHexes
˝˝( 9
(
˝˝9 :
GameBoardStateDto
˝˝: K
gameBoardState
˝˝L Z
,
˝˝Z [
int
˝˝\ _
	diceValue
˝˝` i
)
˝˝i j
{
˛˛ 	
return
ˇˇ 
gameBoardState
ˇˇ !
.
ˇˇ! "
HexTiles
ˇˇ" *
.
ÄÄ 
Where
ÄÄ 
(
ÄÄ 
hex
ÄÄ 
=>
ÄÄ 
hex
ÄÄ !
.
ÄÄ! "
	DiceValue
ÄÄ" +
==
ÄÄ, .
	diceValue
ÄÄ/ 8
)
ÄÄ8 9
.
ÅÅ 
ToList
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
private
ÑÑ 

Dictionary
ÑÑ 
<
ÑÑ 
int
ÑÑ 
,
ÑÑ 
int
ÑÑ  #
>
ÑÑ# $

ProcessHex
ÑÑ% /
(
ÑÑ/ 0

HexTileDto
ÑÑ0 :
hex
ÑÑ; >
,
ÑÑ> ?
GameBoardStateDto
ÑÑ@ Q
gameBoardState
ÑÑR `
,
ÑÑ` a
int
ÑÑb e
	diceValue
ÑÑf o
,
ÑÑo p

Dictionary
ÖÖ 
<
ÖÖ 
int
ÖÖ 
,
ÖÖ 

HexTileDto
ÖÖ &
>
ÖÖ& '
hexMap
ÖÖ( .
,
ÖÖ. /

Dictionary
ÖÖ0 :
<
ÖÖ: ;
int
ÖÖ; >
,
ÖÖ> ?
List
ÖÖ@ D
<
ÖÖD E
int
ÖÖE H
>
ÖÖH I
>
ÖÖI J
vertexConnections
ÖÖK \
)
ÖÖ\ ]
{
ÜÜ 	
var
áá 
playerResources
áá 
=
áá  !
new
áá" %

Dictionary
áá& 0
<
áá0 1
int
áá1 4
,
áá4 5
int
áá6 9
>
áá9 :
(
áá: ;
)
áá; <
;
áá< =
foreach
ââ 
(
ââ 
var
ââ 
vertex
ââ 
in
ââ  "
hex
ââ# &
.
ââ& '
Vertices
ââ' /
)
ââ/ 0
{
ää 
if
ãã 
(
ãã 
vertex
ãã 
.
ãã 

IsOccupied
ãã %
&&
ãã& (
vertex
ãã) /
.
ãã/ 0
OwnerPlayerId
ãã0 =
.
ãã= >
HasValue
ãã> F
)
ããF G
{
åå 
int
çç 
playerId
çç  
=
çç! "
vertex
çç# )
.
çç) *
OwnerPlayerId
çç* 7
.
çç7 8
Value
çç8 =
;
çç= >
int
éé 

multiplier
éé "
=
éé# $
vertex
éé% +
.
éé+ ,
IsCity
éé, 2
?
éé3 4
$num
éé5 6
:
éé7 8
$num
éé9 :
;
éé: ;
AssignResources
êê #
(
êê# $!
gamePlayerResources
êê$ 7
,
êê7 8
gameBoardState
êê9 G
.
êêG H
GameId
êêH N
,
êêN O
playerId
êêP X
,
êêX Y
hex
êêZ ]
.
êê] ^
Resource
êê^ f
,
êêf g

multiplier
êêh r
)
êêr s
;
êês t#
ProcessConnectedHexes
ëë )
(
ëë) *
vertex
ëë* 0
,
ëë0 1
hexMap
ëë2 8
,
ëë8 9
vertexConnections
ëë: K
,
ëëK L
	diceValue
ëëM V
,
ëëV W
gameBoardState
ëëX f
)
ëëf g
;
ëëg h
}
íí 
}
ìì 
return
ïï 
playerResources
ïï "
;
ïï" #
}
ññ 	
private
òò 
void
òò #
ProcessConnectedHexes
òò *
(
òò* +
	VertexDto
òò+ 4
vertex
òò5 ;
,
òò; <

Dictionary
òò= G
<
òòG H
int
òòH K
,
òòK L

HexTileDto
òòM W
>
òòW X
hexMap
òòY _
,
òò_ `

Dictionary
ôô 
<
ôô 
int
ôô 
,
ôô 
List
ôô  
<
ôô  !
int
ôô! $
>
ôô$ %
>
ôô% &
vertexConnections
ôô' 8
,
ôô8 9
int
ôô: =
	diceValue
ôô> G
,
ôôG H
GameBoardStateDto
ôôI Z
gameBoardState
ôô[ i
)
ôôi j
{
öö 	
if
õõ 
(
õõ 
!
õõ 
vertexConnections
õõ "
.
õõ" #
ContainsKey
õõ# .
(
õõ. /
vertex
õõ/ 5
.
õõ5 6
Id
õõ6 8
)
õõ8 9
)
õõ9 :
return
õõ; A
;
õõA B
foreach
ùù 
(
ùù 
var
ùù 
connectedHexId
ùù '
in
ùù( *
vertexConnections
ùù+ <
[
ùù< =
vertex
ùù= C
.
ùùC D
Id
ùùD F
]
ùùF G
)
ùùG H
{
ûû 
if
üü 
(
üü 
hexMap
üü 
.
üü 
TryGetValue
üü &
(
üü& '
connectedHexId
üü' 5
,
üü5 6
out
üü7 :
var
üü; >
connectedHex
üü? K
)
üüK L
&&
üüM O
connectedHex
üüP \
.
üü\ ]
	DiceValue
üü] f
==
üüg i
	diceValue
üüj s
)
üüs t
{
†† 
var
°° 
connectedVertex
°° '
=
°°( )
connectedHex
°°* 6
.
°°6 7
Vertices
°°7 ?
.
°°? @
FirstOrDefault
°°@ N
(
°°N O
v
°°O P
=>
°°Q S
v
°°T U
.
°°U V
Id
°°V X
==
°°Y [
vertex
°°\ b
.
°°b c
Id
°°c e
)
°°e f
;
°°f g
if
¢¢ 
(
¢¢ 
connectedVertex
¢¢ '
!=
¢¢( *
null
¢¢+ /
&&
¢¢0 2
connectedVertex
¢¢3 B
.
¢¢B C
OwnerPlayerId
¢¢C P
.
¢¢P Q
HasValue
¢¢Q Y
)
¢¢Y Z
{
££ 
int
§§ 
	playerId2
§§ %
=
§§& '
connectedVertex
§§( 7
.
§§7 8
OwnerPlayerId
§§8 E
.
§§E F
Value
§§F K
;
§§K L
int
•• 
multiplier2
•• '
=
••( )
connectedVertex
••* 9
.
••9 :
IsCity
••: @
?
••A B
$num
••C D
:
••E F
$num
••G H
;
••H I
AssignResources
ßß '
(
ßß' (!
gamePlayerResources
ßß( ;
,
ßß; <
gameBoardState
ßß= K
.
ßßK L
GameId
ßßL R
,
ßßR S
	playerId2
ßßT ]
,
ßß] ^
connectedHex
ßß_ k
.
ßßk l
Resource
ßßl t
,
ßßt u
multiplier2ßßv Å
)ßßÅ Ç
;ßßÇ É
}
®® 
}
©© 
}
™™ 
}
´´ 	
}
ÆÆ 
}ØØ í
\C:\Users\gearh\source\repos\CatanServer\CatanService\Services\EmailServices\IEmailService.cs
	namespace 	
CatanService
 
. 
Services 
{		 
public

 

	interface

 
IEmailService

 "
{ 
Task &
SendConfirmationEmailAsync '
(' (
Account( /
accountEntity0 =
)= >
;> ?
Task !
SendGameCodeToFriends "
(" #
Account# *
accountRecord+ 8
,8 9
string: @
codeGameA I
)I J
;J K
} 
} õ}
YC:\Users\gearh\source\repos\CatanServer\CatanService\Services\ChatServices\ChatService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyModeG V
=W X
ConcurrencyModeY h
.h i
Multiplei q
)q r
]r s
public 

class 
ChatService 
: 
IChatService +
{ 
private 
readonly  
ConcurrentDictionary -
<- .
int. 1
,1 2
ConcurrentBag3 @
<@ A

ChatPlayerA K
>K L
>L M
gameChatsOnlineN ]
=^ _
new` c 
ConcurrentDictionaryd x
<x y
inty |
,| }
ConcurrentBag	~ ã
<
ã å

ChatPlayer
å ñ
>
ñ ó
>
ó ò
(
ò ô
)
ô ö
;
ö õ
public 
ChatService 
( 
) 
{ 	
} 	
public 
async 
Task 
JoinChatAsync '
(' (
GameDto( /
gameClientDto0 =
,= >
string? E

namePlayerF P
)P Q
{ 	
if 
( 
gameClientDto 
? 
. 
Id !
==" $
null% )
||* ,
string- 3
.3 4
IsNullOrEmpty4 A
(A B

namePlayerB L
)L M
)M N
returnO U
;U V
IChatCallback !
callbackChannelClient /
=0 1
OperationContext2 B
.B C
CurrentC J
.J K
GetCallbackChannelK ]
<] ^
IChatCallback^ k
>k l
(l m
)m n
;n o 
ICommunicationObject  %
communicationObjectClient! :
=; <
(= > 
ICommunicationObject> R
)R S!
callbackChannelClientS h
;h i

ChatPlayer   

chatPlayer   !
=  " #
new  $ '

ChatPlayer  ( 2
{!! 

PlayerName"" 
="" 

namePlayer"" '
,""' (
Callback## 
=## !
callbackChannelClient## 0
}$$ 
;$$ 
gameChatsOnline&& 
.&& 
AddOrUpdate&& '
(&&' (
gameClientDto&&( 5
.&&5 6
Id&&6 8
.&&8 9
Value&&9 >
,&&> ?
new'' 
ConcurrentBag'' !
<''! "

ChatPlayer''" ,
>'', -
{''. /

chatPlayer''0 :
}''; <
,''< =
((( 
gameId(( 
,(( 
players((  
)((  !
=>((" $
{)) 
var** 
updatedPlayers** &
=**' (
players**) 0
.**0 1
Where**1 6
(**6 7
player**7 =
=>**> @
player**A G
.**G H

PlayerName**H R
!=**S U

namePlayer**V `
)**` a
.**a b
ToList**b h
(**h i
)**i j
;**j k
updatedPlayers++ "
.++" #
Add++# &
(++& '

chatPlayer++' 1
)++1 2
;++2 3
return,, 
new,, 
ConcurrentBag,, ,
<,,, -

ChatPlayer,,- 7
>,,7 8
(,,8 9
updatedPlayers,,9 G
),,G H
;,,H I
}-- 
)-- 
;-- %
communicationObjectClient// %
.//% &
Faulted//& -
+=//. 0
(//1 2
sender//2 8
,//8 9
args//: >
)//> ?
=>//@ B$
RemoveDisconnectedPlayer//C [
(//[ \
gameClientDto//\ i
.//i j
Id//j l
.//l m
Value//m r
,//r s

chatPlayer//t ~
)//~ 
;	// Ä%
communicationObjectClient00 %
.00% &
Closed00& ,
+=00- /
(000 1
sender001 7
,007 8
args009 =
)00= >
=>00? A$
RemoveDisconnectedPlayer00B Z
(00Z [
gameClientDto00[ h
.00h i
Id00i k
.00k l
Value00l q
,00q r

chatPlayer00s }
)00} ~
;00~ 
await22 !
BroadcastMessageAsync22 '
(22' (
gameClientDto22( 5
,225 6

namePlayer227 A
,22A B
string22C I
.22I J
Empty22J O
,22O P
(33 
callback33 
,33 

playerName33 %
,33% &
message33' .
)33. /
=>330 2
Task333 7
.337 8
Run338 ;
(33; <
(33< =
)33= >
=>33? A
callback33B J
.33J K*
ReceiveMessageJoinPlayerToChat33K i
(33i j

playerName33j t
)33t u
)33u v
)33v w
;33w x
}44 	
public66 
async66 
Task66 
LeaveChatAsync66 (
(66( )
GameDto66) 0
gameClientDto661 >
,66> ?
string66@ F

namePlayer66G Q
)66Q R
{77 	
if88 
(88 
gameClientDto88 
?88 
.88 
Id88 !
==88" $
null88% )
||88* ,
string88- 3
.883 4
IsNullOrEmpty884 A
(88A B

namePlayer88B L
)88L M
)88M N
return88O U
;88U V
if:: 
(:: 
gameChatsOnline:: 
.::  
TryGetValue::  +
(::+ ,
gameClientDto::, 9
.::9 :
Id::: <
.::< =
Value::= B
,::B C
out::D G
var::H K
players::L S
)::S T
)::T U
{;; 
var<< 
playerToRemove<< "
=<<# $
players<<% ,
.<<, -
FirstOrDefault<<- ;
(<<; <
p<<< =
=><<> @
p<<A B
.<<B C

PlayerName<<C M
==<<N P

namePlayer<<Q [
)<<[ \
;<<\ ]
if== 
(== 
playerToRemove== "
!===# %
null==& *
)==* +
{>> $
RemoveDisconnectedPlayer?? ,
(??, -
gameClientDto??- :
.??: ;
Id??; =
.??= >
Value??> C
,??C D
playerToRemove??E S
)??S T
;??T U
}@@ 
}AA 
awaitCC !
BroadcastMessageAsyncCC '
(CC' (
gameClientDtoCC( 5
,CC5 6

namePlayerCC7 A
,CCA B
stringCCC I
.CCI J
EmptyCCJ O
,CCO P
asyncDD 
(DD 
callbackDD 
,DD  

playerNameDD! +
,DD+ ,
messageDD- 4
)DD4 5
=>DD6 8
{EE 
tryFF 
{GG 
ifHH 
(HH 
callbackHH $
!=HH% '
nullHH( ,
&&HH- /
(HH0 1
(HH1 2 
ICommunicationObjectHH2 F
)HHF G
callbackHHG O
)HHO P
.HHP Q
StateHHQ V
==HHW Y
CommunicationStateHHZ l
.HHl m
OpenedHHm s
)HHs t
{II 
awaitJJ !
TaskJJ" &
.JJ& '
RunJJ' *
(JJ* +
(JJ+ ,
)JJ, -
=>JJ. 0
callbackJJ1 9
.JJ9 :*
ReceiveMessageLeftPlayerToChatJJ: X
(JJX Y

playerNameJJY c
)JJc d
)JJd e
;JJe f
}KK 
}LL 
catchMM 
(MM #
ObjectDisposedExceptionMM 2
exMM3 5
)MM5 6
{NN 
LogOO 
.OO 
ErrorOO !
(OO! "
exOO" $
,OO$ %
exOO& (
.OO( )
SourceOO) /
)OO/ 0
;OO0 1
}PP 
catchQQ 
(QQ /
#CommunicationObjectAbortedExceptionQQ >
exQQ? A
)QQA B
{RR 
LogSS 
.SS 
ErrorSS !
(SS! "
exSS" $
,SS$ %
exSS& (
.SS( )
SourceSS) /
)SS/ 0
;SS0 1
}TT 
catchUU 
(UU "
CommunicationExceptionUU 1
exUU2 4
)UU4 5
{VV 
LogWW 
.WW 
ErrorWW !
(WW! "
exWW" $
,WW$ %
exWW& (
.WW( )
SourceWW) /
)WW/ 0
;WW0 1
}XX 
}YY 
)YY 
;YY 
}ZZ 	
public\\ 
async\\ 
Task\\ "
SendMessageToChatAsync\\ 0
(\\0 1
GameDto\\1 8
gameClientDto\\9 F
,\\F G
string\\H N

namePlayer\\O Y
,\\Y Z
string\\[ a
messageToPlayers\\b r
)\\r s
{]] 	
if^^ 
(^^ 
gameClientDto^^ 
==^^  
null^^! %
||^^& (
string^^) /
.^^/ 0
IsNullOrEmpty^^0 =
(^^= >

namePlayer^^> H
)^^H I
||^^J L
string^^M S
.^^S T
IsNullOrEmpty^^T a
(^^a b
messageToPlayers^^b r
)^^r s
)^^s t
return^^u {
;^^{ |
await`` !
BroadcastMessageAsync`` '
(``' (
gameClientDto``( 5
,``5 6

namePlayer``7 A
,``A B
messageToPlayers``C S
,``S T
(aa 
callbackaa 
,aa 

playerNameaa %
,aa% &
messageaa' .
)aa. /
=>aa0 2
Taskaa3 7
.aa7 8
Runaa8 ;
(aa; <
(aa< =
)aa= >
=>aa? A
callbackaaB J
.aaJ K
ReceiveMessageaaK Y
(aaY Z

playerNameaaZ d
,aad e
messageaaf m
)aam n
)aan o
)aao p
;aap q
}bb 	
privatedd 
asyncdd 
Taskdd !
BroadcastMessageAsyncdd 0
(dd0 1
GameDtodd1 8
gameClientDtodd9 F
,ddF G
stringddH N

namePlayerddO Y
,ddY Z
stringdd[ a
messageddb i
,ddi j
Funcddk o
<ddo p
IChatCallbackddp }
,dd} ~
string	dd Ö
,
ddÖ Ü
string
ddá ç
,
ddç é
Task
ddè ì
>
ddì î
sendMessageAction
ddï ¶
)
dd¶ ß
{ee 	
ifff 
(ff 
!ff 
gameChatsOnlineff  
.ff  !
TryGetValueff! ,
(ff, -
gameClientDtoff- :
.ff: ;
Idff; =
.ff= >
Valueff> C
,ffC D
outffE H
varffI L
playersffM T
)ffT U
)ffU V
{gg 
returnhh 
;hh 
}ii 
Listkk 
<kk 

ChatPlayerkk 
>kk 
disconnectedPlayerskk 0
=kk1 2
newkk3 6
Listkk7 ;
<kk; <

ChatPlayerkk< F
>kkF G
(kkG H
)kkH I
;kkI J
foreachmm 
(mm 
varmm 
playermm 
inmm  "
playersmm# *
)mm* +
{nn 
tryoo 
{pp 
awaitqq 
sendMessageActionqq +
(qq+ ,
playerqq, 2
.qq2 3
Callbackqq3 ;
,qq; <

namePlayerqq= G
,qqG H
messageqqI P
)qqP Q
;qqQ R
}rr 
catchss 
(ss #
ObjectDisposedExceptionss .
exss/ 1
)ss1 2
{tt 
Loguu 
.uu 
Erroruu 
(uu 
exuu  
,uu  !
exuu" $
.uu$ %
Sourceuu% +
)uu+ ,
;uu, -
disconnectedPlayersvv '
.vv' (
Addvv( +
(vv+ ,
playervv, 2
)vv2 3
;vv3 4
}ww 
catchxx 
(xx /
#CommunicationObjectAbortedExceptionxx :
exxx; =
)xx= >
{yy 
Logzz 
.zz 
Errorzz 
(zz 
exzz  
,zz  !
exzz" $
.zz$ %
Sourcezz% +
)zz+ ,
;zz, -
disconnectedPlayers{{ '
.{{' (
Add{{( +
({{+ ,
player{{, 2
){{2 3
;{{3 4
}|| 
catch}} 
(}} "
CommunicationException}} -
ex}}. 0
)}}0 1
{~~ 
Log 
. 
Error 
( 
ex  
,  !
ex" $
.$ %
Source% +
)+ ,
;, -!
disconnectedPlayers
ÄÄ '
.
ÄÄ' (
Add
ÄÄ( +
(
ÄÄ+ ,
player
ÄÄ, 2
)
ÄÄ2 3
;
ÄÄ3 4
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
	Exception
ÇÇ  
ex
ÇÇ! #
)
ÇÇ# $
{
ÉÉ 
Log
ÑÑ 
.
ÑÑ 
Error
ÑÑ 
(
ÑÑ 
ex
ÑÑ  
,
ÑÑ  !
ex
ÑÑ" $
.
ÑÑ$ %
Source
ÑÑ% +
)
ÑÑ+ ,
;
ÑÑ, -!
disconnectedPlayers
ÖÖ '
.
ÖÖ' (
Add
ÖÖ( +
(
ÖÖ+ ,
player
ÖÖ, 2
)
ÖÖ2 3
;
ÖÖ3 4
}
ÜÜ 
}
áá 
foreach
ââ 
(
ââ 

ChatPlayer
ââ 
player
ââ  &
in
ââ' )!
disconnectedPlayers
ââ* =
)
ââ= >
{
ää &
RemoveDisconnectedPlayer
ãã (
(
ãã( )
gameClientDto
ãã) 6
.
ãã6 7
Id
ãã7 9
.
ãã9 :
Value
ãã: ?
,
ãã? @
player
ããA G
)
ããG H
;
ããH I
}
åå 
}
çç 	
private
êê 
void
êê &
RemoveDisconnectedPlayer
êê -
(
êê- .
int
êê. 1
gameId
êê2 8
,
êê8 9

ChatPlayer
êê: D
player
êêE K
)
êêK L
{
ëë 	
if
íí 
(
íí 
gameChatsOnline
íí 
.
íí  
TryGetValue
íí  +
(
íí+ ,
gameId
íí, 2
,
íí2 3
out
íí4 7
ConcurrentBag
íí8 E
<
ííE F

ChatPlayer
ííF P
>
ííP Q
players
ííR Y
)
ííY Z
)
ííZ [
{
ìì 
var
îî 
updatedPlayers
îî "
=
îî# $
players
îî% ,
.
îî, -
Where
îî- 2
(
îî2 3
p
îî3 4
=>
îî5 7
p
îî8 9
.
îî9 :

PlayerName
îî: D
!=
îîE G
player
îîH N
.
îîN O

PlayerName
îîO Y
)
îîY Z
.
îîZ [
ToList
îî[ a
(
îîa b
)
îîb c
;
îîc d
if
ïï 
(
ïï 
updatedPlayers
ïï "
.
ïï" #
Any
ïï# &
(
ïï& '
)
ïï' (
)
ïï( )
{
ññ 
gameChatsOnline
óó #
[
óó# $
gameId
óó$ *
]
óó* +
=
óó, -
new
óó. 1
ConcurrentBag
óó2 ?
<
óó? @

ChatPlayer
óó@ J
>
óóJ K
(
óóK L
updatedPlayers
óóL Z
)
óóZ [
;
óó[ \
}
òò 
else
ôô 
{
öö 
gameChatsOnline
õõ #
.
õõ# $
	TryRemove
õõ$ -
(
õõ- .
gameId
õõ. 4
,
õõ4 5
out
õõ6 9
_
õõ: ;
)
õõ; <
;
õõ< =
}
úú 
}
ùù 
}
ûû 	
}
üü 
}°° 
`C:\Users\gearh\source\repos\CatanServer\CatanService\Services\AccountServices\IAccountService.cs
	namespace

 	
CatanService


 
.

 
Services

 
{ 
public 

	interface 
IAccountService $
{ 
Task 
< +
OperationResultCreateAccountDto ,
>, -(
CreateAccountInDataBaseAsync. J
(J K

AccountDtoK U
accountClientDtoV f
)f g
;g h
Task 
< %
OperationResultProfileDto &
>& ' 
LogInInDataBaseAsync( <
(< =

AccountDto= G
accountClientDtoH X
)X Y
;Y Z
Task 
< 
OperationResultDto 
>  
IsVerifyAccount! 0
(0 1

AccountDto1 ;
accountClientDto< L
)L M
;M N
Task 
< 
bool 
> '
ResendVerificationCodeAsync .
(. /
string/ 5
emailOrPhone6 B
)B C
;C D
Task 
< 
OperationResultDto 
>  ?
3SendVerificationCodeToChangePasswordInDataBaseAsync! T
(T U

AccountDtoU _
accountClientDto` p
)p q
;q r
Task 
< 
OperationResultDto 
>  )
ChangePasswordInDataBaseAsync! >
(> ?

AccountDto? I
accountClientDtoJ Z
)Z [
;[ \
Task 
< 5
)OperationResultChangeRegisterEmailOrPhone 7
>7 8C
7SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync8 o
(o p

AccountDtop z
accountClientDto	{ ã
)
ã å
;
å ç
Task 
< 5
)OperationResultChangeRegisterEmailOrPhone 7
>7 8-
!ChangeEmailOrPhoneInDataBaseAsync9 Z
(Z [

AccountDto[ e
accountClientDtof v
)v w
;w x
Task 
< %
OperationResultAccountDto '
>' (2
&ConsultAccountProfileServiceInDataBase( N
(N O

ProfileDtoO Y
profileClientDtoZ j
)j k
;k l
Task #
SendInviteGameToFriends $
($ %
Account% ,
accountRecord- :
,: ;
string< B
	accessKeyC L
)L M
;M N
Task 
< 
bool 
> .
"NeedHelpProblemWithEmailInDataBase 5
(5 6
string6 <
email= B
)B C
;C D
Task 
< 
bool 
> 1
%NeedHelpProblemWithPasswordInDataBase 8
(8 9
string9 ?
email@ E
)E F
;F G
Task 
< 
bool 
> *
ChangeForgotPasswordInDataBase 1
(1 2
string2 8
email9 >
,> ?
string@ F
newPasswordG R
,R S
stringT Z
token[ `
)` a
;a b
} 
} ˝9
[C:\Users\gearh\source\repos\CatanServer\CatanService\Services\EmailServices\EmailService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public 

class 
EmailService 
: 
IDisposable  +
,+ ,
IEmailService- :
{ 
private 
readonly 

SmtpClient #

smtpClient$ .
;. /
bool 
disposed 
= 
false 
; 
public 
EmailService 
( 
) 
{ 	

smtpClient 
= 
new 

SmtpClient '
(' (
ApiServiceUtilities( ;
.; <
SMTP_CLIENT_HOST< L
,L M
ApiServiceUtilitiesN a
.a b
SMTP_CLIENT_PORTb r
)r s
{ 
Credentials 
= 
new !
NetworkCredential" 3
(3 4
Environment 
.  "
GetEnvironmentVariable  6
(6 7
ApiServiceUtilities7 J
.J K'
SMTP_CLIENT_ENVIROMENT_NAMEK f
)f g
,g h
Environment 
.  "
GetEnvironmentVariable  6
(6 7
ApiServiceUtilities7 J
.J K+
SMTP_CLIENT_ENVIROMENT_PASSWORDK j
)j k
)k l
,l m
	EnableSsl 
= 
true  
,  !
DeliveryMethod 
=  
SmtpDeliveryMethod! 3
.3 4
Network4 ;
,; <
Timeout 
= 
ApiServiceUtilities -
.- . 
SMTP_CLIENT_TIME_OUT. B
} 
; 
} 	
public!! 
async!! 
Task!! &
SendConfirmationEmailAsync!! 4
(!!4 5
Account!!5 <
accountEntity!!= J
)!!J K
{"" 	
using## 
(## 
MailMessage## 
mailMessage## *
=##+ ,
new##- 0
MailMessage##1 <
(##< =
)##= >
)##> ?
{$$ 
try%% 
{&& 
mailMessage'' 
.''  
From''  $
=''% &
new''' *
MailAddress''+ 6
(''6 7
Environment''7 B
.''B C"
GetEnvironmentVariable''C Y
(''Y Z
ApiServiceUtilities''Z m
.''m n(
SMTP_CLIENT_ENVIROMENT_NAME	''n â
)
''â ä
)
''ä ã
;
''ã å
mailMessage(( 
.((  
To((  "
.((" #
Add((# &
(((& '
accountEntity((' 4
.((4 5
Email((5 :
)((: ;
;((; <
mailMessage)) 
.))  
Subject))  '
=))( )
LanguageUtilities))* ;
.)); <
MessageTokenSubject))< O
())O P
accountEntity))P ]
.))] ^
PreferredLanguage))^ o
)))o p
;))p q
mailMessage** 
.**  
Body**  $
=**% &
LanguageUtilities**' 8
.**8 9
MessageTokenSubject**9 L
(**L M
accountEntity**M Z
.**Z [
PreferredLanguage**[ l
)**l m
+**n o
CharacterUtilities	**p Ç
.
**Ç É
STRING_CHAR_SPACE
**É î
+
**ï ñ
accountEntity
**ó §
.
**§ •
Token
**• ™
;
**™ ´
mailMessage++ 
.++  

IsBodyHtml++  *
=+++ ,
false++- 2
;++2 3
await-- 

smtpClient-- $
.--$ %
SendMailAsync--% 2
(--2 3
mailMessage--3 >
)--> ?
;--? @
}.. 
catch// 
(// 
SmtpException// $
ex//% '
)//' (
{00 
Log11 
.11 
Error11 
(11 
ex11  
,11  !
ex11" $
.11$ %
Source11% +
)11+ ,
;11, -
}22 
}33 
}44 	
public55 
async55 
Task55 !
SendGameCodeToFriends55 /
(55/ 0
Account550 7
accountRecord558 E
,55E F
string55G M
codeGame55N V
)55V W
{66 	
using77 
(77 
MailMessage77 
mailMessage77 *
=77+ ,
new77- 0
MailMessage771 <
(77< =
)77= >
)77> ?
{88 
try99 
{:: 
mailMessage;; 
.;;  
From;;  $
=;;% &
new;;' *
MailAddress;;+ 6
(;;6 7
Environment;;7 B
.;;B C"
GetEnvironmentVariable;;C Y
(;;Y Z
ApiServiceUtilities;;Z m
.;;m n(
SMTP_CLIENT_ENVIROMENT_NAME	;;n â
)
;;â ä
)
;;ä ã
;
;;ã å
mailMessage<< 
.<<  
To<<  "
.<<" #
Add<<# &
(<<& '
accountRecord<<' 4
.<<4 5
Email<<5 :
)<<: ;
;<<; <
mailMessage== 
.==  
Subject==  '
===( )
LanguageUtilities==* ;
.==; <(
MessageSubjectCodeAccessGame==< X
(==X Y
accountRecord==Y f
.==f g
PreferredLanguage==g x
)==x y
;==y z
mailMessage>> 
.>>  
Body>>  $
=>>% &
LanguageUtilities>>' 8
.>>8 9
MessageCode>>9 D
(>>D E
accountRecord>>E R
.>>R S
PreferredLanguage>>S d
)>>d e
+>>f g
CharacterUtilities>>h z
.>>z {
STRING_CHAR_SPACE	>>{ å
+
>>ç é
codeGame
>>è ó
;
>>ó ò
mailMessage?? 
.??  

IsBodyHtml??  *
=??+ ,
false??- 2
;??2 3
awaitAA 

smtpClientAA $
.AA$ %
SendMailAsyncAA% 2
(AA2 3
mailMessageAA3 >
)AA> ?
;AA? @
}BB 
catchCC 
(CC 
SmtpExceptionCC $
exCC% '
)CC' (
{DD 
LogEE 
.EE 
ErrorEE 
(EE 
exEE  
,EE  !
exEE" $
.EE$ %
SourceEE% +
)EE+ ,
;EE, -
}FF 
}GG 
}HH 	
publicII 
voidII 
DisposeII 
(II 
)II 
{JJ 	
DisposeKK 
(KK 
trueKK 
)KK 
;KK 
GCLL 
.LL 
SuppressFinalizeLL 
(LL  
thisLL  $
)LL$ %
;LL% &
}MM 	
	protectedOO 
virtualOO 
voidOO 
DisposeOO &
(OO& '
boolOO' +
	disposingOO, 5
)OO5 6
{PP 	
ifQQ 
(QQ 
!QQ 
disposedQQ 
)QQ 
{RR 
ifSS 
(SS 
	disposingSS 
)SS 
{TT 

smtpClientUU 
?UU 
.UU  
DisposeUU  '
(UU' (
)UU( )
;UU) *
}VV 
disposedWW 
=WW 
trueWW 
;WW  
}XX 
}YY 	
}ZZ 
}[[ õï
_C:\Users\gearh\source\repos\CatanServer\CatanService\Services\AccountServices\AccountService.cs
	namespace 	
CatanService
 
. 
Services 
{ 
public 

class 
AccountService 
:  !
IAccountService" 1
{ 
private 
readonly 
IRepositoryManager +
repositoryManager, =
;= >
private 
readonly 
IServiceManager (
serviceManager) 7
;7 8
public 
AccountService 
( 
IRepositoryManager 0
repositoryManager1 B
,B C
IServiceManagerD S
serviceManagerT b
)b c
{ 	
this 
. 
repositoryManager "
=# $
repositoryManager% 6
;6 7
this 
. 
serviceManager 
=  !
serviceManager" 0
;0 1
} 	
public   
async   
Task   
<   +
OperationResultCreateAccountDto   9
>  9 :(
CreateAccountInDataBaseAsync  ; W
(  W X

AccountDto  X b
accountClientDto  c s
)  s t
{!! 	
if"" 
("" "
IsValidAccountPassword"" &
(""& '
accountClientDto""' 7
.""7 8
Password""8 @
)""@ A
&&""B D
IsValidLanguage""E T
(""T U
accountClientDto""U e
.""e f
PreferredLanguage""f w
)""w x
&&## 
(## 
IsValidAccountEmail## '
(##' (
accountClientDto##( 8
.##8 9
Email##9 >
)##> ?
||##@ B%
IsValidAccountPhoneNumber##C \
(##\ ]
accountClientDto##] m
.##m n
PhoneNumber##n y
)##y z
)##z {
&&$$ 
await$$ 
serviceManager$$ '
.$$' (
ProfileService$$( 6
.$$6 7
IsValidProfileName$$7 I
($$I J
accountClientDto$$J Z
.$$Z [
Name$$[ _
)$$_ `
)$$` a
{%% 
if&& 
(&& 
await&& (
IsAccountRegisteredWithEmail&& 6
(&&6 7
accountClientDto&&7 G
.&&G H
Email&&H M
)&&M N
||&&O Q
await&&S X(
IsAccountRegisteredWithPhone&&Y u
(&&u v
accountClientDto	&&v Ü
.
&&Ü á
PhoneNumber
&&á í
)
&&í ì
)
&&ì î
{'' 
return(( 
new(( +
OperationResultCreateAccountDto(( >
(((> ?
false((? D
,((D E
LanguageUtilities((F W
.((W X#
MessageUnableToSaveData((X o
(((o p
accountClientDto	((p Ä
.
((Ä Å
PreferredLanguage
((Å í
)
((í ì
,
((ì î#
EnumCreateAccountStatus)) /
.))/ 0
ExistsAccount))0 =
)))= >
;))> ?
}** 
else++ 
if++ 
(++ 
await++ 
serviceManager++ ,
.++, -
ProfileService++- ;
.++; <2
&IsProfileNameRegisteredInDataBaseAsync++< b
(++b c
accountClientDto++c s
.++s t
Name++t x
)++x y
)++y z
{,, 
return-- 
new-- +
OperationResultCreateAccountDto-- >
(--> ?
false--? D
,--D E
LanguageUtilities--F W
.--W X#
MessageUnableToSaveData--X o
(--o p
accountClientDto	--p Ä
.
--Ä Å
PreferredLanguage
--Å í
)
--í ì
,
--ì î#
EnumCreateAccountStatus.. /
.../ 0

ExistsName..0 :
)..: ;
;..; <
}// 
else00 
if00 
(00 0
$AddAccountAndProfileTransactionAsync00 =
(00= >
accountClientDto00> N
)00N O
.00O P
Result00P V
)00V W
{11 
return33 
new33 +
OperationResultCreateAccountDto33 >
(33> ?
true33? C
,33C D
LanguageUtilities33E V
.33V W
MessageSuccess33W e
(33e f
accountClientDto33f v
.33v w
PreferredLanguage	33w à
)
33à â
,
33â ä#
EnumCreateAccountStatus44 /
.44/ 0
SuccessSave440 ;
,44; <
await44= B
GetProfileByName44C S
(44S T
accountClientDto44T d
.44d e
Name44e i
)44i j
)44j k
;44k l
}55 
}77 
return99 
new99 +
OperationResultCreateAccountDto99 6
(996 7
false997 <
,99< =
LanguageUtilities99> O
.99O P#
MessageUnableToSaveData99P g
(99g h
accountClientDto99h x
.99x y
PreferredLanguage	99y ä
)
99ä ã
,
99ã å%
EnumCreateAccountStatus
99ç §
.
99§ •
ErrorSaving
99• ∞
)
99∞ ±
;
99± ≤
}:: 	
public== 
async== 
Task== 
<== 

ProfileDto== $
>==$ %
GetProfileByName==& 6
(==6 7
string==7 =
accountName==> I
)==I J
{>> 	
Profile?? 
profileRecord?? !
=??" #
await??$ )
repositoryManager??* ;
.??; <
ProfileRepository??< M
.??M N!
GetProfileByNameAsync??N c
(??c d
accountName??d o
)??o p
;??p q

ProfileDto@@ 

profileDto@@ !
=@@" #
new@@$ '

ProfileDto@@( 2
(@@2 3
)@@3 4
;@@4 5
ifBB 
(BB 
profileRecordBB 
!=BB 
nullBB  $
)BB$ %
{CC 

profileDtoDD 
.DD 
NameDD 
=DD  !
profileRecordDD" /
.DD/ 0
NameDD0 4
;DD4 5

profileDtoEE 
.EE 
IdEE 
=EE 
profileRecordEE  -
.EE- .
IdEE. 0
;EE0 1
}FF 
returnHH 

profileDtoHH 
;HH 
}II 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
boolJJ 
>JJ 0
$AddAccountAndProfileTransactionAsyncJJ  D
(JJD E

AccountDtoJJE O
accountClientDtoJJP `
)JJ` a
{KK 	
usingLL 
(LL  
DbContextTransactionLL '
transactionLL( 3
=LL4 5
awaitLL6 ;
repositoryManagerLL< M
.LLM N!
StartTransactionAsyncLLN c
(LLc d
)LLd e
)LLe f
{MM 
boolNN 
isSuccessCommitNN $
=NN% &
falseNN' ,
;NN, -
tryPP 
{QQ 
AccountSS 
accountEntitySS )
=SS* +
awaitSS, 1$
CreateAccountEntityAsyncSS2 J
(SSJ K
accountClientDtoSSK [
)SS[ \
;SS\ ]
ProfileTT 
profileEntityTT )
=TT* +
awaitTT, 1
serviceManagerTT2 @
.TT@ A
ProfileServiceTTA O
.TTO P$
CreateProfileEntityAsyncTTP h
(TTh i
accountClientDtoTTi y
.TTy z
NameTTz ~
,TT~ 
accountEntity
TTÄ ç
)
TTç é
;
TTé è
ifVV 
(VV 
profileEntityVV %
!=VV& (
nullVV) -
&&VV. 0
accountEntityVV1 >
!=VV? A
nullVVB F
)VVF G
{WW 
awaitYY -
!CreateRelationAccountProfileAsyncYY ?
(YY? @
accountEntityYY@ M
,YYM N
profileEntityYYO \
)YY\ ]
;YY] ^
transaction\\ #
.\\# $
Commit\\$ *
(\\* +
)\\+ ,
;\\, -
isSuccessCommit]] '
=]]( )
true]]* .
;]]. /
_`` 
=`` 
Task``  
.``  !
Run``! $
(``$ %
async``% *
(``+ ,
)``, -
=>``. 0
{aa 
awaitbb  % 
SendverificationCodebb& :
(bb: ;
accountEntitybb; H
)bbH I
;bbI J
}cc 
)cc 
;cc 
}dd 
}ee 
catchff 
(ff 
DbUpdateExceptionff (
exff) +
)ff+ ,
{gg 
Loghh 
.hh 
Errorhh 
(hh 
exhh  
,hh  !
exhh" $
.hh$ %
Sourcehh% +
)hh+ ,
;hh, -
}ii 
catchjj 
(jj 
SqlExceptionjj #
exjj$ &
)jj& '
{kk 
Logll 
.ll 
Errorll 
(ll 
exll  
,ll  !
exll" $
.ll$ %
Sourcell% +
)ll+ ,
;ll, -
}mm 
catchnn 
(nn 
	Exceptionnn  
exnn! #
)nn# $
{oo 
Logpp 
.pp 
Errorpp 
(pp 
expp  
,pp  !
expp" $
.pp$ %
Sourcepp% +
)pp+ ,
;pp, -
}qq 
returnss 
isSuccessCommitss &
;ss& '
}tt 
}uu 	
publicww 
asyncww 
Taskww 
<ww 
Accountww !
>ww! "$
CreateAccountEntityAsyncww# ;
(ww; <

AccountDtoww< F
accountClientDtowwG W
)wwW X
{xx 	
Accountyy 
accountRecordyy !
=yy" #
newyy$ '
Accountyy( /
(yy/ 0
)yy0 1
;yy1 2
ifzz 
(zz 
IsValidAccountEmailzz #
(zz# $
accountClientDtozz$ 4
.zz4 5
Emailzz5 :
)zz: ;
)zz; <
{{{ 
accountRecord|| 
.|| 
Email|| #
=||$ %
accountClientDto||& 6
.||6 7
Email||7 <
;||< =
}}} 
else~~ 
if~~ 
(~~ %
IsValidAccountPhoneNumber~~ .
(~~. /
accountClientDto~~/ ?
.~~? @
PhoneNumber~~@ K
)~~K L
)~~L M
{ 
accountRecord
ÄÄ 
.
ÄÄ 
PhoneNumber
ÄÄ )
=
ÄÄ* +
accountClientDto
ÄÄ, <
.
ÄÄ< =
PhoneNumber
ÄÄ= H
;
ÄÄH I
}
ÅÅ 
accountRecord
ÉÉ 
.
ÉÉ 
Salt
ÉÉ 
=
ÉÉ  
PasswordUtilities
ÉÉ! 2
.
ÉÉ2 3
GetSaltPassword
ÉÉ3 B
(
ÉÉB C
)
ÉÉC D
;
ÉÉD E
accountRecord
ÑÑ 
.
ÑÑ 
PasswordHash
ÑÑ &
=
ÑÑ' (
PasswordUtilities
ÑÑ) :
.
ÑÑ: ;
GetHashPassword
ÑÑ; J
(
ÑÑJ K
accountClientDto
ÑÑK [
.
ÑÑ[ \
Password
ÑÑ\ d
,
ÑÑd e
accountRecord
ÑÑf s
.
ÑÑs t
Salt
ÑÑt x
)
ÑÑx y
;
ÑÑy z
accountRecord
ÖÖ 
.
ÖÖ 
	CreatedAt
ÖÖ #
=
ÖÖ$ %
DateTime
ÖÖ& .
.
ÖÖ. /
UtcNow
ÖÖ/ 5
;
ÖÖ5 6
accountRecord
ÜÜ 
.
ÜÜ 
	UpdatedAt
ÜÜ #
=
ÜÜ$ %
DateTime
ÜÜ& .
.
ÜÜ. /
UtcNow
ÜÜ/ 5
;
ÜÜ5 6
accountRecord
áá 
.
áá 
PreferredLanguage
áá +
=
áá, -
accountClientDto
áá. >
.
áá> ?
PreferredLanguage
áá? P
;
ááP Q
accountRecord
àà 
.
àà 
Status
àà  
=
àà! "
false
àà# (
;
àà( )
accountRecord
ââ 
.
ââ 
Token
ââ 
=
ââ  !&
GenerateVerificationCode
ââ" :
(
ââ: ;
)
ââ; <
;
ââ< =
accountRecord
ää 
.
ää !
RecoveryTokenExpiry
ää -
=
ää. /
DateTime
ää0 8
.
ää8 9
UtcNow
ää9 ?
;
ää? @
await
åå 
repositoryManager
åå #
.
åå# $
	SaveAsync
åå$ -
(
åå- .
)
åå. /
;
åå/ 0
return
çç 
accountRecord
çç  
;
çç  !
}
éé 	
public
èè 
async
èè 
Task
èè /
!CreateRelationAccountProfileAsync
èè ;
(
èè; <
Account
èè< C
accountEntity
èèD Q
,
èèQ R
Profile
èèS Z
profileEntity
èè[ h
)
èèh i
{
êê 	
accountEntity
ëë 
.
ëë 
RelationProfile
ëë )
=
ëë* +
profileEntity
ëë, 9
;
ëë9 :
profileEntity
íí 
.
íí 
RelationAccount
íí )
=
íí* +
accountEntity
íí, 9
;
íí9 :
repositoryManager
ìì 
.
ìì 
AccountRepository
ìì /
.
ìì/ 0
	AddEntity
ìì0 9
(
ìì9 :
accountEntity
ìì: G
)
ììG H
;
ììH I
repositoryManager
îî 
.
îî 
ProfileRepository
îî /
.
îî/ 0
	AddEntity
îî0 9
(
îî9 :
profileEntity
îî: G
)
îîG H
;
îîH I
await
ïï 
repositoryManager
ïï #
.
ïï# $
	SaveAsync
ïï$ -
(
ïï- .
)
ïï. /
;
ïï/ 0
}
ññ 	
public
òò 
async
òò 
Task
òò '
SendEmailVerificationCode
òò 3
(
òò3 4
Account
òò4 ;
accountRecord
òò< I
)
òòI J
{
ôô 	
if
öö 
(
öö 
!
öö 
string
öö 
.
öö 
IsNullOrEmpty
öö $
(
öö$ %
accountRecord
öö% 2
.
öö2 3
Email
öö3 8
)
öö8 9
)
öö9 :
{
õõ 
await
úú 
serviceManager
úú $
.
úú$ %
EmailService
úú% 1
.
úú1 2(
SendConfirmationEmailAsync
úú2 L
(
úúL M
accountRecord
úúM Z
)
úúZ [
;
úú[ \
}
ùù 
}
ûû 	
public
üü 
async
üü 
Task
üü %
SendSmsVerificationCode
üü 1
(
üü1 2
Account
üü2 9
accountRecord
üü: G
)
üüG H
{
†† 	
if
°° 
(
°° 
!
°° 
string
°° 
.
°° 
IsNullOrEmpty
°° %
(
°°% &
accountRecord
°°& 3
.
°°3 4
PhoneNumber
°°4 ?
)
°°? @
)
°°@ A
{
¢¢ 
await
££ 
serviceManager
££ $
.
££$ %

SmsService
££% /
.
££/ 0
SendSmsAsync
££0 <
(
££< =
accountRecord
££= J
.
££J K
PhoneNumber
££K V
,
££V W
accountRecord
££X e
.
££e f
Token
££f k
)
££k l
;
££l m
}
§§ 
}
•• 	
public
ßß 
async
ßß 
Task
ßß *
SendTelegramVerificationCode
ßß 6
(
ßß6 7
Account
ßß7 >
accountRecord
ßß? L
)
ßßL M
{
®® 	
if
©© 
(
©© 
!
©© 
string
©© 
.
©© 
IsNullOrEmpty
©© $
(
©©$ %
accountRecord
©©% 2
.
©©2 3
PhoneNumber
©©3 >
)
©©> ?
)
©©? @
{
™™ 
await
´´ 
serviceManager
´´ $
.
´´$ %
TelegramService
´´% 4
.
´´4 5
SendMessageAsync
´´5 E
(
´´E F
accountRecord
´´F S
.
´´S T
PhoneNumber
´´T _
,
´´_ `
LanguageUtilities
¨¨ !
.
¨¨! "!
MessageTokenSubject
¨¨" 5
(
¨¨5 6
accountRecord
¨¨6 C
.
¨¨C D
PreferredLanguage
¨¨D U
)
¨¨U V
+
¨¨W X 
CharacterUtilities
¨¨Y k
.
¨¨k l
STRING_CHAR_SPACE
¨¨l }
+
¨¨~ 
accountRecord¨¨Ä ç
.¨¨ç é
Token¨¨é ì
)¨¨ì î
;¨¨î ï
}
≠≠ 
}
ÆÆ 	
public
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ '
OperationResultProfileDto
ØØ 3
>
ØØ3 4"
LogInInDataBaseAsync
ØØ5 I
(
ØØI J

AccountDto
ØØJ T
accountClientDto
ØØU e
)
ØØe f
{
∞∞ 	
if
±± 
(
±± 
(
±± !
IsValidAccountEmail
±± $
(
±±$ %
accountClientDto
±±% 5
.
±±5 6
Email
±±6 ;
)
±±; <
||
±±= ?'
IsValidAccountPhoneNumber
±±@ Y
(
±±Y Z
accountClientDto
±±Z j
.
±±j k
PhoneNumber
±±k v
)
±±v w
)
±±w x
&&
≤≤ $
IsValidAccountPassword
≤≤ )
(
≤≤) *
accountClientDto
≤≤* :
.
≤≤: ;
Password
≤≤; C
)
≤≤C D
)
≤≤D E
{
≥≥ 
Account
¥¥ 
accountRecord
¥¥ %
=
¥¥& '
await
¥¥( -
repositoryManager
¥¥. ?
.
¥¥? @
AccountRepository
¥¥@ Q
.
¥¥Q R
FindAccountAsync
¥¥R b
(
¥¥b c
accountClientDto
¥¥c s
.
¥¥s t
PhoneNumber
¥¥t 
,¥¥ Ä 
accountClientDto¥¥Å ë
.¥¥ë í
Email¥¥í ó
,¥¥ó ò
accountClientDto
µµ $
.
µµ$ %
Password
µµ% -
)
µµ- .
;
µµ. /
if
∑∑ 
(
∑∑ 
accountRecord
∑∑ !
!=
∑∑" $
null
∑∑% )
)
∑∑) *
{
∏∏ 
Profile
ππ 
profileRecord
ππ )
=
ππ* +
await
ππ, 1
serviceManager
ππ2 @
.
ππ@ A
ProfileService
ππA O
.
ππO P(
GetProfileWithNewSessionId
ππP j
(
ππj k
accountRecord
ππk x
.
ππx y
Id
ππy {
)
ππ{ |
;
ππ| }
if
ªª 
(
ªª 
accountRecord
ªª %
.
ªª% &
Status
ªª& ,
)
ªª, -
{
ºº 

ProfileDto
ΩΩ "
profileServerDto
ΩΩ# 3
=
ΩΩ4 5
serviceManager
ΩΩ6 D
.
ΩΩD E
ProfileService
ΩΩE S
.
ΩΩS T
CreateProfileDto
ΩΩT d
(
ΩΩd e
profileRecord
ΩΩe r
)
ΩΩr s
;
ΩΩs t
profileServerDto
ææ (
.
ææ( )
IsRegistered
ææ) 5
=
ææ6 7
true
ææ8 <
;
ææ< =
return
øø 
new
øø "'
OperationResultProfileDto
øø# <
(
øø< =
true
øø= A
,
øøA B
LanguageUtilities
øøC T
.
øøT U
MessageSuccess
øøU c
(
øøc d
accountClientDto
øød t
.
øøt u 
PreferredLanguageøøu Ü
)øøÜ á
,øøá à
profileServerDto
¿¿  0
,
¿¿0 1&
EnumAuthenticationStatus
¿¿2 J
.
¿¿J K
Verified
¿¿K S
)
¿¿S T
;
¿¿T U
}
¡¡ 
else
¬¬ 
{
√√ 
return
ƒƒ 
new
ƒƒ "'
OperationResultProfileDto
ƒƒ# <
(
ƒƒ< =
false
ƒƒ= B
,
ƒƒB C
LanguageUtilities
ƒƒD U
.
ƒƒU V)
MessageDataBaseUnableToLoad
ƒƒV q
(
ƒƒq r
accountClientDtoƒƒr Ç
.ƒƒÇ É!
PreferredLanguageƒƒÉ î
)ƒƒî ï
,ƒƒï ñ&
EnumAuthenticationStatus
≈≈ 4
.
≈≈4 5
NotVerified
≈≈5 @
)
≈≈@ A
;
≈≈A B
}
∆∆ 
}
«« 
}
»» 
return
…… 
new
…… '
OperationResultProfileDto
…… 0
(
……0 1
false
……1 6
,
……6 7
LanguageUtilities
……8 I
.
……I J)
MessageDataBaseUnableToLoad
……J e
(
……e f
accountClientDto
……f v
.
……v w 
PreferredLanguage……w à
)……à â
,……â ä&
EnumAuthenticationStatus
   (
.
  ( )
	Incorrect
  ) 2
)
  2 3
;
  3 4
}
ÀÀ 	
public
ÕÕ 
static
ÕÕ 
bool
ÕÕ 
ComparePassWord
ÕÕ *
(
ÕÕ* +
Account
ÕÕ+ 2
accountRecord
ÕÕ3 @
,
ÕÕ@ A

AccountDto
ÕÕB L
accountClientDto
ÕÕM ]
)
ÕÕ] ^
{
ŒŒ 	
return
œœ 
PasswordUtilities
œœ $
.
œœ$ %
ComparePassword
œœ% 4
(
œœ4 5
accountClientDto
œœ5 E
.
œœE F
Password
œœF N
,
œœN O
accountRecord
œœP ]
.
œœ] ^
Salt
œœ^ b
,
œœb c
accountRecord
œœd q
.
œœq r
PasswordHash
œœr ~
)
œœ~ 
;œœ Ä
}
–– 	
public
““ 
static
““ 
bool
““ !
IsValidAccountEmail
““ .
(
““. /
string
““/ 5
email
““6 ;
)
““; <
{
”” 	
bool
‘‘ 
isValid
‘‘ 
=
‘‘ 
true
‘‘ 
;
‘‘  
if
÷÷ 
(
÷÷ 
string
÷÷ 
.
÷÷  
IsNullOrWhiteSpace
÷÷ )
(
÷÷) *
email
÷÷* /
)
÷÷/ 0
)
÷÷0 1
{
◊◊ 
return
ÿÿ 
false
ÿÿ 
;
ÿÿ 
}
ŸŸ 
try
€€ 
{
‹‹ 
isValid
›› 
&=
›› 
Regex
››  
.
››  !
IsMatch
››! (
(
››( )
email
››) .
,
››. /(
AccountValidationUtilities
››0 J
.
››J K,
REGEX_PROFILE_EMAIL_VALIDATION
››K i
,
››i j
RegexOptions
››k w
.
››w x
None
››x |
,
››| }
TimeSpan››~ Ü
.››Ü á 
FromMilliseconds››á ó
(››ó ò
$num››ò ú
)››ú ù
)››ù û
;››û ü
if
ﬂﬂ 
(
ﬂﬂ 
isValid
ﬂﬂ 
)
ﬂﬂ 
{
‡‡ 
string
·· 
[
·· 
]
·· 
parts
·· "
=
··# $
email
··% *
.
··* +
Split
··+ 0
(
··0 1 
CharacterUtilities
··1 C
.
··C D 
STRING_CHAR_ARROBA
··D V
,
··V W
(
··X Y
char
··Y ]
)
··] ^ 
StringSplitOptions
··^ p
.
··p q!
RemoveEmptyEntries··q É
)··É Ñ
;··Ñ Ö
isValid
‚‚ 
&=
‚‚ 
parts
‚‚ $
.
‚‚$ %
Length
‚‚% +
==
‚‚, .
$num
‚‚/ 0
;
‚‚0 1
if
‰‰ 
(
‰‰ 
isValid
‰‰ 
)
‰‰  
{
ÂÂ 
string
ÊÊ 
	localPart
ÊÊ (
=
ÊÊ) *
parts
ÊÊ+ 0
[
ÊÊ0 1
$num
ÊÊ1 2
]
ÊÊ2 3
;
ÊÊ3 4
string
ÁÁ 

domainPart
ÁÁ )
=
ÁÁ* +
parts
ÁÁ, 1
[
ÁÁ1 2
$num
ÁÁ2 3
]
ÁÁ3 4
;
ÁÁ4 5
isValid
ÈÈ 
&=
ÈÈ  "
!
ÈÈ# $$
HasInvalidDotsOrDashes
ÈÈ$ :
(
ÈÈ: ;
	localPart
ÈÈ; D
)
ÈÈD E
&&
ÈÈF H
!
ÈÈI J$
HasInvalidDotsOrDashes
ÈÈJ `
(
ÈÈ` a

domainPart
ÈÈa k
)
ÈÈk l
;
ÈÈl m
}
ÍÍ 
}
ÎÎ 
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ (
RegexMatchTimeoutException
ÌÌ -
ex
ÌÌ. 0
)
ÌÌ0 1
{
ÓÓ 
Log
ÔÔ 
.
ÔÔ 
Error
ÔÔ 
(
ÔÔ 
ex
ÔÔ 
,
ÔÔ 
ex
ÔÔ  
.
ÔÔ  !
Source
ÔÔ! '
)
ÔÔ' (
;
ÔÔ( )
isValid
 
=
 
false
 
;
  
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 
	Exception
ÚÚ 
ex
ÚÚ 
)
ÚÚ  
{
ÛÛ 
Log
ÙÙ 
.
ÙÙ 
Error
ÙÙ 
(
ÙÙ 
ex
ÙÙ 
,
ÙÙ 
ex
ÙÙ  
.
ÙÙ  !
Source
ÙÙ! '
)
ÙÙ' (
;
ÙÙ( )
isValid
ıı 
=
ıı 
false
ıı 
;
ıı  
}
ˆˆ 
return
¯¯ 
isValid
¯¯ 
;
¯¯ 
}
˘˘ 	
private
˚˚ 
static
˚˚ 
bool
˚˚ $
HasInvalidDotsOrDashes
˚˚ 2
(
˚˚2 3
string
˚˚3 9
part
˚˚: >
)
˚˚> ?
{
¸¸ 	
return
˝˝ 
Regex
˝˝ 
.
˝˝ 
IsMatch
˝˝  
(
˝˝  !
part
˝˝! %
,
˝˝% &(
AccountValidationUtilities
˝˝' A
.
˝˝A B!
REGEX_DOUBLE_POINTS
˝˝B U
,
˝˝U V
RegexOptions
˝˝W c
.
˝˝c d
None
˝˝d h
,
˝˝h i
TimeSpan
˝˝j r
.
˝˝r s
FromMilliseconds˝˝s É
(˝˝É Ñ
$num˝˝Ñ à
)˝˝à â
)˝˝â ä
||˝˝ã ç
part
˛˛ 
.
˛˛ 

StartsWith
˛˛ "
(
˛˛" # 
CharacterUtilities
˛˛# 5
.
˛˛5 6
STRING_CHAR_DASH
˛˛6 F
)
˛˛F G
||
˛˛H J
part
ˇˇ 
.
ˇˇ 
EndsWith
ˇˇ  
(
ˇˇ  ! 
CharacterUtilities
ˇˇ! 3
.
ˇˇ3 4
STRING_CHAR_DASH
ˇˇ4 D
)
ˇˇD E
||
ˇˇF H
part
ÄÄ 
.
ÄÄ 

StartsWith
ÄÄ "
(
ÄÄ" # 
CharacterUtilities
ÄÄ# 5
.
ÄÄ5 6
STRING_CHAR_POINT
ÄÄ6 G
)
ÄÄG H
||
ÄÄI K
part
ÅÅ 
.
ÅÅ 
EndsWith
ÅÅ  
(
ÅÅ  ! 
CharacterUtilities
ÅÅ! 3
.
ÅÅ3 4
STRING_CHAR_POINT
ÅÅ4 E
)
ÅÅE F
;
ÅÅF G
}
ÇÇ 	
public
ÑÑ 
static
ÑÑ 
bool
ÑÑ '
IsValidAccountPhoneNumber
ÑÑ 4
(
ÑÑ4 5
string
ÑÑ5 ;
phoneNumber
ÑÑ< G
)
ÑÑG H
{
ÖÖ 	
bool
ÜÜ  
isValidPhoneNumber
ÜÜ #
=
ÜÜ$ %
false
ÜÜ& +
;
ÜÜ+ ,
if
àà 
(
àà 
!
àà 
string
àà 
.
àà 
IsNullOrEmpty
àà %
(
àà% &
phoneNumber
àà& 1
)
àà1 2
&&
àà3 5
phoneNumber
àà6 A
.
ààA B
Length
ààB H
<=
ààI K
$num
ààL N
&&
ààO Q
phoneNumber
ààR ]
.
àà] ^
Length
àà^ d
>=
ààe g
$num
ààh i
)
àài j
{
ââ 
string
ää 
phoneNumberRegex
ää '
=
ää( )(
AccountValidationUtilities
ää* D
.
ääD E+
REGEX_PHONE_NUMBER_VALIDATION
ääE b
;
ääb c
try
çç 
{
éé  
isValidPhoneNumber
èè &
=
èè' (
Regex
èè) .
.
èè. /
IsMatch
èè/ 6
(
èè6 7
phoneNumber
èè7 B
,
èèB C
phoneNumberRegex
èèD T
,
èèT U
RegexOptions
èèV b
.
èèb c
None
èèc g
,
èèg h
TimeSpan
èèi q
.
èèq r
FromMillisecondsèèr Ç
(èèÇ É
$numèèÉ á
)èèá à
)èèà â
;èèâ ä
}
êê 
catch
ëë 
(
ëë (
RegexMatchTimeoutException
ëë 1
ex
ëë2 4
)
ëë4 5
{
íí 
Log
ìì 
.
ìì 
Error
ìì 
(
ìì 
ex
ìì  
,
ìì  !
ex
ìì" $
.
ìì$ %
Source
ìì% +
)
ìì+ ,
;
ìì, -
}
îî 
catch
ïï 
(
ïï 
	Exception
ïï  
ex
ïï! #
)
ïï# $
{
ññ 
Log
óó 
.
óó 
Error
óó 
(
óó 
ex
óó  
,
óó  !
ex
óó" $
.
óó$ %
Source
óó% +
)
óó+ ,
;
óó, -
}
òò 
}
ôô 
return
öö  
isValidPhoneNumber
öö %
;
öö% &
}
õõ 	
public
ùù 
static
ùù 
bool
ùù $
IsValidAccountPassword
ùù 1
(
ùù1 2
string
ùù2 8
password
ùù9 A
)
ùùA B
{
ûû 	
bool
üü 
isValidPassword
üü  
=
üü! "
false
üü# (
;
üü( )
if
°° 
(
°° 
!
°° 
string
°° 
.
°° 
IsNullOrEmpty
°° %
(
°°% &
password
°°& .
)
°°. /
&&
°°0 2
password
°°3 ;
.
°°; <
Length
°°< B
>=
°°C E(
AccountValidationUtilities
°°F `
.
°°` a!
PASSWORD_MIN_LENGTH
°°a t
&&
°°u w
password°°x Ä
.°°Ä Å
Length°°Å á
<=°°à ä*
AccountValidationUtilities°°ã •
.°°• ¶#
PASSWORD_MAX_LENGTH°°¶ π
)°°π ∫
{
¢¢ 
string
££ 
passwordRegex
££ $
=
££% &(
AccountValidationUtilities
££' A
.
££A B/
!REGEX_PASSWORD_ACCOUNT_VALIDATION
££B c
;
££c d
try
•• 
{
¶¶ 
isValidPassword
ßß #
=
ßß$ %
Regex
ßß& +
.
ßß+ ,
IsMatch
ßß, 3
(
ßß3 4
password
ßß4 <
,
ßß< =
passwordRegex
ßß> K
,
ßßK L
RegexOptions
ßßM Y
.
ßßY Z
None
ßßZ ^
,
ßß^ _
TimeSpan
ßß` h
.
ßßh i
FromMilliseconds
ßßi y
(
ßßy z
$num
ßßz ~
)
ßß~ 
)ßß Ä
;ßßÄ Å
}
®® 
catch
©© 
(
©© (
RegexMatchTimeoutException
©© 1
ex
©©2 4
)
©©4 5
{
™™ 
Log
´´ 
.
´´ 
Error
´´ 
(
´´ 
ex
´´  
,
´´  !
ex
´´" $
.
´´$ %
Source
´´% +
)
´´+ ,
;
´´, -
}
¨¨ 
catch
≠≠ 
(
≠≠ 
	Exception
≠≠ 
ex
≠≠  "
)
≠≠" #
{
ÆÆ 
Log
ØØ 
.
ØØ 
Error
ØØ 
(
ØØ 
ex
ØØ  
,
ØØ  !
ex
ØØ" $
.
ØØ$ %
Source
ØØ% +
)
ØØ+ ,
;
ØØ, -
}
∞∞ 
}
±± 
return
≥≥ 
isValidPassword
≥≥ "
;
≥≥" #
}
¥¥ 	
public
∂∂ 
static
∂∂ 
string
∂∂ &
GenerateVerificationCode
∂∂ 5
(
∂∂5 6
)
∂∂6 7
{
∑∑ 	
const
∏∏ 
string
∏∏ 
alphabet
∏∏ !
=
∏∏" #(
AccountValidationUtilities
∏∏$ >
.
∏∏> ?
ALPHABET_EN
∏∏? J
;
∏∏J K
StringBuilder
ππ 
verificationCode
ππ *
=
ππ+ ,
new
ππ- 0
StringBuilder
ππ1 >
(
ππ> ?
)
ππ? @
;
ππ@ A
using
ªª 
(
ªª #
RandomNumberGenerator
ªª (
randomNumber
ªª) 5
=
ªª6 7#
RandomNumberGenerator
ªª8 M
.
ªªM N
Create
ªªN T
(
ªªT U
)
ªªU V
)
ªªV W
{
ºº 
byte
ΩΩ 
[
ΩΩ 
]
ΩΩ  
arrayRandomNumbers
ΩΩ )
=
ΩΩ* +
new
ΩΩ, /
byte
ΩΩ0 4
[
ΩΩ4 5(
AccountValidationUtilities
ΩΩ5 O
.
ΩΩO P&
VERIFICATION_CODE_LENGTH
ΩΩP h
]
ΩΩh i
;
ΩΩi j
randomNumber
ææ 
.
ææ 
GetBytes
ææ %
(
ææ% & 
arrayRandomNumbers
ææ& 8
)
ææ8 9
;
ææ9 :
for
¿¿ 
(
¿¿ 
int
¿¿ 
i
¿¿ 
=
¿¿ 
$num
¿¿ 
;
¿¿ 
i
¿¿  
<
¿¿! "(
AccountValidationUtilities
¿¿# =
.
¿¿= >&
VERIFICATION_CODE_LENGTH
¿¿> V
;
¿¿V W
i
¿¿X Y
++
¿¿Y [
)
¿¿[ \
{
¡¡ 
verificationCode
¬¬ $
.
¬¬$ %
Append
¬¬% +
(
¬¬+ ,
alphabet
¬¬, 4
[
¬¬4 5 
arrayRandomNumbers
¬¬5 G
[
¬¬G H
i
¬¬H I
]
¬¬I J
%
¬¬K L
alphabet
¬¬M U
.
¬¬U V
Length
¬¬V \
]
¬¬\ ]
)
¬¬] ^
;
¬¬^ _
if
√√ 
(
√√ 
i
√√ 
<
√√ (
AccountValidationUtilities
√√ 6
.
√√6 7&
VERIFICATION_CODE_LENGTH
√√7 O
-
√√P Q
$num
√√R S
&&
√√T V
(
√√W X
i
√√X Y
+
√√Z [
$num
√√\ ]
)
√√] ^
%
√√_ `(
AccountValidationUtilities
√√a {
.
√√{ |-
VERIFICATION_CODE_PARTS_LENGTH√√| ö
==√√õ ù
$num√√û ü
)√√ü †
{
ƒƒ 
verificationCode
≈≈ (
.
≈≈( )
Append
≈≈) /
(
≈≈/ 0 
CharacterUtilities
≈≈0 B
.
≈≈B C
STRING_CHAR_DASH
≈≈C S
)
≈≈S T
;
≈≈T U
}
∆∆ 
}
«« 
}
»» 
return
…… 
verificationCode
…… #
.
……# $
ToString
……$ ,
(
……, -
)
……- .
;
……. /
}
   	
public
ÀÀ 
static
ÀÀ 
bool
ÀÀ 
IsValidLanguage
ÀÀ *
(
ÀÀ* +
string
ÀÀ+ 1
language
ÀÀ2 :
)
ÀÀ: ;
{
ÃÃ 	
return
ÕÕ 
!
ÕÕ 
string
ÕÕ 
.
ÕÕ 
IsNullOrEmpty
ÕÕ (
(
ÕÕ( )
language
ÕÕ) 1
)
ÕÕ1 2
;
ÕÕ2 3
}
ŒŒ 	
public
–– 
async
–– 
Task
–– 
<
––  
OperationResultDto
–– ,
>
––, -
IsVerifyAccount
––. =
(
––= >

AccountDto
––> H
accountClientDto
––I Y
)
––Y Z
{
—— 	
bool
““ 

isVerified
““ 
=
““ 
false
““ #
;
““# $
if
”” 
(
”” 
accountClientDto
””  
.
””  !
Token
””! &
!=
””' )
null
””* .
&&
””0 2
(
””3 4!
IsValidAccountEmail
””4 G
(
””G H
accountClientDto
””H X
.
””X Y
Email
””Y ^
)
””^ _
||
””` b'
IsValidAccountPhoneNumber
””c |
(
””| }
accountClientDto””} ç
.””ç é
PhoneNumber””é ô
)””ô ö
)””ö õ
)””õ ú
{
‘‘ 

isVerified
’’ 
=
’’ 
await
’’ "
repositoryManager
’’# 4
.
’’4 5
AccountRepository
’’5 F
.
’’F G'
ChangeStatusToVerifyAsync
÷÷ )
(
÷÷) *
accountClientDto
÷÷* :
.
÷÷: ;
PhoneNumber
÷÷; F
,
÷÷F G
accountClientDto
÷÷H X
.
÷÷X Y
Email
÷÷Y ^
,
÷÷^ _
accountClientDto
÷÷` p
.
÷÷p q
Token
÷÷q v
)
÷÷v w
;
÷÷w x
if
ÿÿ 
(
ÿÿ 

isVerified
ÿÿ 
)
ÿÿ 
{
ŸŸ 
await
⁄⁄ 
repositoryManager
⁄⁄ +
.
⁄⁄+ ,
	SaveAsync
⁄⁄, 5
(
⁄⁄5 6
)
⁄⁄6 7
;
⁄⁄7 8
return
€€ 
new
€€  
OperationResultDto
€€ 1
(
€€1 2

isVerified
€€2 <
,
€€< =
LanguageUtilities
€€> O
.
€€O P
MessageSuccess
€€P ^
(
€€^ _
accountClientDto
€€_ o
.
€€o p 
PreferredLanguage€€p Å
)€€Å Ç
)€€Ç É
;€€É Ñ
}
‹‹ 
}
›› 
return
ﬁﬁ 
new
ﬁﬁ  
OperationResultDto
ﬁﬁ )
(
ﬁﬁ) *
false
ﬁﬁ* /
,
ﬁﬁ/ 0
LanguageUtilities
ﬁﬁ1 B
.
ﬁﬁB C)
MessageDataBaseUnableToLoad
ﬁﬁC ^
(
ﬁﬁ^ _
accountClientDto
ﬁﬁ_ o
.
ﬁﬁo p 
PreferredLanguageﬁﬁp Å
)ﬁﬁÅ Ç
)ﬁﬁÇ É
;ﬁﬁÉ Ñ
}
ﬂﬂ 	
public
·· 
async
·· 
Task
·· 
<
·· 
bool
·· 
>
·· )
ResendVerificationCodeAsync
··  ;
(
··; <
string
··< B
emailOrPhone
··C O
)
··O P
{
‚‚ 	
Account
„„ 
accountRecord
„„ !
=
„„" #
null
„„$ (
;
„„( )
if
ÂÂ 
(
ÂÂ !
IsValidAccountEmail
ÂÂ #
(
ÂÂ# $
emailOrPhone
ÂÂ$ 0
)
ÂÂ0 1
)
ÂÂ1 2
{
ÊÊ 
accountRecord
ÁÁ 
=
ÁÁ 
await
ÁÁ  %
repositoryManager
ÁÁ& 7
.
ÁÁ7 8
AccountRepository
ÁÁ8 I
.
ÁÁI J%
FindAccountByEmailAsync
ÁÁJ a
(
ÁÁa b
emailOrPhone
ÁÁb n
)
ÁÁn o
;
ÁÁo p
}
ËË 
else
ÈÈ 
if
ÈÈ 
(
ÈÈ '
IsValidAccountPhoneNumber
ÈÈ .
(
ÈÈ. /
emailOrPhone
ÈÈ/ ;
)
ÈÈ; <
)
ÈÈ< =
{
ÍÍ 
accountRecord
ÎÎ 
=
ÎÎ 
await
ÎÎ  %
repositoryManager
ÎÎ& 7
.
ÎÎ7 8
AccountRepository
ÎÎ8 I
.
ÎÎI J%
FindAccountByPhoneAsync
ÎÎJ a
(
ÎÎa b
emailOrPhone
ÎÎb n
)
ÎÎn o
;
ÎÎo p
}
ÏÏ 
if
ÓÓ 
(
ÓÓ 
accountRecord
ÓÓ 
!=
ÓÓ  
null
ÓÓ! %
)
ÓÓ% &
{
ÔÔ 
return
 
await
 
HandleResendToken
 .
(
. /
accountRecord
/ <
.
< =
Id
= ?
)
? @
;
@ A
}
ÚÚ 
return
ÛÛ 
false
ÛÛ 
;
ÛÛ 
}
ÙÙ 	
public
ıı 
async
ıı 
Task
ıı "
SendverificationCode
ıı .
(
ıı. /
Account
ıı/ 6
accountRecord
ıı7 D
)
ııD E
{
ˆˆ 	
await
˜˜ '
SendEmailVerificationCode
˜˜ +
(
˜˜+ ,
accountRecord
˜˜, 9
)
˜˜9 :
;
˜˜: ;
await
¯¯ %
SendSmsVerificationCode
¯¯ )
(
¯¯) *
accountRecord
¯¯* 7
)
¯¯7 8
;
¯¯8 9
await
˘˘ *
SendTelegramVerificationCode
˘˘ .
(
˘˘. /
accountRecord
˘˘/ <
)
˘˘< =
;
˘˘= >
}
˙˙ 	
public
˚˚ 
async
˚˚ 
Task
˚˚ 
<
˚˚ 
bool
˚˚ 
>
˚˚ *
IsAccountRegisteredWithEmail
˚˚  <
(
˚˚< =
string
˚˚= C
email
˚˚D I
)
˚˚I J
{
¸¸ 	
if
˝˝ 
(
˝˝ 
!
˝˝ 
string
˝˝ 
.
˝˝ 
IsNullOrEmpty
˝˝ %
(
˝˝% &
email
˝˝& +
)
˝˝+ ,
)
˝˝, -
{
˛˛ 
return
ˇˇ 
await
ˇˇ 
repositoryManager
ˇˇ .
.
ˇˇ. /
AccountRepository
ˇˇ/ @
.
ˇˇ@ A/
!IsAccountRegisteredWithEmailAsync
ˇˇA b
(
ˇˇb c
email
ˇˇc h
)
ˇˇh i
;
ˇˇi j
}
ÄÄ 
return
ÅÅ 
false
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
bool
ÉÉ 
>
ÉÉ *
IsAccountRegisteredWithPhone
ÉÉ  <
(
ÉÉ< =
string
ÉÉ= C
phone
ÉÉD I
)
ÉÉI J
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
string
ÖÖ 
.
ÖÖ 
IsNullOrEmpty
ÖÖ $
(
ÖÖ$ %
phone
ÖÖ% *
)
ÖÖ* +
)
ÖÖ+ ,
{
ÜÜ 
return
áá 
await
áá 
repositoryManager
áá .
.
áá. /
AccountRepository
áá/ @
.
áá@ A/
!IsAccountRegisteredWithPhoneAsync
ááA b
(
ááb c
phone
áác h
)
ááh i
;
áái j
}
àà 
return
ââ 
false
ââ 
;
ââ 
}
ää 	
public
åå 
async
åå 
Task
åå 
<
åå 
bool
åå 
>
åå 
HandleResendToken
åå  1
(
åå1 2
int
åå2 5
idAccountClient
åå6 E
)
ååE F
{
çç 	
bool
éé 
isAccountFind
éé 
=
éé  
false
éé! &
;
éé& '
Account
èè 
accountRecord
èè !
=
èè" #
await
èè$ )
repositoryManager
èè* ;
.
èè; <
AccountRepository
èè< M
.
èèM N!
FindEntityByIdAsync
èèN a
(
èèa b
idAccountClient
èèb q
)
èèq r
;
èèr s
if
êê 
(
êê 
accountRecord
êê 
!=
êê  
null
êê! %
)
êê% &
{
ëë 
accountRecord
íí 
.
íí 
Token
íí #
=
íí$ %&
GenerateVerificationCode
íí& >
(
íí> ?
)
íí? @
;
íí@ A
accountRecord
ìì 
.
ìì 
	UpdatedAt
ìì '
=
ìì( )
DateTime
ìì* 2
.
ìì2 3
UtcNow
ìì3 9
;
ìì9 :
accountRecord
îî 
.
îî !
RecoveryTokenExpiry
îî 1
=
îî2 3
DateTime
îî4 <
.
îî< =
UtcNow
îî= C
;
îîC D
await
ïï 
repositoryManager
ïï '
.
ïï' (
	SaveAsync
ïï( 1
(
ïï1 2
)
ïï2 3
;
ïï3 4
_
ññ 
=
ññ 
Task
ññ 
.
ññ 
Run
ññ 
(
ññ 
async
ññ "
(
ññ# $
)
ññ$ %
=>
ññ& (
{
óó 
await
òò "
SendverificationCode
òò .
(
òò. /
accountRecord
òò/ <
)
òò< =
;
òò= >
}
ôô 
)
ôô 
;
ôô 
isAccountFind
öö 
=
öö 
true
öö  $
;
öö$ %
}
õõ 
return
úú 
isAccountFind
úú  
;
úú  !
}
ùù 	
public
ûû 
async
ûû 
Task
ûû 
<
ûû  
OperationResultDto
ûû ,
>
ûû, -A
3SendVerificationCodeToChangePasswordInDataBaseAsync
ûû. a
(
ûûa b

AccountDto
ûûb l
accountClientDto
ûûm }
)
ûû} ~
{
üü 	
if
†† 
(
†† $
IsValidAccountPassword
†† &
(
††& '
accountClientDto
††' 7
.
††7 8
Password
††8 @
)
††@ A
&&
††B D
accountClientDto
††E U
.
††U V
Id
††V X
!=
††Y [
null
††\ `
&&
°° 
await
°° 
HandleResendToken
°° *
(
°°* +
(
°°+ ,
int
°°, /
)
°°/ 0
accountClientDto
°°0 @
.
°°@ A
Id
°°A C
)
°°C D
)
°°D E
{
¢¢ 
return
££ 
new
££  
OperationResultDto
££ -
(
££- .
true
££. 2
,
££2 3
LanguageUtilities
££4 E
.
££E F
MessageSuccess
££F T
(
££T U
accountClientDto
££U e
.
££e f
PreferredLanguage
££f w
)
££w x
)
££x y
;
££y z
}
§§ 
return
•• 
new
••  
OperationResultDto
•• )
(
••) *
false
••* /
,
••/ 0
LanguageUtilities
••1 B
.
••B C%
MessageUnableToSaveData
••C Z
(
••Z [
accountClientDto
••[ k
.
••k l
PreferredLanguage
••l }
)
••} ~
)
••~ 
;•• Ä
}
¶¶ 	
public
®® 
async
®® 
Task
®® 
<
®® 
bool
®® 
>
®® 5
'CompareTokenServerAndTokenClientAndSave
®®  G
(
®®G H

AccountDto
®®H R
accountClientDto
®®S c
)
®®c d
{
©© 	
Account
´´ 
accountRecord
´´ !
=
´´" #
await
´´$ )
repositoryManager
´´* ;
.
´´; <
AccountRepository
´´< M
.
´´M N!
FindEntityByIdAsync
´´N a
(
´´a b
(
´´b c
int
´´c f
)
´´f g
accountClientDto
´´g w
.
´´w x
Id
´´x z
)
´´z {
;
´´{ |
if
≠≠ 
(
≠≠ 
accountRecord
≠≠ 
!=
≠≠  
null
≠≠! %
&&
≠≠& (
accountClientDto
≠≠) 9
.
≠≠9 :
Token
≠≠: ?
==
≠≠@ B
accountRecord
≠≠C P
.
≠≠P Q
Token
≠≠Q V
&&
≠≠W Y#
DiferenceBetweenDates
ÆÆ %
(
ÆÆ% &
(
ÆÆ& '
DateTime
ÆÆ' /
)
ÆÆ/ 0
accountRecord
ÆÆ0 =
.
ÆÆ= >!
RecoveryTokenExpiry
ÆÆ> Q
,
ÆÆQ R
accountClientDto
ÆÆS c
.
ÆÆc d
TokenExpiration
ÆÆd s
)
ÆÆs t
)
ÆÆt u
{
ØØ 
return
∞∞ 
true
∞∞ 
;
∞∞ 
}
±± 
return
≤≤ 
false
≤≤ 
;
≤≤ 
}
≥≥ 	
public
µµ 
static
µµ 
bool
µµ #
DiferenceBetweenDates
µµ 0
(
µµ0 1
DateTime
µµ1 9
dateTimeExpiricy
µµ: J
,
µµJ K
DateTime
µµL T
dateTimeClient
µµU c
)
µµc d
{
∂∂ 	
TimeSpan
∑∑ 
timeDifference
∑∑ #
=
∑∑$ %
dateTimeClient
∑∑& 4
-
∑∑5 6
dateTimeExpiricy
∑∑7 G
;
∑∑G H
return
∏∏ 
timeDifference
∏∏ !
.
∏∏! "

TotalHours
∏∏" ,
<=
∏∏- /(
AccountValidationUtilities
∏∏0 J
.
∏∏J K"
HOURS_MAX_DIFFERENCE
∏∏K _
;
∏∏_ `
}
ππ 	
public
ªª 
async
ªª 
Task
ªª 
<
ªª  
OperationResultDto
ªª ,
>
ªª, -+
ChangePasswordInDataBaseAsync
ªª. K
(
ªªK L

AccountDto
ªªL V
accountClientDto
ªªW g
)
ªªg h
{
ºº 	
if
ΩΩ 
(
ΩΩ 
await
ΩΩ 5
'CompareTokenServerAndTokenClientAndSave
ΩΩ <
(
ΩΩ< =
accountClientDto
ΩΩ= M
)
ΩΩM N
)
ΩΩN O
{
ææ 
await
øø 
SaveNewPassWord
øø %
(
øø% &
accountClientDto
øø& 6
)
øø6 7
;
øø7 8
return
¿¿ 
new
¿¿  
OperationResultDto
¿¿ -
(
¿¿- .
true
¿¿. 2
,
¿¿2 3
LanguageUtilities
¿¿4 E
.
¿¿E F
MessageSuccess
¿¿F T
(
¿¿T U
accountClientDto
¿¿U e
.
¿¿e f
PreferredLanguage
¿¿f w
)
¿¿w x
)
¿¿x y
;
¿¿y z
}
¡¡ 
return
¬¬ 
new
¬¬  
OperationResultDto
¬¬ )
(
¬¬) *
false
¬¬* /
,
¬¬/ 0
LanguageUtilities
¬¬1 B
.
¬¬B C%
MessageUnableToSaveData
¬¬C Z
(
¬¬Z [
accountClientDto
¬¬[ k
.
¬¬k l
PreferredLanguage
¬¬l }
)
¬¬} ~
)
¬¬~ 
;¬¬ Ä
}
√√ 	
public
≈≈ 
async
≈≈ 
Task
≈≈ 
SaveNewPassWord
≈≈ )
(
≈≈) *

AccountDto
≈≈* 4
accountClientDto
≈≈5 E
)
≈≈E F
{
∆∆ 	
Account
«« 
accountRecord
«« !
=
««" #
await
««$ )
repositoryManager
««* ;
.
««; <
AccountRepository
««< M
.
««M N!
FindEntityByIdAsync
««N a
(
««a b
(
««b c
int
««c f
)
««f g
accountClientDto
««g w
.
««w x
Id
««x z
)
««z {
;
««{ |
if
»» 
(
»» 
accountRecord
»» 
!=
»» 
null
»»  $
)
»»$ %
{
…… 
accountRecord
   
.
   
Salt
   "
=
  # $
PasswordUtilities
  % 6
.
  6 7
GetSaltPassword
  7 F
(
  F G
)
  G H
;
  H I
accountRecord
ÀÀ 
.
ÀÀ 
PasswordHash
ÀÀ *
=
ÀÀ+ ,
PasswordUtilities
ÀÀ- >
.
ÀÀ> ?
GetHashPassword
ÀÀ? N
(
ÀÀN O
accountClientDto
ÀÀO _
.
ÀÀ_ `
Password
ÀÀ` h
,
ÀÀh i
accountRecord
ÀÀj w
.
ÀÀw x
Salt
ÀÀx |
)
ÀÀ| }
;
ÀÀ} ~
await
ÃÃ 
repositoryManager
ÃÃ '
.
ÃÃ' (
	SaveAsync
ÃÃ( 1
(
ÃÃ1 2
)
ÃÃ2 3
;
ÃÃ3 4
}
ÕÕ 
}
ŒŒ 	
public
–– 
async
–– 
Task
–– 
<
–– 7
)OperationResultChangeRegisterEmailOrPhone
–– C
>
––C DE
7SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync
––E |
(
––| }

AccountDto––} á 
accountClientDto––à ò
)––ò ô
{
—— 	
if
““ 
(
““ !
IsValidAccountEmail
““ #
(
““# $
accountClientDto
““$ 4
.
““4 5
Email
““5 :
)
““: ;
||
““< >'
IsValidAccountPhoneNumber
““? X
(
““X Y
accountClientDto
““Y i
.
““i j
PhoneNumber
““j u
)
““u v
)
““v w
{
”” 
if
‘‘ 
(
‘‘ 
await
‘‘ *
IsAccountRegisteredWithEmail
‘‘ 5
(
‘‘5 6
accountClientDto
‘‘6 F
.
‘‘F G
Email
‘‘G L
)
‘‘L M
||
‘‘N P
await
‘‘Q V*
IsAccountRegisteredWithPhone
‘‘W s
(
‘‘s t
accountClientDto‘‘t Ñ
.‘‘Ñ Ö
PhoneNumber‘‘Ö ê
)‘‘ê ë
)‘‘ë í
{
’’ 
return
÷÷ 
new
÷÷ 7
)OperationResultChangeRegisterEmailOrPhone
÷÷ H
(
÷÷H I
false
÷÷I N
,
÷÷N O
LanguageUtilities
÷÷P a
.
÷÷a b%
MessageUnableToSaveData
÷÷b y
(
÷÷y z
accountClientDto÷÷z ä
.÷÷ä ã!
PreferredLanguage÷÷ã ú
)÷÷ú ù
,÷÷ù û'
EnumChangeAccountRegister
◊◊ 1
.
◊◊1 2
AlreadyExists
◊◊2 ?
)
◊◊? @
;
◊◊@ A
}
ÿÿ 
else
ÿÿ 
if
ÿÿ 
(
ÿÿ 
await
ÿÿ 
HandleResendToken
ÿÿ  1
(
ÿÿ1 2
(
ÿÿ2 3
int
ÿÿ3 6
)
ÿÿ6 7
accountClientDto
ÿÿ7 G
.
ÿÿG H
Id
ÿÿH J
)
ÿÿJ K
)
ÿÿK L
{
ŸŸ 
return
⁄⁄ 
new
⁄⁄ 7
)OperationResultChangeRegisterEmailOrPhone
⁄⁄ H
(
⁄⁄H I
true
⁄⁄I M
,
⁄⁄M N
LanguageUtilities
⁄⁄O `
.
⁄⁄` a
MessageSuccess
⁄⁄a o
(
⁄⁄o p
accountClientDto⁄⁄p Ä
.⁄⁄Ä Å!
PreferredLanguage⁄⁄Å í
)⁄⁄í ì
,⁄⁄ì î'
EnumChangeAccountRegister
€€ 1
.
€€1 2
Success
€€2 9
)
€€9 :
;
€€: ;
}
‹‹ 
}
›› 
return
ﬁﬁ 
new
ﬁﬁ 7
)OperationResultChangeRegisterEmailOrPhone
ﬁﬁ @
(
ﬁﬁ@ A
false
ﬁﬁA F
,
ﬁﬁF G
LanguageUtilities
ﬁﬁH Y
.
ﬁﬁY Z%
MessageUnableToSaveData
ﬁﬁZ q
(
ﬁﬁq r
accountClientDtoﬁﬁr Ç
.ﬁﬁÇ É!
PreferredLanguageﬁﬁÉ î
)ﬁﬁî ï
,ﬁﬁï ñ'
EnumChangeAccountRegister
ﬂﬂ -
.
ﬂﬂ- .
UnableToSaveData
ﬂﬂ. >
)
ﬂﬂ> ?
;
ﬂﬂ? @
}
‡‡ 	
public
‚‚ 
async
‚‚ 
Task
‚‚ 
<
‚‚ 7
)OperationResultChangeRegisterEmailOrPhone
‚‚ C
>
‚‚C D/
!ChangeEmailOrPhoneInDataBaseAsync
‚‚E f
(
‚‚f g

AccountDto
‚‚g q
accountClientDto‚‚r Ç
)‚‚Ç É
{
„„ 	
if
‰‰ 
(
‰‰ 
(
‰‰ !
IsValidAccountEmail
‰‰ $
(
‰‰$ %
accountClientDto
‰‰% 5
.
‰‰5 6
Email
‰‰6 ;
)
‰‰; <
||
‰‰= ?$
IsValidAccountPassword
‰‰@ V
(
‰‰V W
accountClientDto
‰‰W g
.
‰‰g h
Password
‰‰h p
)
‰‰p q
)
‰‰q r
&&
‰‰s u
(
ÂÂ 
!
ÂÂ 
await
ÂÂ *
IsAccountRegisteredWithEmail
ÂÂ 4
(
ÂÂ4 5
accountClientDto
ÂÂ5 E
.
ÂÂE F
Email
ÂÂF K
)
ÂÂK L
||
ÂÂM O
!
ÂÂP Q
await
ÂÂQ V*
IsAccountRegisteredWithPhone
ÂÂW s
(
ÂÂs t
accountClientDtoÂÂt Ñ
.ÂÂÑ Ö
PhoneNumberÂÂÖ ê
)ÂÂê ë
)ÂÂë í
&&
ÊÊ 
await
ÊÊ 5
'CompareTokenServerAndTokenClientAndSave
ÊÊ @
(
ÊÊ@ A
accountClientDto
ÊÊA Q
)
ÊÊQ R
)
ÊÊR S
{
ÁÁ 
await
ËË !
SaveNewEmailOrPhone
ËË )
(
ËË) *
accountClientDto
ËË* :
)
ËË: ;
;
ËË; <
return
ÈÈ 
new
ÈÈ 7
)OperationResultChangeRegisterEmailOrPhone
ÈÈ D
(
ÈÈD E
true
ÈÈE I
,
ÈÈI J
LanguageUtilities
ÈÈK \
.
ÈÈ\ ]
MessageSuccess
ÈÈ] k
(
ÈÈk l
accountClientDto
ÈÈl |
.
ÈÈ| } 
PreferredLanguageÈÈ} é
)ÈÈé è
,ÈÈè ê'
EnumChangeAccountRegister
ÍÍ -
.
ÍÍ- .
Success
ÍÍ. 5
)
ÍÍ5 6
;
ÍÍ6 7
}
ÎÎ 
return
ÌÌ 
new
ÌÌ 7
)OperationResultChangeRegisterEmailOrPhone
ÌÌ @
(
ÌÌ@ A
false
ÌÌA F
,
ÌÌF G
LanguageUtilities
ÌÌH Y
.
ÌÌY Z%
MessageUnableToSaveData
ÌÌZ q
(
ÌÌq r
accountClientDtoÌÌr Ç
.ÌÌÇ É!
PreferredLanguageÌÌÉ î
)ÌÌî ï
,ÌÌï ñ'
EnumChangeAccountRegister
ÓÓ )
.
ÓÓ) *
UnableToSaveData
ÓÓ* :
)
ÓÓ: ;
;
ÓÓ; <
}
ÔÔ 	
public
 
async
 
Task
 
<
 
bool
 
>
 !
SaveNewEmailOrPhone
  3
(
3 4

AccountDto
4 >
accountClientDto
? O
)
O P
{
ÒÒ 	
bool
ÚÚ 
isSuccessChanged
ÚÚ !
=
ÚÚ" #
false
ÚÚ$ )
;
ÚÚ) *
Account
ÛÛ 
accountRecord
ÛÛ !
=
ÛÛ" #
await
ÛÛ$ )
repositoryManager
ÛÛ* ;
.
ÛÛ; <
AccountRepository
ÛÛ< M
.
ÛÛM N!
FindEntityByIdAsync
ÛÛN a
(
ÛÛa b
(
ÛÛb c
int
ÛÛc f
)
ÛÛf g
accountClientDto
ÛÛg w
.
ÛÛw x
Id
ÛÛx z
)
ÛÛz {
;
ÛÛ{ |
if
ıı 
(
ıı 
accountRecord
ıı 
!=
ıı 
null
ıı  $
)
ıı$ %
{
ˆˆ 
if
˜˜ 
(
˜˜ 
!
˜˜ 
string
˜˜ 
.
˜˜ 
IsNullOrEmpty
˜˜ )
(
˜˜) *
accountClientDto
˜˜* :
.
˜˜: ;
Email
˜˜; @
)
˜˜@ A
)
˜˜A B
{
¯¯ 
accountRecord
˘˘ !
.
˘˘! "
Email
˘˘" '
=
˘˘( )
accountClientDto
˘˘* :
.
˘˘: ;
Email
˘˘; @
;
˘˘@ A
isSuccessChanged
˙˙ $
=
˙˙% &
true
˙˙' +
;
˙˙+ ,
}
˚˚ 
else
¸¸ 
if
¸¸ 
(
¸¸ 
!
¸¸ 
string
¸¸  
.
¸¸  !
IsNullOrEmpty
¸¸! .
(
¸¸. /
accountClientDto
¸¸/ ?
.
¸¸? @
PhoneNumber
¸¸@ K
)
¸¸K L
)
¸¸L M
{
˝˝ 
accountRecord
˛˛ !
.
˛˛! "
PhoneNumber
˛˛" -
=
˛˛. /
accountClientDto
˛˛0 @
.
˛˛@ A
PhoneNumber
˛˛A L
;
˛˛L M
isSuccessChanged
ˇˇ $
=
ˇˇ% &
true
ˇˇ' +
;
ˇˇ+ ,
}
ÄÄ 
await
ÅÅ 
repositoryManager
ÅÅ '
.
ÅÅ' (
	SaveAsync
ÅÅ( 1
(
ÅÅ1 2
)
ÅÅ2 3
;
ÅÅ3 4
}
ÇÇ 
return
ÑÑ 
isSuccessChanged
ÑÑ #
;
ÑÑ# $
}
ÖÖ 	
public
áá 
async
áá 
Task
áá 
<
áá '
OperationResultAccountDto
áá 3
>
áá3 44
&ConsultAccountProfileServiceInDataBase
áá5 [
(
áá[ \

ProfileDto
áá\ f
profileClientDto
áág w
)
ááw x
{
àà 	

AccountDto
ââ 
accountServerDto
ââ '
=
ââ( )
await
ââ* /*
GetProfileAccountInformation
ââ0 L
(
ââL M
(
ââM N
int
ââN Q
)
ââQ R
profileClientDto
ââR b
.
ââb c
Id
ââc e
)
ââe f
;
ââf g
if
ãã 
(
ãã 
accountServerDto
ãã 
!=
ãã  "
null
ãã# '
)
ãã' (
{
åå 
return
çç 
new
çç '
OperationResultAccountDto
çç 4
(
çç4 5
true
çç5 9
,
çç9 :
LanguageUtilities
çç; L
.
ççL M
MessageSuccess
ççM [
(
çç[ \
profileClientDto
çç\ l
.
ççl m
PreferredLanguage
ççm ~
)
çç~ 
,çç Ä 
accountServerDtoççÅ ë
)ççë í
;ççí ì
}
éé 
return
èè 
new
èè '
OperationResultAccountDto
èè 0
(
èè0 1
false
èè1 6
,
èè6 7
LanguageUtilities
èè8 I
.
èèI J)
MessageDataBaseUnableToLoad
èèJ e
(
èèe f
profileClientDto
èèf v
.
èèv w 
PreferredLanguageèèw à
)èèà â
,èèâ ä 
accountServerDtoèèã õ
)èèõ ú
;èèú ù
}
êê 	
public
íí 
async
íí 
Task
íí 
<
íí 

AccountDto
íí $
>
íí$ %*
GetProfileAccountInformation
íí& B
(
ííB C
int
ííC F
	idProfile
ííG P
)
ííP Q
{
ìì 	
Account
îî 
accountRecord
îî !
=
îî" #
await
îî$ )
repositoryManager
îî* ;
.
îî; <
AccountRepository
îî< M
.
îîM N!
FindEntityByIdAsync
îîN a
(
îîa b
	idProfile
îîb k
)
îîk l
;
îîl m

AccountDto
ïï 
accountServerDto
ïï '
=
ïï( )
null
ïï* .
;
ïï. /
if
óó 
(
óó 
accountRecord
óó 
!=
óó 
null
óó  $
)
óó$ %
{
òò 
accountServerDto
ôô  
=
ôô! "
new
ôô# &

AccountDto
ôô' 1
(
ôô1 2
)
ôô2 3
;
ôô3 4
accountServerDto
öö  
.
öö  !
Email
öö! &
=
öö' (
accountRecord
öö) 6
.
öö6 7
Email
öö7 <
;
öö< =
accountServerDto
õõ  
.
õõ  !
PhoneNumber
õõ! ,
=
õõ- .
accountRecord
õõ/ <
.
õõ< =
PhoneNumber
õõ= H
;
õõH I
}
úú 
return
ûû 
accountServerDto
ûû #
;
ûû# $
}
üü 	
public
°° 
async
°° 
Task
°° %
SendInviteGameToFriends
°° 1
(
°°1 2
Account
°°2 9
accountRecord
°°: G
,
°°G H
string
°°I O
	accessKey
°°P Y
)
°°Y Z
{
¢¢ 	
await
££ !
SendGameCodeByEmail
££ %
(
££% &
accountRecord
££& 3
,
££3 4
	accessKey
££5 >
)
££> ?
;
££? @
await
§§ !
SendGameCodeToPhone
§§ %
(
§§% &
accountRecord
§§& 3
,
§§3 4
	accessKey
§§5 >
)
§§> ?
;
§§? @
await
•• $
SendGameCodeToTelegram
•• (
(
••( )
accountRecord
••) 6
,
••6 7
	accessKey
••8 A
)
••A B
;
••B C
}
¶¶ 	
public
®® 
async
®® 
Task
®® !
SendGameCodeByEmail
®® -
(
®®- .
Account
®®. 5
accountRecord
®®6 C
,
®®C D
string
®®E K
	accessKey
®®L U
)
®®U V
{
©© 	
if
™™ 
(
™™ 
!
™™ 
string
™™ 
.
™™ 
IsNullOrEmpty
™™ $
(
™™$ %
accountRecord
™™% 2
.
™™2 3
Email
™™3 8
)
™™8 9
&&
™™: <
!
™™= >
string
™™> D
.
™™D E
IsNullOrEmpty
™™E R
(
™™R S
	accessKey
™™S \
)
™™\ ]
)
™™] ^
{
´´ 
await
¨¨ 
serviceManager
¨¨ $
.
¨¨$ %
EmailService
¨¨% 1
.
¨¨1 2#
SendGameCodeToFriends
¨¨2 G
(
¨¨G H
accountRecord
¨¨H U
,
¨¨U V
	accessKey
¨¨W `
)
¨¨` a
;
¨¨a b
}
≠≠ 
}
ÆÆ 	
public
ØØ 
async
ØØ 
Task
ØØ !
SendGameCodeToPhone
ØØ -
(
ØØ- .
Account
ØØ. 5
accountRecord
ØØ6 C
,
ØØC D
string
ØØE K
	accessKey
ØØL U
)
ØØU V
{
∞∞ 	
if
±± 
(
±± 
!
±± 
string
±± 
.
±± 
IsNullOrEmpty
±± %
(
±±% &
accountRecord
±±& 3
.
±±3 4
PhoneNumber
±±4 ?
)
±±? @
&&
±±A C
!
±±D E
string
±±E K
.
±±K L
IsNullOrEmpty
±±L Y
(
±±Y Z
	accessKey
±±Z c
)
±±c d
)
±±d e
{
≤≤ 
await
≥≥ 
serviceManager
≥≥ $
.
≥≥$ %

SmsService
≥≥% /
.
≥≥/ 0
SendSmsAsync
≥≥0 <
(
≥≥< =
accountRecord
≥≥= J
.
≥≥J K
PhoneNumber
≥≥K V
,
≥≥V W
	accessKey
≥≥X a
)
≥≥a b
;
≥≥b c
}
¥¥ 
}
µµ 	
public
∂∂ 
async
∂∂ 
Task
∂∂ $
SendGameCodeToTelegram
∂∂ 0
(
∂∂0 1
Account
∂∂1 8
accountRecord
∂∂9 F
,
∂∂F G
string
∂∂H N
	accessKey
∂∂O X
)
∂∂X Y
{
∑∑ 	
if
∏∏ 
(
∏∏ 
!
∏∏ 
string
∏∏ 
.
∏∏ 
IsNullOrEmpty
∏∏ %
(
∏∏% &
accountRecord
∏∏& 3
.
∏∏3 4
PhoneNumber
∏∏4 ?
)
∏∏? @
&&
∏∏A C
!
∏∏D E
string
∏∏E K
.
∏∏K L
IsNullOrEmpty
∏∏L Y
(
∏∏Y Z
	accessKey
∏∏Z c
)
∏∏c d
)
∏∏d e
{
ππ 
await
∫∫ 
serviceManager
∫∫ $
.
∫∫$ %
TelegramService
∫∫% 4
.
∫∫4 5
SendMessageAsync
∫∫5 E
(
∫∫E F
accountRecord
∫∫F S
.
∫∫S T
PhoneNumber
∫∫T _
,
∫∫_ `
	accessKey
∫∫a j
)
∫∫j k
;
∫∫k l
}
ªª 
}
ºº 	
public
ææ 
async
ææ 
Task
ææ 
<
ææ 
bool
ææ 
>
ææ 0
"NeedHelpProblemWithEmailInDataBase
ææ  B
(
ææB C
string
ææC I
email
ææJ O
)
ææO P
{
øø 	
bool
¿¿ 
isFreeEmail
¿¿ 
=
¿¿ 
false
¿¿ $
;
¿¿$ %
if
¬¬ 
(
¬¬ !
IsValidAccountEmail
¬¬ #
(
¬¬# $
email
¬¬$ )
)
¬¬) *
)
¬¬* +
{
√√ 
isFreeEmail
ƒƒ 
=
ƒƒ 
await
ƒƒ #
repositoryManager
ƒƒ$ 5
.
ƒƒ5 6
AccountRepository
ƒƒ6 G
.
ƒƒG H*
LiberateEmailForFreeUseAsync
ƒƒH d
(
ƒƒd e
email
ƒƒe j
)
ƒƒj k
;
ƒƒk l
}
≈≈ 
return
«« 
isFreeEmail
«« 
;
«« 
}
»» 	
public
   
async
   
Task
   
<
   
bool
   
>
   3
%NeedHelpProblemWithPasswordInDataBase
    E
(
  E F
string
  F L
email
  M R
)
  R S
{
ÀÀ 	
if
ÃÃ 
(
ÃÃ !
IsValidAccountEmail
ÃÃ #
(
ÃÃ# $
email
ÃÃ$ )
)
ÃÃ) *
)
ÃÃ* +
{
ÕÕ 
Account
ŒŒ 
accountRecord
ŒŒ $
=
ŒŒ% &
await
ŒŒ' ,
repositoryManager
ŒŒ- >
.
ŒŒ> ?
AccountRepository
ŒŒ? P
.
ŒŒP Q%
FindAccountByEmailAsync
ŒŒQ h
(
ŒŒh i
email
ŒŒi n
)
ŒŒn o
;
ŒŒo p
if
œœ 
(
œœ 
accountRecord
œœ !
!=
œœ" $
null
œœ% )
)
œœ) *
{
–– 
await
—— 
HandleResendToken
—— +
(
——+ ,
accountRecord
——, 9
.
——9 :
Id
——: <
)
——< =
;
——= >
return
““ 
true
““ 
;
““  
}
”” 
}
‘‘ 
return
’’ 
false
’’ 
;
’’ 
}
÷÷ 	
public
ÿÿ 
async
ÿÿ 
Task
ÿÿ 
<
ÿÿ 
bool
ÿÿ 
>
ÿÿ ,
ChangeForgotPasswordInDataBase
ÿÿ  >
(
ÿÿ> ?
string
ÿÿ? E
email
ÿÿF K
,
ÿÿK L
string
ÿÿM S
newPassword
ÿÿT _
,
ÿÿ_ `
string
ÿÿa g
token
ÿÿh m
)
ÿÿm n
{
ŸŸ 	
if
⁄⁄ 
(
⁄⁄ !
IsValidAccountEmail
⁄⁄ #
(
⁄⁄# $
email
⁄⁄$ )
)
⁄⁄) *
&&
⁄⁄+ -$
IsValidAccountPassword
⁄⁄. D
(
⁄⁄D E
newPassword
⁄⁄E P
)
⁄⁄P Q
)
⁄⁄Q R
{
€€ 
Account
‹‹ 
accountRecord
‹‹ %
=
‹‹& '
await
‹‹( -
repositoryManager
‹‹. ?
.
‹‹? @
AccountRepository
‹‹@ Q
.
‹‹Q R%
FindAccountByEmailAsync
‹‹R i
(
‹‹i j
email
‹‹j o
)
‹‹o p
;
‹‹p q
if
ﬁﬁ 
(
ﬁﬁ 
accountRecord
ﬁﬁ !
!=
ﬁﬁ" $
null
ﬁﬁ% )
&&
ﬁﬁ* ,
accountRecord
ﬁﬁ- :
.
ﬁﬁ: ;
Token
ﬁﬁ; @
==
ﬁﬁA C
token
ﬁﬁD I
)
ﬁﬁI J
{
ﬂﬂ 
accountRecord
‡‡ !
.
‡‡! "
Salt
‡‡" &
=
‡‡' (
PasswordUtilities
‡‡) :
.
‡‡: ;
GetSaltPassword
‡‡; J
(
‡‡J K
)
‡‡K L
;
‡‡L M
accountRecord
·· !
.
··! "
PasswordHash
··" .
=
··/ 0
PasswordUtilities
··1 B
.
··B C
GetHashPassword
··C R
(
··R S
newPassword
··S ^
,
··^ _
accountRecord
··` m
.
··m n
Salt
··n r
)
··r s
;
··s t
await
‚‚ 
repositoryManager
‚‚ +
.
‚‚+ ,
	SaveAsync
‚‚, 5
(
‚‚5 6
)
‚‚6 7
;
‚‚7 8
return
„„ 
true
„„ 
;
„„  
}
‰‰ 
}
ÊÊ 
return
ÁÁ 
false
ÁÁ 
;
ÁÁ 
}
ËË 	
}
ÈÈ 
}ÍÍ ˙
OC:\Users\gearh\source\repos\CatanServer\CatanService\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str '
)' (
]( )
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str )
)) *
]* +
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *∞	
TC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\ServicesUriUtilities.cs
	namespace 	
CatanService
 
. 
Helpers 
{ 
public		 

static		 
class		  
ServicesUriUtilities		 ,
{

 
public 
const 
string %
URI_GAMESERVICE_DIRECTION 5
=6 7
$str8 c
;c d
public 
const 
string (
URI_ACCOUNTSERVICE_DIRECTION 8
=9 :
$str; i
;i j
public 
const 
string %
URI_CHATSERVICE_DIRECTION 5
=6 7
$str8 c
;c d
public 
const 
string (
URI_PROFILESERVICE_DIRECTION 8
=9 :
$str; i
;i j
public 
const 
string -
!URI_GUESTACCOUNTSERVICE_DIRECTION =
=> ?
$str@ l
;l m
public 
const 
string 
URI_SERVICE_EMPTY -
=. /
$str0 C
;C D
} 
} €U
RC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\ServiceHostManager.cs
	namespace 	
CatanService
 
. 
Helpers 
{ 
public 

class 
ServiceHostManager #
:$ %
IDisposable& 1
{ 
private 
readonly 
List 
< 
ServiceHostBase -
>- .
serviceHostList/ >
;> ?
private 
bool 
disposed 
= 
false  %
;% &
public 
ServiceHostManager !
(! "
)" #
{ 	
serviceHostList 
= 
new !
List" &
<& '
ServiceHostBase' 6
>6 7
(7 8
)8 9
;9 :
} 	
public 
List 
< 
string 
> 
StartAllServices ,
(, -
)- .
{ 	
List 
< 
string 
> !
servicesUriConnection .
=/ 0
new1 4
List5 9
<9 :
string: @
>@ A
(A B
)B C
;C D)
AutofacDependencyConfigurator )
.) *
ConfigureContainer* <
(< =
)= >
;> ?!
servicesUriConnection !
.! "
Add" %
(% &
StartService& 2
(2 3 
ServicesUriUtilities3 G
.G H(
URI_ACCOUNTSERVICE_DIRECTIONH d
,d e
typeoff l
(l m#
AccountServiceEndPoint	m É
)
É Ñ
)
Ñ Ö
)
Ö Ü
;
Ü á!
servicesUriConnection   !
.  ! "
Add  " %
(  % &
StartService  & 2
(  2 3 
ServicesUriUtilities  3 G
.  G H%
URI_GAMESERVICE_DIRECTION  H a
,  a b
typeof  c i
(  i j
GameServiceEndpoint  j }
)  } ~
)  ~ 
)	   Ä
;
  Ä Å!
servicesUriConnection!! !
.!!! "
Add!!" %
(!!% &
StartService!!& 2
(!!2 3 
ServicesUriUtilities!!3 G
.!!G H%
URI_CHATSERVICE_DIRECTION!!H a
,!!a b
typeof!!c i
(!!i j
ChatServiceEndpoint!!j }
)!!} ~
)!!~ 
)	!! Ä
;
!!Ä Å!
servicesUriConnection"" !
.""! "
Add""" %
(""% &
StartService""& 2
(""2 3 
ServicesUriUtilities""3 G
.""G H(
URI_PROFILESERVICE_DIRECTION""H d
,""d e
typeof""f l
(""l m#
ProfileServiceEndpoint	""m É
)
""É Ñ
)
""Ñ Ö
)
""Ö Ü
;
""Ü á!
servicesUriConnection## !
.##! "
Add##" %
(##% &
StartService##& 2
(##2 3 
ServicesUriUtilities##3 G
.##G H-
!URI_GUESTACCOUNTSERVICE_DIRECTION##H i
,##i j
typeof##k q
(##q r!
GuestAccountEndpoint	##r Ü
)
##Ü á
)
##á à
)
##à â
;
##â ä
return%% !
servicesUriConnection%% (
;%%( )
}&& 	
private'' 
static'' 
string'' #
GetServiceUriFromConfig'' 5
(''5 6
string''6 <
endpointName''= I
)''I J
{(( 	
Configuration)) 
	appConfig)) #
=))$ % 
ConfigurationManager))& :
.)): ; 
OpenExeConfiguration)); O
())O P"
ConfigurationUserLevel))P f
.))f g
None))g k
)))k l
;))l m$
ServiceModelSectionGroup** $$
serviceModelSectionGroup**% =
=**> ?$
ServiceModelSectionGroup**@ X
.**X Y
GetSectionGroup**Y h
(**h i
	appConfig**i r
)**r s
;**s t
if,, 
(,, $
serviceModelSectionGroup,, (
!=,,) +
null,,, 0
),,0 1
{-- 
ServiceElement.. 
serviceElement.. -
=... /$
serviceModelSectionGroup..0 H
...H I
Services..I Q
...Q R
Services..R Z
...Z [
OfType..[ a
<..a b
ServiceElement..b p
>..p q
(..q r
)..r s
...s t
FirstOrDefault	..t Ç
(
..Ç É
service
..É ä
=>
..ã ç
service
..é ï
.
..ï ñ
Name
..ñ ö
==
..õ ù
endpointName
..û ™
)
..™ ´
;
..´ ¨
if00 
(00 
serviceElement00 "
!=00# %
null00& *
)00* +
{11 
foreach22 
(22 "
ServiceEndpointElement22 3
endpoint224 <
in22= ?
serviceElement22@ N
.22N O
	Endpoints22O X
)22X Y
{33 
if44 
(44 
!44 
string44 #
.44# $
IsNullOrEmpty44$ 1
(441 2
endpoint442 :
.44: ;
Address44; B
.44B C
ToString44C K
(44K L
)44L M
)44M N
)44N O
{55 
return66 "
endpoint66# +
.66+ ,
Address66, 3
.663 4
ToString664 <
(66< =
)66= >
;66> ?
}77 
}88 
}99 
}:: 
return;; 
string;; 
.;; 
Empty;; 
;;;  
}<< 	
private== 
string== 
StartService== #
(==# $
string==$ *
uriServiceAddress==+ <
,==< =
Type==> B
serviceEndpoin==C Q
)==Q R
{>> 	
string?? 

serviceUri?? 
=?? #
GetServiceUriFromConfig??  7
(??7 8
uriServiceAddress??8 I
)??I J
;??J K
ifAA 
(AA 
!AA 
stringAA 
.AA 
IsNullOrEmptyAA %
(AA% &

serviceUriAA& 0
)AA0 1
)AA1 2
{BB 
tryCC 
{DD 
ServiceHostBaseEE #
serviceHostEE$ /
=EE0 1
newEE2 5%
AutofacServiceHostFactoryEE6 O
(EEO P
)EEP Q
.EEQ R
CreateServiceHostEER c
(EEc d
serviceEndpoinFF &
.FF& '!
AssemblyQualifiedNameFF' <
,FF< =
newFF> A
UriFFB E
[FFE F
]FFF G
{FFH I
newFFJ M
UriFFN Q
(FFQ R

serviceUriFFR \
)FF\ ]
}FF^ _
)FF_ `
;FF` a
serviceHostListHH #
.HH# $
AddHH$ '
(HH' (
serviceHostHH( 3
)HH3 4
;HH4 5
serviceHostII 
.II  
OpenII  $
(II$ %
)II% &
;II& '
}JJ 
catchKK 
(KK 
UriFormatExceptionKK )
exKK* ,
)KK, -
{LL 
LogMM 
.MM 
ErrorMM 
(MM 
exMM  
,MM  !
exMM" $
.MM$ %
SourceMM% +
)MM+ ,
;MM, -
}NN 
catchOO 
(OO "
CommunicationExceptionOO -
exOO. 0
)OO0 1
{PP 
LogQQ 
.QQ 
ErrorQQ 
(QQ 
exQQ  
,QQ  !
exQQ" $
.QQ$ %
SourceQQ% +
)QQ+ ,
;QQ, -
}RR 
catchSS 
(SS 
	ExceptionSS  
exSS! #
)SS# $
{TT 
LogUU 
.UU 
ErrorUU 
(UU 
exUU  
,UU  !
exUU" $
.UU$ %
SourceUU% +
)UU+ ,
;UU, -
}VV 
}WW 
returnYY 

serviceUriYY 
;YY 
}ZZ 	
public[[ 
static[[ 
bool[[ 
IsServiceOpen[[ (
([[( )
ServiceHostBase[[) 8
host[[9 =
)[[= >
{\\ 	
return]] 
host]] 
.]] 
State]] 
!=]]  
CommunicationState]]! 3
.]]3 4
Closed]]4 :
&&]]; =
host]]> B
.]]B C
State]]C H
!=]]I K
CommunicationState]]L ^
.]]^ _
Closing]]_ f
;]]f g
}^^ 	
private__ 
void__ 
StopAllServices__ $
(__$ %
)__% &
{`` 	
foreachaa 
(aa 
ServiceHostBaseaa $
hostaa% )
inaa* ,
serviceHostListaa- <
)aa< =
{bb 
trycc 
{dd 
ifee 
(ee 
IsServiceOpenee %
(ee% &
hostee& *
)ee* +
)ee+ ,
continueee- 5
;ee5 6
hostff 
.ff 
Closeff 
(ff 
)ff  
;ff  !
}gg 
catchhh 
(hh "
CommunicationExceptionhh -
exhh. 0
)hh0 1
{ii 
LoggerUtilitiesjj #
.jj# $
LogAndAbortHostjj$ 3
(jj3 4
hostjj4 8
,jj8 9
exjj: <
)jj< =
;jj= >
}kk 
catchll 
(ll 
TimeoutExceptionll '
exll( *
)ll* +
{mm 
LoggerUtilitiesnn #
.nn# $
LogAndAbortHostnn$ 3
(nn3 4
hostnn4 8
,nn8 9
exnn: <
)nn< =
;nn= >
}oo 
catchpp 
(pp 
	Exceptionpp  
expp! #
)pp# $
{qq 
LoggerUtilitiesrr #
.rr# $
LogAndAbortHostrr$ 3
(rr3 4
hostrr4 8
,rr8 9
exrr: <
)rr< =
;rr= >
}ss 
}tt 
}uu 	
	protectedww 
virtualww 
voidww 
Disposeww &
(ww& '
boolww' +
	disposingww, 5
)ww5 6
{xx 	
ifyy 
(yy 
!yy 
disposedyy 
)yy 
{zz 
if{{ 
({{ 
	disposing{{ 
){{ 
{|| 
StopAllServices}} #
(}}# $
)}}$ %
;}}% &
}~~ 
disposed 
= 
true 
;  
}
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ 
Dispose
ÉÉ 
(
ÉÉ 
)
ÉÉ 
{
ÑÑ 	
Dispose
ÖÖ 
(
ÖÖ 
true
ÖÖ 
)
ÖÖ 
;
ÖÖ 
GC
ÜÜ 
.
ÜÜ 
SuppressFinalize
ÜÜ 
(
ÜÜ  
this
ÜÜ  $
)
ÜÜ$ %
;
ÜÜ% &
}
áá 	
}
àà 
}ââ ©
PC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\ProfileUtilities.cs
	namespace 	
CatanService
 
. 
Helpers 
{ 
public		 

static		 
class		 
ProfileUtilities		 (
{

 
public 
const 
string !
PICTURE_EXTENSION_PNG 1
=2 3
$str4 :
;: ;
public 
const 
string !
PICTURE_EXTENSION_JPG 1
=2 3
$str4 :
;: ;
public 
const 
int 
PICTURE_MAX_SIZE )
=* +
$num, -
*. /
$num0 4
*5 6
$num7 ;
;; <
public 
const 
string "
PICTURE_FILE_DIRECTORY 2
=3 4
$str5 F
;F G
} 
} Ü@
QC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\LanguageUtilities.cs
	namespace

 	
CatanService


 
.

 
Helpers

 
{ 
public 

static 
class 
LanguageUtilities )
{ 
public 
const 
string (
LANGUAGE_ENGLISH_FORMAT_RESX 8
=9 :
$str; ?
;? @
public 
const 
string )
LANGUAGE_ESPANISH_FORMAT_RESX 9
=: ;
$str< @
;@ A
public 
static 
string '
MessageDataBaseUnableToLoad 8
(8 9
string9 ?
language@ H
,H I
	ExceptionJ S
exT V
)V W
{ 	
Log 
. 
Error 
( 
ex 
. 
ToString !
(! "
)" #
)# $
;$ %
return 
	Resources 
. 
ResourceManager ,
., -
	GetString- 6
(6 7
$str7 W
,W X
newY \
CultureInfo] h
(h i
languagei q
)q r
)r s
;s t
} 	
public 
static 
string '
MessageDataBaseUnableToLoad 8
(8 9
string9 ?
language@ H
)H I
{ 	
return 
	Resources 
. 
ResourceManager ,
., -
	GetString- 6
(6 7
$str7 W
,W X
newY \
CultureInfo] h
(h i
languagei q
)q r
)r s
;s t
} 	
public 
static 
string +
MessageDataBaseSuccessFullySave <
(< =
string= C
languageD L
)L M
{ 	
return 
	Resources 
. 
ResourceManager ,
., -
	GetString- 6
(6 7
$str7 U
,U V
newW Z
CultureInfo[ f
(f g
languageg o
)o p
)p q
;q r
} 	
public 
static 
string )
MessageUnableToFindInDataBase :
(: ;
string; A
languageB J
)J K
{ 	
return 
	Resources 
. 
ResourceManager ,
., -
	GetString- 6
(6 7
$str7 W
,W X
newY \
CultureInfo] h
(h i
languagei q
)q r
)r s
;s t
}   	
public!! 
static!! 
string!! "
MessageInvalidUsername!! 3
(!!3 4
string!!4 :
language!!; C
)!!C D
{"" 	
return## 
	Resources## 
.## 
ResourceManager## ,
.##, -
	GetString##- 6
(##6 7
$str##7 [
,##[ \
new##] `
CultureInfo##a l
(##l m
language##m u
)##u v
)##v w
;##w x
}$$ 	
public%% 
static%% 
string%% '
MessageServerLostConnection%% 8
(%%8 9
string%%9 ?
language%%@ H
)%%H I
{&& 	
return'' 
	Resources'' 
.'' 
ResourceManager'' ,
.'', -
	GetString''- 6
(''6 7
$str''7 [
,''[ \
new''] `
CultureInfo''a l
(''l m
language''m u
)''u v
)''v w
;''w x
}(( 	
public)) 
static)) 
string)) 
MessageTokenSubject)) 0
())0 1
string))1 7
language))8 @
)))@ A
{** 	
return++ 
	Resources++ 
.++ 
ResourceManager++ ,
.++, -
	GetString++- 6
(++6 7
$str++7 R
,++R S
new++T W
CultureInfo++X c
(++c d
language++d l
)++l m
)++m n
;++n o
},, 	
public-- 
static-- 
string-- (
MessageSubjectCodeAccessGame-- 9
(--9 :
string--: @
language--A I
)--I J
{.. 	
return// 
	Resources// 
.// 
ResourceManager// ,
.//, -
	GetString//- 6
(//6 7
$str//7 Z
,//Z [
new//\ _
CultureInfo//` k
(//k l
language//l t
)//t u
)//u v
;//v w
}00 	
public11 
static11 
string11 
MessageCode11 (
(11( )
string11) /
language110 8
)118 9
{22 	
return33 
	Resources33 
.33 
ResourceManager33 ,
.33, -
	GetString33- 6
(336 7
$str337 Z
,33Z [
new33\ _
CultureInfo33` k
(33k l
language33l t
)33t u
)33u v
;33v w
}44 	
public55 
static55 
string55 
MessageSuccess55 +
(55+ ,
string55, 2
language553 ;
)55; <
{66 	
return77 
	Resources77 
.77 
ResourceManager77 ,
.77, -
	GetString77- 6
(776 7
$str777 G
,77G H
new77I L
CultureInfo77M X
(77X Y
language77Y a
)77a b
)77b c
;77c d
}88 	
public99 
static99 
string99 #
MessageUnableToSaveData99 4
(994 5
string995 ;
language99< D
)99D E
{:: 	
return;; 
	Resources;; 
.;; 
ResourceManager;; ,
.;;, -
	GetString;;- 6
(;;6 7
$str;;7 W
,;;W X
new;;Y \
CultureInfo;;] h
(;;h i
language;;i q
);;q r
);;r s
;;;s t
}<< 	
public== 
static== 
string== $
GetAPITelegramMessageURI== 5
(==5 6
string==6 <
chatId=== C
,==C D
string==E K
message==L S
)==S T
{>> 	
return?? 
$"?? 
$str?? )
{??) *
chatId??* 0
}??0 1
$str??1 7
{??7 8
Uri??8 ;
.??; <
EscapeDataString??< L
(??L M
message??M T
)??T U
}??U V
"??V W
;??W X
}@@ 	
publicAA 
staticAA 
stringAA ,
 GetBaseAddressServiceTelegramBotAA =
(AA= >
stringAA> D
tokenAAE J
)AAJ K
{BB 	
returnCC 
$"CC 
$strCC 1
{CC1 2
tokenCC2 7
}CC7 8
$strCC8 9
"CC9 :
;CC: ;
}DD 	
publicFF 
staticFF 
stringFF $
MessageJoinChatNewPlayerFF 5
(FF5 6
stringFF6 <
languageFF= E
)FFE F
{GG 	
returnHH 
	ResourcesHH 
.HH 
ResourceManagerHH ,
.HH, -
	GetStringHH- 6
(HH6 7
$strHH7 J
,HHJ K
newHHL O
CultureInfoHHP [
(HH[ \
languageHH\ d
)HHd e
)HHe f
;HHf g
}II 	
publicKK 
staticKK 
stringKK 
MessageExpelPlayerKK /
(KK/ 0
stringKK0 6
languageKK7 ?
)KK? @
{LL 	
returnMM 
	ResourcesMM 
.MM 
ResourceManagerMM ,
.MM, -
	GetStringMM- 6
(MM6 7
$strMM7 9
,MM9 :
newMM; >
CultureInfoMM? J
(MMJ K
languageMMK S
)MMS T
)MMT U
;MMU V
}NN 	
}OO 
}PP Ö
OC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\LoggerUtilities.cs
	namespace

 	
CatanService


 
.

 
Helpers

 
{ 
public 

static 
class 
LoggerUtilities '
{ 
public 
const 
string !
LOGGER_FILE_DIRECTORY 1
=2 3
$str4 X
;X Y
public 
const 
string 
LOGGER_START_INFO -
=. /
$str0 7
;7 8
public 
static 
void 
LogAndAbortHost *
(* +
ServiceHostBase+ :
host; ?
,? @
	ExceptionA J
exK M
)M N
{ 	
Log 
. 
Error 
( 
ex 
, 
ex 
. 
Source #
)# $
;$ %
host 
. 
Abort 
( 
) 
; 
} 	
public 
static 
void !
LogErrorCustomMessage 0
(0 1
	Exception1 :
ex; =
,= >
string? E
messageF M
)M N
{ 	
Log 
. 
Error 
( 
ex 
. 
Message  
,  !
message" )
)) *
;* +
} 	
public 
static 
void !
LogCustomFatalMessage 0
(0 1
	Exception1 :
ex; =
,= >
string? E
messageF M
)M N
{ 	
Log 
. 
Fatal 
( 
ex 
. 
Message  
,  !
message" )
)) *
;* +
} 	
public 
static 
void 
configureLogger *
(* +
)+ ,
{ 	
Log 
. 
Logger 
= 
new 
LoggerConfiguration 0
(0 1
)1 2
.   
MinimumLevel   
.   
Debug   #
(  # $
)  $ %
.!! 
WriteTo!! 
.!! 
Console!!  
(!!  !
)!!! "
."" 
WriteTo"" 
."" 
File"" 
("" !
LOGGER_FILE_DIRECTORY"" 3
,""3 4
rollingInterval""5 D
:""D E
RollingInterval""F U
.""U V
Infinite""V ^
)""^ _
.## 
CreateLogger## 
(## 
)## 
;##  
}$$ 	
}%% 
}&& ∫L
MC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\GameplayRules.cs
	namespace 	
CatanService
 
. 
Helpers 
{ 
public 

static 
class 
GameplayRules %
{ 
public 
static 
bool 
CanUpgradeToCity +
(+ ,
	VertexDto, 5
vertex6 <
,< =
int> A
playerIdB J
)J K
{ 	
return 
vertex 
. 

IsOccupied $
&&% '
vertex( .
.. /
OwnerPlayerId/ <
=== ?
playerId@ H
&&I K
!L M
vertexM S
.S T
IsCityT Z
;Z [
} 	
public 
static 
void ,
 GenerateVerticesAndEdgesForHexes ;
(; <
List< @
<@ A

HexTileDtoA K
>K L
hexTilesM U
)U V
{ 	
int 
vertexIdCounter 
=  !
$num" #
;# $
int 
edgeIdCounter 
= 
$num  !
;! "
foreach 
( 
var 
hex 
in 
hexTiles  (
)( )
{ "
GenerateVerticesForHex &
(& '
hex' *
,* +
ref, /
vertexIdCounter0 ?
)? @
;@ A
GenerateEdgesForHex #
(# $
hex$ '
,' (
ref) ,
edgeIdCounter- :
): ;
;; <
}   
}!! 	
private## 
static## 
void## "
GenerateVerticesForHex## 2
(##2 3

HexTileDto##3 =
hex##> A
,##A B
ref##C F
int##G J
vertexIdCounter##K Z
)##Z [
{$$ 	
for%% 
(%% 
int%% 
i%% 
=%% 
$num%% 
;%% 
i%% 
<%% 
GameplayUtilities%%  1
.%%1 2
NUMBER_OF_VERTICES%%2 D
;%%D E
i%%F G
++%%G I
)%%I J
{&& 
if'' 
('' 
hex'' 
.'' 
Vertices''  
.''  !
Count''! &
<=''' )
i''* +
)''+ ,
{(( 
	VertexDto)) 
vertex)) $
=))% &
CreateVertex))' 3
())3 4
vertexIdCounter))4 C
++))C E
,))E F
hex))G J
.))J K
Id))K M
)))M N
;))N O
hex** 
.** 
Vertices**  
.**  !
Add**! $
(**$ %
vertex**% +
)**+ ,
;**, -
}++ 
},, 
}-- 	
private// 
static// 
void// 
GenerateEdgesForHex// /
(/// 0

HexTileDto//0 :
hex//; >
,//> ?
ref//@ C
int//D G
edgeIdCounter//H U
)//U V
{00 	
for11 
(11 
int11 
i11 
=11 
$num11 
;11 
i11 
<11 
GameplayUtilities11  1
.111 2
NUMBER_OF_EDGES112 A
;11A B
i11C D
++11D F
)11F G
{22 
int33 
startVertexIndex33 $
=33% &
i33' (
;33( )
int44 
endVertexIndex44 "
=44# $
(44% &
i44& '
+44( )
$num44* +
)44+ ,
%44- .
GameplayUtilities44/ @
.44@ A
NUMBER_OF_VERTICES44A S
;44S T
if66 
(66 
hex66 
.66 
Edges66 
.66 
Count66 #
<=66$ &
i66' (
)66( )
{77 
EdgeDto88 
edge88  
=88! "

CreateEdge88# -
(88- .
edgeIdCounter88. ;
++88; =
,88= >
hex88? B
.88B C
Id88C E
,88E F
startVertexIndex88G W
,88W X
endVertexIndex88Y g
,88g h
hex88i l
)88l m
;88m n
hex99 
.99 
Edges99 
.99 
Add99 !
(99! "
edge99" &
)99& '
;99' (
}:: 
};; 
}<< 	
private>> 
static>> 
	VertexDto>>  
CreateVertex>>! -
(>>- .
int>>. 1
vertexId>>2 :
,>>: ;
int>>< ?
hexId>>@ E
)>>E F
{?? 	
return@@ 
new@@ 
	VertexDto@@  
{AA 
IdBB 
=BB 
vertexIdBB 
,BB 
ConnectedHexesCC 
=CC  
newCC! $
ListCC% )
<CC) *
intCC* -
>CC- .
{CC/ 0
hexIdCC1 6
}CC7 8
}DD 
;DD 
}EE 	
privateGG 
staticGG 
EdgeDtoGG 

CreateEdgeGG )
(GG) *
intGG* -
edgeIdGG. 4
,GG4 5
intGG6 9
hexIdGG: ?
,GG? @
intGGA D
startVertexIndexGGE U
,GGU V
intGGW Z
endVertexIndexGG[ i
,GGi j

HexTileDtoGGk u
hexGGv y
)GGy z
{HH 	
EdgeDtoII 
edgeII 
=II 
newII 
EdgeDtoII &
{JJ 
IdKK 
=KK 
edgeIdKK 
,KK 
ConnectedHexesLL 
=LL  
newLL! $
ListLL% )
<LL) *
intLL* -
>LL- .
{LL/ 0
hexIdLL1 6
}LL7 8
,LL8 9
ConnectedEdgesMM 
=MM  
newMM! $
ListMM% )
<MM) *
intMM* -
>MM- .
(MM. /
)MM/ 0
,MM0 1
}NN 
;NN 
varPP 
startVertexPP 
=PP 
hexPP !
.PP! "
VerticesPP" *
[PP* +
startVertexIndexPP+ ;
]PP; <
;PP< =
varQQ 
	endVertexQQ 
=QQ 
hexQQ 
.QQ  
VerticesQQ  (
[QQ( )
endVertexIndexQQ) 7
]QQ7 8
;QQ8 9
startVertexSS 
.SS 
ConnectedEdgesSS &
.SS& '
AddSS' *
(SS* +
edgeSS+ /
.SS/ 0
IdSS0 2
)SS2 3
;SS3 4
	endVertexTT 
.TT 
ConnectedEdgesTT $
.TT$ %
AddTT% (
(TT( )
edgeTT) -
.TT- .
IdTT. 0
)TT0 1
;TT1 2
returnVV 
edgeVV 
;VV 
}WW 	
publicZZ 
staticZZ 
voidZZ *
ConnectVerticesWithManualRulesZZ 9
(ZZ9 :
ListZZ: >
<ZZ> ?

HexTileDtoZZ? I
>ZZI J
hexTilesZZK S
)ZZS T
{[[ 	

Dictionary\\ 
<\\ 
int\\ 
,\\ 
List\\  
<\\  !
int\\! $
>\\$ %
>\\% &
vertexConnections\\' 8
=\\9 :
GameplayUtilities\\; L
.\\L M
GET_MAP_HEXTILES\\M ]
(\\] ^
)\\^ _
;\\_ `
foreach^^ 
(^^ 

HexTileDto^^ 
hex^^  #
in^^$ &
hexTiles^^' /
)^^/ 0
{__ 
foreach`` 
(`` 
	VertexDto`` "
vertex``# )
in``* ,
hex``- 0
.``0 1
Vertices``1 9
)``9 :
{aa 
ifbb 
(bb 
vertexConnectionsbb )
.bb) *
ContainsKeybb* 5
(bb5 6
vertexbb6 <
.bb< =
Idbb= ?
)bb? @
)bb@ A
{cc 
Listdd 
<dd 
intdd  
>dd  !
connectedHexIdsdd" 1
=dd2 3
vertexConnectionsdd4 E
[ddE F
vertexddF L
.ddL M
IdddM O
]ddO P
;ddP Q
foreachee 
(ee  !
varee! $
hexIdee% *
inee+ -
connectedHexIdsee. =
)ee= >
{ff 

HexTileDtogg &
adjacentHexgg' 2
=gg3 4
hexTilesgg5 =
.gg= >
FirstOrDefaultgg> L
(ggL M
hggM N
=>ggO Q
hggR S
.ggS T
IdggT V
==ggW Y
hexIdggZ _
)gg_ `
;gg` a
ifhh 
(hh  
adjacentHexhh  +
!=hh, .
nullhh/ 3
&&hh4 6
!hh7 8
vertexhh8 >
.hh> ?
ConnectedHexeshh? M
.hhM N
ContainshhN V
(hhV W
adjacentHexhhW b
.hhb c
Idhhc e
)hhe f
)hhf g
{ii 
vertexjj  &
.jj& '
ConnectedHexesjj' 5
.jj5 6
Addjj6 9
(jj9 :
adjacentHexjj: E
.jjE F
IdjjF H
)jjH I
;jjI J
}kk 
}ll 
}mm 
elsenn 
{oo 
ifpp 
(pp 
!pp 
vertexpp #
.pp# $
ConnectedHexespp$ 2
.pp2 3
Containspp3 ;
(pp; <
hexpp< ?
.pp? @
Idpp@ B
)ppB C
)ppC D
{qq 
vertexrr "
.rr" #
ConnectedHexesrr# 1
.rr1 2
Addrr2 5
(rr5 6
hexrr6 9
.rr9 :
Idrr: <
)rr< =
;rr= >
}ss 
}tt 
}uu 
}vv 
}ww 	
}xx 
}zz 
YC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\DataTransferObjectFactory.cs
	namespace 	
CatanService
 
. 
Helpers 
{		 
public

 

static

 
class

 %
DataTransferObjectFactory

 1
{ 
public 
static 
GameDto 
CreateEmptyGameDto 0
(0 1
)1 2
{ 	
GameDto 
gameServerDto !
=" #
new$ '
GameDto( /
(/ 0
)0 1
;1 2
gameServerDto 
. 
Name 
=  
$str! #
;# $
gameServerDto 
. 
Id 
= 
$num  
;  !
gameServerDto 
. 
MaxNumberPlayers *
=+ ,
$num- .
;. /
gameServerDto 
. 
	AccessKey #
=$ %
$str& (
;( )
return 
gameServerDto  
;  !
} 	
public 
static 

ProfileDto  !
CreateEmptyProfileDto! 6
(6 7
)7 8
{ 	

ProfileDto 
profileServerDto '
=( )
new* -

ProfileDto. 8
(8 9
)9 :
;: ;
profileServerDto 
. 
Id 
=  !
$num" #
;# $
profileServerDto 
. 
PreferredLanguage .
=/ 0
$str1 3
;3 4
profileServerDto 
. 
Name !
=" #
$str$ &
;& '
return 
profileServerDto #
;# $
} 	
public!! 
static!! 

AccountDto!!  !
CreateEmptyAccountDto!!! 6
(!!6 7
)!!7 8
{"" 	

AccountDto## 
accountServerDto## '
=##( )
new##* -

AccountDto##. 8
(##8 9
)##9 :
;##: ;
accountServerDto$$ 
.$$ 
Id$$ 
=$$  !
$num$$" #
;$$# $
accountServerDto%% 
.%% 
Email%% "
=%%# $
$str%%% '
;%%' (
accountServerDto&& 
.&& 
Password&& %
=&&& '
$str&&( *
;&&* +
accountServerDto'' 
.'' 
PhoneNumber'' (
='') *
$str''+ -
;''- .
accountServerDto(( 
.(( 
PreferredLanguage(( .
=((/ 0
$str((1 3
;((3 4
accountServerDto)) 
.)) 
Token)) "
=))# $
$str))% '
;))' (
return,, 
accountServerDto,, #
;,,# $
}-- 	
}.. 
}// ê
]C:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\AutofacDependencyConfigurator.cs
	namespace 	
CatanService
 
. 
Helpers 
{ 
public 

class )
AutofacDependencyConfigurator .
:/ 0%
AutofacServiceHostFactory1 J
{ 
public 
static 
void 
ConfigureContainer -
(- .
). /
{ 	
try 
{ 
ContainerBuilder  
builder! (
=) *
new+ .
ContainerBuilder/ ?
(? @
)@ A
;A B
builder 
. 
RegisterType $
<$ %
CatanDBContext% 3
>3 4
(4 5
)5 6
.6 7
As7 9
<9 :
	DbContext: C
>C D
(D E
)E F
.F G!
InstancePerDependencyG \
(\ ]
)] ^
;^ _
builder 
. 
RegisterType $
<$ %
RepositoryManager% 6
>6 7
(7 8
)8 9
.9 :
As: <
<< =
IRepositoryManager= O
>O P
(P Q
)Q R
.R S$
InstancePerLifetimeScopeS k
(k l
)l m
;m n
builder 
. 
RegisterType $
<$ %
ServiceManager% 3
>3 4
(4 5
)5 6
.6 7
As7 9
<9 :
IServiceManager: I
>I J
(J K
)K L
.L M$
InstancePerLifetimeScopeM e
(e f
)f g
;g h
builder 
. 
RegisterType $
<$ %"
AccountServiceEndPoint% ;
>; <
(< =
)= >
.> ?
AsSelf? E
(E F
)F G
.G H$
InstancePerLifetimeScopeH `
(` a
)a b
;b c
builder 
. 
RegisterType $
<$ %"
ProfileServiceEndpoint% ;
>; <
(< =
)= >
.> ?
AsSelf? E
(E F
)F G
.G H$
InstancePerLifetimeScopeH `
(` a
)a b
;b c
builder 
. 
RegisterType $
<$ % 
GuestAccountEndpoint% 9
>9 :
(: ;
); <
.< =
AsSelf= C
(C D
)D E
.E F$
InstancePerLifetimeScopeF ^
(^ _
)_ `
;` a
builder!! 
.!! 
RegisterType!! $
<!!$ %
ChatServiceEndpoint!!% 8
>!!8 9
(!!9 :
)!!: ;
.!!; <
AsSelf!!< B
(!!B C
)!!C D
.!!D E
SingleInstance!!E S
(!!S T
)!!T U
;!!U V
builder## 
.## 
RegisterType## $
<##$ %
GameServiceEndpoint##% 8
>##8 9
(##9 :
)##: ;
.##; <
AsSelf##< B
(##B C
)##C D
.##D E
SingleInstance##E S
(##S T
)##T U
;##U V

IContainer%% 
	container%% $
=%%% &
builder%%' .
.%%. /
Build%%/ 4
(%%4 5
)%%5 6
;%%6 7
AutofacHostFactory'' "
.''" #
	Container''# ,
=''- .
	container''/ 8
;''8 9
}(( 
catch)) 
()) 
	Exception)) 
ex)) 
)))  
{** 
Log++ 
.++ 
Error++ 
(++ 
ex++ 
,++ 
ex++  
.++  !
Source++! '
)++' (
;++( )
},, 
}-- 	
}.. 
}// µ
SC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\ApiServiceUtilities.cs
	namespace 	
CatanService
 
. 
Helpers 
{ 
public		 

static		 
class		 
ApiServiceUtilities		 +
{

 
public 
const 
string 
SMTP_CLIENT_HOST ,
=- .
$str/ ?
;? @
public 
const 
string '
SMTP_CLIENT_ENVIROMENT_NAME 7
=8 9
$str: J
;J K
public 
const 
string +
SMTP_CLIENT_ENVIROMENT_PASSWORD ;
=< =
$str> N
;N O
public 
const 
string  
TWILIO_ENVIROMENT_ID 0
=1 2
$str3 G
;G H
public 
const 
string #
TWILIO_ENVIROMENT_TOKEN 3
=4 5
$str6 I
;I J
public 
const 
string 
TWILIO_PHONE_NUMBER /
=0 1
$str2 G
;G H
public 
const 
int 
SMTP_CLIENT_PORT )
=* +
$num, /
;/ 0
public 
const 
int  
SMTP_CLIENT_TIME_OUT -
=. /
$num0 5
;5 6
public 
const 
string 
BOT_TELEGRAM_TOKEN .
=/ 0
$str1 E
;E F
} 
} √
ZC:\Users\gearh\source\repos\CatanServer\CatanService\Helpers\AccountValidationUtilities.cs
	namespace 	
CatanService
 
. 
Helpers 
{ 
public		 

static		 
class		 &
AccountValidationUtilities		 2
{

 
public 
const 
string 
REGEX_DOUBLE_POINTS /
=0 1
$str2 ;
;; <
public 
const 
string )
REGEX_PROFILE_NAME_VALIDATION 9
=: ;
$str< `
;` a
public 
const 
string *
REGEX_PROFILE_EMAIL_VALIDATION :
=; <
$str= {
;{ |
public 
const 
string )
REGEX_PHONE_NUMBER_VALIDATION 9
=: ;
$str< I
;I J
public 
const 
string -
!REGEX_PASSWORD_ACCOUNT_VALIDATION =
=> ?
$str	@ ë
;
ë í
public 
const 
int 
PASSWORD_MIN_LENGTH ,
=- .
$num/ 0
;0 1
public 
const 
int 
PASSWORD_MAX_LENGTH ,
=- .
$num/ 1
;1 2
public 
const 
int 
USERNAME_MIN_LENGTH ,
=- .
$num/ 0
;0 1
public 
const 
int 
USERNAME_MAX_LENGTH ,
=- .
$num/ 1
;1 2
public 
const 
int %
TOKEN_VERIFY_ACCOUNT_SIZE 2
=3 4
$num5 7
;7 8
public 
const 
string 
ALPHABET_EN '
=( )
$str* F
;F G
public 
const 
int *
VERIFICATION_CODE_PARTS_LENGTH 7
=8 9
$num: ;
;; <
public 
const 
int $
VERIFICATION_CODE_LENGTH 1
=2 3
$num4 5
;5 6
public 
const 
string $
GUEST_USER_RESERVED_NAME 4
=5 6
$str7 =
;= >
public 
const 
int  
HOURS_MAX_DIFFERENCE -
=. /
$num0 1
;1 2
public 
const 
int 
ACCESS_KEY_LENGTH *
=+ ,
$num- .
;. /
public 
const 
int  
PICTURE_MINIMUN_SIZE -
=. /
$num0 1
;1 2
public 
const 
int 
ACCOUNT_ID_DEFAULT +
=, -
$num. /
;/ 0
} 
} ˘â
hC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\ProfileEndpoints\ProfileServiceEndpoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
public 

class "
ProfileServiceEndpoint '
:( )#
IProfileServiceEndpoint* A
{ 
private 
readonly 
IServiceManager (
serviceManager) 7
;7 8
public "
ProfileServiceEndpoint %
(% &
IServiceManager& 5
serviceManager6 D
)D E
{ 	
this 
. 
serviceManager 
=  !
serviceManager" 0
;0 1
} 	
public 
async 
Task 
< 
bool 
> $
AcceptFriendRequestAsync  8
(8 9
string9 ?
nameFriendToAccept@ R
,R S

ProfileDtoT ^
profileClientDto_ o
)o p
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
nameFriendToAccept& 8
)8 9
&&: <
profileClientDto= M
!=N P
nullQ U
&& 
await 
serviceManager '
.' (
ProfileService( 6
.6 7
IsOnline7 ?
(? @
(@ A
intA D
)D E
profileClientDtoE U
.U V
IdV X
,X Y
profileClientDtoZ j
.j k
CurrentSessionIDk {
){ |
)| }
{ 
return 
await 
serviceManager +
.+ ,
ProfileService, :
.: ;.
"AcceptFriendRequestInDataBaseAsync; ]
(] ^
nameFriendToAccept^ p
,p q
profileClientDto	r Ç
)
Ç É
;
É Ñ
}   
return"" 
false"" 
;"" 
}## 	
public%% 
async%% 
Task%% 
<%% %
OperationResultProfileDto%% 3
>%%3 4
ChangeProfileName%%5 F
(%%F G

ProfileDto%%G Q
profileClientDto%%R b
)%%b c
{&& 	
if'' 
('' 
profileClientDto'' 
!=''  "
null''# '
&&''( *
!''+ ,
profileClientDto'', <
.''< =
Name''= A
.''A B

StartsWith''B L
(''L M&
AccountValidationUtilities''M g
.''g h%
GUEST_USER_RESERVED_NAME	''h Ä
)
''Ä Å
&&(( 
await(( 
serviceManager(( '
.((' (
ProfileService((( 6
.((6 7
IsOnline((7 ?
(((? @
(((@ A
int((A D
)((D E
profileClientDto((E U
.((U V
Id((V X
,((X Y
profileClientDto((Z j
.((j k
CurrentSessionID((k {
)(({ |
)((| }
{)) 
return** 
await** 
serviceManager** +
.**+ ,
ProfileService**, :
.**: ;,
 ChangeProfileNameInDataBaseAsync**; [
(**[ \
profileClientDto**\ l
)**l m
;**m n
}++ 
return-- 
new-- %
OperationResultProfileDto-- 0
(--0 1
false--1 6
,--6 7
LanguageUtilities--8 I
.--I J#
MessageUnableToSaveData--J a
(--a b
LanguageUtilities--b s
.--s t)
LANGUAGE_ENGLISH_FORMAT_RESX	--t ê
)
--ê ë
,
--ë í%
EnumChangeAccountRegister.. )
...) *
UnableToSaveData..* :
)..: ;
;..; <
}// 	
public11 
async11 
Task11 
<11 
bool11 
>11 
DeleteFriendProfile11  3
(113 4
string114 :

friendName11; E
,11E F

ProfileDto11G Q
profileClientDto11R b
)11b c
{22 	
if33 
(33 
!33 
string33 
.33 
IsNullOrEmpty33 %
(33% &

friendName33& 0
)330 1
&&332 4
profileClientDto335 E
!=33F H
null33I M
&&44 
await44 
serviceManager44 '
.44' (
ProfileService44( 6
.446 7
IsOnline447 ?
(44? @
(44@ A
int44A D
)44D E
profileClientDto44E U
.44U V
Id44V X
,44X Y
profileClientDto44Z j
.44j k
CurrentSessionID44k {
)44{ |
)44| }
{55 
return66 
await66 
serviceManager66 +
.66+ ,
ProfileService66, :
.66: ;.
"DeleteFriendProfileInDataBaseAsync66; ]
(66] ^

friendName66^ h
,66h i
profileClientDto66j z
)66z {
;66{ |
}77 
return88 
false88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; )
OperationResultProfileListDto;; 7
>;;7 8
GetFriendsListAsync;;9 L
(;;L M

ProfileDto;;M W
profileClientDto;;X h
);;h i
{<< 	
if== 
(== 
profileClientDto==  
!===! #
null==$ (
&&==) +
profileClientDto==, <
.==< =
Id=== ?
!===@ B
null==C G
&&>> 
await>> 
serviceManager>> '
.>>' (
ProfileService>>( 6
.>>6 7
IsOnline>>7 ?
(>>? @
(>>@ A
int>>A D
)>>D E
profileClientDto>>E U
.>>U V
Id>>V X
,>>X Y
profileClientDto>>Z j
.>>j k
CurrentSessionID>>k {
)>>{ |
)>>| }
{?? 
return@@ 
await@@ 
serviceManager@@ +
.@@+ ,
ProfileService@@, :
.@@: ;)
GetFriendsListInDataBaseAsync@@; X
(@@X Y
profileClientDto@@Y i
)@@i j
;@@j k
}AA 
returnBB 
newBB )
OperationResultProfileListDtoBB 4
(BB4 5
falseBB5 :
,BB: ;
LanguageUtilitiesBB< M
.BBM N#
MessageUnableToSaveDataBBN e
(BBe f
LanguageUtilitiesBBf w
.BBw x)
LANGUAGE_ENGLISH_FORMAT_RESX	BBx î
)
BBî ï
)
BBï ñ
;
BBñ ó
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE %
OperationResultPictureDtoEE 3
>EE3 4"
GetFriendsPictureAsyncEE5 K
(EEK L

ProfileDtoEEL V
profileFriendDtoEEW g
,EEg h
stringEEi o
preferredLanguage	EEp Å
)
EEÅ Ç
{FF 	
ifGG 
(GG 
profileFriendDtoGG  
!=GG! #
nullGG$ (
&&GG) +
profileFriendDtoGG, <
.GG< =
IdGG= ?
!=GG@ B
nullGGC G
)GGG H
{HH 
returnII 
awaitII 
serviceManagerII +
.II+ ,
ProfileServiceII, :
.II: ;+
GetFriendPictureInDataBaseAsyncII; Z
(IIZ [
profileFriendDtoII[ k
,IIk l
preferredLanguageIIm ~
)II~ 
;	II Ä
}JJ 
returnKK 
newKK %
OperationResultPictureDtoKK 0
(KK0 1
falseKK1 6
,KK6 7
LanguageUtilitiesKK8 I
.KKI J#
MessageUnableToSaveDataKKJ a
(KKa b
LanguageUtilitiesKKb s
.KKs t)
LANGUAGE_ENGLISH_FORMAT_RESX	KKt ê
)
KKê ë
)
KKë í
;
KKí ì
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN )
OperationResultProfileListDtoNN 7
>NN7 8$
GetPendingFriendRequestsNN9 Q
(NNQ R

ProfileDtoNNR \
profileClientDtoNN] m
)NNm n
{OO 	
ifPP 
(PP 
profileClientDtoPP  
!=PP! #
nullPP$ (
&&PP) +
profileClientDtoPP, <
.PP< =
IdPP= ?
!=PP@ B
nullPPC G
&&QQ 
awaitQQ 
serviceManagerQQ '
.QQ' (
ProfileServiceQQ( 6
.QQ6 7
IsOnlineQQ7 ?
(QQ? @
(QQ@ A
intQQA D
)QQD E
profileClientDtoQQE U
.QQU V
IdQQV X
,QQX Y
profileClientDtoQQZ j
.QQj k
CurrentSessionIDQQk {
)QQ{ |
)QQ| }
{RR 
returnSS 
awaitSS 
serviceManagerSS +
.SS+ ,
ProfileServiceSS, :
.SS: ;3
'GetPendingFriendRequestsInDataBaseAsyncSS; b
(SSb c
profileClientDtoSSc s
)SSs t
;SSt u
}TT 
returnVV 
newVV )
OperationResultProfileListDtoVV 4
(VV4 5
falseVV5 :
,VV: ;
LanguageUtilitiesVV< M
.VVM N#
MessageUnableToSaveDataVVN e
(VVe f
LanguageUtilitiesVVf w
.VVw x)
LANGUAGE_ENGLISH_FORMAT_RESX	VVx î
)
VVî ï
)
VVï ñ
;
VVñ ó
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY %
OperationResultPictureDtoYY 3
>YY3 4"
GetProfilePictureAsyncYY5 K
(YYK L

ProfileDtoYYL V
profileClientDtoYYW g
)YYg h
{ZZ 	
if[[ 
([[ 
profileClientDto[[ 
!=[[  "
null[[# '
&&[[( *
profileClientDto[[+ ;
.[[; <
Id[[< >
!=[[? A
null[[B F
&&\\ 
await\\ 
serviceManager\\ '
.\\' (
ProfileService\\( 6
.\\6 7
IsOnline\\7 ?
(\\? @
(\\@ A
int\\A D
)\\D E
profileClientDto\\E U
.\\U V
Id\\V X
,\\X Y
profileClientDto\\Z j
.\\j k
CurrentSessionID\\k {
)\\{ |
)\\| }
{]] 
return^^ 
await^^ 
serviceManager^^ +
.^^+ ,
ProfileService^^, :
.^^: ;,
 GetProfilePictureInDataBaseAsync^^; [
(^^[ \
profileClientDto^^\ l
)^^l m
;^^m n
}__ 
return`` 
new`` %
OperationResultPictureDto`` 0
(``0 1
false``1 6
,``6 7
LanguageUtilities``8 I
.``I J#
MessageUnableToSaveData``J a
(``a b
LanguageUtilities``b s
.``s t)
LANGUAGE_ENGLISH_FORMAT_RESX	``t ê
)
``ê ë
)
``ë í
;
``í ì
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
boolcc 
>cc 
InviteFriendsToGamecc  3
(cc3 4
stringcc4 :
nameFriendToInvitecc; M
,ccM N

ProfileDtoccO Y
profileClientDtoccZ j
,ccj k
stringccl r
	accessKeyccs |
)cc| }
{dd 	
ifee 
(ee 
!ee 
stringee 
.ee 
IsNullOrEmptyee %
(ee% &
nameFriendToInviteee& 8
)ee8 9
&&ee: <
!ee= >
stringee> D
.eeD E
IsNullOrEmptyeeE R
(eeR S
	accessKeyeeS \
)ee\ ]
&&ee^ `
profileClientDtoeea q
!=eer t
nulleeu y
&&ff 
awaitff 
serviceManagerff '
.ff' (
ProfileServiceff( 6
.ff6 7
IsOnlineff7 ?
(ff? @
(ff@ A
intffA D
)ffD E
profileClientDtoffE U
.ffU V
IdffV X
,ffX Y
profileClientDtoffZ j
.ffj k
CurrentSessionIDffk {
)ff{ |
)ff| }
{gg 
returnhh 
awaithh 
serviceManagerhh +
.hh+ ,
ProfileServicehh, :
.hh: ;.
"InviteFriendsToGameInDataBaseAsynchh; ]
(hh] ^
nameFriendToInvitehh^ p
,hhp q
	accessKeyhhr {
)hh{ |
;hh| }
}ii 
returnjj 
falsejj 
;jj 
}kk 	
publicmm 
asyncmm 
Taskmm 
<mm 
boolmm 
>mm $
RejectFriendRequestAsyncmm  8
(mm8 9
stringmm9 ?
nameFriendToRejectmm@ R
,mmR S

ProfileDtommT ^
profileClientDtomm_ o
)mmo p
{nn 	
ifoo 
(oo 
!oo 
stringoo 
.oo 
IsNullOrEmptyoo %
(oo% &
nameFriendToRejectoo& 8
)oo8 9
&&oo: <
profileClientDtooo= M
!=ooN P
nullooQ U
&&pp 
awaitpp 
serviceManagerpp '
.pp' (
ProfileServicepp( 6
.pp6 7
IsOnlinepp7 ?
(pp? @
(pp@ A
intppA D
)ppD E
profileClientDtoppE U
.ppU V
IdppV X
,ppX Y
profileClientDtoppZ j
.ppj k
CurrentSessionIDppk {
)pp{ |
)pp| }
{qq 
returnrr 
awaitrr 
serviceManagerrr +
.rr+ ,
ProfileServicerr, :
.rr: ;.
"RejectFriendRequestInDataBaseAsyncrr; ]
(rr] ^
nameFriendToRejectrr^ p
,rrp q
profileClientDto	rrr Ç
)
rrÇ É
;
rrÉ Ñ
}ss 
returntt 
falsett 
;tt 
}uu 	
publicww 
asyncww 
Taskww 
<ww +
OperationResultFriendRequestDtoww 9
>ww9 :"
SendFriendRequestAsyncww; Q
(wwQ R
stringwwR X
nameFriendToInvitewwY k
,wwk l

ProfileDtowwm w
profileClientDto	wwx à
)
wwà â
{xx 	
ifyy 
(yy 
!yy 
stringyy 
.yy 
IsNullOrEmptyyy %
(yy% &
nameFriendToInviteyy& 8
)yy8 9
&&yy: <
profileClientDtoyy= M
!=yyN P
nullyyQ U
&&zz 
awaitzz 
serviceManagerzz '
.zz' (
ProfileServicezz( 6
.zz6 7
IsOnlinezz7 ?
(zz? @
(zz@ A
intzzA D
)zzD E
profileClientDtozzE U
.zzU V
IdzzV X
,zzX Y
profileClientDtozzZ j
.zzj k
CurrentSessionIDzzk {
)zz{ |
&&{{ 
profileClientDto{{ #
.{{# $
Name{{$ (
!={{) +
nameFriendToInvite{{, >
){{> ?
{|| 
return}} 
await}} 
serviceManager}} +
.}}+ ,
ProfileService}}, :
.}}: ;,
 SendFriendRequestInDataBaseAsync}}; [
(}}[ \
nameFriendToInvite}}\ n
,}}n o
profileClientDto	}}p Ä
)
}}Ä Å
;
}}Å Ç
}~~ 
return
ÄÄ 
new
ÄÄ -
OperationResultFriendRequestDto
ÄÄ 6
(
ÄÄ6 7
false
ÄÄ7 <
,
ÄÄ< =
LanguageUtilities
ÄÄ> O
.
ÄÄO P%
MessageUnableToSaveData
ÄÄP g
(
ÄÄg h
LanguageUtilities
ÄÄh y
.
ÄÄy z+
LANGUAGE_ENGLISH_FORMAT_RESXÄÄz ñ
)ÄÄñ ó
,ÄÄó ò%
EnumSendFriendRequestÄÄô Æ
.ÄÄÆ Ø
ErrorSavingÄÄØ ∫
)ÄÄ∫ ª
;ÄÄª º
}
ÅÅ 	
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ '
OperationResultProfileDto
ÉÉ 3
>
ÉÉ3 4'
UploadProfilePictureAsync
ÉÉ5 N
(
ÉÉN O

ProfileDto
ÉÉO Y
profileClientDto
ÉÉZ j
,
ÉÉj k
byte
ÉÉl p
[
ÉÉp q
]
ÉÉq r

imageBytes
ÉÉs }
)
ÉÉ} ~
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
profileClientDto
ÖÖ  
!=
ÖÖ! #
null
ÖÖ$ (
&&
ÖÖ) +
profileClientDto
ÖÖ, <
.
ÖÖ< =
Id
ÖÖ= ?
!=
ÖÖ@ B
null
ÖÖC G
&&
ÖÖH J

imageBytes
ÖÖK U
!=
ÖÖV X
null
ÖÖY ]
&&
ÖÖ^ `

imageBytes
ÖÖa k
.
ÖÖk l
Length
ÖÖl r
>
ÖÖs t)
AccountValidationUtilitiesÖÖu è
.ÖÖè ê$
PICTURE_MINIMUN_SIZEÖÖê §
&&
ÜÜ 

imageBytes
ÜÜ 
.
ÜÜ 
Length
ÜÜ $
<=
ÜÜ% '
ProfileUtilities
ÜÜ( 8
.
ÜÜ8 9
PICTURE_MAX_SIZE
ÜÜ9 I
)
ÜÜI J
{
áá 
return
àà 
await
àà 
serviceManager
àà +
.
àà+ ,
ProfileService
àà, :
.
àà: ;1
#UploadProfilePictureInDataBaseAsync
àà; ^
(
àà^ _
profileClientDto
àà_ o
,
àào p

imageBytes
ààq {
)
àà{ |
;
àà| }
}
ââ 
return
ää 
new
ää '
OperationResultProfileDto
ää 0
(
ää0 1
false
ää1 6
,
ää6 7
LanguageUtilities
ää8 I
.
ääI J%
MessageUnableToSaveData
ääJ a
(
ääa b
LanguageUtilities
ääb s
.
ääs t+
LANGUAGE_ENGLISH_FORMAT_RESXäät ê
)ääê ë
)ääë í
;ääí ì
}
ãã 	
}
åå 
}çç ˙
iC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\ProfileEndpoints\IProfileServiceEndpoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
[ 
ServiceContract 
] 
public 

	interface #
IProfileServiceEndpoint ,
{ 
[ 	
OperationContract	 
] 
Task 
< %
OperationResultProfileDto &
>& '
ChangeProfileName( 9
(9 :

ProfileDto: D
profileClientDtoE U
)U V
;V W
[!! 	
OperationContract!!	 
]!! 
Task"" 
<"" %
OperationResultProfileDto"" &
>""& '%
UploadProfilePictureAsync""( A
(""A B

ProfileDto""B L
profileClientDto""M ]
,""] ^
byte""_ c
[""c d
]""d e

imageBytes""f p
)""p q
;""q r
[)) 	
OperationContract))	 
])) 
Task** 
<** %
OperationResultPictureDto** &
>**& '"
GetProfilePictureAsync**( >
(**> ?

ProfileDto**? I
profileClientDto**J Z
)**Z [
;**[ \
[22 	
OperationContract22	 
]22 
Task33 
<33 %
OperationResultPictureDto33 &
>33& '"
GetFriendsPictureAsync33( >
(33> ?

ProfileDto33? I
profileFriendDto33J Z
,33Z [
string33\ b
preferredLanguage33c t
)33t u
;33u v
[<< 	
OperationContract<<	 
]<< 
Task== 
<== 
bool== 
>== 
InviteFriendsToGame== &
(==& '
string==' -
nameFriendToInvite==. @
,==@ A

ProfileDto==B L
profileClientDto==M ]
,==] ^
string==_ e
	accessKey==f o
)==o p
;==p q
[DD 	
OperationContractDD	 
]DD 
TaskEE 
<EE )
OperationResultProfileListDtoEE *
>EE* +
GetFriendsListAsyncEE, ?
(EE? @

ProfileDtoEE@ J
profileClientDtoEEK [
)EE[ \
;EE\ ]
[LL 	
OperationContractLL	 
]LL 
TaskMM 
<MM )
OperationResultProfileListDtoMM *
>MM* +$
GetPendingFriendRequestsMM, D
(MMD E

ProfileDtoMME O
profileClientDtoMMP `
)MM` a
;MMa b
[UU 	
OperationContractUU	 
]UU 
TaskVV 
<VV +
OperationResultFriendRequestDtoVV ,
>VV, -"
SendFriendRequestAsyncVV. D
(VVD E
stringVVE K
nameFriendToInviteVVL ^
,VV^ _

ProfileDtoVV` j
profileClientDtoVVk {
)VV{ |
;VV| }
[^^ 	
OperationContract^^	 
]^^ 
Task__ 
<__ 
bool__ 
>__ $
AcceptFriendRequestAsync__ +
(__+ ,
string__, 2
nameFriendToAccept__3 E
,__E F

ProfileDto__G Q
profileClientDto__R b
)__b c
;__c d
[gg 	
OperationContractgg	 
]gg 
Taskhh 
<hh 
boolhh 
>hh $
RejectFriendRequestAsynchh +
(hh+ ,
stringhh, 2
nameFriendToRejecthh3 E
,hhE F

ProfileDtohhG Q
profileClientDtohhR b
)hhb c
;hhc d
[pp 	
OperationContractpp	 
]pp 
Taskqq 
<qq 
boolqq 
>qq 
DeleteFriendProfileqq &
(qq& '
stringqq' -

friendNameqq. 8
,qq8 9

ProfileDtoqq: D
profileClientDtoqqE U
)qqU V
;qqV W
}rr 
}ss ú
lC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\GuestAccountEndpoints\IGuestAccountEndpoint.cs
	namespace		 	
CatanService		
 
.		 
EndPoint		 
{

 
[ 
ServiceContract 
] 
public 

	interface !
IGuestAccountEndpoint *
{ 
[ 	
OperationContract	 
] 
Task 
< *
OperationResultGuestAccountDto +
>+ ,
CreateGuestAccount- ?
(? @
string@ F
preferredLanguageG X
)X Y
;Y Z
} 
} ‚
kC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\GuestAccountEndpoints\GuestAccountEndpoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
public 

class  
GuestAccountEndpoint %
:& '!
IGuestAccountEndpoint( =
{ 
private 
readonly 
IServiceManager (
serviceManager) 7
;7 8
public  
GuestAccountEndpoint #
(# $
IServiceManager$ 3
serviceManager4 B
)B C
{ 	
this 
. 
serviceManager 
=  !
serviceManager" 0
;0 1
} 	
public 
async 
Task 
< *
OperationResultGuestAccountDto 8
>8 9
CreateGuestAccount: L
(L M
stringM S
preferredLanguageT e
)e f
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty $
($ %
preferredLanguage% 6
)6 7
)7 8
{ 
return 
await 
serviceManager +
.+ ,
GuestAccountService, ?
.? @-
!CreateGuestAccountInDataBaseAsync@ a
(a b
preferredLanguageb s
)s t
;t u
} 
return 
new *
OperationResultGuestAccountDto 5
(5 6
false6 ;
,; <
LanguageUtilities= N
.N O'
MessageDataBaseUnableToLoadO j
(j k
LanguageUtilitiesk |
.| })
LANGUAGE_ENGLISH_FORMAT_RESX	} ô
)
ô ö
)
ö õ
;
õ ú
} 	
} 
} Ï3
\C:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\GameEndPoints\IGameEndPoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
.  
GameEndPoints  -
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IGameCallback/ <
)< =
)= >
]> ?
public 

	interface 
IGameEndPoint "
{ 
[ 	
OperationContract	 
] 
Task 
< "
OperationResultGameDto #
># $

CreateGame% /
(/ 0
GameDto0 7
gameClientDto8 E
,E F

ProfileDtoG Q
profileClientDtoR b
)b c
;c d
[%% 	
OperationContract%%	 
]%% 
Task&& 
<&& 
OperationResultDto&& 
>&&  
QuitGameAsync&&! .
(&&. /
GameDto&&/ 6
gameClientDto&&7 D
,&&D E

ProfileDto&&F P
profileClientDto&&Q a
)&&a b
;&&b c
[.. 	
OperationContract..	 
].. 
Task// 
<// 
OperationResultDto// 
>//  (
QuitGameAsaGuestAccountAsync//! =
(//= >
GameDto//> E
gameClientDto//F S
,//S T
GuestAccountDto//U d!
guestAccountClientDto//e z
)//z {
;//{ |
[77 	
OperationContract77	 
]77 
Task88 
<88 "
OperationResultGameDto88 #
>88# $
JoinGameAsync88% 2
(882 3
string883 9

codeAccess88: D
,88D E

ProfileDto88F P
profileClientDto88Q a
)88a b
;88b c
[@@ 	
OperationContract@@	 
]@@ 
TaskAA 
<AA "
OperationResultGameDtoAA #
>AA# $
JoinGameAsaGuestAA% 5
(AA5 6
stringAA6 <
	accessKeyAA= F
,AAF G
GuestAccountDtoAAH W!
guestAccountClientDtoAAX m
)AAm n
;AAn o
[JJ 	
OperationContractJJ	 
]JJ 
TaskKK 
<KK 
boolKK 
>KK 
ExpelPlayerAsAdminKK %
(KK% &
ExpelPlayerDtoKK& 4
expelPlayerDtoKK5 C
,KKC D
intKKE H
idAdminKKI P
,KKP Q
GameDtoKKR Y
gameClientDtoKKZ g
)KKg h
;KKh i
[TT 	
OperationContractTT	 
]TT 
TaskUU 
<UU 
boolUU 
>UU 
VoteExpelPlayerUU "
(UU" #
ExpelPlayerDtoUU# 1
expelPlayerDtoUU2 @
,UU@ A
intUUB E
idPlayerUUF N
,UUN O
GameDtoUUP W
gameClientDtoUUX e
)UUe f
;UUf g
[]] 	
OperationContract]]	 
]]] 
Task^^ 
<^^ .
"OperationResultListOfPlayersInGame^^ /
>^^/ 0
GetAllPlayersInGame^^1 D
(^^D E
GameDto^^E L
gameClientDto^^M Z
,^^Z [
string^^\ b
preferredLanguage^^c t
)^^t u
;^^u v
[ee 	
OperationContractee	 
]ee 
Taskff 
<ff (
OperationResultListScoreGameff )
>ff) *
GetScoreGameWorldff+ <
(ff< =

ProfileDtoff= G
profileClientDtoffH X
)ffX Y
;ffY Z
[mm 	
OperationContractmm	 
]mm 
Tasknn 
<nn (
OperationResultListScoreGamenn )
>nn) *
GetScoreGameFriendsnn+ >
(nn> ?

ProfileDtonn? I
profileClientDtonnJ Z
)nnZ [
;nn[ \
[vv 	
OperationContractvv	 
]vv 
Taskww 
<ww 
boolww 
>ww 
StartGameAsyncww !
(ww! "
PlayerGameplayDtoww" 3
playerGameplayDtoww4 E
,wwE F
GameDtowwG N
gameClientDtowwO \
)ww\ ]
;ww] ^
[ 	
OperationContract	 
] 
Task
ÄÄ 
<
ÄÄ 
bool
ÄÄ 
>
ÄÄ 
NextTurnAync
ÄÄ 
(
ÄÄ  
PlayerGameplayDto
ÄÄ  1
playerGameplayDto
ÄÄ2 C
,
ÄÄC D
GameDto
ÄÄE L
gameClientDto
ÄÄM Z
)
ÄÄZ [
;
ÄÄ[ \
[
àà 	
OperationContract
àà	 
]
àà 
Task
ââ 
ThrowDiceAsync
ââ 
(
ââ 
PlayerGameplayDto
ââ -
playerGameplayDto
ââ. ?
,
ââ? @
GameDto
ââA H
gameClientDto
ââI V
,
ââV W
int
ââX [
	valueDice
ââ\ e
)
ââe f
;
ââf g
[
êê 	
OperationContract
êê	 
]
êê 
Task
ëë 
QuitGamePlayAsync
ëë 
(
ëë 
PlayerGameplayDto
ëë 0
playerGameplayDto
ëë1 B
,
ëëB C
GameDto
ëëD K
gameClientDto
ëëL Y
)
ëëY Z
;
ëëZ [
[
öö 	
OperationContract
öö	 
]
öö 
Task
õõ 
<
õõ  
OperationResultDto
õõ 
>
õõ  $
PlacePieceOnBoardAsync
õõ! 7
(
õõ7 8
PiecePlacementDto
õõ8 I
placementDto
õõJ V
,
õõV W
PlayerGameplayDto
õõX i
playerGameplayDto
õõj {
,
õõ{ |
GameDtoõõ} Ñ
gameClientDtoõõÖ í
)õõí ì
;õõì î
[
úú 	
OperationContract
úú	 
]
úú 
Task
ùù 
<
ùù  
OperationResultDto
ùù 
>
ùù  
StartTradeAsync
ùù! 0
(
ùù0 1 
PlayerResourcesDto
ùù1 C
needResources
ùùD Q
,
ùùQ R 
PlayerResourcesDto
ùùS e
offerResources
ùùf t
,
ùùt u
GameDto
ùùv }
gameClientDtoùù~ ã
)ùùã å
;ùùå ç
[
ûû 	
OperationContract
ûû	 
]
ûû 
Task
üü 
<
üü  
OperationResultDto
üü 
>
üü  
AcceptTradeAsync
üü! 1
(
üü1 2 
PlayerResourcesDto
üü2 D
sendResources
üüE R
,
üüR S 
PlayerResourcesDto
üüT f
receivedResources
üüg x
,
üüx y
GameDtoüüz Å
gameClientDtoüüÇ è
)üüè ê
;üüê ë
}
†† 
}°° §Ó
bC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\GameEndPoints\GameServiceEndpoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyModeG V
=W X
ConcurrencyModeY h
.h i
Multiplei q
)q r
]r s
public 

class 
GameServiceEndpoint $
:% &
IGameEndPoint' 4
{ 
private 
readonly 
IServiceManager (
serviceManager) 7
;7 8
public 
GameServiceEndpoint "
(" #
IServiceManager# 2
serviceManager3 A
)A B
{ 	
this 
. 
serviceManager 
=  !
serviceManager" 0
;0 1
} 	
public 
GameServiceEndpoint "
(" #
)# $
{ 	
}   	
public"" 
async"" 
Task"" 
<"" "
OperationResultGameDto"" 0
>""0 1

CreateGame""2 <
(""< =
GameDto""= D
gameClientDto""E R
,""R S

ProfileDto""T ^
profileClientDto""_ o
)""o p
{## 	
IGameCallback$$ 
playerCallback$$ (
=$$) *
OperationContext$$+ ;
.$$; <
Current$$< C
.$$C D
GetCallbackChannel$$D V
<$$V W
IGameCallback$$W d
>$$d e
($$e f
)$$f g
;$$g h
if&& 
(&& 
gameClientDto&& 
!=&&  
null&&! %
&&&&& (
profileClientDto&&) 9
!=&&: <
null&&= A
&&&&B D
!&&E F
string&&F L
.&&L M
IsNullOrEmpty&&M Z
(&&Z [
gameClientDto&&[ h
.&&h i
Name&&i m
)&&m n
&&&&o q
gameClientDto&&r 
.	&& Ä
Name
&&Ä Ñ
.
&&Ñ Ö
Length
&&Ö ã
<
&&å ç
$num
&&é ê
&&'' 
await'' 
serviceManager'' '
.''' (
ProfileService''( 6
.''6 7
IsOnline''7 ?
(''? @
(''@ A
int''A D
)''D E
profileClientDto''E U
.''U V
Id''V X
,''X Y
profileClientDto''Z j
.''j k
CurrentSessionID''k {
)''{ |
)''| }
{(( 
Console)) 
.)) 
	WriteLine)) !
())! "
$"))" $
{))$ %
gameClientDto))% 2
.))2 3
Name))3 7
}))7 8
"))8 9
)))9 :
;)): ;
return** 
await** 
serviceManager** +
.**+ ,
GameService**, 7
.**7 8(
CreateNewGameInDataBaseAsync**8 T
(**T U
gameClientDto**U b
,**b c
profileClientDto**d t
,**t u
playerCallback	**v Ñ
)
**Ñ Ö
;
**Ö Ü
}++ 
return,, 
new,, "
OperationResultGameDto,, -
(,,- .
false,,. 3
,,,3 4
LanguageUtilities,,5 F
.,,F G#
MessageUnableToSaveData,,G ^
(,,^ _
LanguageUtilities,,_ p
.,,p q)
LANGUAGE_ENGLISH_FORMAT_RESX	,,q ç
)
,,ç é
)
,,é è
;
,,è ê
}-- 	
public// 
async// 
Task// 
<// "
OperationResultGameDto// 0
>//0 1
JoinGameAsync//2 ?
(//? @
string//@ F

codeAccess//G Q
,//Q R

ProfileDto//S ]
profileClientDto//^ n
)//n o
{00 	
IGameCallback11 
playerCallback11 (
=11) *
OperationContext11+ ;
.11; <
Current11< C
.11C D
GetCallbackChannel11D V
<11V W
IGameCallback11W d
>11d e
(11e f
)11f g
;11g h
if33 
(33 
!33 
string33 
.33 
IsNullOrEmpty33 %
(33% &

codeAccess33& 0
)330 1
&&332 4
profileClientDto335 E
!=33F H
null33I M
&&44 
await44 
serviceManager44 '
.44' (
ProfileService44( 6
.446 7
IsOnline447 ?
(44? @
(44@ A
int44A D
)44D E
profileClientDto44E U
.44U V
Id44V X
,44X Y
profileClientDto44Z j
.44j k
CurrentSessionID44k {
)44{ |
)44| }
{55 
return66 
await66 
serviceManager66 +
.66+ ,
GameService66, 7
.667 8#
JoinGameInDataBaseAsync668 O
(66O P

codeAccess66P Z
,66Z [
profileClientDto66\ l
,66l m
playerCallback66n |
)66| }
;66} ~
}77 
return88 
new88 "
OperationResultGameDto88 -
(88- .
false88. 3
,883 4
LanguageUtilities885 F
.88F G#
MessageUnableToSaveData88G ^
(88^ _
LanguageUtilities88_ p
.88p q)
LANGUAGE_ENGLISH_FORMAT_RESX	88q ç
)
88ç é
)
88é è
;
88è ê
}99 	
public;; 
async;; 
Task;; 
<;; 
OperationResultDto;; ,
>;;, -
QuitGameAsync;;. ;
(;;; <
GameDto;;< C
gameClientDto;;D Q
,;;Q R

ProfileDto;;S ]
profileClientDto;;^ n
);;n o
{<< 	
if== 
(== 
gameClientDto== 
!===  
null==! %
&&==& (
gameClientDto==) 6
.==6 7
Id==7 9
!===: <
null=== A
&&==B D
profileClientDto==E U
!===V X
null==Y ]
&&>> 
await>> 
serviceManager>> '
.>>' (
ProfileService>>( 6
.>>6 7
IsOnline>>7 ?
(>>? @
(>>@ A
int>>A D
)>>D E
profileClientDto>>E U
.>>U V
Id>>V X
,>>X Y
profileClientDto>>Z j
.>>j k
CurrentSessionID>>k {
)>>{ |
)>>| }
{?? 
return@@ 
await@@ 
serviceManager@@ +
.@@+ ,
GameService@@, 7
.@@7 8#
QuitGameInDatabaseAsync@@8 O
(@@O P
gameClientDto@@P ]
,@@] ^
profileClientDto@@_ o
)@@o p
;@@p q
}AA 
returnBB 
newBB 
OperationResultDtoBB )
(BB) *
falseBB* /
,BB/ 0
LanguageUtilitiesBB1 B
.BBB C#
MessageUnableToSaveDataBBC Z
(BBZ [
LanguageUtilitiesBB[ l
.BBl m)
LANGUAGE_ENGLISH_FORMAT_RESX	BBm â
)
BBâ ä
)
BBä ã
;
BBã å
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE "
OperationResultGameDtoEE 0
>EE0 1
JoinGameAsaGuestEE2 B
(EEB C
stringEEC I
	accessKeyEEJ S
,EES T
GuestAccountDtoEEU d!
guestAccountClientDtoEEe z
)EEz {
{FF 	
IGameCallbackGG 
playerCallbackGG (
=GG) *
OperationContextGG+ ;
.GG; <
CurrentGG< C
.GGC D
GetCallbackChannelGGD V
<GGV W
IGameCallbackGGW d
>GGd e
(GGe f
)GGf g
;GGg h
ifII 
(II !
guestAccountClientDtoII %
!=II& (
nullII) -
&&II. 0
!II1 2
stringII2 8
.II8 9
IsNullOrEmptyII9 F
(IIF G!
guestAccountClientDtoIIG \
.II\ ]
PreferredLanguageII] n
)IIn o
&&JJ 
awaitJJ 
serviceManagerJJ '
.JJ' (
GuestAccountServiceJJ( ;
.JJ; < 
IsOnlineGuestAccountJJ< P
(JJP Q
(JJQ R
intJJR U
)JJU V!
guestAccountClientDtoJJV k
.JJk l
IdJJl n
)JJn o
)JJo p
{KK 
returnLL 
awaitLL 
serviceManagerLL +
.LL+ ,
GameServiceLL, 7
.LL7 8+
JoinGameAsaGuestInDataBaseAsyncLL8 W
(LLW X
	accessKeyLLX a
,LLa b!
guestAccountClientDtoLLc x
,LLx y
playerCallback	LLz à
)
LLà â
;
LLâ ä
}MM 
returnNN 
newNN "
OperationResultGameDtoNN -
(NN- .
falseNN. 3
,NN3 4
LanguageUtilitiesNN5 F
.NNF G#
MessageUnableToSaveDataNNG ^
(NN^ _
LanguageUtilitiesNN_ p
.NNp q)
LANGUAGE_ENGLISH_FORMAT_RESX	NNq ç
)
NNç é
)
NNé è
;
NNè ê
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
OperationResultDtoQQ ,
>QQ, -(
QuitGameAsaGuestAccountAsyncQQ. J
(QQJ K
GameDtoQQK R
gameClientDtoQQS `
,QQ` a
GuestAccountDtoQQb q"
guestAccountClientDto	QQr á
)
QQá à
{RR 	
ifSS 
(SS 
gameClientDtoSS 
!=SS  
nullSS! %
&&SS& (!
guestAccountClientDtoSS) >
!=SS? A
nullSSB F
&&TT 
awaitTT 
serviceManagerTT '
.TT' (
GuestAccountServiceTT( ;
.TT; < 
IsOnlineGuestAccountTT< P
(TTP Q
(TTQ R
intTTR U
)TTU V!
guestAccountClientDtoTTV k
.TTk l
IdTTl n
)TTn o
)TTo p
{UU 
returnVV 
awaitVV 
serviceManagerVV +
.VV+ ,
GameServiceVV, 7
.VV7 82
&QuitGameAsaGuestAccountInDatabaseAsyncVV8 ^
(VV^ _
gameClientDtoVV_ l
,VVl m"
guestAccountClientDto	VVn É
)
VVÉ Ñ
;
VVÑ Ö
}WW 
returnXX 
newXX 
OperationResultDtoXX )
(XX) *
falseXX* /
,XX/ 0
LanguageUtilitiesXX1 B
.XXB C#
MessageUnableToSaveDataXXC Z
(XXZ [
LanguageUtilitiesXX[ l
.XXl m)
LANGUAGE_ENGLISH_FORMAT_RESX	XXm â
)
XXâ ä
)
XXä ã
;
XXã å
}YY 	
public[[ 
async[[ 
Task[[ 
<[[ 
bool[[ 
>[[ 
VoteExpelPlayer[[  /
([[/ 0
ExpelPlayerDto[[0 >
expelPlayerDto[[? M
,[[M N
int[[O R
idPlayer[[S [
,[[[ \
GameDto[[] d
gameClientDto[[e r
)[[r s
{\\ 	
if]] 
(]] 
idPlayer]] 
!=]] 
CharacterUtilities]] .
.]]. /
INT_VALUE_ZERO]]/ =
&&]]> @
gameClientDto]]A N
!=]]O Q
null]]R V
&&^^ 
gameClientDto^^  
.^^  !
Id^^! #
!=^^$ &
CharacterUtilities^^' 9
.^^9 :
INT_VALUE_ZERO^^: H
&&^^I K
expelPlayerDto^^L Z
!=^^[ ]
null^^^ b
)^^b c
{__ 
return`` 
await`` 
serviceManager`` +
.``+ ,
GameService``, 7
.``7 8%
VoteExpelPlayerInDataBase``8 Q
(``Q R
expelPlayerDto``R `
,``` a
idPlayer``b j
,``j k
gameClientDto``l y
)``y z
;``z {
}aa 
returncc 
falsecc 
;cc 
}dd 	
publicff 
asyncff 
Taskff 
<ff 
boolff 
>ff 
ExpelPlayerAsAdminff  2
(ff2 3
ExpelPlayerDtoff3 A
expelPlayerDtoffB P
,ffP Q
intffR U
idAdminffV ]
,ff] ^
GameDtoff_ f
gameClientDtoffg t
)fft u
{gg 	
ifhh 
(hh 
gameClientDtohh 
!=hh  
nullhh! %
&&hh& (
gameClientDtohh) 6
.hh6 7
Idhh7 9
!=hh: <
CharacterUtilitieshh= O
.hhO P
INT_VALUE_ZEROhhP ^
&&hh_ a
idAdminhhb i
!=hhj l
CharacterUtilitieshhm 
.	hh Ä
INT_VALUE_ZERO
hhÄ é
&&
hhè ë
expelPlayerDto
hhí †
!=
hh° £
null
hh§ ®
)
hh® ©
{ii 
returnjj 
awaitjj 
serviceManagerjj +
.jj+ ,
GameServicejj, 7
.jj7 8(
ExpelPlayerAsAdminInDataBasejj8 T
(jjT U
expelPlayerDtojjU c
,jjc d
gameClientDtojje r
,jjr s
idAdminjjt {
)jj{ |
;jj| }
}kk 
returnll 
falsell 
;ll 
}mm 	
publicoo 
asyncoo 
Taskoo 
<oo .
"OperationResultListOfPlayersInGameoo <
>oo< =
GetAllPlayersInGameoo> Q
(ooQ R
GameDtoooR Y
gameClientDtoooZ g
,oog h
stringooi o
preferredLanguage	oop Å
)
ooÅ Ç
{pp 	
ifqq 
(qq 
gameClientDtoqq 
!=qq  
nullqq! %
&&qq& (
gameClientDtoqq) 6
.qq6 7
Idqq7 9
!=qq: <
nullqq= A
&&qqB D
!qqE F
stringqqF L
.qqL M
IsNullOrEmptyqqM Z
(qqZ [
preferredLanguageqq[ l
)qql m
)qqm n
{rr 
returnss 
awaitss 
serviceManagerss +
.ss+ ,
GameServicess, 7
.ss7 8)
GetAllPlayersInGameInDataBasess8 U
(ssU V
gameClientDtossV c
,ssc d
preferredLanguagesse v
)ssv w
;ssw x
}tt 
returnvv 
newvv .
"OperationResultListOfPlayersInGamevv 9
(vv9 :
falsevv: ?
,vv? @
LanguageUtilitiesvvA R
.vvR S#
MessageUnableToSaveDatavvS j
(vvj k
LanguageUtilitiesvvk |
.vv| })
LANGUAGE_ENGLISH_FORMAT_RESX	vv} ô
)
vvô ö
)
vvö õ
;
vvõ ú
}ww 	
publicyy 
asyncyy 
Taskyy 
<yy (
OperationResultListScoreGameyy 6
>yy6 7
GetScoreGameWorldyy8 I
(yyI J

ProfileDtoyyJ T
profileClientDtoyyU e
)yye f
{zz 	
if{{ 
({{ 
profileClientDto{{  
!={{! #
null{{$ (
&&{{) +
await{{, 1
serviceManager{{2 @
.{{@ A
ProfileService{{A O
.{{O P
IsOnline{{P X
({{X Y
({{Y Z
int{{Z ]
){{] ^
profileClientDto{{^ n
.{{n o
Id{{o q
,{{q r
profileClientDto	{{s É
.
{{É Ñ
CurrentSessionID
{{Ñ î
)
{{î ï
)
{{ï ñ
{|| 
return}} 
await}} 
serviceManager}} +
.}}+ ,
GameService}}, 7
.}}7 8'
GetScoreGameWorldInDataBase}}8 S
(}}S T
profileClientDto}}T d
)}}d e
;}}e f
}~~ 
return 
new (
OperationResultListScoreGame 3
(3 4
false4 9
,9 :
LanguageUtilities; L
.L M#
MessageUnableToSaveDataM d
(d e
LanguageUtilitiese v
.v w)
LANGUAGE_ENGLISH_FORMAT_RESX	w ì
)
ì î
)
î ï
;
ï ñ
}
ÄÄ 	
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ *
OperationResultListScoreGame
ÇÇ 6
>
ÇÇ6 7!
GetScoreGameFriends
ÇÇ8 K
(
ÇÇK L

ProfileDto
ÇÇL V
profileClientDto
ÇÇW g
)
ÇÇg h
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
profileClientDto
ÑÑ  
!=
ÑÑ! #
null
ÑÑ$ (
&&
ÑÑ) +
await
ÑÑ, 1
serviceManager
ÑÑ2 @
.
ÑÑ@ A
ProfileService
ÑÑA O
.
ÑÑO P
IsOnline
ÑÑP X
(
ÑÑX Y
(
ÑÑY Z
int
ÑÑZ ]
)
ÑÑ] ^
profileClientDto
ÑÑ^ n
.
ÑÑn o
Id
ÑÑo q
,
ÑÑq r
profileClientDtoÑÑs É
.ÑÑÉ Ñ 
CurrentSessionIDÑÑÑ î
)ÑÑî ï
)ÑÑï ñ
{
ÖÖ 
return
ÜÜ 
await
ÜÜ 
serviceManager
ÜÜ +
.
ÜÜ+ ,
GameService
ÜÜ, 7
.
ÜÜ7 8+
GetScoreGameFriendsInDataBase
ÜÜ8 U
(
ÜÜU V
profileClientDto
ÜÜV f
)
ÜÜf g
;
ÜÜg h
}
áá 
return
àà 
new
àà *
OperationResultListScoreGame
àà 3
(
àà3 4
false
àà4 9
,
àà9 :
LanguageUtilities
àà; L
.
ààL M%
MessageUnableToSaveData
ààM d
(
ààd e
LanguageUtilities
ààe v
.
ààv w+
LANGUAGE_ENGLISH_FORMAT_RESXààw ì
)ààì î
)ààî ï
;ààï ñ
}
ââ 	
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
bool
ãã 
>
ãã 
StartGameAsync
ãã  .
(
ãã. /
PlayerGameplayDto
ãã/ @
playerGameplayDto
ããA R
,
ããR S
GameDto
ããT [
gameClientDto
ãã\ i
)
ããi j
{
åå 	
if
çç 
(
çç 
playerGameplayDto
çç !
!=
çç" $
null
çç% )
)
çç) *
{
éé 
if
èè 
(
èè 
playerGameplayDto
èè %
.
èè% &
isRegistered
èè& 2
)
èè2 3
{
êê 
await
ëë 
serviceManager
ëë )
.
ëë) *
ProfileService
ëë* 8
.
ëë8 9
IsOnline
ëë9 A
(
ëëA B
playerGameplayDto
ëëB S
.
ëëS T
Id
ëëT V
,
ëëV W
playerGameplayDto
ëëX i
.
ëëi j
CurrentSession
ëëj x
)
ëëx y
;
ëëy z
}
íí 
else
ìì 
{
îî 
await
ïï 
serviceManager
ïï (
.
ïï( )!
GuestAccountService
ïï) <
.
ïï< ="
IsOnlineGuestAccount
ïï= Q
(
ïïQ R
playerGameplayDto
ïïR c
.
ïïc d
Id
ïïd f
)
ïïf g
;
ïïg h
}
ññ 
return
óó 
await
óó 
serviceManager
óó +
.
óó+ ,
GameService
óó, 7
.
óó7 8&
StartGameInDataBaseAsync
óó8 P
(
óóP Q
playerGameplayDto
óóQ b
.
óób c
Id
óóc e
,
óóe f
gameClientDto
óóg t
)
óót u
;
óóu v
}
òò 
return
öö 
false
öö 
;
öö 
}
õõ 	
public
ùù 
async
ùù 
Task
ùù 
<
ùù 
bool
ùù 
>
ùù 
NextTurnAync
ùù  ,
(
ùù, -
PlayerGameplayDto
ùù- >
playerGameplayDto
ùù? P
,
ùùP Q
GameDto
ùùR Y
gameClientDto
ùùZ g
)
ùùg h
{
ûû 	
if
üü 
(
üü 
playerGameplayDto
üü !
!=
üü" $
null
üü% )
&&
üü* ,
gameClientDto
üü- :
!=
üü; =
null
üü> B
)
üüB C
{
†† 
if
°° 
(
°° 
playerGameplayDto
°° %
.
°°% &
isRegistered
°°& 2
)
°°2 3
{
¢¢ 
await
££ 
serviceManager
££ (
.
££( )
ProfileService
££) 7
.
££7 8
IsOnline
££8 @
(
££@ A
playerGameplayDto
££A R
.
££R S
Id
££S U
,
££U V
playerGameplayDto
££W h
.
££h i
CurrentSession
££i w
)
££w x
;
££x y
}
§§ 
else
•• 
{
¶¶ 
await
ßß 
serviceManager
ßß (
.
ßß( )!
GuestAccountService
ßß) <
.
ßß< ="
IsOnlineGuestAccount
ßß= Q
(
ßßQ R
playerGameplayDto
ßßR c
.
ßßc d
Id
ßßd f
)
ßßf g
;
ßßg h
}
®® 
return
©© 
await
©© 
serviceManager
©© +
.
©©+ ,
GameService
©©, 7
.
©©7 8%
NextTurnInDataBaseAsync
©©8 O
(
©©O P
(
©©P Q
int
©©Q T
)
©©T U
gameClientDto
©©U b
.
©©b c
Id
©©c e
,
©©e f
playerGameplayDto
©©g x
.
©©x y
Id
©©y {
)
©©{ |
;
©©| }
}
™™ 
return
´´ 
false
´´ 
;
´´ 
}
¨¨ 	
public
ÆÆ 
async
ÆÆ 
Task
ÆÆ 
ThrowDiceAsync
ÆÆ (
(
ÆÆ( )
PlayerGameplayDto
ÆÆ) :
playerGameplayDto
ÆÆ; L
,
ÆÆL M
GameDto
ÆÆN U
gameClientDto
ÆÆV c
,
ÆÆc d
int
ÆÆe h
	valueDice
ÆÆi r
)
ÆÆr s
{
ØØ 	
if
∞∞ 
(
∞∞ 
playerGameplayDto
∞∞ !
!=
∞∞" $
null
∞∞% )
&&
∞∞* ,
gameClientDto
∞∞- :
!=
∞∞; =
null
∞∞> B
)
∞∞B C
{
±± 
if
≤≤ 
(
≤≤ 
playerGameplayDto
≤≤ %
.
≤≤% &
isRegistered
≤≤& 2
)
≤≤2 3
{
≥≥ 
await
¥¥ 
serviceManager
¥¥ (
.
¥¥( )
ProfileService
¥¥) 7
.
¥¥7 8
IsOnline
¥¥8 @
(
¥¥@ A
playerGameplayDto
¥¥A R
.
¥¥R S
Id
¥¥S U
,
¥¥U V
playerGameplayDto
¥¥W h
.
¥¥h i
CurrentSession
¥¥i w
)
¥¥w x
;
¥¥x y
}
µµ 
else
∂∂ 
{
∑∑ 
await
∏∏ 
serviceManager
∏∏ (
.
∏∏( )!
GuestAccountService
∏∏) <
.
∏∏< ="
IsOnlineGuestAccount
∏∏= Q
(
∏∏Q R
playerGameplayDto
∏∏R c
.
∏∏c d
Id
∏∏d f
)
∏∏f g
;
∏∏g h
}
ππ 
await
∫∫ 
serviceManager
∫∫ $
.
∫∫$ %
GameService
∫∫% 0
.
∫∫0 1&
ThrowDiceInDataBaseAsync
∫∫1 I
(
∫∫I J
(
∫∫J K
int
∫∫K N
)
∫∫N O
gameClientDto
∫∫O \
.
∫∫\ ]
Id
∫∫] _
,
∫∫_ `
playerGameplayDto
∫∫a r
.
∫∫r s
Id
∫∫s u
,
∫∫u v
	valueDice∫∫w Ä
)∫∫Ä Å
;∫∫Å Ç
}
ªª 
}
ºº 	
public
ææ 
async
ææ 
Task
ææ 
QuitGamePlayAsync
ææ +
(
ææ+ ,
PlayerGameplayDto
ææ, =
playerGameplayDto
ææ> O
,
ææO P
GameDto
ææQ X
gameClientDto
ææY f
)
ææf g
{
øø 	
if
¿¿ 
(
¿¿ 
playerGameplayDto
¿¿ !
.
¿¿! "
isRegistered
¿¿" .
)
¿¿. /
{
¡¡ 
await
¬¬ 
serviceManager
¬¬ $
.
¬¬$ %
ProfileService
¬¬% 3
.
¬¬3 4
IsOnline
¬¬4 <
(
¬¬< =
playerGameplayDto
¬¬= N
.
¬¬N O
Id
¬¬O Q
,
¬¬Q R
playerGameplayDto
¬¬S d
.
¬¬d e
CurrentSession
¬¬e s
)
¬¬s t
;
¬¬t u
}
√√ 
else
ƒƒ 
{
≈≈ 
await
∆∆ 
serviceManager
∆∆ $
.
∆∆$ %!
GuestAccountService
∆∆% 8
.
∆∆8 9"
IsOnlineGuestAccount
∆∆9 M
(
∆∆M N
playerGameplayDto
∆∆N _
.
∆∆_ `
Id
∆∆` b
)
∆∆b c
;
∆∆c d
}
«« 
_
…… 
=
…… 
Task
…… 
.
…… 
Run
…… 
(
…… 
async
…… 
(
……  
)
……  !
=>
……" $
{
   
await
ÀÀ 
serviceManager
ÀÀ $
.
ÀÀ$ %
GameService
ÀÀ% 0
.
ÀÀ0 1)
QuitGameplayInDataBaseAsync
ÀÀ1 L
(
ÀÀL M
playerGameplayDto
ÀÀM ^
,
ÀÀ^ _
gameClientDto
ÀÀ` m
)
ÀÀm n
;
ÀÀn o
}
ÃÃ 
)
ÃÃ 
;
ÃÃ 
}
ÕÕ 	
public
–– 
async
–– 
Task
–– 
<
––  
OperationResultDto
–– ,
>
––, -$
PlacePieceOnBoardAsync
––. D
(
––D E
PiecePlacementDto
––E V
placementDto
––W c
,
––c d
PlayerGameplayDto
––e v 
playerGameplayDto––w à
,––à â
GameDto––ä ë
gameClientDto––í ü
)––ü †
{
—— 	
if
““ 
(
““ 
playerGameplayDto
““ !
!=
““" $
null
““% )
&&
““* ,
gameClientDto
““- :
!=
““; =
null
““> B
&&
““C E
placementDto
““F R
!=
““S U
null
““V Z
)
““Z [
{
”” 
if
‘‘ 
(
‘‘ 
playerGameplayDto
‘‘ %
.
‘‘% &
isRegistered
‘‘& 2
)
‘‘2 3
{
’’ 
await
÷÷ 
serviceManager
÷÷ (
.
÷÷( )
ProfileService
÷÷) 7
.
÷÷7 8
IsOnline
÷÷8 @
(
÷÷@ A
playerGameplayDto
÷÷A R
.
÷÷R S
Id
÷÷S U
,
÷÷U V
playerGameplayDto
÷÷W h
.
÷÷h i
CurrentSession
÷÷i w
)
÷÷w x
;
÷÷x y
}
◊◊ 
else
ÿÿ 
{
ŸŸ 
await
⁄⁄ 
serviceManager
⁄⁄ (
.
⁄⁄( )!
GuestAccountService
⁄⁄) <
.
⁄⁄< ="
IsOnlineGuestAccount
⁄⁄= Q
(
⁄⁄Q R
playerGameplayDto
⁄⁄R c
.
⁄⁄c d
Id
⁄⁄d f
)
⁄⁄f g
;
⁄⁄g h
}
€€ 
return
›› 
await
›› 
serviceManager
›› +
.
››+ ,
GameService
››, 7
.
››7 8$
PlacePieceOnBoardAsync
››8 N
(
››N O
placementDto
››O [
,
››[ \
playerGameplayDto
››] n
,
››n o
(
››p q
int
››q t
)
››t u
gameClientDto››u Ç
.››Ç É
Id››É Ö
)››Ö Ü
;››Ü á
}
ﬁﬁ 
return
ﬂﬂ 
new
ﬂﬂ  
OperationResultDto
ﬂﬂ )
(
ﬂﬂ) *
false
ﬂﬂ* /
,
ﬂﬂ/ 0
LanguageUtilities
ﬂﬂ1 B
.
ﬂﬂB C%
MessageUnableToSaveData
ﬂﬂC Z
(
ﬂﬂZ [
LanguageUtilities
ﬂﬂ[ l
.
ﬂﬂl m+
LANGUAGE_ENGLISH_FORMAT_RESXﬂﬂm â
)ﬂﬂâ ä
)ﬂﬂä ã
;ﬂﬂã å
}
‡‡ 	
public
‚‚ 
async
‚‚ 
Task
‚‚ 
<
‚‚  
OperationResultDto
‚‚ ,
>
‚‚, -
StartTradeAsync
‚‚. =
(
‚‚= > 
PlayerResourcesDto
‚‚> P
needResources
‚‚Q ^
,
‚‚^ _ 
PlayerResourcesDto
‚‚` r
offerResources‚‚s Å
,‚‚Å Ç
GameDto‚‚É ä
gameClientDto‚‚ã ò
)‚‚ò ô
{
„„ 	
if
‰‰ 
(
‰‰ 
offerResources
‰‰ 
!=
‰‰ !
null
‰‰" &
&&
‰‰' )
needResources
‰‰* 7
!=
‰‰8 :
null
‰‰; ?
&&
‰‰@ B
gameClientDto
‰‰C P
!=
‰‰Q S
null
‰‰T X
)
‰‰X Y
{
ÂÂ 
return
ÊÊ 
await
ÊÊ 
serviceManager
ÊÊ +
.
ÊÊ+ ,
GameService
ÊÊ, 7
.
ÊÊ7 8
StartTradeAsync
ÊÊ8 G
(
ÊÊG H
needResources
ÊÊH U
,
ÊÊU V
offerResources
ÊÊW e
,
ÊÊe f
(
ÊÊg h
int
ÊÊh k
)
ÊÊk l
gameClientDto
ÊÊl y
.
ÊÊy z
Id
ÊÊz |
)
ÊÊ| }
;
ÊÊ} ~
}
ÁÁ 
return
ËË 
new
ËË  
OperationResultDto
ËË )
(
ËË) *
false
ËË* /
,
ËË/ 0
LanguageUtilities
ËË1 B
.
ËËB C%
MessageUnableToSaveData
ËËC Z
(
ËËZ [
LanguageUtilities
ËË[ l
.
ËËl m+
LANGUAGE_ENGLISH_FORMAT_RESXËËm â
)ËËâ ä
)ËËä ã
;ËËã å
}
ÈÈ 	
public
ÎÎ 
async
ÎÎ 
Task
ÎÎ 
<
ÎÎ  
OperationResultDto
ÎÎ ,
>
ÎÎ, -
AcceptTradeAsync
ÎÎ. >
(
ÎÎ> ? 
PlayerResourcesDto
ÎÎ? Q
sendResources
ÎÎR _
,
ÎÎ_ ` 
PlayerResourcesDto
ÎÎa s 
receivedResourcesÎÎt Ö
,ÎÎÖ Ü
GameDtoÎÎá é
gameClientDtoÎÎè ú
)ÎÎú ù
{
ÏÏ 	
if
ÌÌ 
(
ÌÌ 
sendResources
ÌÌ 
!=
ÌÌ  
null
ÌÌ! %
&&
ÌÌ& (
receivedResources
ÌÌ) :
!=
ÌÌ; =
null
ÌÌ> B
&&
ÌÌC E
gameClientDto
ÌÌF S
!=
ÌÌT V
null
ÌÌW [
)
ÌÌ[ \
{
ÓÓ 
return
ÔÔ 
await
ÔÔ 
serviceManager
ÔÔ +
.
ÔÔ+ ,
GameService
ÔÔ, 7
.
ÔÔ7 8
AcceptTradeAsync
ÔÔ8 H
(
ÔÔH I
sendResources
ÔÔI V
,
ÔÔV W
receivedResources
ÔÔX i
,
ÔÔi j
(
ÔÔk l
int
ÔÔl o
)
ÔÔo p
gameClientDto
ÔÔp }
.
ÔÔ} ~
IdÔÔ~ Ä
)ÔÔÄ Å
;ÔÔÅ Ç
}
 
return
ÒÒ 
new
ÒÒ  
OperationResultDto
ÒÒ )
(
ÒÒ) *
false
ÒÒ* /
,
ÒÒ/ 0
LanguageUtilities
ÒÒ1 B
.
ÒÒB C%
MessageUnableToSaveData
ÒÒC Z
(
ÒÒZ [
LanguageUtilities
ÒÒ[ l
.
ÒÒl m+
LANGUAGE_ENGLISH_FORMAT_RESXÒÒm â
)ÒÒâ ä
)ÒÒä ã
;ÒÒã å
}
ÚÚ 	
}
ÛÛ 
}ıı ˘"
iC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\GameEndPoints\GameModels\ConnectedPlayer.cs
	namespace		 	
CatanService		
 
.		 
EndPoint		 
.		  
GameEndPoints		  -
.		- .

GameModels		. 8
{

 
public 

class 
ConnectedPlayer  
{ 
public 
ConnectedPlayer 
( 

ProfileDto )
profileClientDto* :
,: ;
IGameCallback< I
gameCallbackJ V
,V W
GuestAccountDtoX g!
guestAccountClientDtoh }
)} ~
{ 	
this 
. 
profileClientDto !
=" #
profileClientDto$ 4
;4 5
this 
. 
gameCallback 
= 
gameCallback  ,
;, -
this 
. 
guestAccountDto  
=! "!
guestAccountClientDto# 8
;8 9
this 
. 
votesReceived 
=  
new! $
HashSet% ,
<, -
int- 0
>0 1
(1 2
)2 3
;3 4
} 	
public 
ConnectedPlayer 
( 

ProfileDto )
profileClientDto* :
,: ;
IGameCallback< I
gameCallbackJ V
)V W
{ 	
this 
. 
profileClientDto !
=" #
profileClientDto$ 4
;4 5
this 
. 
gameCallback 
= 
gameCallback  ,
;, -
this 
. 
votesReceived 
=  
new! $
HashSet% ,
<, -
int- 0
>0 1
(1 2
)2 3
;3 4
} 	
public 
ConnectedPlayer 
( 
IGameCallback ,
gameCallback- 9
,9 :
GuestAccountDto; J!
guestAccountClientDtoK `
)` a
{ 	
this 
. 
gameCallback 
= 
gameCallback  ,
;, -
this 
. 
guestAccountDto  
=! "!
guestAccountClientDto# 8
;8 9
this 
. 
votesReceived 
=  
new! $
HashSet% ,
<, -
int- 0
>0 1
(1 2
)2 3
;3 4
} 	
public   

ProfileDto   
profileClientDto   *
{  + ,
get  - 0
;  0 1
set  2 5
;  5 6
}  7 8
public!! 
int!! 
Points!! 
{!! 
get!! 
;!!  
set!!! $
;!!$ %
}!!& '
=!!( )
$num!!* +
;!!+ ,
public"" 
DateTime"" 
JoinedAt""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
=""/ 0
DateTime""1 9
.""9 :
UtcNow"": @
;""@ A
public## 
GuestAccountDto## 
guestAccountDto## .
{##/ 0
get##1 4
;##4 5
set##6 9
;##9 :
}##; <
public$$ 
IGameCallback$$ 
gameCallback$$ )
{$$* +
get$$, /
;$$/ 0
set$$1 4
;$$4 5
}$$6 7
public%% 
HashSet%% 
<%% 
int%% 
>%% 
votesReceived%% )
{%%* +
get%%, /
;%%/ 0
set%%1 4
;%%4 5
}%%6 7
public&& 
bool&& 
IsReadyToPlay&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
=&&0 1
false&&2 7
;&&7 8
public'' 
bool'' 
AddVote'' 
('' 
int'' 
voterId''  '
)''' (
{(( 	
Console)) 
.)) 
	WriteLine)) 
()) 
votesReceived)) +
.))+ ,
Count)), 1
)))1 2
;))2 3
return** 
votesReceived**  
.**  !
Add**! $
(**$ %
voterId**% ,
)**, -
;**- .
}++ 	
},, 
}-- í+
iC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\GameEndPoints\CallbackGame\IGameCallback.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
[ 
ServiceContract 
] 
public 

	interface 
IGameCallback "
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void !
NotifyPlayerExpulsion "
(" #
string# )
message* 1
,1 2
string3 9
reason: @
)@ A
;A B
["" 	
OperationContract""	 
("" 
IsOneWay"" #
=""$ %
true""& *
)""* +
]""+ ,
void## !
BroadcastMessageExpel## "
(##" #
	PlayerDto### ,
playerExpeled##- :
)##: ;
;##; <
[)) 	
OperationContract))	 
()) 
IsOneWay)) #
=))$ %
true))& *
)))* +
]))+ ,
void** #
BroadcastNotifyNewAdmin** $
(**$ %
int**% (
idAdmin**) 0
)**0 1
;**1 2
[00 	
OperationContract00	 
(00 
IsOneWay00 #
=00$ %
true00& *
)00* +
]00+ ,
void11 !
UpdateTimeToStartGame11 "
(11" #
int11# &
time11' +
)11+ ,
;11, -
[77 	
OperationContract77	 
(77 
IsOneWay77 #
=77$ %
true77& *
)77* +
]77+ ,
void88 "
UpdateTimeWhenJoinGame88 #
(88# $
int88$ '
time88( ,
)88, -
;88- .
[== 	
OperationContract==	 
(== 
IsOneWay== #
===$ %
true==& *
)==* +
]==+ ,
void>> "
StartGameForAllPlayers>> #
(>># $
)>>$ %
;>>% &
[DD 	
OperationContractDD	 
(DD 
IsOneWayDD #
=DD$ %
trueDD& *
)DD* +
]DD+ ,
voidEE 
UpdateTurnStatusEE 
(EE 
ListEE "
<EE" #
PlayerTurnStatusDtoEE# 6
>EE6 7
playersTurnStatusEE8 I
)EEI J
;EEJ K
[KK 	
OperationContractKK	 
(KK 
IsOneWayKK #
=KK$ %
trueKK& *
)KK* +
]KK+ ,
voidLL #
UpdateTurnTimeRemainingLL $
(LL$ %
intLL% (
remainingTimeLL) 6
)LL6 7
;LL7 8
[RR 	
OperationContractRR	 
(RR 
IsOneWayRR #
=RR$ %
trueRR& *
)RR* +
]RR+ ,
voidSS 
SendDiceResultSS 
(SS 
intSS 

diceResultSS  *
)SS* +
;SS+ ,
[XX 	
OperationContractXX	 
(XX 
IsOneWayXX #
=XX$ %
trueXX& *
)XX* +
]XX+ ,
voidYY &
EndGameDisconnectedPlayersYY '
(YY' (
)YY( )
;YY) *
[__ 	
OperationContract__	 
(__ 
IsOneWay__ #
=__$ %
true__& *
)__* +
]__+ ,
void`` $
UpdateListOfPlayersTurns`` %
(``% &
List``& *
<``* +
PlayerTurnStatusDto``+ >
>``> ?
playersTurnStatus``@ Q
)``Q R
;``R S
[ff 	
OperationContractff	 
(ff 
IsOneWayff #
=ff$ %
trueff& *
)ff* +
]ff+ ,
voidgg &
NotifyGameBoardInitializedgg '
(gg' (
GameBoardStateDtogg( 9
gameBoardStategg: H
)ggH I
;ggI J
[nn 	
OperationContractnn	 
(nn 
IsOneWaynn #
=nn$ %
truenn& *
)nn* +
]nn+ ,
voidoo #
NotifyPlayerPlacedPieceoo $
(oo$ %
GameBoardStateDtooo% 6
gameBoardStateDtooo7 H
,ooH I
PlayerGameplayDtoooJ [
playerGameplayDtooo\ m
)oom n
;oon o
[uu 	
OperationContractuu	 
(uu 
IsOneWayuu #
=uu$ %
trueuu& *
)uu* +
]uu+ ,
voidvv &
NotifyResourcesDistributedvv '
(vv' (
PlayerResourcesDtovv( :
receivedResourcesvv; L
)vvL M
;vvM N
[ww 	
OperationContractww	 
(ww 
IsOneWayww #
=ww$ %
trueww& *
)ww* +
]ww+ ,
voidxx 
NotifyTradeRequestxx 
(xx  
PlayerResourcesDtoxx  2
needResourcesxx3 @
,xx@ A
PlayerResourcesDtoxxB T
offerResourcesxxU c
)xxc d
;xxd e
[yy 	
OperationContractyy	 
(yy 
IsOneWayyy #
=yy$ %
trueyy& *
)yy* +
]yy+ ,
voidzz !
NotifyTradeCompletionzz "
(zz" #
)zz# $
;zz$ %
[{{ 	
OperationContract{{	 
({{ 
IsOneWay{{ #
={{$ %
true{{& *
){{* +
]{{+ ,
void|| 
NotifyWinner|| 
(|| 
string||  
name||! %
)||% &
;||& '
}}} 
}~~ ﬂ
jC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\ChatsServiceEnpoints\IChatServiceEndpoint.cs
	namespace

 	
CatanService


 
.

 
EndPoint

 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IChatCallback/ <
)< =
)= >
]> ?
public 

	interface  
IChatServiceEndpoint )
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
JoinChatAsync 
( 
GameDto "
gameClientDto# 0
,0 1
string2 8

namePlayer9 C
)C D
;D E
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!! "
SendMessageToChatAsync!! #
(!!# $
GameDto!!$ +
gameClientDto!!, 9
,!!9 :
string!!; A

namePlayer!!B L
,!!L M
string!!N T
message!!U \
)!!\ ]
;!!] ^
[(( 	
OperationContract((	 
((( 
IsOneWay(( #
=(($ %
true((& *
)((* +
]((+ ,
void)) 
LeaveChatAsync)) 
()) 
GameDto)) #
gameClientDto))$ 1
,))1 2
string))3 9

namePlayer)): D
)))D E
;))E F
}** 
},, ‘
iC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\ChatsServiceEnpoints\ChatServiceEndpoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyModeG V
=W X
ConcurrencyModeY h
.h i
Multiplei q
)q r
]r s
public 

class 
ChatServiceEndpoint $
:% & 
IChatServiceEndpoint' ;
{ 
private 
readonly 
IServiceManager (
serviceManager) 7
;7 8
public 
ChatServiceEndpoint "
(" #
)# $
{ 	
} 	
public 
ChatServiceEndpoint "
(" #
IServiceManager# 2
serviceManager3 A
)A B
{ 	
this 
. 
serviceManager 
=  !
serviceManager" 0
;0 1
} 	
public 
async 
void 
JoinChatAsync '
(' (
GameDto( /
gameClientDto0 =
,= >
string? E

namePlayerF P
)P Q
{ 	
if 
( 
gameClientDto 
!=  
null! %
&&& (
!) *
string* 0
.0 1
IsNullOrEmpty1 >
(> ?

namePlayer? I
)I J
)J K
{   
await!! 
serviceManager!! $
.!!$ %
ChatService!!% 0
.!!0 1
JoinChatAsync!!1 >
(!!> ?
gameClientDto!!? L
,!!L M

namePlayer!!N X
)!!X Y
;!!Y Z
}"" 
}## 	
public%% 
async%% 
void%% 
LeaveChatAsync%% (
(%%( )
GameDto%%) 0
gameClientDto%%1 >
,%%> ?
string%%@ F

namePlayer%%G Q
)%%Q R
{&& 	
if'' 
('' 
gameClientDto'' 
!=''  
null''! %
&&''& (
!'') *
string''* 0
.''0 1
IsNullOrEmpty''1 >
(''> ?

namePlayer''? I
)''I J
)''J K
{(( 
await)) 
serviceManager)) $
.))$ %
ChatService))% 0
.))0 1
LeaveChatAsync))1 ?
())? @
gameClientDto))@ M
,))M N

namePlayer))O Y
)))Y Z
;))Z [
}** 
}++ 	
public-- 
async-- 
void-- "
SendMessageToChatAsync-- 0
(--0 1
GameDto--1 8
gameClientDto--9 F
,--F G
string--H N

namePlayer--O Y
,--Y Z
string--[ a
message--b i
)--i j
{.. 	
if// 
(// 
gameClientDto// 
!=//  
null//! %
&&//& (
!//) *
string//* 0
.//0 1
IsNullOrEmpty//1 >
(//> ?

namePlayer//? I
)//I J
&&//K M
!//N O
string//O U
.//U V
IsNullOrEmpty//V c
(//c d
message//d k
)//k l
)//l m
{00 
await11 
serviceManager11 $
.11$ %
ChatService11% 0
.110 1"
SendMessageToChatAsync111 G
(11G H
gameClientDto11H U
,11U V

namePlayer11W a
,11a b
message11c j
)11j k
;11k l
}22 
}33 	
}44 
}55 —
kC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\ChatsServiceEnpoints\ChatModels\ChatPlayer.cs
	namespace 	
CatanService
 
. 
EndPoint 
.   
ChatsServiceEnpoints  4
.4 5

ChatModels5 ?
{		 
public 

class 

ChatPlayer 
{ 
public 
string 

PlayerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IChatCallback 
Callback %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ï

qC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\ChatsServiceEnpoints\ChatCallbacks\IChatCallback.cs
	namespace 	
CatanService
 
. 
EndPoint 
.   
ChatsServiceEnpoints  4
.4 5
CallbacksChat5 B
{		 
[ 
ServiceContract 
] 
public 

	interface 
IChatCallback "
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReceiveMessage 
( 
string "
name# '
,' (
string) /
message0 7
)7 8
;8 9
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void *
ReceiveMessageJoinPlayerToChat +
(+ ,
string, 2
name3 7
)7 8
;8 9
[## 	
OperationContract##	 
(## 
IsOneWay## #
=##$ %
true##& *
)##* +
]##+ ,
void$$ *
ReceiveMessageLeftPlayerToChat$$ +
($$+ ,
string$$, 2
name$$3 7
)$$7 8
;$$8 9
}%% 
}'' „
bC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\AccountEndpoints\IAccountEndPoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
[ 
ServiceContract 
] 
public 

	interface 
IAccountEndPoint %
{ 
[ 	
OperationContract	 
] 
Task 
< +
OperationResultCreateAccountDto ,
>, -
CreateAccountAsync. @
(@ A

AccountDtoA K
accountClientDtoL \
)\ ]
;] ^
[   	
OperationContract  	 
]   
Task!! 
<!! 
OperationResultDto!! 
>!!  
VerifyAccountAsync!!! 3
(!!3 4

AccountDto!!4 >
accountClientDto!!? O
)!!O P
;!!P Q
[(( 	
OperationContract((	 
](( 
Task)) 
<)) %
OperationResultProfileDto)) &
>))& '

LogInAsync))( 2
())2 3

AccountDto))3 =
accountClientDto))> N
)))N O
;))O P
[00 	
OperationContract00	 
]00 
Task11 
<11 
bool11 
>11 '
ResendVerificationCodeAsync11 .
(11. /
string11/ 5
emailOrPhone116 B
)11B C
;11C D
[88 	
OperationContract88	 
]88 
Task99 
<99 
OperationResultDto99 
>99  
ChangePasswordAsync99! 4
(994 5

AccountDto995 ?
accountClientDto99@ P
)99P Q
;99Q R
[@@ 	
OperationContract@@	 
]@@ 
TaskAA 
<AA 5
)OperationResultChangeRegisterEmailOrPhoneAA 6
>AA6 74
(SendVerificationCodeToChangeEmailOrPhoneAA8 `
(AA` a

AccountDtoAAa k
accountClientDtoAAl |
)AA| }
;AA} ~
[HH 	
OperationContractHH	 
]HH 
TaskII 
<II 5
)OperationResultChangeRegisterEmailOrPhoneII 6
>II6 7#
ChangeEmailOrPhoneAsyncII8 O
(IIO P

AccountDtoIIP Z
accountClientDtoII[ k
)IIk l
;IIl m
[PP 	
OperationContractPP	 
]PP 
TaskQQ 
<QQ %
OperationResultAccountDtoQQ &
>QQ& '0
$ConsultAccounProfileInformationAsyncQQ( L
(QQL M

ProfileDtoQQM W
profileClientDtoQQX h
)QQh i
;QQi j
[XX 	
OperationContractXX	 
]XX 
TaskYY 
<YY 
OperationResultDtoYY 
>YY  0
$SendVerificationCodeToChangePasswordYY! E
(YYE F

AccountDtoYYF P
accountClientDtoYYQ a
)YYa b
;YYb c
[`` 	
OperationContract``	 
]`` 
Taskaa 
<aa 
boolaa 
>aa )
NeedHelpProblemWithEmailAsyncaa 0
(aa0 1
stringaa1 7
emailaa8 =
)aa= >
;aa> ?
[hh 	
OperationContracthh	 
]hh 
Taskii 
<ii 
boolii 
>ii ,
 NeedHelpProblemWithPasswordAsyncii 3
(ii3 4
stringii4 :
emailii; @
)ii@ A
;iiA B
[rr 	
OperationContractrr	 
]rr 
Taskss 
<ss 
boolss 
>ss %
ChangeForgotPasswordAsyncss ,
(ss, -
stringss- 3
emailss4 9
,ss9 :
stringss; A
newPasswordssB M
,ssM N
stringssO U
tokenssV [
)ss[ \
;ss\ ]
}tt 
}vv ä
hC:\Users\gearh\source\repos\CatanServer\CatanService\EndPoint\AccountEndpoints\AccountServiceEndPoint.cs
	namespace 	
CatanService
 
. 
EndPoint 
{ 
public 

class "
AccountServiceEndPoint '
:( )
IAccountEndPoint* :
{ 
private 
readonly 
IServiceManager (
serviceManager) 7
;7 8
public "
AccountServiceEndPoint %
(% &
IServiceManager& 5
serviceManager6 D
)D E
{ 	
this 
. 
serviceManager 
=  !
serviceManager" 0
;0 1
} 	
public 
async 
Task 
< 5
)OperationResultChangeRegisterEmailOrPhone C
>C D#
ChangeEmailOrPhoneAsyncE \
(\ ]

AccountDto] g
accountClientDtoh x
)x y
{ 	
if 
( 
accountClientDto  
!=! #
null$ (
&&) +
(, -
accountClientDto- =
.= >
Email> C
!=D F
nullG K
||L N
accountClientDtoO _
._ `
PhoneNumber` k
!=l n
nullo s
)s t
&&u w
accountClientDto	x à
.
à â
Id
â ã
!=
å é
null
è ì
&& 
await 
serviceManager '
.' (
ProfileService( 6
.6 7
IsOnline7 ?
(? @
(@ A
intA D
)D E
accountClientDtoE U
.U V
IdV X
,X Y
accountClientDtoZ j
.j k
CurrentSessionIdk {
){ |
)| }
{   
return!! 
await!! 
serviceManager!! +
.!!+ ,
AccountService!!, :
.!!: ;C
7SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync!!; r
(!!r s
accountClientDto	!!s É
)
!!É Ñ
;
!!Ñ Ö
}"" 
return## 
new## 5
)OperationResultChangeRegisterEmailOrPhone## @
(##@ A
false##A F
,##F G
LanguageUtilities##H Y
.##Y Z(
LANGUAGE_ENGLISH_FORMAT_RESX##Z v
,##v w&
EnumChangeAccountRegister	##x ë
.
##ë í
UnableToSaveData
##í ¢
)
##¢ £
;
##£ §
}$$ 	
public&& 
async&& 
Task&& 
<&& 
OperationResultDto&& ,
>&&, -
ChangePasswordAsync&&. A
(&&A B

AccountDto&&B L
accountClientDto&&M ]
)&&] ^
{'' 	
if(( 
((( 
accountClientDto((  
!=((! #
null(($ (
&&(() +
accountClientDto((, <
.((< =
Password((= E
!=((F H
null((I M
&&((N P
accountClientDto((Q a
.((a b
Id((b d
!=((e g
null((h l
&&)) 
await)) 
serviceManager)) '
.))' (
ProfileService))( 6
.))6 7
IsOnline))7 ?
())? @
())@ A
int))A D
)))D E
accountClientDto))E U
.))U V
Id))V X
,))X Y
accountClientDto))Z j
.))j k
CurrentSessionId))k {
))){ |
)))| }
{** 
return++ 
await++ 
serviceManager++ +
.+++ ,
AccountService++, :
.++: ;?
3SendVerificationCodeToChangePasswordInDataBaseAsync++; n
(++n o
accountClientDto++o 
)	++ Ä
;
++Ä Å
},, 
return-- 
new-- 
OperationResultDto-- )
(--) *
false--* /
,--/ 0
LanguageUtilities--1 B
.--B C(
LANGUAGE_ENGLISH_FORMAT_RESX--C _
)--_ `
;--` a
}.. 	
public00 
async00 
Task00 
<00 +
OperationResultCreateAccountDto00 9
>009 :
CreateAccountAsync00; M
(00M N

AccountDto00N X
accountClientDto00Y i
)00i j
{11 	
if22 
(22 
accountClientDto22  
!=22! #
null22$ (
&&22) +
!22, -
accountClientDto22- =
.22= >
Name22> B
.22B C
ToUpper22C J
(22J K
)22K L
.22L M

StartsWith22M W
(22W X&
AccountValidationUtilities22X r
.22r s%
GUEST_USER_RESERVED_NAME	22s ã
)
22ã å
)
22å ç
{33 
return44 
await44 
serviceManager44 +
.44+ ,
AccountService44, :
.44: ;(
CreateAccountInDataBaseAsync44; W
(44W X
accountClientDto44X h
)44h i
;44i j
}55 
return77 
new77 +
OperationResultCreateAccountDto77 6
(776 7
false777 <
,77< =
LanguageUtilities77> O
.77O P(
LANGUAGE_ENGLISH_FORMAT_RESX77P l
,77l m$
EnumCreateAccountStatus	77n Ö
.
77Ö Ü
ErrorSaving
77Ü ë
)
77ë í
;
77í ì
}88 	
public99 
async99 
Task99 
<99 %
OperationResultProfileDto99 3
>993 4

LogInAsync995 ?
(99? @

AccountDto99@ J
accountClientDto99K [
)99[ \
{:: 	
if;; 
(;; 
accountClientDto;;  
!=;;! #
null;;$ (
);;( )
{<< 
return== 
await== 
serviceManager== +
.==+ ,
AccountService==, :
.==: ; 
LogInInDataBaseAsync==; O
(==O P
accountClientDto==P `
)==` a
;==a b
}>> 
return@@ 
new@@ %
OperationResultProfileDto@@ 0
(@@0 1
false@@1 6
,@@6 7
LanguageUtilities@@8 I
.@@I J(
LANGUAGE_ENGLISH_FORMAT_RESX@@J f
,@@f g%
EnumAuthenticationStatus	@@h Ä
.
@@Ä Å
	Incorrect
@@Å ä
)
@@ä ã
;
@@ã å
}AA 	
publicCC 
asyncCC 
TaskCC 
<CC 
boolCC 
>CC '
ResendVerificationCodeAsyncCC  ;
(CC; <
stringCC< B
emailOrPhoneCCC O
)CCO P
{DD 	
boolEE 
isSuccessResendEE  
=EE! "
falseEE# (
;EE( )
ifGG 
(GG 
!GG 
stringGG 
.GG 
IsNullOrEmptyGG %
(GG% &
emailOrPhoneGG& 2
)GG2 3
)GG3 4
{HH 
isSuccessResendII 
=II  !
awaitII" '
serviceManagerII( 6
.II6 7
AccountServiceII7 E
.IIE F'
ResendVerificationCodeAsyncIIF a
(IIa b
emailOrPhoneIIb n
)IIn o
;IIo p
}JJ 
returnLL 
isSuccessResendLL "
;LL" #
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
OperationResultDtoPP ,
>PP, -0
$SendVerificationCodeToChangePasswordPP. R
(PPR S

AccountDtoPPS ]
accountClientDtoPP^ n
)PPn o
{QQ 	
ifRR 
(RR 
accountClientDtoRR  
!=RR! #
nullRR$ (
&&RR) +
accountClientDtoRR, <
.RR< =
TokenRR= B
!=RRC E
nullRRF J
&&RRK M
accountClientDtoRRN ^
.RR^ _
IdRR_ a
!=RRb d
nullRRe i
&&RRj l
awaitSS 
serviceManagerSS $
.SS$ %
ProfileServiceSS% 3
.SS3 4
IsOnlineSS4 <
(SS< =
(SS= >
intSS> A
)SSA B
accountClientDtoSSB R
.SSR S
IdSSS U
,SSU V
accountClientDtoSSW g
.SSg h
CurrentSessionIdSSh x
)SSx y
)SSy z
{TT 
returnUU 
awaitUU 
serviceManagerUU +
.UU+ ,
AccountServiceUU, :
.UU: ;)
ChangePasswordInDataBaseAsyncUU; X
(UUX Y
accountClientDtoUUY i
)UUi j
;UUj k
}VV 
returnWW 
newWW 
OperationResultDtoWW )
(WW) *
falseWW* /
,WW/ 0
LanguageUtilitiesWW1 B
.WWB C(
LANGUAGE_ENGLISH_FORMAT_RESXWWC _
)WW_ `
;WW` a
}XX 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
OperationResultDtoZZ ,
>ZZ, -
VerifyAccountAsyncZZ. @
(ZZ@ A

AccountDtoZZA K
accountClientDtoZZL \
)ZZ\ ]
{[[ 	
if\\ 
(\\ 
accountClientDto\\  
!=\\! #
null\\$ (
&&\\) +
accountClientDto\\, <
.\\< =
Token\\= B
.\\B C
Length\\C I
==\\J L&
AccountValidationUtilities\\M g
.\\g h&
TOKEN_VERIFY_ACCOUNT_SIZE	\\h Å
)
\\Å Ç
{]] 
return^^ 
await^^ 
serviceManager^^ +
.^^+ ,
AccountService^^, :
.^^: ;
IsVerifyAccount^^; J
(^^J K
accountClientDto^^K [
)^^[ \
;^^\ ]
}__ 
return`` 
new`` 
OperationResultDto`` )
(``) *
false``* /
,``/ 0
LanguageUtilities``1 B
.``B C(
LANGUAGE_ENGLISH_FORMAT_RESX``C _
)``_ `
;``` a
}aa 	
publicbb 
asyncbb 
Taskbb 
<bb 5
)OperationResultChangeRegisterEmailOrPhonebb C
>bbC D4
(SendVerificationCodeToChangeEmailOrPhonebbE m
(bbm n

AccountDtobbn x
accountClientDto	bby â
)
bbâ ä
{cc 	
ifdd 
(dd 
accountClientDtodd  
!=dd! #
nulldd$ (
&&dd) +
(dd, -
accountClientDtodd- =
.dd= >
Emaildd> C
!=ddD F
nullddG K
||ddL N
accountClientDtoddO _
.dd_ `
PhoneNumberdd` k
!=ddl n
nullddo s
)dds t
&&ee 
accountClientDtoee #
.ee# $
Tokenee$ )
!=ee* ,
nullee- 1
&&ee2 4
accountClientDtoee5 E
.eeE F
IdeeF H
!=eeI K
nulleeL P
&&eeQ S
awaitff 
serviceManagerff $
.ff$ %
ProfileServiceff% 3
.ff3 4
IsOnlineff4 <
(ff< =
(ff= >
intff> A
)ffA B
accountClientDtoffB R
.ffR S
IdffS U
,ffU V
accountClientDtoffW g
.ffg h
CurrentSessionIdffh x
)ffx y
)ffy z
{gg 
returnhh 
awaithh 
serviceManagerhh +
.hh+ ,
AccountServicehh, :
.hh: ;-
!ChangeEmailOrPhoneInDataBaseAsynchh; \
(hh\ ]
accountClientDtohh] m
)hhm n
;hhn o
}ii 
returnjj 
newjj 5
)OperationResultChangeRegisterEmailOrPhonejj @
(jj@ A
falsejjA F
,jjF G
LanguageUtilitiesjjH Y
.jjY Z(
LANGUAGE_ENGLISH_FORMAT_RESXjjZ v
,jjv w%
EnumChangeAccountRegisterkk )
.kk) *
UnableToSaveDatakk* :
)kk: ;
;kk; <
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn %
OperationResultAccountDtonn 3
>nn3 40
$ConsultAccounProfileInformationAsyncnn5 Y
(nnY Z

ProfileDtonnZ d
profileClientDtonne u
)nnu v
{oo 	
ifpp 
(pp 
profileClientDtopp 
!=pp  "
nullpp# '
&&pp( *
profileClientDtopp+ ;
.pp; <
PreferredLanguagepp< M
!=ppN P
nullppQ U
&&ppV X
profileClientDtoppY i
.ppi j
Idppj l
!=ppm o
nullppp t
&&qq 
awaitqq 
serviceManagerqq '
.qq' (
ProfileServiceqq( 6
.qq6 7
IsOnlineqq7 ?
(qq? @
(qq@ A
intqqA D
)qqD E
profileClientDtoqqE U
.qqU V
IdqqV X
,qqX Y
profileClientDtoqqZ j
.qqj k
CurrentSessionIDqqk {
)qq{ |
)qq| }
{rr 
returnss 
awaitss 
serviceManagerss +
.ss+ ,
AccountServicess, :
.ss: ;2
&ConsultAccountProfileServiceInDataBasess; a
(ssa b
profileClientDtossb r
)ssr s
;sss t
}tt 
returnuu 
newuu %
OperationResultAccountDtouu 0
(uu0 1
falseuu1 6
,uu6 7
LanguageUtilitiesuu8 I
.uuI J(
LANGUAGE_ENGLISH_FORMAT_RESXuuJ f
)uuf g
;uug h
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
boolxx 
>xx )
NeedHelpProblemWithEmailAsyncxx  =
(xx= >
stringxx> D
emailxxE J
)xxJ K
{yy 	
ifzz 
(zz 
!zz 
stringzz 
.zz 
IsNullOrEmptyzz %
(zz% &
emailzz& +
)zz+ ,
)zz, -
{{{ 
return|| 
await|| 
serviceManager|| +
.||+ ,
AccountService||, :
.||: ;.
"NeedHelpProblemWithEmailInDataBase||; ]
(||] ^
email||^ c
)||c d
;||d e
}}} 
return~~ 
false~~ 
;~~ 
} 	
public
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
bool
ÅÅ 
>
ÅÅ .
 NeedHelpProblemWithPasswordAsync
ÅÅ  @
(
ÅÅ@ A
string
ÅÅA G
email
ÅÅH M
)
ÅÅM N
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
string
ÉÉ 
.
ÉÉ 
IsNullOrEmpty
ÉÉ %
(
ÉÉ% &
email
ÉÉ& +
)
ÉÉ+ ,
)
ÉÉ, -
{
ÑÑ 
return
ÖÖ 
await
ÖÖ 
serviceManager
ÖÖ +
.
ÖÖ+ ,
AccountService
ÖÖ, :
.
ÖÖ: ;3
%NeedHelpProblemWithPasswordInDataBase
ÖÖ; `
(
ÖÖ` a
email
ÖÖa f
)
ÖÖf g
;
ÖÖg h
}
ÜÜ 
return
áá 
false
áá 
;
áá 
}
àà 	
public
ää 
async
ää 
Task
ää 
<
ää 
bool
ää 
>
ää '
ChangeForgotPasswordAsync
ää  9
(
ää9 :
string
ää: @
email
ääA F
,
ääF G
string
ääH N
newPassword
ääO Z
,
ääZ [
string
ää\ b
token
ääc h
)
ääh i
{
ãã 	
if
åå 
(
åå 
!
åå 
string
åå 
.
åå 
IsNullOrEmpty
åå %
(
åå% &
email
åå& +
)
åå+ ,
&&
åå- /
!
åå0 1
string
åå1 7
.
åå7 8
IsNullOrEmpty
åå8 E
(
ååE F
newPassword
ååF Q
)
ååQ R
&&
ååS U
!
ååV W
string
ååW ]
.
åå] ^
IsNullOrEmpty
åå^ k
(
ååk l
token
åål q
)
ååq r
)
åår s
{
çç 
return
éé 
await
éé 
serviceManager
éé +
.
éé+ ,
AccountService
éé, :
.
éé: ;,
ChangeForgotPasswordInDataBase
éé; Y
(
ééY Z
email
ééZ _
,
éé_ `
newPassword
ééa l
,
éél m
token
één s
)
éés t
;
éét u
}
èè 
return
êê 
false
êê 
;
êê 
}
ëë 	
}
íí 
}ìì ˚
sC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultProfileListDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{ 
[ 
DataContract 
] 
public 

class )
OperationResultProfileListDto .
:/ 0
OperationResultDto1 C
{ 
public		 )
OperationResultProfileListDto		 ,
(		, -
bool		- 1
	IsSuccess		2 ;
,		; <
string		= C
MessageResponse		D S
,		S T
List		U Y
<		Y Z

ProfileDto		Z d
>		d e
profiles		f n
)		n o
:		p q
base		r v
(		v w
	IsSuccess			w Ä
,
		Ä Å
MessageResponse
		Ç ë
)
		ë í
{

 	
this 
. 
ProfileDtos 
= 
profiles '
;' (
} 	
public )
OperationResultProfileListDto ,
(, -
bool- 1
	IsSuccess2 ;
,; <
string= C
MessageResponseD S
)S T
:U V
baseW [
([ \
	IsSuccess\ e
,e f
MessageResponseg v
)v w
{ 	
} 	
[ 	

DataMember	 
] 
public 
List 
< 

ProfileDto 
> 
ProfileDtos  +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} Ï#
oC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultProfileDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{ 
[ 
DataContract 
] 
public 

class %
OperationResultProfileDto *
:+ ,
OperationResultDto- ?
{ 
public %
OperationResultProfileDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
,O P

ProfileDtoQ [
profile\ c
,c d$
EnumAuthenticationStatuse }
Status	~ Ñ
)
Ñ Ö
:
Ü á
base
à å
(
å ç
	IsSuccess
ç ñ
,
ñ ó
MessageResponse
ò ß
)
ß ®
{ 	
this 
. 

ProfileDto 
= 
profile %
;% &
this 
. !
AunthenticationStatus &
=' (
Status) /
;/ 0
} 	
public %
OperationResultProfileDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
,O P

ProfileDtoQ [
profile\ c
,c d%
EnumChangeAccountRegistere ~
status	 Ö
)
Ö Ü
:
á à
base
â ç
(
ç é
	IsSuccess
é ó
,
ó ò
MessageResponse
ô ®
)
® ©
{ 	
this 
. 

ProfileDto 
= 
profile %
;% &
this 
. !
ChangeAccountRegister &
=' (
status) /
;/ 0
} 	
public %
OperationResultProfileDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
,O P

ProfileDtoQ [
profile\ c
)c d
:e f
baseg k
(k l
	IsSuccessl u
,u v
MessageResponse	w Ü
)
Ü á
{ 	
this 
. 

ProfileDto 
= 
profile %
;% &
} 	
public %
OperationResultProfileDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
)O P
:Q R
baseS W
(W X
	IsSuccessX a
,a b
MessageResponsec r
)r s
{ 	
}   	
public"" %
OperationResultProfileDto"" (
(""( )
bool"") -
	IsSuccess"". 7
,""7 8
string""9 ?
MessageResponse""@ O
,""O P%
EnumChangeAccountRegister""Q j
status""k q
)""q r
:""s t
base""u y
(""y z
	IsSuccess	""z É
,
""É Ñ
MessageResponse
""Ö î
)
""î ï
{## 	
this$$ 
.$$ !
ChangeAccountRegister$$ &
=$$' (
status$$) /
;$$/ 0
}%% 	
public'' %
OperationResultProfileDto'' (
(''( )
bool'') -
	IsSuccess''. 7
,''7 8
string''9 ?
MessageResponse''@ O
,''O P$
EnumAuthenticationStatus''Q i
Status''j p
)''p q
:''r s
base''t x
(''x y
	IsSuccess	''y Ç
,
''Ç É
MessageResponse
''Ñ ì
)
''ì î
{(( 	
this)) 
.)) !
AunthenticationStatus)) &
=))' (
Status))) /
;))/ 0
}** 	
[,, 	

DataMember,,	 
],, 
public-- 

ProfileDto-- 

ProfileDto-- $
{--% &
get--' *
;--* +
set--, /
;--/ 0
}--1 2
[.. 	

DataMember..	 
].. 
public// $
EnumAuthenticationStatus// '!
AunthenticationStatus//( =
{//> ?
get//@ C
;//C D
set//E H
;//H I
}//J K
[00 	

DataMember00	 
]00 
public11 %
EnumChangeAccountRegister11 (!
ChangeAccountRegister11) >
{11? @
get11A D
;11D E
set11F I
;11I J
}11K L
}22 
}33 ≠
oC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultPictureDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class %
OperationResultPictureDto *
:+ ,
OperationResultDto- ?
{ 
public %
OperationResultPictureDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
,O P
byteQ U
[U V
]V W
pictureX _
)_ `
:a b
basec g
(g h
	IsSuccessh q
,q r
MessageResponse	s Ç
)
Ç É
{ 	
this 
. 
Picture 
= 
picture "
;" #
} 	
public %
OperationResultPictureDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
)O P
:Q R
baseS W
(W X
	IsSuccessX a
,a b
MessageResponsec r
)r s
{ 	
} 	
[ 	

DataMember	 
] 
public 
byte 
[ 
] 
Picture 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ·
rC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultListScoreGame.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class (
OperationResultListScoreGame -
:. /
OperationResultDto0 B
{ 
public (
OperationResultListScoreGame +
(+ ,
bool, 0
	IsSuccess1 :
,: ;
string< B
MessageResponseC R
,R S
ListT X
<X Y
ProfileScoreDtoY h
>h i
listProfileScoreDtoj }
,} ~
ProfileScoreDto	 é
profileScoreDto
è û
)
û ü
:
† °
base
¢ ¶
(
¶ ß
	IsSuccess
ß ∞
,
∞ ±
MessageResponse
≤ ¡
)
¡ ¬
{ 	
this 
. 
ListProfileScoreDto $
=% &
listProfileScoreDto' :
;: ;
this 
. 
ProfileScoreDto  
=! "
profileScoreDto# 2
;2 3
} 	
public (
OperationResultListScoreGame +
(+ ,
bool, 0
	IsSuccess1 :
,: ;
string< B
MessageResponseC R
)R S
:T U
baseV Z
(Z [
	IsSuccess[ d
,d e
MessageResponsef u
)u v
{ 	
} 	
public (
OperationResultListScoreGame +
(+ ,
bool, 0
	IsSuccess1 :
,: ;
string< B
MessageResponseC R
,R S
ListT X
<X Y
ProfileScoreDtoY h
>h i
listProfileScoreDtoj }
)} ~
:	 Ä
base
Å Ö
(
Ö Ü
	IsSuccess
Ü è
,
è ê
MessageResponse
ë †
)
† °
{ 	
this 
. 
ListProfileScoreDto $
=% &
listProfileScoreDto' :
;: ;
} 	
[ 	

DataMember	 
] 
public 
List 
< 
ProfileScoreDto #
># $
ListProfileScoreDto% 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
ProfileScoreDtoR a
>a b
(b c
)c d
;d e
[ 	

DataMember	 
] 
public 
ProfileScoreDto 
ProfileScoreDto .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} ˛
vC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultListOfPlayersTurn.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
.		) *

ResultDtos		* 4
{

 
[ 
DataContract 
] 
public 

class ,
 OperationResultListOfPlayersTurn 1
:2 3
OperationResultDto4 F
{ 
public ,
 OperationResultListOfPlayersTurn /
(/ 0
bool0 4
	IsSuccess5 >
,> ?
string@ F
MessageResponseG V
,V W
PlayerTurnStatusDtoX k!
actualPlayerGameplay	l Ä
)
Ä Å
:
Ç É
base
Ñ à
(
à â
	IsSuccess
â í
,
í ì
MessageResponse
î £
)
£ §
{ 	 
playerTurnStatusDtos  
.  !
Add! $
($ % 
actualPlayerGameplay% 9
)9 :
;: ;
} 	
public ,
 OperationResultListOfPlayersTurn /
(/ 0
bool0 4
	IsSuccess5 >
,> ?
string@ F
MessageResponseG V
)V W
:X Y
baseZ ^
(^ _
	IsSuccess_ h
,h i
MessageResponsej y
)y z
{ 	
} 	
[ 	

DataMember	 
] 
List 
< 
PlayerTurnStatusDto  
>  ! 
playerTurnStatusDtos" 6
=7 8
new9 <
List= A
<A B
PlayerTurnStatusDtoB U
>U V
(V W
)W X
;X Y
} 
} ˝
xC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultListOfPlayersInGame.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *

ResultDtos* 4
{		 
[

 
DataContract

 
]

 
public 

class .
"OperationResultListOfPlayersInGame 3
:4 5
OperationResultDto6 H
{ 
public .
"OperationResultListOfPlayersInGame 1
(1 2
bool2 6
	IsSuccess7 @
,@ A
stringB H
MessageResponseI X
,X Y
ListZ ^
<^ _

ProfileDto_ i
>i j
profileDtosk v
,v w
Listx |
<| }
GuestAccountDto	} å
>
å ç
guestAccountDtos
é û
)
û ü
: 
base 
( 
	IsSuccess 
, 
MessageResponse -
)- .
{ 	
this 
. 
ProfileDtos 
= 
profileDtos *
;* +
this 
. 
GuestAccountDtos !
=" #
guestAccountDtos$ 4
;4 5
} 	
public .
"OperationResultListOfPlayersInGame 1
(1 2
bool2 6
	IsSuccess7 @
,@ A
stringB H
MessageResponseI X
)X Y
: 
base 
( 
	IsSuccess 
, 
MessageResponse -
)- .
{ 	
} 	
public .
"OperationResultListOfPlayersInGame 1
(1 2
bool2 6
	IsSuccess7 @
,@ A
stringB H
MessageResponseI X
,X Y
ListZ ^
<^ _

ProfileDto_ i
>i j
profileDtosk v
,v w
intx {
votesReceived	| â
)
â ä
: 
base 
( 
	IsSuccess 
, 
MessageResponse -
)- .
{ 	
this 
. 
ProfileDtos 
= 
profileDtos *
;* +
} 	
[ 	

DataMember	 
] 
public 
List 
< 

ProfileDto 
> 
ProfileDtos  +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
new< ?
List@ D
<D E

ProfileDtoE O
>O P
(P Q
)Q R
;R S
[   	

DataMember  	 
]   
public!! 
List!! 
<!! 
GuestAccountDto!! #
>!!# $
GuestAccountDtos!!% 5
{!!6 7
get!!8 ;
;!!; <
set!!= @
;!!@ A
}!!B C
=!!D E
new!!F I
List!!J N
<!!N O
GuestAccountDto!!O ^
>!!^ _
(!!_ `
)!!` a
;!!a b
}"" 
}## ≥
tC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultGuestAccountDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class *
OperationResultGuestAccountDto /
:0 1
OperationResultDto2 D
{ 
public *
OperationResultGuestAccountDto -
(- .
bool. 2
	IsSuccess3 <
,< =
string> D
MessageResponseE T
,T U
GuestAccountDtoV e
guestAccountf r
)r s
:t u
basev z
(z {
	IsSuccess	{ Ñ
,
Ñ Ö
MessageResponse
Ü ï
)
ï ñ
{ 	
this 
. 
GuestAccount 
= 
guestAccount  ,
;, -
} 	
public *
OperationResultGuestAccountDto -
(- .
bool. 2
	IsSuccess3 <
,< =
string> D
MessageResponseE T
)T U
:V W
baseX \
(\ ]
	IsSuccess] f
,f g
MessageResponseh w
)w x
{ 	
} 	
[ 	

DataMember	 
] 
public 
GuestAccountDto 
GuestAccount +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} Î
lC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultGameDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class "
OperationResultGameDto '
:( )
OperationResultDto* <
{ 
public "
OperationResultGameDto %
(% &
bool& *
	IsSuccess+ 4
,4 5
string6 <
MessageResponse= L
,L M
GameDtoN U
GameDtoV ]
)] ^
:_ `
basea e
(f g
	IsSuccessg p
,p q
MessageResponse	r Å
)
Å Ç
{ 	
this 
. 
GameDto 
= 
GameDto "
;" #
} 	
public "
OperationResultGameDto %
(% &
bool& *
	IsSuccess+ 4
,4 5
string6 <
MessageResponse= L
)L M
:N O
baseP T
(T U
	IsSuccessU ^
,^ _
MessageResponse` o
)o p
{ 	
} 	
[ 	

DataMember	 
] 
public 
GameDto 
GameDto 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ¨

uC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultFriendRequestDto.cs
	namespace

 	
CatanService


 
.

 
DataTransferObject

 )
.

) *

ResultDtos

* 4
{ 
[ 
DataContract 
] 
public 

class +
OperationResultFriendRequestDto 0
:1 2
OperationResultDto3 E
{ 
public +
OperationResultFriendRequestDto .
(. /
bool/ 3
	IsSuccess4 =
,= >
string? E
MessageResponseF U
,U V!
EnumSendFriendRequestW l
statusFriendRequesm 
)	 Ä
:
Å Ç
base
É á
(
á à
	IsSuccess
à ë
,
ë í
MessageResponse
ì ¢
)
¢ £
{ 	
this 
. #
StatusSendFriendRequest (
=) *
statusFriendReques+ =
;= >
} 	
[ 	

DataMember	 
] 
public !
EnumSendFriendRequest $#
StatusSendFriendRequest% <
{= >
get? B
;B C
setD G
;G H
}I J
} 
} §
aC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ProfileDtos\ProfileDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
{

 
[ 
DataContract 
] 
public 

class 

ProfileDto 
{ 
[ 	

DataMember	 
] 
public 
int 
? 
Id 
{ 
get 
; 
set !
;! "
}# $
=% &
$num' (
;( )
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
PreferredLanguage '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

DataMember	 
] 
public 
bool 
IsRegistered  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
true1 5
;5 6
[ 	

DataMember	 
] 
public 
byte 
[ 
] 
ProfilePicture $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
CurrentSessionID &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	

DataMember	 
] 
public 
int 
PictureVersion !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$num2 3
;3 4
[ 	

DataMember	 
] 
public   
bool   
IsOnline   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
=  + ,
false  - 2
;  2 3
[!! 	

DataMember!!	 
]!! 
public"" 
bool"" 
isReadyToPlay"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
=""0 1
false""2 7
;""7 8
[## 	

DataMember##	 
]## 
public$$ 
int$$ 
votesReceived$$  
{$$! "
get$$# &
;$$& '
set$$( +
;$$+ ,
}$$- .
=$$/ 0
$num$$1 2
;$$2 3
}%% 
}&& Ë	
hC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
{

 
[ 
DataContract 
] 
public 

class 
OperationResultDto #
{ 
public 
OperationResultDto !
(! "
bool" &
	IsSuccess' 0
,0 1
string2 8
MessageResponse9 H
)H I
{ 	
this 
. 
	IsSuccess 
= 
	IsSuccess &
;& '
this 
. 
MessageResponse  
=! "
MessageResponse# 2
;2 3
} 	
[ 	

DataMember	 
] 
public 
bool 
	IsSuccess 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

DataMember	 
] 
public 
string 
MessageResponse %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} „
uC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultCreateAccountDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
{

 
[ 
DataContract 
] 
public 

class +
OperationResultCreateAccountDto 0
:1 2
OperationResultDto3 E
{ 
public +
OperationResultCreateAccountDto .
(. /
bool/ 3
	IsSuccess4 =
,= >
string? E
MessageResponseF U
,U V#
EnumCreateAccountStatusW n
statuso u
)u v
:w x
basey }
(} ~
	IsSuccess	~ á
,
á à
MessageResponse
â ò
)
ò ô
{ 	
this 
. 
status 
= 
status  
;  !
} 	
public +
OperationResultCreateAccountDto .
(. /
bool/ 3
	IsSuccess4 =
,= >
string? E
MessageResponseF U
,U V#
EnumCreateAccountStatusW n
statuso u
,u v

ProfileDto	w Å

profileDto
Ç å
)
å ç
:
é è
base
ê î
(
î ï
	IsSuccess
ï û
,
û ü
MessageResponse
† Ø
)
Ø ∞
{ 	
this 
. 
status 
= 
status  
;  !
this 
. 

ProfileDto 
= 

profileDto '
;' (
} 	
[ 	

DataMember	 
] 
public #
EnumCreateAccountStatus &
status' -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	

DataMember	 
] 

ProfileDto 

ProfileDto 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} â

C:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultChangeRegisterEmailOrPhone.cs
	namespace

 	
CatanService


 
.

 
DataTransferObject

 )
{ 
[ 
DataContract 
] 
public 

class 5
)OperationResultChangeRegisterEmailOrPhone :
:; <
OperationResultDto= O
{ 
public 5
)OperationResultChangeRegisterEmailOrPhone 8
(8 9
bool9 =
	IsSuccess> G
,G H
stringI O
MessageResponseP _
,_ `%
EnumChangeAccountRegistera z
status	{ Å
)
Å Ç
:
É Ñ
base
Ö â
(
â ä
	IsSuccess
ä ì
,
ì î
MessageResponse
ï §
)
§ •
{ 	
this 
. '
StatusChangeAccountRegister ,
=- .
status/ 5
;5 6
} 	
[ 	

DataMember	 
] %
EnumChangeAccountRegister !'
StatusChangeAccountRegister" =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ı
oC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResultAccountDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class %
OperationResultAccountDto *
:+ ,
OperationResultDto- ?
{ 
public %
OperationResultAccountDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
,O P

AccountDtoQ [

accountDto\ f
)f g
:h i
basej n
(n o
	IsSuccesso x
,x y
MessageResponse	z â
)
â ä
{ 	
this 
. 

AccountDto 
= 

accountDto (
;( )
} 	
public %
OperationResultAccountDto (
(( )
bool) -
	IsSuccess. 7
,7 8
string9 ?
MessageResponse@ O
)O P
:Q R
baseS W
(W X
	IsSuccessX a
,a b
MessageResponsec r
)r s
{ 	
} 	
[ 	

DataMember	 
] 

AccountDto 

AccountDto 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ‹
pC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ResultDtos\OperationResulGameBoardDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
.		) *

ResultDtos		* 4
{

 
[ 
DataContract 
] 
public 

class &
OperationResulGameBoardDto +
:, -
OperationResultDto. @
{ 
public &
OperationResulGameBoardDto )
() *
bool* .
	IsSuccess/ 8
,8 9
string: @
MessageResponseA P
,P Q
GameBoardStateDtoR c
gameBoardStateDtod u
)u v
:w x
basey }
(} ~
	IsSuccess	~ á
,
á à
MessageResponse
â ò
)
ò ô
{ 	
this 
. 
GameBoardState 
=  !
gameBoardStateDto" 3
;3 4
} 	
public &
OperationResulGameBoardDto )
() *
bool* .
	IsSuccess/ 8
,8 9
string: @
MessageResponseA P
)P Q
:R S
baseT X
(X Y
	IsSuccessY b
,b c
MessageResponsed s
)s t
{ 	
} 	
[ 	

DataMember	 
] 
public 
GameBoardStateDto  
GameBoardState! /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ¬

fC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\ProfileDtos\ProfileScoreDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class 
ProfileScoreDto  
{ 
[ 	

DataMember	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
int 
Score 
{ 
get 
; 
set  #
;# $
}% &
=' (
$num) *
;* +
[ 	

DataMember	 
] 
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
[ 	

DataMember	 
] 
public 
int 
GamesWon 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
} 
} «

gC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\PlayerDtos\PlayerGameplayDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
.		) *

PlayerDtos		* 4
{

 
[ 
DataContract 
] 
public 

class 
PlayerGameplayDto "
{ 
[ 	

DataMember	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	

DataMember	 
] 
public 
string 
CurrentSession $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
] 
public 
bool 
isRegistered  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
false1 6
;6 7
[ 	

DataMember	 
] 
public 
int 
Points 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$num* +
;+ ,
} 
} Œ
_C:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\PlayerDtos\PlayerDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *

PlayerDtos* 4
{		 
[

 
DataContract

 
]

 
public 

class 
	PlayerDto 
{ 
[ 	

DataMember	 
] 
public 

ProfileDto 

profileDto $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
] 
public 
GuestAccountDto 
guestAccountDto .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} á
aC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\PlayerDtos\PlayerCatan.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *

PlayerDtos* 4
{		 
[

 
DataContract

 
]

 
public 

class 
PlayerCatan 
{ 
[ 	

DataMember	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	

DataMember	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
string 
CurrentSession $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ò
dC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\PlayerDtos\ExpelPlayerDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *

PlayerDtos* 4
{		 
[

 
DataContract

 
]

 
public 

class 
ExpelPlayerDto 
{ 
[ 	

DataMember	 
] 
public 
int 
IdPlayerToExpel "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
Reason 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
} 
} µ

iC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\PlayerDtos\PlayerTurnStatusDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
.		) *

PlayerDtos		* 4
{

 
[ 
DataContract 
] 
public 

class 
PlayerTurnStatusDto $
{ 
[ 	

DataMember	 
] 
public 

ProfileDto 
ProfileTurnDto (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	

DataMember	 
] 
public 
GuestAccountDto 
GuestAccountTurnDto 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
[ 	

DataMember	 
] 
public 
bool 
IsTurn 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
int 
Points 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$num* +
;+ ,
} 
} ˘
hC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\Enums\EnumCreateAccountStatus.cs
	namespace 	
DataTransferObject
 
. 
Enums "
{ 
[ 
DataContract 
] 
public 

enum #
EnumCreateAccountStatus '
{ 
[ 	

EnumMember	 
] 

ExistsName		 
=		 
$num		 
,		 
[

 	

EnumMember

	 
]

 
ExistsAccount 
= 
$num 
, 
[ 	

EnumMember	 
] 
ErrorSaving 
= 
$num 
, 
[ 	

EnumMember	 
] 
SuccessSave 
= 
$num 
, 
} 
} Ú
iC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\Enums\EnumAuthenticationStatus.cs
	namespace 	
DataTransferObject
 
. 
Enums "
{ 
[ 
DataContract 
] 
public 

enum $
EnumAuthenticationStatus (
{ 
[ 	

EnumMember	 
] 
	Incorrect		 
=		 
$num		 
,		 
[

 	

EnumMember

	 
]

 
NotVerified 
= 
$num 
, 
[ 	

EnumMember	 
] 
Verified 
= 
$num 
, 
[ 	

EnumMember	 
] 
InGame 
= 
$num 
, 
[ 	

EnumMember	 
] 
ServerNotFound 
= 
$num 
, 
} 
} á
kC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GuestAccountDtos\GuestAccountDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class 
GuestAccountDto  
{ 
[ 	

DataMember	 
] 
public 
int 
? 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	

DataMember	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
string 
PreferredLanguage '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

DataMember	 
] 
public 
bool 
isReadyToPlay !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
false2 7
;7 8
[ 	

DataMember	 
] 
public 
int 
votesReceived  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
$num1 2
;2 3
[ 	

DataMember	 
] 
public 
int 
Points 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$num* +
;+ ,
} 
} ü
lC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GamePlayDto\Resources\ResourceDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *
GamePlayDto* 5
.5 6
	Resources6 ?
{		 
[

 
DataContract

 
]

 
public 

class 
ResourceDto 
{ 
[ 	

DataMember	 
] 
public 
string 
ResourceName "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
} 
} Ë
sC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GamePlayDto\Resources\PlayerResourcesDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *
GamePlayDto* 5
.5 6
	Resources6 ?
{		 
[

 
DataContract

 
]

 
public 

class 
PlayerResourcesDto #
{ 
[ 	

DataMember	 
] 
public 
int 
PlayerId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

DataMember	 
] 
public 
ResourceDto 

LunarStone %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	

DataMember	 
] 
public 
ResourceDto 
	Tritonium $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
] 
public 
ResourceDto 
AlphaNanofibers *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[ 	

DataMember	 
] 
public 
ResourceDto 
EpsilonBiomass )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	

DataMember	 
] 
public 
ResourceDto 
Grx810 !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}   ∆
sC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GamePlayDto\PlayersMove\PicePlacementDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
.		) *
GamePlayDto		* 5
.		5 6
PlayersMove		6 A
{

 
[ 
DataContract 
] 
public 

class 
PiecePlacementDto "
{ 
[ 	

DataMember	 
] 
public 
string 
	PieceType 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
int 
TargetHexId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
int 
TargetVertexId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
int 
TargetEdgeId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
int 
	TargetRow 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
int 
	TargetCol 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}!! …
hC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GamePlayDto\GameBoardStateDto.cs
	namespace		 	
CatanService		
 
.		 
DataTransferObject		 )
.		) *
GamePlayDto		* 5
{

 
[ 
DataContract 
] 
public 

class 
GameBoardStateDto "
{ 
[ 	

DataMember	 
] 
public 
int 
GameId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
List 
< 

HexTileDto 
> 
HexTiles  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
IsInitialPhase "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
true3 7
;7 8
} 
} ∞
fC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GamePlayDto\Board\VertexDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *
GamePlayDto* 5
.5 6
Board6 ;
{		 
[

 
DataContract

 
]

 
public 

class 
	VertexDto 
{ 
[ 	

DataMember	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	

DataMember	 
] 
public 
bool 

IsOccupied 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
int 
? 
OwnerPlayerId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
bool 
IsCity 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
List 
< 
int 
> 
ConnectedEdges '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A
intA D
>D E
(E F
)F G
;G H
[ 	

DataMember	 
] 
public 
List 
< 
int 
> 
ConnectedHexes '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A
intA D
>D E
(E F
)F G
;G H
} 
} ë
gC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GamePlayDto\Board\HexTileDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *
GamePlayDto* 5
.5 6
Board6 ;
{		 
[

 
DataContract

 
]

 
public 

class 

HexTileDto 
{ 
[ 	

DataMember	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	

DataMember	 
] 
public 
string 
Resource 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
int 
	DiceValue 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
List 
< 
	VertexDto 
> 
Vertices '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A
	VertexDtoA J
>J K
(K L
$numL M
)M N
;N O
[ 	

DataMember	 
] 
public 
List 
< 
EdgeDto 
> 
Edges "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
List7 ;
<; <
EdgeDto< C
>C D
(D E
$numE F
)F G
;G H
[ 	

DataMember	 
] 
public 
int 
Row 
{ 
get 
; 
set !
;! "
}# $
[ 	

DataMember	 
] 
public 
int 
Column 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ﬁ
dC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GamePlayDto\Board\EdgeDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *
GamePlayDto* 5
.5 6
Board6 ;
{		 
[

 
DataContract

 
]

 
public 

class 
EdgeDto 
{ 
[ 	

DataMember	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	

DataMember	 
] 
public 
bool 

IsOccupied 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
int 
? 
OwnerPlayerId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
List 
< 
int 
> 
ConnectedHexes '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A
intA D
>D E
(E F
)F G
;G H
[ 	

DataMember	 
] 
public 
List 
< 
int 
> 
ConnectedEdges '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A
intA D
>D E
(E F
)F G
;G H
} 
} ò
[C:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\GameDtos\GameDto.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
{		 
[

 
DataContract

 
]

 
public 

class 
GameDto 
{ 
[ 	

DataMember	 
] 
public 
int 
? 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	

DataMember	 
] 
public 
string 
	AccessKey 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
int 
? 
MaxNumberPlayers $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
int 
IdAdminGame 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ©
fC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\Enums\EnumSendFriendRequest.cs
	namespace 	
CatanService
 
. 
DataTransferObject )
.) *
Enums* /
{		 
[

 
DataContract

 
]

 
public 

enum !
EnumSendFriendRequest %
{ 
[ 	

EnumMember	 
] 
NotFoundProfile 
= 
$num 
, 
[ 	

EnumMember	 
] 
ExistsFriendRequest 
= 
$num 
,  
[ 	

EnumMember	 
] 
ErrorSaving 
= 
$num 
, 
[ 	

EnumMember	 
] 
SuccessSave 
= 
$num 
, 
} 
} Ï
jC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\Enums\EnumChangeAccountRegister.cs
	namespace 	
DataTransferObject
 
. 
Enums "
{ 
[ 
DataContract 
] 
public 

enum %
EnumChangeAccountRegister )
{ 
[ 	

EnumMember	 
] 
Success		 
=		 
$num		 
,		 
[

 	

EnumMember

	 
]

 
Invalid 
= 
$num 
, 
[ 	

EnumMember	 
] 
AlreadyExists 
= 
$num 
, 
[ 	

EnumMember	 
] 
UnableToSaveData 
= 
$num 
} 
} ˆ
aC:\Users\gearh\source\repos\CatanServer\CatanService\DataTransferObject\AccountDtos\AccountDto.cs
	namespace

 	
CatanService


 
.

 
DataTransferObject

 )
{ 
[ 
DataContract 
] 
public 

class 

AccountDto 
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
false  %
)% &
]& '
public 
int 
? 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	

DataMember	 
] 
[ 	
EmailAddress	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

DataMember	 
] 
[ 	
Phone	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
string 
PreferredLanguage '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

DataMember	 
] 
public   
string   
Token   
{   
get   !
;  ! "
set  # &
;  & '
}  ( )
[!! 	

DataMember!!	 
]!! 
public"" 
DateTime"" 
TokenExpiration"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
[## 	

DataMember##	 
]## 
public$$ 
string$$ 
CurrentSessionId$$ &
{$$' (
get$$) ,
;$$, -
set$$. 1
;$$1 2
}$$3 4
}%% 
}&& 