�+
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
�� 
}�� �
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
} �	
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
} �%
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
profileClientDto	u �
)
� �
;
� �
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
}!! �
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
} �
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
} �
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
}++ ��
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
Name	"" �
)
""� �
;
""� �
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
PreferredLanguage	&&{ �
)
&&� �
,
&&� �
null
&&� �
,
&&� �%
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
PreferredLanguage	++~ �
)
++� �
,
++� �
profileClientDto
++� �
,
++� �%
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
PreferredLanguage	..w �
)
..� �
,
..� �%
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
AccountValidationUtilities	oo �
.
oo� �!
USERNAME_MAX_LENGTH
oo� �
)
oo� �
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
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 
return
�� 
await
�� 
Task
�� 
.
�� 

FromResult
�� (
(
��( )
isCorrectName
��) 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� '
OperationResultProfileDto
�� 3
>
��3 41
#UploadProfilePictureInDataBaseAsync
��5 X
(
��X Y

ProfileDto
��Y c
profileClientDto
��d t
,
��t u
byte
��v z
[
��z {
]
��{ |

imageBytes��} �
)��� �
{
�� 	
try
�� 
{
�� 
string
�� 
pictureExtension
�� '
=
��( )
GetImageExtension
��* ;
(
��; <

imageBytes
��< F
)
��F G
;
��G H
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
pictureExtension
��* :
)
��: ;
&&
��< >
(
��? @
pictureExtension
��@ P
==
��Q S
ProfileUtilities
��T d
.
��d e#
PICTURE_EXTENSION_PNG
��e z
||
��{ }
pictureExtension��~ �
==��� � 
ProfileUtilities��� �
.��� �%
PICTURE_EXTENSION_JPG��� �
)��� �
)��� �
{
�� 
string
�� 
picturePath
�� &
=
��' (#
GetProfilePicturePath
��) >
(
��> ?
(
��? @
int
��@ C
)
��C D
profileClientDto
��D T
.
��T U
Id
��U W
,
��W X
pictureExtension
��Y i
)
��i j
;
��j k
	Directory
�� 
.
�� 
CreateDirectory
�� -
(
��- .
Path
��. 2
.
��2 3
GetDirectoryName
��3 C
(
��C D
picturePath
��D O
)
��O P
)
��P Q
;
��Q R
await
�� 
SaveImageAsync
�� (
(
��( )
picturePath
��) 4
,
��4 5

imageBytes
��6 @
)
��@ A
;
��A B
await
�� &
UpdateProfilePicturePath
�� 2
(
��2 3
profileClientDto
��3 C
,
��C D
picturePath
��E P
)
��P Q
;
��Q R
return
�� 
new
�� '
OperationResultProfileDto
�� 8
(
��8 9
true
��9 =
,
��= >
LanguageUtilities
��? P
.
��P Q
MessageSuccess
��Q _
(
��_ `
profileClientDto
��` p
.
��p q 
PreferredLanguage��q �
)��� �
,��� � 
profileClientDto��� �
)��� �
;��� �
}
�� 
}
�� 
catch
�� 
(
�� )
UnauthorizedAccessException
�� .
ex
��/ 1
)
��1 2
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
IOException
�� 
ex
�� !
)
��! "
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
return
�� 
new
�� '
OperationResultProfileDto
�� 0
(
��0 1
false
��1 6
,
��6 7
LanguageUtilities
��8 I
.
��I J%
MessageUnableToSaveData
��J a
(
��a b
profileClientDto
��b r
.
��r s 
PreferredLanguage��s �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
string
�� 
GetImageExtension
�� /
(
��/ 0
byte
��0 4
[
��4 5
]
��5 6
pictureBytes
��7 C
)
��C D
{
�� 	
using
�� 
(
�� 
MemoryStream
�� 
pictureStream
��  -
=
��. /
new
��0 3
MemoryStream
��4 @
(
��@ A
pictureBytes
��A M
)
��M N
)
��N O
using
�� 
(
�� 
Image
�� 
image
�� 
=
��  
Image
��! &
.
��& '

FromStream
��' 1
(
��1 2
pictureStream
��2 ?
)
��? @
)
��@ A
{
�� 
if
�� 
(
�� 
image
�� 
.
�� 
	RawFormat
�� #
.
��# $
Equals
��$ *
(
��* +
ImageFormat
��+ 6
.
��6 7
Jpeg
��7 ;
)
��; <
)
��< =
{
�� 
return
�� 
ProfileUtilities
�� +
.
��+ ,#
PICTURE_EXTENSION_JPG
��, A
;
��A B
}
�� 
else
�� 
if
�� 
(
�� 
image
�� 
.
�� 
	RawFormat
�� (
.
��( )
Equals
��) /
(
��/ 0
ImageFormat
��0 ;
.
��; <
Png
��< ?
)
��? @
)
��@ A
{
�� 
return
�� 
ProfileUtilities
�� +
.
��+ ,#
PICTURE_EXTENSION_PNG
��, A
;
��A B
}
�� 
}
�� 
return
�� 
string
�� 
.
�� 
Empty
�� 
;
��  
}
�� 	
private
�� 
static
�� 
async
�� 
Task
�� !
SaveImageAsync
��" 0
(
��0 1
string
��1 7
filePath
��8 @
,
��@ A
byte
��B F
[
��F G
]
��G H

imageBytes
��I S
)
��S T
{
�� 	
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 

fileStream
�� %
=
��& '
new
��( +

FileStream
��, 6
(
��6 7
filePath
��7 ?
,
��? @
FileMode
��A I
.
��I J
Create
��J P
,
��P Q

FileAccess
��R \
.
��\ ]
Write
��] b
,
��b c
	FileShare
��d m
.
��m n
None
��n r
,
��r s
$num
��t x
,
��x y
useAsync��z �
:��� �
true��� �
)��� �
)��� �
{
�� 
await
�� 

fileStream
�� $
.
��$ %

WriteAsync
��% /
(
��/ 0

imageBytes
��0 :
,
��: ;
$num
��< =
,
��= >

imageBytes
��? I
.
��I J
Length
��J P
)
��P Q
;
��Q R
}
�� 
}
�� 
catch
�� 
(
�� #
NotSupportedException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� #
FileNotFoundException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
IOException
�� 
ex
�� !
)
��! "
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
SecurityException
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� )
UnauthorizedAccessException
�� .
ex
��/ 1
)
��1 2
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� &
UpdateProfilePicturePath
�� 3
(
��3 4

ProfileDto
��4 >
profileClientDto
��? O
,
��O P
string
��Q W
relativeFilePath
��X h
)
��h i
{
�� 	
Profile
�� 
profile
�� 
=
�� 
await
�� #
repositoryManager
��$ 5
.
��5 6
ProfileRepository
��6 G
.
��G H!
FindEntityByIdAsync
��H [
(
��[ \
(
��\ ]
int
��] `
)
��` a
profileClientDto
��a q
.
��q r
Id
��r t
)
��t u
;
��u v
if
�� 
(
�� 
profile
�� 
!=
�� 
null
�� 
)
��  
{
�� 
profile
�� 
.
�� 
PicturePath
�� #
=
��$ %
relativeFilePath
��& 6
;
��6 7
profile
�� 
.
�� 
PictureVersion
�� &
++
��& (
;
��( )
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
static
�� 
string
�� #
GetProfilePicturePath
�� 3
(
��3 4
int
��4 7
	profileId
��8 A
,
��A B
string
��C I
fileExtension
��J W
)
��W X
{
�� 	
string
�� 

pathFolder
�� 
=
�� 
Path
��  $
.
��$ %
Combine
��% ,
(
��, -
	AppDomain
��- 6
.
��6 7
CurrentDomain
��7 D
.
��D E
BaseDirectory
��E R
,
��R S
ProfileUtilities
��T d
.
��d e$
PICTURE_FILE_DIRECTORY
��e {
,
��{ |
	profileId��} �
.��� �
ToString��� �
(��� �
)��� �
)��� �
;��� �
string
�� 
fileName
�� 
=
�� 
$"
��  
{
��  !
Guid
��! %
.
��% &
NewGuid
��& -
(
��- .
)
��. /
}
��/ 0
$str
��0 1
{
��1 2
fileExtension
��2 ?
}
��? @
"
��@ A
;
��A B
return
�� 
Path
�� 
.
�� 
Combine
�� 
(
��  

pathFolder
��  *
,
��* +
fileName
��, 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� '
OperationResultPictureDto
�� 3
>
��3 4-
GetFriendPictureInDataBaseAsync
��5 T
(
��T U

ProfileDto
��U _
profileFriendDto
��` p
,
��p q
string
��r x 
preferredLanguage��y �
)��� �
{
�� 	
Profile
�� 
profileRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
ProfileRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
(
��b c
int
��c f
)
��f g
profileFriendDto
��g w
.
��w x
Id
��x z
)
��z {
;
��{ |
byte
�� 
[
�� 
]
�� 

imageBytes
�� 
=
�� -
HandleGetProfilePictureFromDisk
��  ?
(
��? @
profileRecord
��@ M
)
��M N
;
��N O
if
�� 
(
�� 

imageBytes
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
return
�� 
new
�� '
OperationResultPictureDto
�� 4
(
��4 5
true
��5 9
,
��9 :
LanguageUtilities
��; L
.
��L M
MessageSuccess
��M [
(
��[ \
preferredLanguage
��\ m
)
��m n
,
��n o

imageBytes
��p z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
return
�� 
new
�� '
OperationResultPictureDto
�� 4
(
��4 5
false
��5 :
,
��: ;
LanguageUtilities
��< M
.
��M N%
MessageUnableToSaveData
��N e
(
��e f
preferredLanguage
��f w
)
��w x
)
��x y
;
��y z
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� '
OperationResultPictureDto
�� 3
>
��3 4.
 GetProfilePictureInDataBaseAsync
��5 U
(
��U V

ProfileDto
��V `
profileClientDto
��a q
)
��q r
{
�� 	
Profile
�� 
profileRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
ProfileRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
(
��b c
int
��c f
)
��f g
profileClientDto
��g w
.
��w x
Id
��x z
)
��z {
;
��{ |
byte
�� 
[
�� 
]
�� 

imageBytes
�� 
=
�� -
HandleGetProfilePictureFromDisk
��  ?
(
��? @
profileRecord
��@ M
)
��M N
;
��N O
if
�� 
(
�� 

imageBytes
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
return
�� 
new
�� '
OperationResultPictureDto
�� 4
(
��4 5
true
��5 9
,
��9 :
LanguageUtilities
��; L
.
��L M
MessageSuccess
��M [
(
��[ \
profileClientDto
��\ l
.
��l m
PreferredLanguage
��m ~
)
��~ 
,�� �

imageBytes��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
return
�� 
new
�� '
OperationResultPictureDto
�� 4
(
��4 5
false
��5 :
,
��: ;
LanguageUtilities
��< M
.
��M N%
MessageUnableToSaveData
��N e
(
��e f
profileClientDto
��f v
.
��v w 
PreferredLanguage��w �
)��� �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
static
�� 
byte
�� 
[
�� 
]
�� -
HandleGetProfilePictureFromDisk
�� <
(
��< =
Profile
��= D
profileRecord
��E R
)
��R S
{
�� 	
byte
�� 
[
�� 
]
�� 

imageBytes
�� 
=
�� 
new
��  #
byte
��$ (
[
��( )
$num
��) *
]
��* +
;
��+ ,
try
�� 
{
�� 
if
�� 
(
�� 
profileRecord
�� !
!=
��" $
null
��% )
&&
��* ,
!
��- .
string
��. 4
.
��4 5
IsNullOrEmpty
��5 B
(
��B C
profileRecord
��C P
.
��P Q
PicturePath
��Q \
)
��\ ]
&&
��^ `
File
��a e
.
��e f
Exists
��f l
(
��l m
profileRecord
��m z
.
��z {
PicturePath��{ �
)��� �
)��� �
{
�� 
FileInfo
�� 
fileInfo
�� %
=
��& '
new
��( +
FileInfo
��, 4
(
��4 5
profileRecord
��5 B
.
��B C
PicturePath
��C N
)
��N O
;
��O P
string
�� 
	extension
�� $
=
��% &
Path
��' +
.
��+ ,
GetExtension
��, 8
(
��8 9
profileRecord
��9 F
.
��F G
PicturePath
��G R
)
��R S
?
��S T
.
��T U
ToLower
��U \
(
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
(
�� 
	extension
�� "
==
��# %
ProfileUtilities
��& 6
.
��6 7#
PICTURE_EXTENSION_PNG
��7 L
||
��M O
	extension
��P Y
==
��Z \
ProfileUtilities
��] m
.
��m n$
PICTURE_EXTENSION_JPG��n �
)��� �
&&��� �
fileInfo
��  
.
��  !
Length
��! '
>
��( )(
AccountValidationUtilities
��* D
.
��D E"
PICTURE_MINIMUN_SIZE
��E Y
&&
��Z \
fileInfo
��] e
.
��e f
Length
��f l
<=
��m o
ProfileUtilities��p �
.��� � 
PICTURE_MAX_SIZE��� �
)��� �
{
�� 
using
�� 
(
�� 
var
�� "
image
��# (
=
��) *
Image
��+ 0
.
��0 1
FromFile
��1 9
(
��9 :
profileRecord
��: G
.
��G H
PicturePath
��H S
)
��S T
)
��T U
{
�� 

imageBytes
�� &
=
��' (
File
��) -
.
��- .
ReadAllBytes
��. :
(
��: ;
profileRecord
��; H
.
��H I
PicturePath
��I T
)
��T U
;
��U V
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
ArgumentException
�� #
ex
��$ &
)
��& '
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� #
FileNotFoundException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� )
UnauthorizedAccessException
�� .
ex
��/ 1
)
��1 2
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
IOException
�� 
ex
�� !
)
��! "
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
return
�� 

imageBytes
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Profile
�� !
>
��! "(
GetProfileWithNewSessionId
��# =
(
��= >
int
��> A
	accountId
��B K
)
��K L
{
�� 	
Profile
�� 
profileRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
ProfileRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
	accountId
��b k
)
��k l
;
��l m
if
�� 
(
�� 
profileRecord
�� 
!=
��  
null
��! %
)
��% &
{
�� 
profileRecord
�� 
.
�� 
	SessionId
�� '
=
��( )
Guid
��* .
.
��. /
NewGuid
��/ 6
(
��6 7
)
��7 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
;
��C D
profileRecord
�� 
.
�� 
IsOnline
�� &
=
��' (
true
��) -
;
��- .
profileRecord
�� 
.
�� 
LastActivity
�� *
=
��+ ,
DateTime
��- 5
.
��5 6
UtcNow
��6 <
;
��< =
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
return
�� 
profileRecord
��  
;
��  !
}
�� 	
public
�� 
static
�� 
bool
�� 
CompareSessionID
�� +
(
��+ ,
string
��, 2
oldSessionId
��3 ?
,
��? @
string
��A G
newSessionId
��H T
)
��T U
{
�� 	
return
�� 
oldSessionId
�� 
.
��  
Equals
��  &
(
��& '
newSessionId
��' 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
IsOnline
��  (
(
��( )
int
��) ,
	idProfile
��- 6
,
��6 7
string
��8 >
newSessionId
��? K
)
��K L
{
�� 	
bool
�� 
isOnline
�� 
=
�� 
false
�� !
;
��! "
Profile
�� 
profileRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
ProfileRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
	idProfile
��b k
)
��k l
;
��l m
if
�� 
(
�� 
profileRecord
�� 
!=
��  
null
��! %
&&
��& (
!
��) *
string
��* 0
.
��0 1
IsNullOrEmpty
��1 >
(
��> ?
newSessionId
��? K
)
��K L
&&
�� &
IsActiveWithinTimeLimite
�� +
(
��+ ,
profileRecord
��, 9
.
��9 :
LastActivity
��: F
,
��F G
DateTime
��H P
.
��P Q
UtcNow
��Q W
,
��W X
GameUtilities
��Y f
.
��f g/
 TIME_LIMIT_TO_DISCONNECT_PLAYERS��g �
)��� �
&&��� �
CompareSessionID
��  
(
��  !
profileRecord
��! .
.
��. /
	SessionId
��/ 8
,
��8 9
newSessionId
��: F
)
��F G
)
��G H
{
�� 
profileRecord
�� 
.
�� 
LastActivity
�� *
=
��+ ,
DateTime
��- 5
.
��5 6
UtcNow
��6 <
;
��< =
isOnline
�� 
=
�� 
true
�� 
;
��  
}
�� 
else
�� 
if
�� 
(
�� 
profileRecord
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
profileRecord
�� 
.
�� 
IsOnline
�� &
=
��' (
false
��) .
;
��. /
}
�� 
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
return
�� 
isOnline
�� 
;
�� 
}
�� 	
public
�� 
bool
�� &
IsActiveWithinTimeLimite
�� ,
(
��, -
DateTime
��- 5
?
��5 6
lastActivity
��7 C
,
��C D
DateTime
��E M
?
��M N
newActivity
��O Z
,
��Z [
int
��\ _
	timeLimit
��` i
)
��i j
{
�� 	
bool
�� 
isOnline
�� 
=
�� 
false
�� !
;
��! "
if
�� 
(
�� 
lastActivity
�� 
!=
�� 
null
��  $
&&
��% '
newActivity
��( 3
!=
��4 6
null
��7 ;
)
��; <
{
�� 
Double
�� 
timeDifference
�� %
=
��& '
(
��( )
newActivity
��) 4
.
��4 5
Value
��5 :
-
��; <
lastActivity
��= I
.
��I J
Value
��J O
)
��O P
.
��P Q
TotalMinutes
��Q ]
;
��] ^
isOnline
�� 
=
�� 
timeDifference
�� )
<
��* +
	timeLimit
��, 5
;
��5 6
}
�� 
return
�� 
isOnline
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 0
"InviteFriendsToGameInDataBaseAsync
��  B
(
��B C
string
��C I 
namePlayerToInvite
��J \
,
��\ ]
string
��^ d
	keyAccess
��e n
)
��n o
{
�� 	
int
�� 
	accountId
�� 
=
�� 
await
�� !
repositoryManager
��" 3
.
��3 4
ProfileRepository
��4 E
.
��E F%
GetProfileIdByNameAsync
��F ]
(
��] ^ 
namePlayerToInvite
��^ p
)
��p q
;
��q r
if
�� 
(
�� 
	accountId
�� 
!=
��  
CharacterUtilities
�� /
.
��/ 0
INT_VALUE_ZERO
��0 >
)
��> ?
{
�� 
Account
�� 
accountRecord
�� %
=
��& '
await
��( -
repositoryManager
��. ?
.
��? @
AccountRepository
��@ Q
.
��Q R!
FindEntityByIdAsync
��R e
(
��e f
	accountId
��f o
)
��o p
;
��p q
await
�� 
serviceManager
�� $
.
��$ %
AccountService
��% 3
.
��3 4%
SendInviteGameToFriends
��4 K
(
��K L
accountRecord
��L Y
,
��Y Z
	keyAccess
��[ d
)
��d e
;
��e f
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� +
OperationResultProfileListDto
�� 7
>
��7 8+
GetFriendsListInDataBaseAsync
��9 V
(
��V W

ProfileDto
��W a
profileClientDto
��b r
)
��r s
{
�� 	
List
�� 
<
�� 
Profile
�� 
>
�� 

friendList
�� $
=
��% &
await
��' ,
repositoryManager
��- >
.
��> ?
ProfileRepository
��? P
.
��P Q(
GetFriendsByProfileIdAsync
��Q k
(
��k l
(
��l m
int
��m p
)
��p q
profileClientDto��q �
.��� �
Id��� �
)��� �
;��� �
List
�� 
<
�� 

ProfileDto
�� 
>
�� 
friendListDto
�� *
=
��+ ,
new
��- 0
List
��1 5
<
��5 6

ProfileDto
��6 @
>
��@ A
(
��A B
)
��B C
;
��C D
if
�� 
(
�� 

friendList
�� 
.
�� 
Any
�� 
(
�� 
)
��  
)
��  !
{
�� 
friendListDto
�� 
=
�� 0
"ConvertFriendListIntoFriendListDto
��  B
(
��B C

friendList
��C M
)
��M N
;
��N O
}
�� 
return
�� 
new
�� +
OperationResultProfileListDto
�� 4
(
��4 5
true
��5 9
,
��9 :
LanguageUtilities
��; L
.
��L M
MessageSuccess
��M [
(
��[ \
profileClientDto
��\ l
.
��l m
PreferredLanguage
��m ~
)
��~ 
,�� �
friendListDto��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� +
OperationResultProfileListDto
�� 7
>
��7 85
'GetPendingFriendRequestsInDataBaseAsync
��9 `
(
��` a

ProfileDto
��a k
profileClientDto
��l |
)
��| }
{
�� 	
List
�� 
<
�� 
Profile
�� 
>
�� #
pendingFriendRequests
�� /
=
��0 1
await
��2 7
repositoryManager
��8 I
.
��I J
ProfileRepository
��J [
.
��[ \7
(GetPendingFriendRequestsByProfileIdAsync��\ �
(��� �
(��� �
int��� �
)��� � 
profileClientDto��� �
.��� �
Id��� �
)��� �
;��� �
List
�� 
<
�� 

ProfileDto
�� 
>
�� &
pendingFriendRequestsDto
�� 5
=
��6 7
new
��8 ;
List
��< @
<
��@ A

ProfileDto
��A K
>
��K L
(
��L M
)
��M N
;
��N O
if
�� 
(
�� #
pendingFriendRequests
�� %
.
��% &
Any
��& )
(
��) *
)
��* +
)
��+ ,
{
�� &
pendingFriendRequestsDto
�� (
=
��) *0
"ConvertFriendListIntoFriendListDto
��+ M
(
��M N#
pendingFriendRequests
��N c
)
��c d
;
��d e
}
�� 
return
�� 
new
�� +
OperationResultProfileListDto
�� 4
(
��4 5
true
��5 9
,
��9 :
LanguageUtilities
��; L
.
��L M
MessageSuccess
��M [
(
��[ \
profileClientDto
��\ l
.
��l m
PreferredLanguage
��m ~
)
��~ 
,�� �(
pendingFriendRequestsDto��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
List
�� 
<
�� 

ProfileDto
�� %
>
��% &0
"ConvertFriendListIntoFriendListDto
��' I
(
��I J
List
��J N
<
��N O
Profile
��O V
>
��V W

friendList
��X b
)
��b c
{
�� 	
List
�� 
<
�� 

ProfileDto
�� 
>
�� 
friendListDto
�� *
=
��+ ,
new
��- 0
List
��1 5
<
��5 6

ProfileDto
��6 @
>
��@ A
(
��A B
)
��B C
;
��C D
foreach
�� 
(
�� 
Profile
�� 
friend
�� #
in
��$ &

friendList
��' 1
)
��1 2
{
�� 

ProfileDto
�� 
profileServerdto
�� +
=
��, -$
CreateProfileFriendDto
��. D
(
��D E
friend
��E K
)
��K L
;
��L M
friendListDto
�� 
.
�� 
Add
�� !
(
��! "
profileServerdto
��" 2
)
��2 3
;
��3 4
}
�� 
return
�� 
friendListDto
��  
;
��  !
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� -
OperationResultFriendRequestDto
�� 9
>
��9 :.
 SendFriendRequestInDataBaseAsync
��; [
(
��[ \
string
��\ b 
nameFriendToInvite
��c u
,
��u v

ProfileDto��w � 
profileClientDto��� �
)��� �
{
�� 	
bool
�� 
isSuccessSend
�� 
=
��  
false
��! &
;
��& '
int
�� 
idfriend
�� 
=
�� 
await
��  
repositoryManager
��! 2
.
��2 3
ProfileRepository
��3 D
.
��D E%
GetProfileIdByNameAsync
��E \
(
��\ ] 
nameFriendToInvite
��] o
)
��o p
;
��p q
bool
�� !
existsFriendRequest
�� $
=
��% &
await
��' ,
repositoryManager
��- >
.
��> ?%
FriendRequestRepository
��? V
.
��V W'
ExistsAFriendRequestAsync
��W p
(
��p q
(
��q r
int
��r u
)
��u v
profileClientDto��v �
.��� �
Id��� �
,��� �
idfriend��� �
)��� �
;��� �
if
�� 
(
�� 
idfriend
�� 
!=
��  
CharacterUtilities
�� .
.
��. /
INT_VALUE_ZERO
��/ =
&&
��> @
!
��A B!
existsFriendRequest
��B U
)
��U V
{
�� 
isSuccessSend
�� 
=
�� 
await
��  %
repositoryManager
��& 7
.
��7 8
ProfileRepository
��8 I
.
��I J$
SendFriendRequestAsync
��J `
(
��` a
(
��a b
int
��b e
)
��e f
profileClientDto
��f v
.
��v w
Id
��w y
,
��y z
idfriend��{ �
)��� �
;��� �
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
return
�� 
new
�� -
OperationResultFriendRequestDto
�� :
(
��: ;
isSuccessSend
��; H
,
��H I
LanguageUtilities
��J [
.
��[ \
MessageSuccess
��\ j
(
��j k
profileClientDto
��k {
.
��{ | 
PreferredLanguage��| �
)��� �
,��� �%
EnumSendFriendRequest��� �
.��� �
SuccessSave��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� !
existsFriendRequest
�� '
)
��' (
{
�� 
return
�� 
new
�� -
OperationResultFriendRequestDto
�� :
(
��: ;
isSuccessSend
��; H
,
��H I
LanguageUtilities
��J [
.
��[ \%
MessageUnableToSaveData
��\ s
(
��s t
profileClientDto��t �
.��� �!
PreferredLanguage��� �
)��� �
,��� �%
EnumSendFriendRequest��� �
.��� �#
ExistsFriendRequest��� �
)��� �
;��� �
}
�� 
return
�� 
new
�� -
OperationResultFriendRequestDto
�� 6
(
��6 7
isSuccessSend
��7 D
,
��D E
LanguageUtilities
��F W
.
��W X%
MessageUnableToSaveData
��X o
(
��o p
profileClientDto��p �
.��� �!
PreferredLanguage��� �
)��� �
,��� �%
EnumSendFriendRequest��� �
.��� �
NotFoundProfile��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 0
"AcceptFriendRequestInDataBaseAsync
��  B
(
��B C
string
��C I 
nameFriendToAccept
��J \
,
��\ ]

ProfileDto
��^ h
profileClientDto
��i y
)
��y z
{
�� 	
bool
�� 
isSuccessAccept
��  
=
��! "
false
��# (
;
��( )
int
�� 
idFriend
�� 
=
�� 
await
��  
repositoryManager
��! 2
.
��2 3
ProfileRepository
��3 D
.
��D E%
GetProfileIdByNameAsync
��E \
(
��\ ] 
nameFriendToAccept
��] o
)
��o p
;
��p q
if
�� 
(
�� 
idFriend
�� 
!=
��  
CharacterUtilities
�� .
.
��. /
INT_VALUE_ZERO
��/ =
)
��= >
{
�� 
isSuccessAccept
�� 
=
��  !
await
��" '
repositoryManager
��( 9
.
��9 :
ProfileRepository
��: K
.
��K L&
AcceptFriendRequestAsync
��L d
(
��d e
(
��e f
int
��f i
)
��i j
profileClientDto
��j z
.
��z {
Id
��{ }
,
��} ~
idFriend�� �
)��� �
;��� �
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
return
�� 
isSuccessAccept
�� "
;
��" #
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 0
"RejectFriendRequestInDataBaseAsync
��  B
(
��B C
string
��C I 
nameFriendToReject
��J \
,
��\ ]

ProfileDto
��^ h
profileClientDto
��i y
)
��y z
{
�� 	
bool
�� 
isSuccessReject
��  
=
��! "
false
��# (
;
��( )
int
�� 
idFriend
�� 
=
�� 
await
��  
repositoryManager
��! 2
.
��2 3
ProfileRepository
��3 D
.
��D E%
GetProfileIdByNameAsync
��E \
(
��\ ] 
nameFriendToReject
��] o
)
��o p
;
��p q
if
�� 
(
�� 
idFriend
�� 
!=
��  
CharacterUtilities
�� .
.
��. /
INT_VALUE_ZERO
��/ =
)
��= >
{
�� 
isSuccessReject
�� 
=
��  !
await
��" '
repositoryManager
��( 9
.
��9 :
ProfileRepository
��: K
.
��K L&
RejectFriendRequestAsync
��L d
(
��d e
(
��e f
int
��f i
)
��i j
profileClientDto
��j z
.
��z {
Id
��{ }
,
��} ~
idFriend�� �
)��� �
;��� �
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
return
�� 
isSuccessReject
�� "
;
��" #
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 0
"DeleteFriendProfileInDataBaseAsync
��  B
(
��B C
string
��C I

friendName
��J T
,
��T U

ProfileDto
��V `
profileClientDto
��a q
)
��q r
{
�� 	
bool
�� 
isSuccessDelete
��  
=
��! "
false
��# (
;
��( )
int
�� 
idProfileFriend
�� 
=
��  !
await
��" '
repositoryManager
��( 9
.
��9 :
ProfileRepository
��: K
.
��K L%
GetProfileIdByNameAsync
��L c
(
��c d

friendName
��d n
)
��n o
;
��o p
if
�� 
(
�� 
idProfileFriend
�� 
!=
��  " 
CharacterUtilities
��# 5
.
��5 6
INT_VALUE_ZERO
��6 D
)
��D E
{
�� 
isSuccessDelete
�� 
=
��  !
await
��" '
repositoryManager
��( 9
.
��9 :%
FriendRequestRepository
��: Q
.
��Q R&
DeleteFriendRequestAsync
�� ,
(
��, -
(
��- .
int
��. 1
)
��1 2
profileClientDto
��2 B
.
��B C
Id
��C E
,
��E F
idProfileFriend
��G V
)
��V W
;
��W X
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
return
�� 
isSuccessDelete
�� "
;
��" #
}
�� 	
}
�� 
}�� �,
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
IGameCallback	v �
playerCallback
� �
)
� �
;
� �
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
gameCallback	{ �
)
� �
;
� �
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
guestAccountClientDto	o �
)
� �
;
� �
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
IGameCallback	~ �
playerCallback
� �
)
� �
;
� �
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
;	 �
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
int	""} �
gameId
""� �
)
""� �
;
""� �
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
gameId	##z �
)
##� �
;
##� �
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
gameId	$$} �
)
$$� �
;
$$� �
}&& 
}'' �(
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
}PP �@
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
guestAccountDto	u �
)
� �
;
� �
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
}kk �
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
} ��
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
GameBoardStateDto	**v �
>
**� �
(
**� �
)
**� �
;
**� �
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

Dictionary	++x �
<
++� �
int
++� �
,
++� � 
PlayerResourcesDto
++� �
>
++� �
>
++� �
(
++� �
)
++� �
;
++� �
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
ConcurrentDictionary	--p �
<
--� �
int
--� �
,
--� �
ConcurrentBag
--� �
<
--� �
ConnectedPlayer
--� �
>
--� �
>
--� �
(
--� �
)
--� �
;
--� �
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
<	.. �
int
..� �
,
..� �%
CancellationTokenSource
..� �
>
..� �
(
..� �
)
..� �
;
..� �
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
<	// �
int
//� �
,
//� �%
CancellationTokenSource
//� �
>
//� �
(
//� �
)
//� �
;
//� �
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
ConcurrentDictionary	00t �
<
00� �
int
00� �
,
00� �%
CancellationTokenSource
00� �
>
00� �
(
00� �
)
00� �
;
00� �
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
CancellationTokenSource	11} �
>
11� �
(
11� �
)
11� �
;
11� �
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
profileClientDto	==q �
,
==� �
IGameCallback
==� �
playerCallback
==� �
)
==� �
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
PreferredLanguage	TTr �
)
TT� �
,
TT� �
CreateGameDto
TT� �
(
TT� �

gameRecord
TT� �
)
TT� �
)
TT� �
;
TT� �
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
PreferredLanguage	aax �
)
aa� �
)
aa� �
;
aa� �
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
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
bool
�� 
isAdded
�� 
=
�� 
false
��  
;
��  !
if
�� 
(
�� 

gameRecord
�� 
!=
�� 
null
�� "
&&
��# %

gameRecord
��& 0
.
��0 1
Status
��1 7
==
��8 :
GameUtilities
��; H
.
��H I(
DOMAIN_GAME_STATUS_PREGAME
��I c
)
��c d
{
�� 

gameRecord
�� 
.
�� 
NumberPlayers
�� (
++
��( *
;
��* +
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
isAdded
�� 
=
�� 
true
�� 
;
�� 
}
�� 
return
�� 
isAdded
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� .
 IsPlayerPreviusJoinedToGameAsync
��  @
(
��@ A
Game
��A E

gameRecord
��F P
,
��P Q

ProfileDto
��R \
profileClientDto
��] m
)
��m n
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� @
)
��@ A
;
��A B
ProfileGame
�� 
profileGameRecord
�� )
=
��* +
await
��, 1
repositoryManager
��2 C
.
��C D#
ProfileGameRepository
��D Y
.
��Y Z'
IsPlayerJoinedToGameAsync
��Z s
(
��s t
(
��t u
int
��u x
)
��x y
profileClientDto��y �
.��� �
Id��� �
,��� �

gameRecord��� �
.��� �
Id��� �
)��� �
;��� �
if
�� 
(
�� 
profileGameRecord
�� !
!=
��" $
null
��% )
&&
��* ,
!
��- .
profileGameRecord
��. ?
.
��? @
IsPlayerInGame
��@ N
)
��N O
{
�� 
await
�� 
AddPlayersToGame
�� &
(
��& '

gameRecord
��' 1
)
��1 2
;
��2 3
profileGameRecord
�� !
.
��! "
IsPlayerInGame
��" 0
=
��1 2
true
��3 7
;
��7 8
}
�� 
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
return
�� 
profileGameRecord
�� $
!=
��% '
null
��( ,
;
��, -
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Game
�� 
>
�� &
CreateNewRecordGameAsync
��  8
(
��8 9

ProfileDto
��9 C
profileClientDto
��D T
,
��T U
GameDto
��V ]
gameClientDto
��^ k
)
��k l
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
Game
�� 

gameRecord
�� 
=
�� 
new
�� !
Game
��" &
(
��& '
)
��' (
;
��( )

gameRecord
�� 
.
�� 
Name
�� 
=
�� 
gameClientDto
�� +
.
��+ ,
Name
��, 0
;
��0 1

gameRecord
�� 
.
�� 
	AccessKey
��  
=
��! "
GenerateAccessKey
��# 4
(
��4 5
profileClientDto
��5 E
)
��E F
;
��F G

gameRecord
�� 
.
�� 
Date
�� 
=
�� 
DateTime
�� &
.
��& '
UtcNow
��' -
;
��- .

gameRecord
�� 
.
�� 
Status
�� 
=
�� 
GameUtilities
��  -
.
��- .(
DOMAIN_GAME_STATUS_PREGAME
��. H
;
��H I

gameRecord
�� 
.
�� 
MaxNumberPlayers
�� '
=
��( )
(
��* +
int
��+ .
)
��. /
gameClientDto
��/ <
.
��< =
MaxNumberPlayers
��= M
;
��M N

gameRecord
�� 
.
�� 
AdminGameId
�� "
=
��# $
(
��% &
int
��& )
)
��) *
profileClientDto
��* :
.
��: ;
Id
��; =
;
��= >
repositoryManager
�� 
.
�� 
GameRepository
�� ,
.
��, -
	AddEntity
��- 6
(
��6 7

gameRecord
��7 A
)
��A B
;
��B C
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
return
�� 

gameRecord
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� '
CreateRelationProfileGame
�� 3
(
��3 4
Profile
��4 ;
profileRecord
��< I
,
��I J
ProfileGame
��K V
profileGameRecord
��W h
,
��h i
Game
��j n

gameRecord
��o y
)
��y z
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 9
)
��9 :
;
��: ;
if
�� 
(
�� 
profileGameRecord
�� !
!=
��" $
null
��% )
&&
��* ,
profileRecord
��- :
!=
��; =
null
��> B
)
��B C
{
�� 
profileRecord
�� 
.
�� "
RelationProfileGames
�� 2
.
��2 3
Add
��3 6
(
��6 7
profileGameRecord
��7 H
)
��H I
;
��I J

gameRecord
�� 
.
�� "
RelationProfileGames
�� /
.
��/ 0
Add
��0 3
(
��3 4
profileGameRecord
��4 E
)
��E F
;
��F G
profileGameRecord
�� !
.
��! "
RelationGame
��" .
=
��/ 0

gameRecord
��1 ;
;
��; <
profileGameRecord
�� !
.
��! "
RelationProfile
��" 1
=
��2 3
profileRecord
��4 A
;
��A B
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 1
#CreateRelationGuestAccountGameAsync
�� =
(
��= >
Game
��> B

gameRecord
��C M
,
��M N
GuestAccount
��O [ 
guestAccountRecord
��\ n
,
��n o
GuestAccountGame��p �&
guestAccountGameRecord��� �
)��� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� C
)
��C D
;
��D E
if
�� 
(
�� $
guestAccountGameRecord
�� &
!=
��' )
null
��* .
&&
��/ 1 
guestAccountRecord
��2 D
!=
��E G
null
��H L
)
��L M
{
�� 

gameRecord
�� 
.
�� '
RelationGuestAccountGames
�� 4
.
��4 5
Add
��5 8
(
��8 9$
guestAccountGameRecord
��9 O
)
��O P
;
��P Q 
guestAccountRecord
�� "
.
��" #'
RelationGuestAccountGames
��# <
.
��< =
Add
��= @
(
��@ A$
guestAccountGameRecord
��A W
)
��W X
;
��X Y$
guestAccountGameRecord
�� &
.
��& '
RelationGame
��' 3
=
��4 5

gameRecord
��6 @
;
��@ A$
guestAccountGameRecord
�� &
.
��& '"
RelationGuestAccount
��' ;
=
��< = 
guestAccountRecord
��> P
;
��P Q
}
�� 
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
static
�� 
bool
��  
CanJoinByGameQuota
�� -
(
��- .
Game
��. 2

gameRecord
��3 =
)
��= >
{
�� 	
return
�� 

gameRecord
�� 
.
�� 
NumberPlayers
�� +
<
��, -

gameRecord
��. 8
.
��8 9
MaxNumberPlayers
��9 I
;
��I J
}
�� 	
public
�� 
Task
�� -
SendRemainingTimeToJoinedPlayer
�� 3
(
��3 4
Game
��4 8

gameRecord
��9 C
,
��C D
ConnectedPlayer
��E T
	newPlayer
��U ^
)
��^ _
{
�� 	
if
�� 
(
�� &
gameCountdownToStartGame
�� (
.
��( )
ContainsKey
��) 4
(
��4 5

gameRecord
��5 ?
.
��? @
Id
��@ B
)
��B C
)
��C D
{
�� 
int
�� 
timeRemaining
�� !
=
��" #&
gameCountdownToStartGame
��$ <
[
��< =

gameRecord
��= G
.
��G H
Id
��H J
]
��J K
;
��K L
try
�� 
{
�� 
	newPlayer
�� 
.
�� 
gameCallback
�� *
?
��* +
.
��+ ,#
UpdateTimeToStartGame
��, A
(
��A B
timeRemaining
��B O
)
��O P
;
��P Q
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� $
OperationResultGameDto
�� 0
>
��0 1%
JoinGameInDataBaseAsync
��2 I
(
��I J
string
��J P

codeAccess
��Q [
,
��[ \

ProfileDto
��] g
profileClientDto
��h x
,
��x y
IGameCallback��z �
gameCallback��� �
)��� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
using
�� 
(
�� "
DbContextTransaction
�� '
gameTransaction
��( 7
=
��8 9
await
��: ?
repositoryManager
��@ Q
.
��Q R#
StartTransactionAsync
��R g
(
��g h
)
��h i
)
��i j
{
�� 
Game
�� 

gameRecord
�� 
=
��  !
await
��" '
repositoryManager
��( 9
.
��9 :
GameRepository
��: H
.
��H I&
FindGameByKeyAccessAsync
��I a
(
��a b

codeAccess
��b l
)
��l m
;
��m n
if
�� 
(
�� 
gameCallback
��  
!=
��! #
null
��$ (
&&
��) +
(
��, -
(
��- ."
ICommunicationObject
��. B
)
��B C
gameCallback
��C O
)
��O P
.
��P Q
State
��Q V
==
��W Y 
CommunicationState
��Z l
.
��l m
Opened
��m s
&&
��t v

gameRecord��w �
!=��� �
null��� �
)��� �
{
�� 
ConnectedPlayer
�� #
	newPlayer
��$ -
=
��. /
new
��0 3
ConnectedPlayer
��4 C
(
��C D
profileClientDto
��D T
,
��T U
gameCallback
��V b
)
��b c
;
��c d
if
�� 
(
��  
CanJoinByGameQuota
�� *
(
��* +

gameRecord
��+ 5
)
��5 6
&&
��7 9
(
��: ;
!
��; <
IsNewPlayer
��< G
(
��G H
	newPlayer
��H Q
,
��Q R

gameRecord
��S ]
.
��] ^
Id
��^ `
)
��` a
||
��b d
await
��e j/
 IsPlayerPreviusJoinedToGameAsync��k �
(��� �

gameRecord��� �
,��� � 
profileClientDto��� �
)��� �
)��� �
)��� �
{
�� 
return
�� 
new
�� "$
OperationResultGameDto
��# 9
(
��9 :
true
��: >
,
��> ?
LanguageUtilities
��@ Q
.
��Q R
MessageSuccess
��R `
(
��` a
profileClientDto
��a q
.
��q r 
PreferredLanguage��r �
)��� �
,��� �
CreateGameDto��� �
(��� �

gameRecord��� �
)��� �
)��� �
;��� �
}
�� 
if
�� 
(
��  
CanJoinByGameQuota
�� *
(
��* +

gameRecord
��+ 5
)
��5 6
&&
��7 9
await
��: ?
AddPlayersToGame
��@ P
(
��P Q

gameRecord
��Q [
)
��[ \
)
��\ ]
{
�� $
SetConnectedPlayerList
�� .
(
��. /
	newPlayer
��/ 8
,
��8 9

gameRecord
��: D
)
��D E
;
��E F
await
�� +
HandleRelationEntityGameAsync
�� ;
(
��; <

gameRecord
��< F
,
��F G
profileClientDto
��H X
)
��X Y
;
��Y Z
await
�� ,
SendRemainingTimeToPlayerAsync
�� <
(
��< =

gameRecord
��= G
.
��G H
Id
��H J
,
��J K
	newPlayer
��L U
)
��U V
;
��V W
await
�� 
repositoryManager
�� /
.
��/ 0
	SaveAsync
��0 9
(
��9 :
)
��: ;
;
��; <
gameTransaction
�� '
.
��' (
Commit
��( .
(
��. /
)
��/ 0
;
��0 1
return
�� 
new
�� "$
OperationResultGameDto
��# 9
(
��9 :
true
��: >
,
��> ?
LanguageUtilities
��@ Q
.
��Q R
MessageSuccess
��R `
(
��` a
profileClientDto
��a q
.
��q r 
PreferredLanguage��r �
)��� �
,��� �
CreateGameDto��� �
(��� �

gameRecord��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
return
�� 
new
�� $
OperationResultGameDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G+
MessageUnableToFindInDataBase
��G d
(
��d e
profileClientDto
��e u
.
��u v 
PreferredLanguage��v �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 1
#HandleRelationGuestAccountGameAsync
�� =
(
��= >
Game
��> B

gameRecord
��C M
,
��M N
GuestAccountDto
��O ^#
guestAccountClientDto
��_ t
)
��t u
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� C
)
��C D
;
��D E
GuestAccount
��  
guestAccountRecord
�� +
=
��, -
await
��. 3
repositoryManager
��4 E
.
��E F$
GuestAccountRepository
��F \
.
��\ ]!
FindEntityByIdAsync
��] p
(
��p q
(
��q r
int
��r u
)
��u v$
guestAccountClientDto��v �
.��� �
Id��� �
)��� �
;��� �
GuestAccountGame
�� $
guestAccountGameRecord
�� 3
=
��4 5
await
��6 ;2
$CreateNewRecordGuestAccountGameAsync
��< `
(
��` a#
guestAccountClientDto
��a v
,
��v w

gameRecord��x �
)��� �
;��� �$
guestAccountGameRecord
�� "
.
��" #
IsPlayerInGame
��# 1
=
��2 3
true
��4 8
;
��8 9
await
�� 1
#CreateRelationGuestAccountGameAsync
�� 5
(
��5 6

gameRecord
��6 @
,
��@ A 
guestAccountRecord
��B T
,
��T U$
guestAccountGameRecord
��V l
)
��l m
;
��m n
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� .
 IsGuestAccountPreviusJoinedAsync
��  @
(
��@ A
Game
��A E

gameRecord
��F P
,
��P Q
GuestAccountDto
��R a
guestAccountDto
��b q
,
��q r
ConnectedPlayer��s �
player��� �
)��� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� @
)
��@ A
;
��A B
GuestAccountGame
�� $
guestAccountGameRecord
�� 3
=
��4 5
await
��6 ;
repositoryManager
��< M
.
��M N(
GuestAccountGameRepository
��N h
.
��h i.
IsGuestAccountJoinedToGameAsync��i �
(��� �
(��� �
int��� �
)��� �
guestAccountDto��� �
.��� �
Id��� �
,��� �

gameRecord��� �
.��� �
Id��� �
)��� �
;��� �
if
�� 
(
�� $
guestAccountGameRecord
�� &
!=
��' )
null
��* .
&&
��/ 1
!
��2 3$
guestAccountGameRecord
��3 I
.
��I J
IsPlayerInGame
��J X
)
��X Y
{
�� 
await
�� 
AddPlayersToGame
�� &
(
��& '

gameRecord
��' 1
)
��1 2
;
��2 3$
guestAccountGameRecord
�� &
.
��& '
IsPlayerInGame
��' 5
=
��6 7
true
��8 <
;
��< =
}
�� 
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
return
�� $
guestAccountGameRecord
�� )
!=
��* ,
null
��- 1
;
��1 2
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� $
OperationResultGameDto
�� 0
>
��0 1-
JoinGameAsaGuestInDataBaseAsync
��2 Q
(
��Q R
string
��R X
	accessKey
��Y b
,
��b c
GuestAccountDto
��d s$
guestAccountClientDto��t �
,��� �
IGameCallback��� �
playerCallback��� �
)��� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� ?
)
��? @
;
��@ A
using
�� 
(
�� "
DbContextTransaction
�� '
gameTransaction
��( 7
=
��8 9
await
��: ?
repositoryManager
��@ Q
.
��Q R#
StartTransactionAsync
��R g
(
��g h
)
��h i
)
��i j
{
�� 
Game
�� 

gameRecord
�� 
=
��  !
await
��" '
repositoryManager
��( 9
.
��9 :
GameRepository
��: H
.
��H I&
FindGameByKeyAccessAsync
��I a
(
��a b
	accessKey
��b k
)
��k l
;
��l m
if
�� 
(
�� 
playerCallback
�� "
!=
��# %
null
��& *
&&
��+ -
(
��. /
(
��/ 0"
ICommunicationObject
��0 D
)
��D E
playerCallback
��E S
)
��S T
.
��T U
State
��U Z
==
��[ ] 
CommunicationState
��^ p
.
��p q
Opened
��q w
&&
��x z

gameRecord��{ �
!=��� �
null��� �
)��� �
{
�� 
ConnectedPlayer
�� #
	newPlayer
��$ -
=
��. /
new
��0 3
ConnectedPlayer
��4 C
(
��C D
playerCallback
��D R
,
��R S#
guestAccountClientDto
��T i
)
��i j
;
��j k
if
�� 
(
��  
CanJoinByGameQuota
�� *
(
��* +

gameRecord
��+ 5
)
��5 6
&&
��7 9
(
��: ;
!
��; <
IsNewPlayer
��< G
(
��G H
	newPlayer
��H Q
,
��Q R

gameRecord
��S ]
.
��] ^
Id
��^ `
)
��` a
||
��b d
await
��e j/
 IsGuestAccountPreviusJoinedAsync��k �
(��� �

gameRecord��� �
,��� �%
guestAccountClientDto��� �
,��� �
	newPlayer��� �
)��� �
)��� �
)��� �
{
�� 
return
�� 
new
�� "$
OperationResultGameDto
��# 9
(
��9 :
true
��: >
,
��> ?
LanguageUtilities
��@ Q
.
��Q R
MessageSuccess
��R `
(
��` a#
guestAccountClientDto
��a v
.
��v w 
PreferredLanguage��w �
)��� �
,��� �
CreateGameDto��� �
(��� �

gameRecord��� �
)��� �
)��� �
;��� �
}
�� 
if
�� 
(
��  
CanJoinByGameQuota
�� *
(
��* +

gameRecord
��+ 5
)
��5 6
&&
��7 9
await
��: ?
AddPlayersToGame
��@ P
(
��P Q

gameRecord
��Q [
)
��[ \
)
��\ ]
{
�� $
SetConnectedPlayerList
�� .
(
��. /
	newPlayer
��/ 8
,
��8 9

gameRecord
��: D
)
��D E
;
��E F
await
�� 1
#HandleRelationGuestAccountGameAsync
�� A
(
��A B

gameRecord
��B L
,
��L M#
guestAccountClientDto
��N c
)
��c d
;
��d e
await
�� ,
SendRemainingTimeToPlayerAsync
�� <
(
��< =

gameRecord
��= G
.
��G H
Id
��H J
,
��J K
	newPlayer
��L U
)
��U V
;
��V W
await
�� 
repositoryManager
�� /
.
��/ 0
	SaveAsync
��0 9
(
��9 :
)
��: ;
;
��; <
gameTransaction
�� '
.
��' (
Commit
��( .
(
��. /
)
��/ 0
;
��0 1
return
�� 
new
�� "$
OperationResultGameDto
��# 9
(
��9 :
true
��: >
,
��> ?
LanguageUtilities
��@ Q
.
��Q R
MessageSuccess
��R `
(
��` a#
guestAccountClientDto
��a v
.
��v w 
PreferredLanguage��w �
)��� �
,��� �
CreateGameDto��� �
(��� �

gameRecord��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
return
�� 
new
�� $
OperationResultGameDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G%
MessageUnableToSaveData
��G ^
(
��^ _#
guestAccountClientDto
��_ t
.
��t u 
PreferredLanguage��u �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
SubstractPlayers
��  0
(
��0 1
GameDto
��1 8
gameClientDto
��9 F
,
��F G
int
��H K
idPlayer
��L T
)
��T U
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
Game
�� 

gameRecord
�� 
=
�� 
await
�� #
repositoryManager
��$ 5
.
��5 6
GameRepository
��6 D
.
��D E!
FindEntityByIdAsync
��E X
(
��X Y
(
��Y Z
int
��Z ]
)
��] ^
gameClientDto
��^ k
.
��k l
Id
��l n
)
��n o
;
��o p
if
�� 
(
�� 

gameRecord
�� 
!=
�� 
null
�� "
)
��" #
{
�� 

gameRecord
�� 
.
�� 
NumberPlayers
�� (
--
��( *
;
��* +
if
�� 
(
�� 

gameRecord
�� 
.
�� 
NumberPlayers
�� ,
==
��- /
GameUtilities
��0 =
.
��= >.
 NUMBER_OF_PLAYERS_TO_CANCEL_GAME
��> ^
)
��^ _
{
�� 

gameRecord
�� 
.
�� 
Status
�� %
=
��& '
GameUtilities
��( 5
.
��5 6*
DOMAIN_GAME_STATUS_CANCELLED
��6 R
;
��R S
}
�� 
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
ChangeAdminGame
��  /
(
��/ 0
Game
��0 4

gameRecord
��5 ?
)
��? @
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� /
)
��/ 0
;
��0 1
bool
�� #
isPossibleChangeAdmin
�� &
=
��' (
false
��) .
;
��. /
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3

gameRecord
��3 =
.
��= >
Id
��> @
,
��@ A
out
��B E
ConcurrentBag
��F S
<
��S T
ConnectedPlayer
��T c
>
��c d
playersInGame
��e r
)
��r s
)
��s t
{
�� 
foreach
�� 
(
�� 
ConnectedPlayer
�� (
player
��) /
in
��0 2
playersInGame
��3 @
)
��@ A
{
�� 
ConnectedPlayer
�� #
newAdminPlayer
��$ 2
=
��3 4
player
��5 ;
;
��; <
int
�� 
adminId
�� 
=
��  !
newAdminPlayer
��" 0
?
��0 1
.
��1 2
profileClientDto
��2 B
?
��B C
.
��C D
Id
��D F
??
��G I
newAdminPlayer
��J X
?
��X Y
.
��Y Z
guestAccountDto
��Z i
?
��i j
.
��j k
Id
��k m
??
��n p!
CharacterUtilities��q �
.��� �
NON_VALID_ID��� �
;��� �
if
�� 
(
�� 
adminId
�� 
!=
��  " 
CharacterUtilities
��# 5
.
��5 6
NON_VALID_ID
��6 B
&&
��C E"
IsPlayerCallbackOpen
��F Z
(
��Z [
newAdminPlayer
��[ i
)
��i j
)
��j k
{
�� 

gameRecord
�� "
.
��" #
AdminGameId
��# .
=
��/ 0
adminId
��1 8
;
��8 9
await
�� 
repositoryManager
�� /
.
��/ 0
	SaveAsync
��0 9
(
��9 :
)
��: ;
;
��; <
NotifyNewAdminId
�� (
(
��( )

gameRecord
��) 3
.
��3 4
Id
��4 6
,
��6 7
adminId
��8 ?
)
��? @
;
��@ A#
isPossibleChangeAdmin
�� -
=
��. /
true
��0 4
;
��4 5
break
�� 
;
�� 
}
�� 
else
�� 
if
�� 
(
�� 
adminId
�� $
!=
��% ' 
CharacterUtilities
��( :
.
��: ;
NON_VALID_ID
��; G
)
��G H
{
�� 
await
�� &
RemoveDisconnectedPlayer
�� 6
(
��6 7

gameRecord
��7 A
.
��A B
Id
��B D
,
��D E
adminId
��F M
)
��M N
;
��N O
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� #
isPossibleChangeAdmin
�� &
)
��& '
{
�� 
await
�� 
ChangeStatusGame
�� &
(
��& '

gameRecord
��' 1
,
��1 2
GameUtilities
��3 @
.
��@ A*
DOMAIN_GAME_STATUS_CANCELLED
��A ]
)
��] ^
;
��^ _
}
�� 
return
�� #
isPossibleChangeAdmin
�� (
;
��( )
}
�� 	
public
�� 
void
�� 
NotifyNewAdminId
�� $
(
��$ %
int
��% (
gameId
��) /
,
��/ 0
int
��1 4

newAdminId
��5 ?
)
��? @
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
)
��l m
{
�� 
foreach
�� 
(
�� 
ConnectedPlayer
�� (
player
��) /
in
��0 2
playersInGame
��3 @
)
��@ A
{
�� 
if
�� 
(
�� "
IsPlayerCallbackOpen
�� ,
(
��, -
player
��- 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 
player
�� "
.
��" #
gameCallback
��# /
.
��/ 0%
BroadcastNotifyNewAdmin
��0 G
(
��G H

newAdminId
��H R
)
��R S
;
��S T
}
�� 
catch
�� 
(
�� %
ObjectDisposedException
�� 6
ex
��7 9
)
��9 :
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 5
ex
��6 8
)
��8 9
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� &
RemoveDisconnectedPlayer
�� 2
(
��2 3
int
��3 6
gameId
��7 =
,
��= >
int
��? B
playerId
��C K
)
��K L
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
)
��l m
{
�� 
ConcurrentBag
�� 
<
�� 
ConnectedPlayer
�� -
>
��- ."
updatedPlayersInGame
��/ C
=
��D E
new
��F I
ConcurrentBag
��J W
<
��W X
ConnectedPlayer
��X g
>
��g h
(
��h i
playersInGame
��i v
.
��v w
Where
��w |
(
��| }
player��} �
=>��� �
!
�� 
(
�� 
player
�� 
.
�� 
profileClientDto
�� -
?
��- .
.
��. /
Id
��/ 1
==
��2 4
playerId
��5 =
||
��> @
player
��A G
.
��G H
guestAccountDto
��H W
?
��W X
.
��X Y
Id
��Y [
==
��\ ^
playerId
��_ g
)
��g h
)
��h i
)
��i j
;
��j k
ConnectedPlayer
��  
disconnectedPlayer
��  2
=
��3 4 
GetConnectedPlayer
��5 G
(
��G H
gameId
��H N
,
��N O
playerId
��P X
)
��X Y
;
��Y Z$
connectedPlayersByGame
�� &
[
��& '
gameId
��' -
]
��- .
=
��/ 0"
updatedPlayersInGame
��1 E
;
��E F
if
�� 
(
��  
disconnectedPlayer
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
Game
�� 

gameRecord
�� #
=
��$ %
await
��& +
repositoryManager
��, =
.
��= >
GameRepository
��> L
.
��L M!
FindEntityByIdAsync
��M `
(
��` a
gameId
��a g
)
��g h
;
��h i
if
�� 
(
�� 
!
�� "
updatedPlayersInGame
�� -
.
��- .
Any
��. 1
(
��1 2
)
��2 3
&&
��4 6

gameRecord
��7 A
!=
��B D
null
��E I
)
��I J
{
�� 
await
�� 
ChangeStatusGame
�� .
(
��. /

gameRecord
��/ 9
,
��9 :
GameUtilities
��; H
.
��H I*
DOMAIN_GAME_STATUS_CANCELLED
��I e
)
��e f
;
��f g$
connectedPlayersByGame
�� .
.
��. /
	TryRemove
��/ 8
(
��8 9
gameId
��9 ?
,
��? @
out
��A D
ConcurrentBag
��E R
<
��R S
ConnectedPlayer
��S b
>
��b c

updateList
��d n
)
��n o
;
��o p
}
�� 
else
�� 
if
�� 
(
�� 

gameRecord
�� '
!=
��( *
null
��+ /
&&
��0 2
!
��3 4"
updatedPlayersInGame
��4 H
.
��H I
Any
��I L
(
��L M
player
��M S
=>
��T V
player
�� 
.
�� 
profileClientDto
�� /
?
��/ 0
.
��0 1
Id
��1 3
==
��4 6

gameRecord
��7 A
.
��A B
AdminGameId
��B M
||
��N P
player
�� 
.
�� 
guestAccountDto
�� .
?
��. /
.
��/ 0
Id
��0 2
==
��3 5

gameRecord
��6 @
.
��@ A
AdminGameId
��A L
)
��L M
)
��M N
{
�� 
await
�� 
ChangeAdminGame
�� -
(
��- .

gameRecord
��. 8
)
��8 9
;
��9 :
}
�� 
}
�� 
}
�� 
await
�� %
ChangeStatusProfileGame
�� )
(
��) *
playerId
��* 2
,
��2 3
false
��4 9
,
��9 :
gameId
��; A
)
��A B
;
��B C
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� %
ChangeStatusProfileGame
��  7
(
��7 8
int
��8 ;
	idProfile
��< E
,
��E F
bool
��G K
isPlayerInGame
��L Z
,
��Z [
int
��\ _
idGame
��` f
)
��f g
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
ProfileGame
�� 
profileGameRecord
�� )
=
��* +
await
��, 1
repositoryManager
��2 C
.
��C D#
ProfileGameRepository
��D Y
.
��Y Z'
IsPlayerJoinedToGameAsync
��Z s
(
��s t
	idProfile
��t }
,
��} ~
idGame�� �
)��� �
;��� �
Profile
�� 
profileRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
ProfileRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
	idProfile
��b k
)
��k l
;
��l m
if
�� 
(
�� 
profileGameRecord
�� !
!=
��" $
null
��% )
&&
��* ,
profileRecord
��- :
!=
��; =
null
��> B
)
��B C
{
�� 
profileGameRecord
�� !
.
��! "
IsPlayerInGame
��" 0
=
��1 2
isPlayerInGame
��3 A
;
��A B
profileRecord
�� 
.
�� 
IsOnline
�� &
=
��' (
isPlayerInGame
��) 7
;
��7 8
await
�� 
repositoryManager
�� (
.
��( )
	SaveAsync
��) 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -%
QuitGameInDatabaseAsync
��. E
(
��E F
GameDto
��F M
gameClientDto
��N [
,
��[ \

ProfileDto
��] g
profileClientDto
��h x
)
��x y
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
using
�� 
(
�� "
DbContextTransaction
�� '
gameTransaction
��( 7
=
��8 9
await
��: ?
repositoryManager
��@ Q
.
��Q R#
StartTransactionAsync
��R g
(
��g h
)
��h i
)
��i j
{
�� 
Profile
�� 
profileRecord
�� %
=
��& '
await
��( -
repositoryManager
��. ?
.
��? @
ProfileRepository
��@ Q
.
��Q R!
FindEntityByIdAsync
��R e
(
��e f
(
��f g
int
��g j
)
��j k
profileClientDto
��k {
.
��{ |
Id
��| ~
)
��~ 
;�� �
if
�� 
(
�� 
profileRecord
�� !
!=
��" $
null
��% )
&&
��* ,
await
��- 2
SubstractPlayers
��3 C
(
��C D
gameClientDto
��D Q
,
��Q R
(
��S T
int
��T W
)
��W X
profileClientDto
��X h
.
��h i
Id
��i k
)
��k l
)
��l m
{
�� 
await
�� &
RemoveDisconnectedPlayer
�� 2
(
��2 3
(
��3 4
int
��4 7
)
��7 8
gameClientDto
��8 E
.
��E F
Id
��F H
,
��H I
(
��J K
int
��K N
)
��N O
profileClientDto
��O _
.
��_ `
Id
��` b
)
��b c
;
��c d
await
�� 
repositoryManager
�� +
.
��+ ,
	SaveAsync
��, 5
(
��5 6
)
��6 7
;
��7 8
gameTransaction
�� #
.
��# $
Commit
��$ *
(
��* +
)
��+ ,
;
��, -
return
�� 
new
��  
OperationResultDto
�� 1
(
��1 2
true
��2 6
,
��6 7
LanguageUtilities
��8 I
.
��I J
MessageSuccess
��J X
(
��X Y
profileClientDto
��Y i
.
��i j
PreferredLanguage
��j {
)
��{ |
)
��| }
;
��} ~
}
�� 
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C%
MessageUnableToSaveData
��C Z
(
��Z [
profileClientDto
��[ k
.
��k l
PreferredLanguage
��l }
)
��} ~
)
��~ 
;�� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� &
ChangeGuestAccountStatus
��  8
(
��8 9
int
��9 <
guestAccountId
��= K
,
��K L
bool
��M Q
isActive
��R Z
,
��Z [
int
��\ _
gameId
��` f
)
��f g
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
GuestAccount
��  
guestAccountRecord
�� +
=
��, -
await
��. 3
repositoryManager
��4 E
.
��E F$
GuestAccountRepository
��F \
.
��\ ]!
FindEntityByIdAsync
��] p
(
��p q
guestAccountId
��q 
)�� �
;��� �
GuestAccountGame
�� $
guestAccountGameRecord
�� 3
=
��4 5
await
��6 ;
repositoryManager
��< M
.
��M N(
GuestAccountGameRepository
��N h
.
��h i.
IsGuestAccountJoinedToGameAsync��i �
(��� �
guestAccountId��� �
,��� �
gameId��� �
)��� �
;��� �
if
�� 
(
��  
guestAccountRecord
�� "
!=
��# %
null
��& *
&&
��+ -$
guestAccountGameRecord
��. D
!=
��E G
null
��H L
)
��L M
{
��  
guestAccountRecord
�� "
.
��" #
IsActive
��# +
=
��, -
isActive
��. 6
;
��6 7$
guestAccountGameRecord
�� &
.
��& '
IsPlayerInGame
��' 5
=
��6 7
isActive
��8 @
;
��@ A
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -4
&QuitGameAsaGuestAccountInDatabaseAsync
��. T
(
��T U
GameDto
��U \
gameClientDto
��] j
,
��j k
GuestAccountDto
��l {$
guestAccountClientDto��| �
)��� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� F
)
��F G
;
��G H
using
�� 
(
�� "
DbContextTransaction
�� '
gameTransaction
��( 7
=
��8 9
await
��: ?
repositoryManager
��@ Q
.
��Q R#
StartTransactionAsync
��R g
(
��g h
)
��h i
)
��i j
{
�� 
if
�� 
(
�� 
await
�� 
SubstractPlayers
�� *
(
��* +
gameClientDto
��+ 8
,
��8 9
(
��: ;
int
��; >
)
��> ?#
guestAccountClientDto
��? T
.
��T U
Id
��U W
)
��W X
)
��X Y
{
�� 
await
�� &
RemoveDisconnectedPlayer
�� 2
(
��2 3
(
��3 4
int
��4 7
)
��7 8
gameClientDto
��8 E
.
��E F
Id
��F H
,
��H I
(
��J K
int
��K N
)
��N O#
guestAccountClientDto
��O d
.
��d e
Id
��e g
)
��g h
;
��h i
await
�� 
repositoryManager
�� +
.
��+ ,
	SaveAsync
��, 5
(
��5 6
)
��6 7
;
��7 8
gameTransaction
�� #
.
��# $
Commit
��$ *
(
��* +
)
��+ ,
;
��, -
return
�� 
new
��  
OperationResultDto
�� 1
(
��1 2
true
��2 6
,
��6 7
LanguageUtilities
��8 I
.
��I J
MessageSuccess
��J X
(
��X Y#
guestAccountClientDto
��Y n
.
��n o 
PreferredLanguage��o �
)��� �
)��� �
;��� �
}
�� 
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G%
MessageUnableToSaveData
��G ^
(
��^ _#
guestAccountClientDto
��_ t
.
��t u 
PreferredLanguage��u �
)��� �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� *
ExpelPlayerAsAdminInDataBase
��  <
(
��< =
ExpelPlayerDto
��= K
expelPlayerDto
��L Z
,
��Z [
GameDto
��\ c
gameClientDto
��d q
,
��q r
int
��s v
idPlayer
��w 
)�� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� <
)
��< =
;
��= >
bool
�� 
isSuccessExpel
�� 
=
��  !
false
��" '
;
��' (
if
�� 
(
�� 
await
�� 
serviceManager
�� $
.
��$ %
GameService
��% 0
.
��0 1
IsAdminById
��1 <
(
��< =
idPlayer
��= E
,
��E F
(
��G H
int
��H K
)
��K L
gameClientDto
��L Y
.
��Y Z
Id
��Z \
)
��\ ]
&&
��^ `
expelPlayerDto
��a o
.
��o p
IdPlayerToExpel
��p 
!=��� �
idPlayer��� �
&&��� �&
connectedPlayersByGame��� �
.��� �
ContainsKey��� �
(��� �
(��� �
int��� �
)��� �
gameClientDto��� �
.��� �
Id��� �
)��� �
)��� �
{
�� 
await
�� #
ExpelRegisteredPlayer
�� +
(
��+ ,
expelPlayerDto
��, :
.
��: ;
IdPlayerToExpel
��; J
,
��J K
gameClientDto
��L Y
,
��Y Z
expelPlayerDto
��[ i
.
��i j
Reason
��j p
)
��p q
;
��q r
await
�� 
ExpelGuestPlayer
�� &
(
��& '
expelPlayerDto
��' 5
.
��5 6
IdPlayerToExpel
��6 E
,
��E F
gameClientDto
��G T
,
��T U
expelPlayerDto
��V d
.
��d e
Reason
��e k
)
��k l
;
��l m
isSuccessExpel
�� 
=
��  
true
��! %
;
��% &
}
�� 
return
�� 
isSuccessExpel
�� !
;
��! "
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  #
ExpelRegisteredPlayer
��! 6
(
��6 7
int
��7 :
idPlayerToExpel
��; J
,
��J K
GameDto
��L S
gameClientDto
��T a
,
��a b
string
��c i
reason
��j p
)
��p q
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 5
)
��5 6
;
��6 7
bool
�� 
isSuccessExpel
�� 
=
��  !
false
��" '
;
��' (
ConnectedPlayer
�� 
profileToExpel
�� *
=
��+ , 
GetConnectedPlayer
��- ?
(
��? @
(
��@ A
int
��A D
)
��D E
gameClientDto
��E R
.
��R S
Id
��S U
,
��U V
idPlayerToExpel
��W f
)
��f g
;
��g h
Game
�� 

gameRecord
�� 
=
�� 
await
�� #
repositoryManager
��$ 5
.
��5 6
GameRepository
��6 D
.
��D E!
FindEntityByIdAsync
��E X
(
��X Y
(
��Y Z
int
��Z ]
)
��] ^
gameClientDto
��^ k
.
��k l
Id
��l n
)
��n o
;
��o p
if
�� 
(
�� 
profileToExpel
�� 
!=
�� !
null
��" &
&&
��' )
profileToExpel
��* 8
.
��8 9
profileClientDto
��9 I
!=
��J L
null
��M Q
&&
��R T

gameRecord
��U _
!=
��` b
null
��c g
)
��g h
{
�� 
try
�� 
{
�� 
if
�� 
(
�� 
(
�� 
(
�� "
ICommunicationObject
�� .
)
��. /
profileToExpel
��/ =
.
��= >
gameCallback
��> J
)
��J K
.
��K L
State
��L Q
==
��R T 
CommunicationState
��U g
.
��g h
Opened
��h n
)
��n o
{
�� 
profileToExpel
�� &
.
��& '
gameCallback
��' 3
.
��3 4#
NotifyPlayerExpulsion
��4 I
(
��I J
LanguageUtilities
��J [
.
��[ \ 
MessageExpelPlayer
��\ n
(
��n o
profileToExpel
��o }
.
��} ~
profileClientDto��~ �
.��� �!
PreferredLanguage��� �
)��� �
,��� �
reason��� �
)��� �
;��� �-
SendBroadcastMessageExpelPlayer
�� 7
(
��7 8
gameClientDto
��8 E
,
��E F
profileToExpel
��G U
)
��U V
;
��V W
await
�� %
QuitGameInDatabaseAsync
�� 5
(
��5 6
gameClientDto
��6 C
,
��C D
profileToExpel
��E S
.
��S T
profileClientDto
��T d
)
��d e
;
��e f
isSuccessExpel
�� &
=
��' (
true
��) -
;
��- .
}
�� 
}
�� 
catch
�� 
(
�� %
ObjectDisposedException
�� .
ex
��/ 1
)
��1 2
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
profileToExpel
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
await
�� &
RemoveDisconnectedPlayer
�� .
(
��. /
(
��/ 0
int
��0 3
)
��3 4
gameClientDto
��4 A
.
��A B
Id
��B D
,
��D E
idPlayerToExpel
��F U
)
��U V
;
��V W
}
�� 
return
�� 
isSuccessExpel
�� !
;
��! "
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
ExpelGuestPlayer
��! 1
(
��1 2
int
��2 5
idPlayerToExpel
��6 E
,
��E F
GameDto
��G N
gameClientDto
��O \
,
��\ ]
string
��^ d
reason
��e k
)
��k l
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2
bool
�� 
isSuccessExpel
�� 
=
��  !
false
��" '
;
��' (
ConnectedPlayer
�� 
guestToExpel
�� (
=
��) * 
GetConnectedPlayer
��+ =
(
��= >
(
��> ?
int
��? B
)
��B C
gameClientDto
��C P
.
��P Q
Id
��Q S
,
��S T
idPlayerToExpel
��U d
)
��d e
;
��e f
if
�� 
(
�� 
guestToExpel
�� 
!=
�� 
null
��  $
&&
��% '
guestToExpel
��( 4
.
��4 5
guestAccountDto
��5 D
!=
��E G
null
��H L
)
��L M
{
�� 
try
�� 
{
�� 
if
�� 
(
�� 
(
�� 
(
�� "
ICommunicationObject
�� .
)
��. /
guestToExpel
��/ ;
.
��; <
gameCallback
��< H
)
��H I
.
��I J
State
��J O
==
��P R 
CommunicationState
��S e
.
��e f
Opened
��f l
)
��l m
{
�� 
guestToExpel
�� $
.
��$ %
gameCallback
��% 1
.
��1 2#
NotifyPlayerExpulsion
��2 G
(
��G H
LanguageUtilities
��H Y
.
��Y Z 
MessageExpelPlayer
��Z l
(
��l m
guestToExpel
��m y
.
��y z
guestAccountDto��z �
.��� �!
PreferredLanguage��� �
)��� �
,��� �
reason��� �
)��� �
;��� �-
SendBroadcastMessageExpelPlayer
�� 7
(
��7 8
gameClientDto
��8 E
,
��E F
guestToExpel
��G S
)
��S T
;
��T U
await
�� 4
&QuitGameAsaGuestAccountInDatabaseAsync
�� D
(
��D E
gameClientDto
��E R
,
��R S
guestToExpel
��T `
.
��` a
guestAccountDto
��a p
)
��p q
;
��q r
isSuccessExpel
�� &
=
��' (
true
��) -
;
��- .
}
�� 
}
�� 
catch
�� 
(
�� %
ObjectDisposedException
�� .
ex
��/ 1
)
��1 2
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 
return
�� 
isSuccessExpel
�� !
;
��! "
}
�� 	
public
�� 
void
�� $
SetConnectedPlayerList
�� *
(
��* +
ConnectedPlayer
��+ :
	newPlayer
��; D
,
��D E
Game
��F J

gameRecord
��K U
)
��U V
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� ,
+
��- .
	newPlayer
��/ 8
.
��8 9
profileClientDto
��9 I
?
��I J
.
��J K
Name
��K O
+
��P Q
$str
��R U
+
��V W
	newPlayer
��X a
.
��a b
guestAccountDto
��b q
?
��q r
.
��r s
Name
��s w
+
��x y
$str
��z }
)
��} ~
;
��~ 
if
�� 
(
�� 
!
�� $
connectedPlayersByGame
�� '
.
��' (
ContainsKey
��( 3
(
��3 4

gameRecord
��4 >
.
��> ?
Id
��? A
)
��A B
)
��B C
{
�� $
connectedPlayersByGame
�� &
[
��& '

gameRecord
��' 1
.
��1 2
Id
��2 4
]
��4 5
=
��6 7
new
��8 ;
ConcurrentBag
��< I
<
��I J
ConnectedPlayer
��J Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
}
�� $
connectedPlayersByGame
�� "
[
��" #

gameRecord
��# -
.
��- .
Id
��. 0
]
��0 1
.
��1 2
Add
��2 5
(
��5 6
	newPlayer
��6 ?
)
��? @
;
��@ A
}
�� 	
private
�� 
bool
�� 
IsNewPlayer
��  
(
��  !
ConnectedPlayer
��! 0
	newPlayer
��1 :
,
��: ;
int
��< ?
gameId
��@ F
)
��F G
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� +
)
��+ ,
;
��, -
return
�� 
(
�� 
	newPlayer
�� 
.
�� 
profileClientDto
�� .
!=
��/ 1
null
��2 6
||
��7 9
	newPlayer
��: C
.
��C D
guestAccountDto
��D S
!=
��T V
null
��W [
)
��[ \
&&
��] _
!
�� $
connectedPlayersByGame
�� *
[
��* +
gameId
��+ 1
]
��1 2
.
��2 3
Any
��3 6
(
��6 7
player
��7 =
=>
��> @
(
��A B
player
��B H
.
��H I
profileClientDto
��I Y
!=
��Z \
null
��] a
&&
��b d
	newPlayer
��e n
.
��n o
profileClientDto
��o 
!=��� �
null��� �
&&
�� 
player
�� 
.
�� 
profileClientDto
�� -
.
��- .
Id
��. 0
==
��1 3
	newPlayer
��4 =
.
��= >
profileClientDto
��> N
.
��N O
Id
��O Q
)
��Q R
||
��S U
(
��V W
player
��W ]
.
��] ^
guestAccountDto
��^ m
!=
��n p
null
��q u
&&
��v x
	newPlayer��y �
.��� �
guestAccountDto��� �
!=��� �
null��� �
&&
�� 
player
�� 
.
�� 
guestAccountDto
�� ,
.
��, -
Id
��- /
==
��0 2
	newPlayer
��3 <
.
��< =
guestAccountDto
��= L
.
��L M
Id
��M O
)
��O P
)
��P Q
;
��Q R
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
GuestAccountGame
��! 1
>
��1 22
$CreateNewRecordGuestAccountGameAsync
��3 W
(
��W X
GuestAccountDto
��X g#
guestAccountClientDto
��h }
,
��} ~
Game�� �

gameRecord��� �
)��� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� D
)
��D E
;
��E F
GuestAccountGame
��  
guestAccountRecord
�� /
=
��0 1
new
��2 5
GuestAccountGame
��6 F
(
��F G
)
��G H
;
��H I 
guestAccountRecord
�� 
.
�� 
GuestAccountId
�� -
=
��. /
(
��0 1
int
��1 4
)
��4 5#
guestAccountClientDto
��5 J
.
��J K
Id
��K M
;
��M N 
guestAccountRecord
�� 
.
�� 
GameId
�� %
=
��& '

gameRecord
��( 2
.
��2 3
Id
��3 5
;
��5 6
return
�� 
await
�� 
Task
�� 
.
�� 

FromResult
�� (
(
��( ) 
guestAccountRecord
��) ;
)
��; <
;
��< =
}
�� 	
public
�� 
static
�� 
GameDto
�� 
CreateGameDto
�� +
(
��+ ,
Game
��, 0

gameRecord
��1 ;
)
��; <
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� -
)
��- .
;
��. /
GameDto
�� 
gameDto
�� 
=
�� 
new
�� !
GameDto
��" )
(
��) *
)
��* +
;
��+ ,
if
�� 
(
�� 

gameRecord
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
gameDto
�� 
.
�� 
Id
�� 
=
�� 

gameRecord
�� '
.
��' (
Id
��( *
;
��* +
gameDto
�� 
.
�� 
	AccessKey
�� !
=
��" #

gameRecord
��$ .
.
��. /
	AccessKey
��/ 8
;
��8 9
gameDto
�� 
.
�� 
Name
�� 
=
�� 

gameRecord
�� )
.
��) *
Name
��* .
;
��. /
gameDto
�� 
.
�� 
IdAdminGame
�� #
=
��$ %

gameRecord
��& 0
.
��0 1
AdminGameId
��1 <
;
��< =
}
�� 
return
�� 
gameDto
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� 
GenerateAccessKey
�� .
(
��. /

ProfileDto
��/ 9
profile
��: A
)
��A B
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 1
)
��1 2
;
��2 3
const
�� 
string
�� 
alphabet
�� !
=
��" #(
AccountValidationUtilities
��$ >
.
��> ?
ALPHABET_EN
��? J
;
��J K
StringBuilder
�� 
accessKeyBuilder
�� *
=
��+ ,
new
��- 0
StringBuilder
��1 >
(
��> ?
)
��? @
;
��@ A
using
�� 
(
�� #
RandomNumberGenerator
�� (
randomNumber
��) 5
=
��6 7#
RandomNumberGenerator
��8 M
.
��M N
Create
��N T
(
��T U
)
��U V
)
��V W
{
�� 
byte
�� 
[
�� 
]
�� 
arrayRandomNumber
�� (
=
��) *
new
��+ .
byte
��/ 3
[
��3 4(
AccountValidationUtilities
��4 N
.
��N O
ACCESS_KEY_LENGTH
��O `
]
��` a
;
��a b
randomNumber
�� 
.
�� 
GetBytes
�� %
(
��% &
arrayRandomNumber
��& 7
)
��7 8
;
��8 9
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #(
AccountValidationUtilities
��$ >
.
��> ?
ACCESS_KEY_LENGTH
��? P
;
��P Q
i
��R S
++
��S U
)
��U V
{
�� 
accessKeyBuilder
�� $
.
��$ %
Append
��% +
(
��+ ,
alphabet
��, 4
[
��4 5
arrayRandomNumber
��5 F
[
��F G
i
��G H
]
��H I
%
��J K
alphabet
��L T
.
��T U
Length
��U [
]
��[ \
)
��\ ]
;
��] ^
}
�� 
accessKeyBuilder
��  
.
��  !
Append
��! '
(
��' ( 
CharacterUtilities
��( :
.
��: ;
STRING_CHAR_DASH
��; K
)
��K L
;
��L M
accessKeyBuilder
��  
.
��  !
Append
��! '
(
��' (
profile
��( /
.
��/ 0
Id
��0 2
)
��2 3
;
��3 4
accessKeyBuilder
��  
.
��  !
Append
��! '
(
��' (
GameUtilities
��( 5
.
��5 6&
WORDS_DICTIONARY_ANIMALS
��6 N
[
��N O
arrayRandomNumber
��O `
[
��` a 
CharacterUtilities
��a s
.
��s t#
FIRST_POSITION_ARRAY��t �
]��� �
%��� �
GameUtilities��� �
.��� �(
WORDS_DICTIONARY_ANIMALS��� �
.��� �
Length��� �
]��� �
)��� �
;��� �
}
�� 
return
�� 
accessKeyBuilder
�� #
.
��# $
ToString
��$ ,
(
��, -
)
��- .
;
��. /
}
�� 	
public
�� 
async
�� 
Task
�� 
ChangeStatusGame
�� *
(
��* +
Game
��+ /

gameRecord
��0 :
,
��: ;
string
��< B
status
��C I
)
��I J
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 0
)
��0 1
;
��1 2

gameRecord
�� 
.
�� 
Status
�� 
=
�� 
status
��  &
;
��& '

gameRecord
�� 
.
�� 
NumberPlayers
�� $
=
��% &
$num
��' (
;
��( )
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� '
VoteExpelPlayerInDataBase
��  9
(
��9 :
ExpelPlayerDto
��: H
expelPlayerDto
��I W
,
��W X
int
��Y \
idPlayer
��] e
,
��e f
GameDto
��g n
gameClientDto
��o |
)
��| }
{
�� 	
bool
�� 

isExpelled
�� 
=
�� 
false
�� #
;
��# $
if
�� 
(
�� 
idPlayer
�� 
!=
�� 
expelPlayerDto
�� *
.
��* +
IdPlayerToExpel
��+ :
)
��: ;
{
�� 
ConnectedPlayer
�� 
playerToExpel
��  -
=
��. / 
GetConnectedPlayer
��0 B
(
��B C
(
��C D
int
��D G
)
��G H
gameClientDto
��H U
.
��U V
Id
��V X
,
��X Y
expelPlayerDto
��Z h
.
��h i
IdPlayerToExpel
��i x
)
��x y
;
��y z
if
�� 
(
�� 
playerToExpel
�� !
!=
��" $
null
��% )
&&
��* ,
playerToExpel
��- :
.
��: ;
AddVote
��; B
(
��B C
idPlayer
��C K
)
��K L
)
��L M
{
�� 
if
�� 
(
�� 
playerToExpel
�� %
.
��% &
profileClientDto
��& 6
!=
��7 9
null
��: >
)
��> ?
{
�� 
playerToExpel
�� %
.
��% &
profileClientDto
��& 6
.
��6 7
votesReceived
��7 D
++
��D F
;
��F G
}
�� 
else
�� 
if
�� 
(
�� 
playerToExpel
�� *
.
��* +
guestAccountDto
��+ :
!=
��; =
null
��> B
)
��B C
{
�� 
playerToExpel
�� %
.
��% &
guestAccountDto
��& 5
.
��5 6
votesReceived
��6 C
++
��C E
;
��E F
}
�� 
int
�� 
requiredVotes
�� %
=
��& '$
connectedPlayersByGame
��( >
[
��> ?
(
��? @
int
��@ C
)
��C D
gameClientDto
��D Q
.
��Q R
Id
��R T
]
��T U
.
��U V
Count
��V [
/
��\ ]
$num
��^ _
+
��` a
$num
��b c
;
��c d
if
�� 
(
�� 
playerToExpel
�� %
.
��% &
votesReceived
��& 3
.
��3 4
Count
��4 9
>=
��: <
requiredVotes
��= J
)
��J K
{
�� 
Game
�� 

gameRecord
�� '
=
��( )
await
��* /
repositoryManager
��0 A
.
��A B
GameRepository
��B P
.
��P Q!
FindEntityByIdAsync
��Q d
(
��d e
(
��e f
int
��f i
)
��i j
gameClientDto
��j w
.
��w x
Id
��x z
)
��z {
;
��{ |

isExpelled
�� "
=
��# $
await
��% **
ExpelPlayerAsAdminInDataBase
��+ G
(
��G H
expelPlayerDto
��H V
,
��V W
gameClientDto
��X e
,
��e f

gameRecord
��g q
.
��q r
AdminGameId
��r }
)
��} ~
;
��~ 
return
�� 

isExpelled
�� )
;
��) *
}
�� 
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
ConnectedPlayer
��  
GetConnectedPlayer
�� 1
(
��1 2
int
��2 5
gameId
��6 <
,
��< =
int
��> A
idPlayer
��B J
)
��J K
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
&&
��m o
playersInGame
��p }
!=��~ �
null��� �
&&��� �
playersInGame��� �
.��� �
Any��� �
(��� �
)��� �
)��� �
{
�� 
return
�� 
playersInGame
�� $
.
��$ %
FirstOrDefault
��% 3
(
��3 4
player
��4 :
=>
��; =
idPlayer
�� 
!=
��  
CharacterUtilities
��  2
.
��2 3
INT_VALUE_ZERO
��3 A
&&
��B D
(
�� 
(
�� 
player
�� 
.
�� 
profileClientDto
�� -
!=
��. 0
null
��1 5
&&
��6 8
player
��9 ?
.
��? @
profileClientDto
��@ P
.
��P Q
Id
��Q S
==
��T V
idPlayer
��W _
)
��_ `
||
��a c
(
�� 
player
�� 
.
�� 
guestAccountDto
�� ,
!=
��- /
null
��0 4
&&
��5 7
player
��8 >
.
��> ?
guestAccountDto
��? N
.
��N O
Id
��O Q
==
��R T
idPlayer
��U ]
)
��] ^
)
��^ _
)
��_ `
;
��` a
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
void
�� -
SendBroadcastMessageExpelPlayer
�� 3
(
��3 4
GameDto
��4 ;
gameClientDto
��< I
,
��I J
ConnectedPlayer
��K Z
expelledPlayer
��[ i
)
��i j
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� ?
)
��? @
;
��@ A
if
�� 
(
�� 
gameClientDto
�� 
==
��  
null
��! %
||
��& (
expelledPlayer
��) 7
==
��8 :
null
��; ?
||
��@ B
!
��C D$
connectedPlayersByGame
��D Z
.
��Z [
ContainsKey
��[ f
(
��f g
(
��g h
int
��h k
)
��k l
gameClientDto
��l y
.
��y z
Id
��z |
)
��| }
)
��} ~
{
�� 
return
�� 
;
�� 
}
�� 
ConcurrentBag
�� 
<
�� 
ConnectedPlayer
�� )
>
��) *
playersInGame
��+ 8
=
��9 :$
connectedPlayersByGame
��; Q
[
��Q R
(
��R S
int
��S V
)
��V W
gameClientDto
��W d
.
��d e
Id
��e g
]
��g h
;
��h i
	PlayerDto
�� 
expelledPlayerDto
�� '
=
��( )
CreatePlayerDto
��* 9
(
��9 :
expelledPlayer
��: H
)
��H I
;
��I J
foreach
�� 
(
�� 
ConnectedPlayer
�� $
player
��% +
in
��, .
playersInGame
��/ <
)
��< =
{
�� %
TrySendBroadcastMessage
�� '
(
��' (
player
��( .
,
��. /
expelledPlayerDto
��0 A
)
��A B
;
��B C
}
�� 
}
�� 	
private
�� 
	PlayerDto
�� 
CreatePlayerDto
�� )
(
��) *
ConnectedPlayer
��* 9
expelledPlayer
��: H
)
��H I
{
�� 	
return
�� 
new
�� 
	PlayerDto
��  
{
�� 

profileDto
�� 
=
�� 
expelledPlayer
�� +
.
��+ ,
profileClientDto
��, <
,
��< =
guestAccountDto
�� 
=
��  !
expelledPlayer
��" 0
.
��0 1
guestAccountDto
��1 @
}
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� %
TrySendBroadcastMessage
�� 3
(
��3 4
ConnectedPlayer
��4 C
player
��D J
,
��J K
	PlayerDto
��L U
expelledPlayerDto
��V g
)
��g h
{
�� 	
if
�� 
(
�� 
player
�� 
?
�� 
.
�� 
gameCallback
�� $
==
��% '
null
��( ,
)
��, -
{
�� 
return
�� 
;
�� 
}
�� 
try
�� 
{
�� 
if
�� 
(
�� "
IsPlayerCallbackOpen
�� (
(
��( )
player
��) /
)
��/ 0
)
��0 1
{
�� 
player
�� 
.
�� 
gameCallback
�� '
.
��' (#
BroadcastMessageExpel
��( =
(
��= >
expelledPlayerDto
��> O
)
��O P
;
��P Q
}
�� 
}
�� 
catch
�� 
(
�� %
ObjectDisposedException
�� *
ex
��+ -
)
��- .
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
player
�� 
.
�� 
gameCallback
�� #
=
��$ %
null
��& *
;
��* +
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )
ex
��* ,
)
��, -
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
IsAdminById
��  +
(
��+ ,
int
��, /
idProfileClient
��0 ?
,
��? @
int
��A D
idGame
��E K
)
��K L
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� +
)
��+ ,
;
��, -
return
�� 
await
�� 
repositoryManager
�� *
.
��* +
GameRepository
��+ 9
.
��9 :"
IsGameAdminByIdAsync
��: N
(
��N O
idProfileClient
��O ^
,
��^ _
idGame
��` f
)
��f g
;
��g h
}
�� 	
public
�� 
Task
�� 
<
�� 0
"OperationResultListOfPlayersInGame
�� 6
>
��6 7+
GetAllPlayersInGameInDataBase
��8 U
(
��U V
GameDto
��V ]
gameClientDto
��^ k
,
��k l
string
��m s 
preferredLanguage��t �
)��� �
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� =
)
��= >
;
��> ?
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
(
��3 4
int
��4 7
)
��7 8
gameClientDto
��8 E
.
��E F
Id
��F H
,
��H I
out
��J M
ConcurrentBag
��N [
<
��[ \
ConnectedPlayer
��\ k
>
��k l
playersInGame
��m z
)
��z {
)
��{ |
{
�� 
List
�� 
<
�� 
ConnectedPlayer
�� $
>
��$ %
playersCopy
��& 1
=
��2 3
playersInGame
��4 A
.
��A B
ToList
��B H
(
��H I
)
��I J
;
��J K
return
�� 
Task
�� 
.
�� 

FromResult
�� &
(
��& '
new
��' *0
"OperationResultListOfPlayersInGame
��+ M
(
��M N
true
�� 
,
�� 
LanguageUtilities
�� %
.
��% &
MessageSuccess
��& 4
(
��4 5
preferredLanguage
��5 F
)
��F G
,
��G H(
GetRegisteredPlayersInGame
�� .
(
��. /
playersCopy
��/ :
)
��: ;
,
��; <*
GetGuestAccountPlayersInGame
�� 0
(
��0 1
playersCopy
��1 <
)
��< =
)
�� 
)
�� 
;
�� 
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
new
��# &0
"OperationResultListOfPlayersInGame
��' I
(
��I J
false
��J O
,
��O P
LanguageUtilities
��Q b
.
��b c,
MessageUnableToFindInDataBase��c �
(��� �!
preferredLanguage��� �
)��� �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
List
�� 
<
�� 

ProfileDto
�� %
>
��% &(
GetRegisteredPlayersInGame
��' A
(
��A B
List
��B F
<
��F G
ConnectedPlayer
��G V
>
��V W
playersInGame
��X e
)
��e f
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <
List
�� 
<
�� 

ProfileDto
�� 
>
�� 
profileServerDtos
�� .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :

ProfileDto
��: D
>
��D E
(
��E F
)
��F G
;
��G H
try
�� 
{
�� 
if
�� 
(
�� 
playersInGame
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
profileServerDtos
�� %
=
��& '
playersInGame
��( 5
.
��5 6
Where
��6 ;
(
��; <
playerConnected
��< K
=>
��L N
playerConnected
��O ^
.
��^ _
profileClientDto
��_ o
!=
��p r
null
��s w
)
��w x
.
��x y
Select
��y 
(�� �
playerConnected��� �
=>��� �
playerConnected��� �
.��� � 
profileClientDto��� �
)��� �
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
return
�� 
profileServerDtos
�� $
;
��$ %
}
�� 	
public
�� 
static
�� 
List
�� 
<
�� 
GuestAccountDto
�� *
>
��* +*
GetGuestAccountPlayersInGame
��, H
(
��H I
List
��I M
<
��M N
ConnectedPlayer
��N ]
>
��] ^
playersInGame
��_ l
)
��l m
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� <
)
��< =
;
��= >
List
�� 
<
�� 
GuestAccountDto
��  
>
��  !$
guestAccountServerDtos
��" 8
=
��9 :
new
��; >
List
��? C
<
��C D
GuestAccountDto
��D S
>
��S T
(
��T U
)
��U V
;
��V W
try
�� 
{
�� 
if
�� 
(
�� 
playersInGame
�� !
!=
��" $
null
��% )
)
��) *
{
�� $
guestAccountServerDtos
�� *
=
��+ ,
playersInGame
��- :
.
��: ;
Where
��; @
(
��@ A
playerConnected
��A P
=>
��Q S
playerConnected
��T c
.
��c d
guestAccountDto
��d s
!=
��t v
null
��w {
)
��{ |
.
��| }
Select��} �
(��� �
playerConnected��� �
=>
�� 
playerConnected
�� '
.
��' (
guestAccountDto
��( 7
)
��7 8
.
��8 9
ToList
��9 ?
(
��? @
)
��@ A
;
��A B
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
return
�� $
guestAccountServerDtos
�� )
;
��) *
}
�� 	
private
�� 
async
�� 
Task
�� ,
SendRemainingTimeToPlayerAsync
�� 9
(
��9 :
int
��: =
gameId
��> D
,
��D E
ConnectedPlayer
��F U
player
��V \
)
��\ ]
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� >
)
��> ?
;
��? @
await
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
(
�� 
)
�� 
=>
��  
{
�� 
if
�� 
(
�� &
gameCountdownToStartGame
�� ,
.
��, -
TryGetValue
��- 8
(
��8 9
gameId
��9 ?
,
��? @
out
��A D
int
��E H
timeRemaining
��I V
)
��V W
)
��W X
{
�� 
try
�� 
{
�� 
player
�� 
.
�� 
gameCallback
�� +
?
��+ ,
.
��, -$
UpdateTimeWhenJoinGame
��- C
(
��C D
timeRemaining
��D Q
)
��Q R
;
��R S
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
int
�� 
CountPlayersReady
�� %
(
��% &
int
��& )
gameId
��* 0
)
��0 1
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
)
��Q R
{
�� 
return
�� 
playersInGame
�� $
.
��$ %
Count
��% *
(
��* +
player
��+ 1
=>
��2 4
player
��5 ;
.
��; <
IsReadyToPlay
��< I
)
��I J
;
��J K
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
SetPlayerReady
�� #
(
��# $
int
��$ '
gameId
��( .
,
��. /
int
��0 3
playerId
��4 <
)
��< =
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
)
��Q R
{
�� 
ConnectedPlayer
�� 
player
��  &
=
��' (
playersInGame
��) 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
p
��F G
=>
��H J
(
�� 
p
�� 
.
�� 
profileClientDto
�� '
?
��' (
.
��( )
Id
��) +
==
��, .
playerId
��/ 7
||
��8 :
p
��; <
.
��< =
guestAccountDto
��= L
?
��L M
.
��M N
Id
��N P
==
��Q S
playerId
��T \
)
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
player
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
player
�� 
.
�� 
IsReadyToPlay
�� (
=
��) *
true
��+ /
;
��/ 0
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� &
StartGameInDataBaseAsync
��  8
(
��8 9
int
��9 <
idPlayer
��= E
,
��E F
GameDto
��G N
gameClientDto
��O \
)
��\ ]
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
bool
�� "
isSuccessTransaction
�� %
=
��& '
false
��( -
;
��- .
using
�� 
(
�� "
DbContextTransaction
�� '
gameTransaction
��( 7
=
��8 9
await
��: ?
repositoryManager
��@ Q
.
��Q R#
StartTransactionAsync
��R g
(
��g h
)
��h i
)
��i j
{
�� "
isSuccessTransaction
�� $
=
��% &
await
��' ,7
)HandleStartGameUsingConnectedPlayersAsync
��- V
(
��V W
idPlayer
��W _
,
��_ `
gameClientDto
��a n
)
��n o
;
��o p
if
�� 
(
�� "
isSuccessTransaction
�� (
)
��( )
{
�� 
await
�� .
 FinalizeTransactionAndClearVotes
�� :
(
��: ;
gameTransaction
��; J
)
��J K
;
��K L
int
�� 
gameId
�� 
=
��  
(
��! "
int
��" %
)
��% &
gameClientDto
��& 3
.
��3 4
Id
��4 6
;
��6 7
SetPlayerReady
�� "
(
��" #
gameId
��# )
,
��) *
idPlayer
��+ 3
)
��3 4
;
��4 5
int
�� 
readyPlayers
�� $
=
��% &
CountPlayersReady
��' 8
(
��8 9
gameId
��9 ?
)
��? @
;
��@ A
int
�� 
totalPlayers
�� $
=
��% &#
GetTotalPlayersInGame
��' <
(
��< =
gameId
��= C
)
��C D
;
��D E
if
�� 
(
�� 
readyPlayers
�� $
>=
��% '
totalPlayers
��( 4
&&
��5 7
readyPlayers
��8 D
>
��E F
GameUtilities
��G T
.
��T U%
MINIMUN_PLAYERS_BY_GAME
��U l
)
��l m
{
�� 
await
�� &
SetCountdownToTenSeconds
�� 6
(
��6 7
gameId
��7 =
)
��= >
;
��> ?
}
�� 
else
�� 
if
�� 
(
�� 
readyPlayers
�� )
>=
��* ,
GameUtilities
��- :
.
��: ;+
MINIMUN_PLAYERS_TO_START_GAME
��; X
)
��X Y
{
�� 
await
�� )
StartOrUpdateCountdownAsync
�� 9
(
��9 :
gameId
��: @
,
��@ A
readyPlayers
��B N
)
��N O
;
��O P
}
�� 
}
�� 
}
�� 
return
�� "
isSuccessTransaction
�� '
;
��' (
}
�� 	
private
�� 
int
�� #
GetTotalPlayersInGame
�� )
(
��) *
int
��* -
gameId
��. 4
)
��4 5
{
�� 	
return
�� $
connectedPlayersByGame
�� )
.
��) *
TryGetValue
��* 5
(
��5 6
gameId
��6 <
,
��< =
out
��> A
ConcurrentBag
��B O
<
��O P
ConnectedPlayer
��P _
>
��_ `
playersInGame
��a n
)
��n o
?
��p q
playersInGame
��r 
.�� �
Count��� �
:��� �
GameUtilities��� �
.��� �0
 NUMBER_OF_PLAYERS_TO_CANCEL_GAME��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� &
SetCountdownToTenSeconds
�� 3
(
��3 4
int
��4 7
gameId
��8 >
)
��> ?
{
�� 	
if
�� 
(
�� &
cancelTokenCountDownGame
�� (
.
��( )
TryGetValue
��) 4
(
��4 5
gameId
��5 ;
,
��; <
out
��= @
var
��A D
existingCts
��E P
)
��P Q
)
��Q R
{
�� 
existingCts
�� 
.
�� 
Cancel
�� "
(
��" #
)
��# $
;
��$ %&
cancelTokenCountDownGame
�� (
.
��( )
	TryRemove
��) 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >%
CancellationTokenSource
��? V
lastCancelToken
��W f
)
��f g
;
��g h
}
�� &
gameCountdownToStartGame
�� $
[
��$ %
gameId
��% +
]
��+ ,
=
��- .
GameUtilities
��/ <
.
��< =*
TIME_TO_START_GAME_COUNTDOWN
��= Y
;
��Y Z
await
�� %
UpdateTimeForAllPlayers
�� )
(
��) *
gameId
��* 0
,
��0 1
GameUtilities
��2 ?
.
��? @*
TIME_TO_START_GAME_COUNTDOWN
��@ \
)
��\ ]
;
��] ^%
CancellationTokenSource
�� #
cancelToken
��$ /
=
��0 1
new
��2 5%
CancellationTokenSource
��6 M
(
��M N
)
��N O
;
��O P&
cancelTokenCountDownGame
�� $
.
��$ %
TryAdd
��% +
(
��+ ,
gameId
��, 2
,
��2 3
cancelToken
��4 ?
)
��? @
;
��@ A
await
�� %
StartGameCountdownAsync
�� )
(
��) *
gameId
��* 0
,
��0 1
cancelToken
��2 =
.
��= >
Token
��> C
)
��C D
;
��D E
}
�� 	
private
�� 
async
�� 
Task
�� )
StartOrUpdateCountdownAsync
�� 6
(
��6 7
int
��7 :
gameId
��; A
,
��A B
int
��C F

clickCount
��G Q
)
��Q R
{
�� 	
int
�� 
reductionTime
�� 
=
�� $
CalculateReductionTime
��  6
(
��6 7

clickCount
��7 A
)
��A B
;
��B C
if
�� 
(
�� &
cancelTokenCountDownGame
�� (
.
��( )
TryGetValue
��) 4
(
��4 5
gameId
��5 ;
,
��; <
out
��= @%
CancellationTokenSource
��A X
existingCts
��Y d
)
��d e
)
��e f
{
�� 
existingCts
�� 
.
�� 
Cancel
�� "
(
��" #
)
��# $
;
��$ %&
cancelTokenCountDownGame
�� (
.
��( )
	TryRemove
��) 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >%
CancellationTokenSource
��? V
	lastToken
��W `
)
��` a
;
��a b
}
�� 
if
�� 
(
�� &
gameCountdownToStartGame
�� (
.
��( )
ContainsKey
��) 4
(
��4 5
gameId
��5 ;
)
��; <
)
��< =
{
�� 
await
�� "
UpdateCountdownTimer
�� *
(
��* +
gameId
��+ 1
,
��1 2
reductionTime
��3 @
)
��@ A
;
��A B
}
�� 
else
�� 
{
�� 
await
�� )
InitializeAndStartCountdown
�� 1
(
��1 2
gameId
��2 8
,
��8 9
reductionTime
��: G
)
��G H
;
��H I
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� )
InitializeAndStartCountdown
�� 6
(
��6 7
int
��7 :
gameId
��; A
,
��A B
int
��C F
reductionTime
��G T
)
��T U
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$"
��  
$str
��  Q
{
��Q R
gameId
��R X
}
��X Y
"
��Y Z
)
��Z [
;
��[ \&
gameCountdownToStartGame
�� $
[
��$ %
gameId
��% +
]
��+ ,
=
��- .$
EnsureMinimumCountdown
��/ E
(
��E F
GameplayUtilities
��F W
.
��W X 
TIME_TO_START_GAME
��X j
-
��k l
reductionTime
��m z
)
��z {
;
��{ |%
CancellationTokenSource
�� #
cts
��$ '
=
��( )
new
��* -%
CancellationTokenSource
��. E
(
��E F
)
��F G
;
��G H&
cancelTokenCountDownGame
�� $
.
��$ %
TryAdd
��% +
(
��+ ,
gameId
��, 2
,
��2 3
cts
��4 7
)
��7 8
;
��8 9
await
�� %
StartGameCountdownAsync
�� )
(
��) *
gameId
��* 0
,
��0 1
cts
��2 5
.
��5 6
Token
��6 ;
)
��; <
;
��< =
}
�� 	
private
�� 
static
�� 
int
�� $
EnsureMinimumCountdown
�� 1
(
��1 2
int
��2 5
time
��6 :
)
��: ;
{
�� 	
return
�� 
Math
�� 
.
�� 
Max
�� 
(
�� 
time
��  
,
��  !
GameUtilities
��" /
.
��/ 0*
TIME_TO_START_GAME_COUNTDOWN
��0 L
)
��L M
;
��M N
}
�� 	
private
�� 
static
�� 
int
�� $
CalculateReductionTime
�� 1
(
��1 2
int
��2 5

clickCount
��6 @
)
��@ A
{
�� 	
return
�� 
GameUtilities
��  
.
��  !*
TIME_TO_START_GAME_COUNTDOWN
��! =
*
��> ?

clickCount
��@ J
;
��J K
}
�� 	
private
�� 
async
�� 
Task
�� "
UpdateCountdownTimer
�� /
(
��/ 0
int
��0 3
gameId
��4 :
,
��: ;
int
��< ?
reductionTime
��@ M
)
��M N
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� W
)
��W X
;
��X Y
int
�� 
newTime
�� 
=
�� 
Math
�� 
.
�� 
Max
�� "
(
��" #
GameplayUtilities
��# 4
.
��4 5 
TIME_TO_START_GAME
��5 G
-
��H I
reductionTime
��J W
,
��W X
GameUtilities
��Y f
.
��f g+
TIME_TO_START_GAME_COUNTDOWN��g �
)��� �
;��� �&
gameCountdownToStartGame
�� $
[
��$ %
gameId
��% +
]
��+ ,
=
��- .
newTime
��/ 6
;
��6 7
await
�� %
UpdateTimeForAllPlayers
�� )
(
��) *
gameId
��* 0
,
��0 1
newTime
��2 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
async
�� 
Task
�� .
 FinalizeTransactionAndClearVotes
�� ;
(
��; <"
DbContextTransaction
��< P
gameTransaction
��Q `
)
��` a
{
�� 	
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
gameTransaction
�� 
.
�� 
Commit
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
private
�� 
async
�� 
Task
�� %
StartGameCountdownAsync
�� 2
(
��2 3
int
��3 6
gameId
��7 =
,
��= >
CancellationToken
��? P
cancellationToken
��Q b
)
��b c
{
�� 	
if
�� 
(
�� 
!
�� $
connectedPlayersByGame
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
gameId
��4 :
,
��: ;
out
��< ?
ConcurrentBag
��@ M
<
��M N
ConnectedPlayer
��N ]
>
��] ^
playersInGame
��_ l
)
��l m
)
��m n
return
��o u
;
��u v
int
�� 
timeRemaining
�� 
=
�� &
gameCountdownToStartGame
��  8
[
��8 9
gameId
��9 ?
]
��? @
;
��@ A
try
�� 
{
�� 
while
�� 
(
�� 
timeRemaining
�� $
>
��% &
GameUtilities
��' 4
.
��4 5#
TIME_MINIMUN_TO_START
��5 J
)
��J K
{
�� &
gameCountdownToStartGame
�� ,
[
��, -
gameId
��- 3
]
��3 4
=
��5 6
timeRemaining
��7 D
;
��D E
if
�� 
(
�� 
timeRemaining
�� %
==
��& (
GameUtilities
��) 6
.
��6 7'
TIME_LAST_SECOND_TO_START
��7 P
||
��Q S
timeRemaining
��T a
%
��b c
GameUtilities
��d q
.
��q r+
TIME_TO_START_GAME_COUNTDOWN��r �
==��� �
GameUtilities��� �
.��� �%
TIME_MINIMUN_TO_START��� �
)��� �
{
�� 
await
�� %
UpdateTimeForAllPlayers
�� 5
(
��5 6
gameId
��6 <
,
��< =
timeRemaining
��> K
)
��K L
;
��L M
}
�� 
await
�� 
Task
�� 
.
�� 
Delay
�� $
(
��$ %
GameUtilities
��% 2
.
��2 3
TIME_MILISECONDS
��3 C
,
��C D
cancellationToken
��E V
)
��V W
;
��W X
timeRemaining
�� !
--
��! #
;
��# $
int
�� 
readyPlayers
�� $
=
��% &
CountPlayersReady
��' 8
(
��8 9
gameId
��9 ?
)
��? @
;
��@ A
if
�� 
(
�� 
timeRemaining
�� %
<=
��& (
$num
��) *
&&
��+ -
readyPlayers
��. :
>
��; <
GameUtilities
��= J
.
��J K%
MINIMUN_PLAYERS_BY_GAME
��K b
)
��b c
{
�� 
await
�� )
StartGameForAllPlayersAsync
�� 9
(
��9 :
gameId
��: @
)
��@ A
;
��A B!
InitializeGameBoard
�� +
(
��+ ,
gameId
��, 2
)
��2 3
;
��3 4&
gameCountdownToStartGame
�� 0
.
��0 1
	TryRemove
��1 :
(
��: ;
gameId
��; A
,
��A B
out
��C F
int
��G J
lastTime
��K S
)
��S T
;
��T U&
cancelTokenCountDownGame
�� 0
.
��0 1
	TryRemove
��1 :
(
��: ;
gameId
��; A
,
��A B
out
��C F%
CancellationTokenSource
��G ^
cancelToken
��_ j
)
��j k
;
��k l
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� #
TaskCanceledException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
finally
�� 
{
�� &
cancelTokenCountDownGame
�� (
.
��( )
	TryRemove
��) 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >%
CancellationTokenSource
��? V
cancelToken
��W b
)
��b c
;
��c d
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� %
UpdateTimeForAllPlayers
�� 2
(
��2 3
int
��3 6
gameId
��7 =
,
��= >
int
��? B
timeRemaining
��C P
)
��P Q
{
�� 	
if
�� 
(
�� 
!
�� $
connectedPlayersByGame
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
gameId
��4 :
,
��: ;
out
��< ?
ConcurrentBag
��@ M
<
��M N
ConnectedPlayer
��N ]
>
��] ^
playersInGame
��_ l
)
��l m
)
��m n
{
�� 
return
�� 
;
�� 
}
�� 
bool
�� 
isConnected
�� 
=
�� 
false
�� $
;
��$ %
foreach
�� 
(
�� 
ConnectedPlayer
�� $
player
��% +
in
��, .
playersInGame
��/ <
)
��< =
{
�� 
int
�� 
idplayer
�� 
=
�� 
player
�� %
.
��% &
profileClientDto
��& 6
?
��6 7
.
��7 8
Id
��8 :
??
��; =
player
��> D
.
��D E
guestAccountDto
��E T
?
��T U
.
��U V
Id
��V X
??
��Y [ 
CharacterUtilities
��\ n
.
��n o
NON_VALID_ID
��o {
;
��{ |
try
�� 
{
�� 
if
�� 
(
�� "
IsPlayerCallbackOpen
�� +
(
��+ ,
player
��, 2
)
��2 3
)
��3 4
{
�� 
player
�� 
.
�� 
gameCallback
�� +
?
��+ ,
.
��, -$
UpdateTimeWhenJoinGame
��- C
(
��C D
timeRemaining
��D Q
)
��Q R
;
��R S
isConnected
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
}
�� 
catch
�� 
(
�� %
ObjectDisposedException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
if
�� 
(
�� 
!
�� 
isConnected
�� 
)
��  
{
�� 
await
�� &
RemoveDisconnectedPlayer
�� 2
(
��2 3
gameId
��3 9
,
��9 :
idplayer
��; C
)
��C D
;
��D E
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� '
SendUpdateConnectedPlayer
�� 3
(
��3 4
int
��4 7
gameId
��8 >
)
��> ?
{
�� 	
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� 9
)
��9 :
;
��: ;
bool
�� 
eliminatePlayer
��  
=
��! "
true
��# '
;
��' (
if
�� 
(
�� 
!
�� $
connectedPlayersByGame
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
gameId
��4 :
,
��: ;
out
��< ?
ConcurrentBag
��@ M
<
��M N
ConnectedPlayer
��N ]
>
��] ^
playersInGame
��_ l
)
��l m
)
��m n
{
�� 
return
�� 
;
�� 
}
�� 
List
�� 
<
�� 
ConnectedPlayer
��  
>
��  !
orderedPlayers
��" 0
=
��1 2
playersInGame
��3 @
.
��@ A
OrderBy
��A H
(
��H I
player
��I O
=>
��P R
player
��S Y
.
��Y Z
JoinedAt
��Z b
)
��b c
.
��c d
ToList
��d j
(
��j k
)
��k l
;
��l m
foreach
�� 
(
�� 
ConnectedPlayer
�� $
player
��% +
in
��, .
orderedPlayers
��/ =
)
��= >
{
�� 
int
�� 
idplayer
�� 
=
�� 
player
�� %
.
��% &
profileClientDto
��& 6
?
��6 7
.
��7 8
Id
��8 :
??
��; =
player
��> D
.
��D E
guestAccountDto
��E T
?
��T U
.
��U V
Id
��V X
??
��Y [ 
CharacterUtilities
��\ n
.
��n o
NON_VALID_ID
��o {
;
��{ |
try
�� 
{
�� 
if
�� 
(
�� "
IsPlayerCallbackOpen
�� ,
(
��, -
player
��- 3
)
��3 4
)
��4 5
{
�� 
eliminatePlayer
�� '
=
��( )
false
��* /
;
��/ 0
}
�� 
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� :
ex
��; =
)
��= >
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
if
�� 
(
�� 
eliminatePlayer
�� #
)
��# $
{
�� 
await
�� &
RemoveDisconnectedPlayer
�� 2
(
��2 3
gameId
��3 9
,
��9 :
idplayer
��; C
)
��C D
;
��D E
}
�� 
}
�� 
if
�� 
(
�� 
orderedPlayers
�� 
.
�� 
IsNullOrEmpty
�� ,
(
��, -
)
��- .
)
��. /
{
�� $
CancelExistingNotifier
�� &
(
��& '
gameId
��' -
)
��- .
;
��. /
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 1
#StartPeriodicUpdatesCreateGameAsync
�� =
(
��= >
int
��> A
gameId
��B H
,
��H I%
CancellationTokenSource
��J a%
cancellationTokenSource
��b y
)
��y z
{
�� 	
if
�� 
(
�� 
!
�� $
connectedPlayersByGame
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
gameId
��4 :
,
��: ;
out
��< ?
ConcurrentBag
��@ M
<
��M N
ConnectedPlayer
��N ]
>
��] ^
playersInGame
��_ l
)
��l m
)
��m n
{
�� 
return
�� 
;
�� 
}
�� 
try
�� 
{
�� 
while
�� 
(
�� 
!
�� %
cancellationTokenSource
�� /
.
��/ 0%
IsCancellationRequested
��0 G
)
��G H
{
�� 
await
�� '
SendUpdateConnectedPlayer
�� 3
(
��3 4
gameId
��4 :
)
��: ;
;
��; <
await
�� 
Task
�� 
.
�� 
Delay
�� $
(
��$ %
TimeSpan
��% -
.
��- .
FromSeconds
��. 9
(
��9 :
$num
��: <
)
��< =
,
��= >%
cancellationTokenSource
��? V
.
��V W
Token
��W \
)
��\ ]
;
��] ^
}
�� 
}
�� 
catch
�� 
(
�� #
TaskCanceledException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�	�	 
Log
�	�	 
.
�	�	 
Error
�	�	 
(
�	�	 
ex
�	�	 
,
�	�	 
ex
�	�	  
.
�	�	  !
Source
�	�	! '
)
�	�	' (
;
�	�	( )
}
�	�	 
}
�	�	 	
public
�	�	 
async
�	�	 
Task
�	�	 
<
�	�	 
bool
�	�	 
>
�	�	 7
)HandleStartGameUsingConnectedPlayersAsync
�	�	  I
(
�	�	I J
int
�	�	J M
idPlayer
�	�	N V
,
�	�	V W
GameDto
�	�	X _
gameClientDto
�	�	` m
)
�	�	m n
{
�	�	 	
Console
�	�	 
.
�	�	 
	WriteLine
�	�	 
(
�	�	 
$str
�	�	 I
)
�	�	I J
;
�	�	J K
if
�	�	 
(
�	�	 $
connectedPlayersByGame
�	�	 &
.
�	�	& '
TryGetValue
�	�	' 2
(
�	�	2 3
(
�	�	3 4
int
�	�	4 7
)
�	�	7 8
gameClientDto
�	�	8 E
.
�	�	E F
Id
�	�	F H
,
�	�	H I
out
�	�	J M
ConcurrentBag
�	�	N [
<
�	�	[ \
ConnectedPlayer
�	�	\ k
>
�	�	k l
playersInGame
�	�	m z
)
�	�	z {
)
�	�	{ |
{
�	�	 
ConnectedPlayer
�	�	 
player
�	�	  &
=
�	�	' (
playersInGame
�	�	) 6
.
�	�	6 7
FirstOrDefault
�	�	7 E
(
�	�	E F
players
�	�	F M
=>
�	�	N P
(
�	�	 
players
�	�	 
.
�	�	 
profileClientDto
�	�	 -
?
�	�	- .
.
�	�	. /
Id
�	�	/ 1
==
�	�	2 4
idPlayer
�	�	5 =
||
�	�	> @
players
�	�	A H
.
�	�	H I
guestAccountDto
�	�	I X
?
�	�	X Y
.
�	�	Y Z
Id
�	�	Z \
==
�	�	] _
idPlayer
�	�	` h
)
�	�	h i
)
�	�	i j
;
�	�	j k
if
�	�	 
(
�	�	 
player
�	�	 
!=
�	�	 
null
�	�	 "
)
�	�	" #
{
�	�	 
if
�	�	 
(
�	�	 
player
�	�	 
.
�	�	 
profileClientDto
�	�	 /
!=
�	�	0 2
null
�	�	3 7
)
�	�	7 8
{
�	�	 
await
�	�	 
repositoryManager
�	�	 /
.
�	�	/ 0#
ProfileGameRepository
�	�	0 E
.
�	�	E F
StartGameProfile
�	�	F V
(
�	�	V W
(
�	�	W X
int
�	�	X [
)
�	�	[ \
gameClientDto
�	�	\ i
.
�	�	i j
Id
�	�	j l
,
�	�	l m
(
�	�	n o
int
�	�	o r
)
�	�	r s
player
�	�	s y
.
�	�	y z
profileClientDto�	�	z �
.�	�	� �
Id�	�	� �
)�	�	� �
;�	�	� �
}
�	�	 
else
�	�	 
if
�	�	 
(
�	�	 
player
�	�	 #
.
�	�	# $
guestAccountDto
�	�	$ 3
!=
�	�	4 6
null
�	�	7 ;
)
�	�	; <
{
�	�	 
await
�	�	 
repositoryManager
�	�	 /
.
�	�	/ 0(
GuestAccountGameRepository
�	�	0 J
.
�	�	J K(
StartGameGuestAccountAsync
�	�	K e
(
�	�	e f
(
�	�	f g
int
�	�	g j
)
�	�	j k
gameClientDto
�	�	k x
.
�	�	x y
Id
�	�	y {
,
�	�	{ |
(
�	�	} ~
int�	�	~ �
)�	�	� �
player�	�	� �
.�	�	� �
guestAccountDto�	�	� �
.�	�	� �
Id�	�	� �
)�	�	� �
;�	�	� �
}
�	�	 
return
�	�	 
true
�	�	 
;
�	�	  
}
�	�	 
}
�	�	 
return
�	�	 
false
�	�	 
;
�	�	 
}
�	�	 	
public
�	�	 
static
�	�	 
ProfileScoreDto
�	�	 %#
CreateProfileScoreDto
�	�	& ;
(
�	�	; <
Profile
�	�	< C
profileClient
�	�	D Q
,
�	�	Q R
int
�	�	S V
position
�	�	W _
,
�	�	_ `
int
�	�	a d
gamesWon
�	�	e m
,
�	�	m n
int
�	�	o r

totalScore
�	�	s }
)
�	�	} ~
{
�	�	 	
Console
�	�	 
.
�	�	 
	WriteLine
�	�	 
(
�	�	 
$str
�	�	 5
)
�	�	5 6
;
�	�	6 7
ProfileScoreDto
�	�	 
profileScoreDto
�	�	 +
=
�	�	, -
new
�	�	. 1
ProfileScoreDto
�	�	2 A
(
�	�	A B
)
�	�	B C
;
�	�	C D
if
�	�	 
(
�	�	 
profileClient
�	�	 
!=
�	�	 
null
�	�	  $
)
�	�	$ %
{
�	�	 
profileScoreDto
�	�	 
.
�	�	  
Name
�	�	  $
=
�	�	% &
profileClient
�	�	' 4
.
�	�	4 5
Name
�	�	5 9
;
�	�	9 :
profileScoreDto
�	�	 
.
�	�	  
Score
�	�	  %
=
�	�	& '

totalScore
�	�	( 2
;
�	�	2 3
profileScoreDto
�	�	 
.
�	�	  
Position
�	�	  (
=
�	�	) *
position
�	�	+ 3
;
�	�	3 4
profileScoreDto
�	�	 
.
�	�	  
GamesWon
�	�	  (
=
�	�	) *
gamesWon
�	�	+ 3
;
�	�	3 4
}
�	�	 
return
�	�	 
profileScoreDto
�	�	 "
;
�	�	" #
}
�	�	 	
public
�	�	 
static
�	�	 
ProfileScoreDto
�	�	 %/
!CreateProfileScoreWhenNotGamesDto
�	�	& G
(
�	�	G H

ProfileDto
�	�	H R
profileClientDto
�	�	S c
)
�	�	c d
{
�	�	 	
ProfileScoreDto
�	�	 
profileScoreDto
�	�	 +
=
�	�	, -
new
�	�	. 1
ProfileScoreDto
�	�	2 A
(
�	�	A B
)
�	�	B C
;
�	�	C D
profileScoreDto
�	�	 
.
�	�	 
Name
�	�	  
=
�	�	! "
profileClientDto
�	�	# 3
.
�	�	3 4
Name
�	�	4 8
;
�	�	8 9
return
�	�	 
profileScoreDto
�	�	 "
;
�	�	" #
}
�	�	 	
public
�	�	 
async
�	�	 
Task
�	�	 
<
�	�	 *
OperationResultListScoreGame
�	�	 6
>
�	�	6 7)
GetScoreGameWorldInDataBase
�	�	8 S
(
�	�	S T

ProfileDto
�	�	T ^
profileClientDto
�	�	_ o
)
�	�	o p
{
�	�	 	
await
�	�	 !
semaphoreScoreWorld
�	�	 %
.
�	�	% &
	WaitAsync
�	�	& /
(
�	�	/ 0
)
�	�	0 1
;
�	�	1 2
try
�	�	 
{
�	�	 
List
�	�	 
<
�	�	 
ProfileGame
�	�	  
>
�	�	  !#
listProfileGameRecord
�	�	" 7
=
�	�	8 9
await
�	�	: ?$
GetTenBestPlayersAsync
�	�	@ V
(
�	�	V W
)
�	�	W X
;
�	�	X Y
List
�	�	 
<
�	�	 
ProfileScoreDto
�	�	 $
>
�	�	$ %
listScoreGameDtos
�	�	& 7
=
�	�	8 9
await
�	�	: ?#
GetProfileScoresAsync
�	�	@ U
(
�	�	U V#
listProfileGameRecord
�	�	V k
)
�	�	k l
;
�	�	l m
listScoreGameDtos
�	�	 !
=
�	�	" #
listScoreGameDtos
�	�	$ 5
.
�	�	 
OrderByDescending
�	�	 &
(
�	�	& '
dto
�	�	' *
=>
�	�	+ -
dto
�	�	. 1
.
�	�	1 2
GamesWon
�	�	2 :
)
�	�	: ;
.
�	�	 
ThenByDescending
�	�	 %
(
�	�	% &
dto
�	�	& )
=>
�	�	* ,
dto
�	�	- 0
.
�	�	0 1
Score
�	�	1 6
)
�	�	6 7
.
�	�	 
ToList
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
AssignPositions
�	�	 
(
�	�	  
listScoreGameDtos
�	�	  1
)
�	�	1 2
;
�	�	2 3
return
�	�	 
new
�	�	 *
OperationResultListScoreGame
�	�	 7
(
�	�	7 8
true
�	�	8 <
,
�	�	< =
LanguageUtilities
�	�	> O
.
�	�	O P
MessageSuccess
�	�	P ^
(
�	�	^ _
profileClientDto
�	�	_ o
.
�	�	o p 
PreferredLanguage�	�	p �
)�	�	� �
,�	�	� �!
listScoreGameDtos�	�	� �
)�	�	� �
;�	�	� �
}
�	�	 
catch
�	�	 
(
�	�	 
	Exception
�	�	 
ex
�	�	 
)
�	�	  
{
�	�	 
Log
�	�	 
.
�	�	 
Error
�	�	 
(
�	�	 
ex
�	�	 
,
�	�	 
ex
�	�	  
.
�	�	  !
Source
�	�	! '
)
�	�	' (
;
�	�	( )
return
�	�	 
new
�	�	 *
OperationResultListScoreGame
�	�	 7
(
�	�	7 8
false
�	�	8 =
,
�	�	= >
LanguageUtilities
�	�	? P
.
�	�	P Q%
MessageUnableToSaveData
�	�	Q h
(
�	�	h i
profileClientDto
�	�	i y
.
�	�	y z 
PreferredLanguage�	�	z �
)�	�	� �
,�	�	� �
null�	�	� �
)�	�	� �
;�	�	� �
}
�	�	 
finally
�	�	 
{
�	�	 !
semaphoreScoreWorld
�	�	 #
.
�	�	# $
Release
�	�	$ +
(
�	�	+ ,
)
�	�	, -
;
�	�	- .
}
�	�	 
}
�	�	 	
private
�	�	 
async
�	�	 
Task
�	�	 
<
�	�	 
List
�	�	 
<
�	�	  
ProfileGame
�	�	  +
>
�	�	+ ,
>
�	�	, -$
GetTenBestPlayersAsync
�	�	. D
(
�	�	D E
)
�	�	E F
{
�	�	 	
return
�	�	 
await
�	�	 
repositoryManager
�	�	 *
.
�	�	* +#
ProfileGameRepository
�	�	+ @
.
�	�	@ A
GetTenBestPlayers
�	�	A R
(
�	�	R S
)
�	�	S T
;
�	�	T U
}
�	�	 	
private
�	�	 
async
�	�	 
static
�	�	 
Task
�	�	 !
<
�	�	! "
List
�	�	" &
<
�	�	& '
ProfileScoreDto
�	�	' 6
>
�	�	6 7
>
�	�	7 8#
GetProfileScoresAsync
�	�	9 N
(
�	�	N O
List
�	�	O S
<
�	�	S T
ProfileGame
�	�	T _
>
�	�	_ `
profileGames
�	�	a m
)
�	�	m n
{
�	�	 	
IEnumerable
�	�	 
<
�	�	 
Task
�	�	 
<
�	�	 
ProfileScoreDto
�	�	 ,
>
�	�	, -
>
�	�	- .
tasks
�	�	/ 4
=
�	�	5 6
profileGames
�	�	7 C
.
�	�	C D
Select
�	�	D J
(
�	�	J K
async
�	�	K P
(
�	�	Q R
profileGame
�	�	R ]
)
�	�	] ^
=>
�	�	_ a
{
�	�	 
using
�	�	 
(
�	�	 
var
�	�	 
context
�	�	 "
=
�	�	# $
new
�	�	% (
CatanDBContext
�	�	) 7
(
�	�	7 8
)
�	�	8 9
)
�	�	9 :
{
�	�	 
var
�	�	 #
profileGameRepository
�	�	 -
=
�	�	. /
new
�	�	0 3#
ProfileGameRepository
�	�	4 I
(
�	�	I J
context
�	�	J Q
)
�	�	Q R
;
�	�	R S
var
�	�	 
profileRepository
�	�	 )
=
�	�	* +
new
�	�	, /
ProfileRepository
�	�	0 A
(
�	�	A B
context
�	�	B I
)
�	�	I J
;
�	�	J K
int
�	�	 
gamesWon
�	�	  
=
�	�	! "
await
�	�	# (#
profileGameRepository
�	�	) >
.
�	�	> ?!
GetGamesWonByPlayer
�	�	? R
(
�	�	R S
profileGame
�	�	S ^
.
�	�	^ _
	ProfileId
�	�	_ h
)
�	�	h i
;
�	�	i j
int
�	�	 

totalScore
�	�	 "
=
�	�	# $
await
�	�	% *#
profileGameRepository
�	�	+ @
.
�	�	@ A$
GetTotalPointsByPlayer
�	�	A W
(
�	�	W X
profileGame
�	�	X c
.
�	�	c d
	ProfileId
�	�	d m
)
�	�	m n
;
�	�	n o
Profile
�	�	 
profileRecord
�	�	 )
=
�	�	* +
await
�	�	, 1
profileRepository
�	�	2 C
.
�	�	C D!
FindEntityByIdAsync
�	�	D W
(
�	�	W X
profileGame
�	�	X c
.
�	�	c d
	ProfileId
�	�	d m
)
�	�	m n
;
�	�	n o
ProfileScoreDto
�	�	 #
profileScoreDto
�	�	$ 3
=
�	�	4 5#
CreateProfileScoreDto
�	�	6 K
(
�	�	K L
profileRecord
�	�	L Y
,
�	�	Y Z
$num
�	�	[ \
,
�	�	\ ]
gamesWon
�	�	^ f
,
�	�	f g

totalScore
�	�	h r
)
�	�	r s
;
�	�	s t
return
�	�	 
profileScoreDto
�	�	 *
;
�	�	* +
}
�	�	 
}
�	�	 
)
�	�	 
;
�	�	 
ProfileScoreDto
�	�	 
[
�	�	 
]
�	�	 
results
�	�	 %
=
�	�	& '
await
�	�	( -
Task
�	�	. 2
.
�	�	2 3
WhenAll
�	�	3 :
(
�	�	: ;
tasks
�	�	; @
)
�	�	@ A
;
�	�	A B
return
�	�	 
results
�	�	 
.
�	�	 
Where
�	�	  
(
�	�	  !
dto
�	�	! $
=>
�	�	% '
dto
�	�	( +
!=
�	�	, .
null
�	�	/ 3
)
�	�	3 4
.
�	�	4 5
ToList
�	�	5 ;
(
�	�	; <
)
�	�	< =
;
�	�	= >
}
�	�	 	
private
�	�	 
static
�	�	 
async
�	�	 
Task
�	�	 !
<
�	�	! "
List
�	�	" &
<
�	�	& '
ProfileScoreDto
�	�	' 6
>
�	�	6 7
>
�	�	7 8#
GetProfileScoresAsync
�	�	9 N
(
�	�	N O
List
�	�	O S
<
�	�	S T
Profile
�	�	T [
>
�	�	[ \
profiles
�	�	] e
)
�	�	e f
{
�	�	 	
IEnumerable
�	�	 
<
�	�	 
Task
�	�	 
<
�	�	 
ProfileScoreDto
�	�	 ,
>
�	�	, -
>
�	�	- .
tasks
�	�	/ 4
=
�	�	5 6
profiles
�	�	7 ?
.
�	�	? @
Select
�	�	@ F
(
�	�	F G
async
�	�	G L
(
�	�	M N
profile
�	�	N U
)
�	�	U V
=>
�	�	W Y
{
�	�	 
using
�	�	 
(
�	�	 
var
�	�	 
context
�	�	 "
=
�	�	# $
new
�	�	% (
CatanDBContext
�	�	) 7
(
�	�	7 8
)
�	�	8 9
)
�	�	9 :
{
�	�	 
var
�	�	 #
profileGameRepository
�	�	 -
=
�	�	. /
new
�	�	0 3#
ProfileGameRepository
�	�	4 I
(
�	�	I J
context
�	�	J Q
)
�	�	Q R
;
�	�	R S
var
�	�	 
profileRepository
�	�	 )
=
�	�	* +
new
�	�	, /
ProfileRepository
�	�	0 A
(
�	�	A B
context
�	�	B I
)
�	�	I J
;
�	�	J K
int
�	�	 
gamesWon
�	�	  
=
�	�	! "
await
�	�	# (#
profileGameRepository
�	�	) >
.
�	�	> ?!
GetGamesWonByPlayer
�	�	? R
(
�	�	R S
profile
�	�	S Z
.
�	�	Z [
Id
�	�	[ ]
)
�	�	] ^
;
�	�	^ _
int
�	�	 

totalScore
�	�	 "
=
�	�	# $
await
�	�	% *#
profileGameRepository
�	�	+ @
.
�	�	@ A$
GetTotalPointsByPlayer
�	�	A W
(
�	�	W X
profile
�	�	X _
.
�	�	_ `
Id
�	�	` b
)
�	�	b c
;
�	�	c d
Profile
�	�	 
profileRecord
�	�	 )
=
�	�	* +
await
�	�	, 1
profileRepository
�	�	2 C
.
�	�	C D!
FindEntityByIdAsync
�	�	D W
(
�	�	W X
profile
�	�	X _
.
�	�	_ `
Id
�	�	` b
)
�	�	b c
;
�	�	c d
ProfileScoreDto
�	�	 #
profileScoreDto
�	�	$ 3
=
�	�	4 5#
CreateProfileScoreDto
�	�	6 K
(
�	�	K L
profileRecord
�	�	L Y
,
�	�	Y Z
$num
�	�	[ \
,
�	�	\ ]
gamesWon
�	�	^ f
,
�	�	f g

totalScore
�	�	h r
)
�	�	r s
;
�	�	s t
return
�	�	 
profileScoreDto
�	�	 *
;
�	�	* +
}
�	�	 
}
�	�	 
)
�	�	 
;
�	�	 
ProfileScoreDto
�
�
 
[
�
�
 
]
�
�
 
results
�
�
 %
=
�
�
& '
await
�
�
( -
Task
�
�
. 2
.
�
�
2 3
WhenAll
�
�
3 :
(
�
�
: ;
tasks
�
�
; @
)
�
�
@ A
;
�
�
A B
return
�
�
 
results
�
�
 
.
�
�
 
Where
�
�
  
(
�
�
  !
dto
�
�
! $
=>
�
�
% '
dto
�
�
( +
!=
�
�
, .
null
�
�
/ 3
)
�
�
3 4
.
�
�
4 5
ToList
�
�
5 ;
(
�
�
; <
)
�
�
< =
;
�
�
= >
}
�
�
 	
public
�
�
 
async
�
�
 
Task
�
�
 
<
�
�
 *
OperationResultListScoreGame
�
�
 6
>
�
�
6 7+
GetScoreGameFriendsInDataBase
�
�
8 U
(
�
�
U V

ProfileDto
�
�
V `
profileClientDto
�
�
a q
)
�
�
q r
{
�
�
 	
await
�
�
 "
semaphoreScoreFriend
�
�
 &
.
�
�
& '
	WaitAsync
�
�
' 0
(
�
�
0 1
)
�
�
1 2
;
�
�
2 3
try
�
�
 
{
�
�
 
List
�
�
 
<
�
�
 
Profile
�
�
 
>
�
�
 
listFriends
�
�
 )
=
�
�
* +
await
�
�
, 1$
GetFriendsAndSelfAsync
�
�
2 H
(
�
�
H I
profileClientDto
�
�
I Y
)
�
�
Y Z
;
�
�
Z [
List
�
�
 
<
�
�
 
ProfileScoreDto
�
�
 $
>
�
�
$ %
listScoreGameDtos
�
�
& 7
=
�
�
8 9
await
�
�
: ?#
GetProfileScoresAsync
�
�
@ U
(
�
�
U V
listFriends
�
�
V a
)
�
�
a b
;
�
�
b c
listScoreGameDtos
�
�
 !
=
�
�
" #
listScoreGameDtos
�
�
$ 5
.
�
�
 
OrderByDescending
�
�
 &
(
�
�
& '
dto
�
�
' *
=>
�
�
+ -
dto
�
�
. 1
.
�
�
1 2
GamesWon
�
�
2 :
)
�
�
: ;
.
�
�
 
ThenByDescending
�
�
 %
(
�
�
% &
dto
�
�
& )
=>
�
�
* ,
dto
�
�
- 0
.
�
�
0 1
Score
�
�
1 6
)
�
�
6 7
.
�
�
 
ToList
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
AssignPositions
�
�
 
(
�
�
  
listScoreGameDtos
�
�
  1
)
�
�
1 2
;
�
�
2 3
return
�
�
 
new
�
�
 *
OperationResultListScoreGame
�
�
 7
(
�
�
7 8
true
�
�
8 <
,
�
�
< =
LanguageUtilities
�
�
> O
.
�
�
O P
MessageSuccess
�
�
P ^
(
�
�
^ _
profileClientDto
�
�
_ o
.
�
�
o p 
PreferredLanguage�
�
p �
)�
�
� �
,�
�
� �!
listScoreGameDtos�
�
� �
)�
�
� �
;�
�
� �
}
�
�
 
finally
�
�
 
{
�
�
 "
semaphoreScoreFriend
�
�
 $
.
�
�
$ %
Release
�
�
% ,
(
�
�
, -
)
�
�
- .
;
�
�
. /
}
�
�
 
}
�
�
 	
private
�
�
 
async
�
�
 
Task
�
�
 
<
�
�
 
List
�
�
 
<
�
�
  
Profile
�
�
  '
>
�
�
' (
>
�
�
( )$
GetFriendsAndSelfAsync
�
�
* @
(
�
�
@ A

ProfileDto
�
�
A K
profileClientDto
�
�
L \
)
�
�
\ ]
{
�
�
 	
List
�
�
 
<
�
�
 
Profile
�
�
 
>
�
�
 
listFriends
�
�
 %
=
�
�
& '
await
�
�
( -
repositoryManager
�
�
. ?
.
�
�
? @
ProfileRepository
�
�
@ Q
.
�
�
Q R(
GetFriendsByProfileIdAsync
�
�
R l
(
�
�
l m
(
�
�
m n
int
�
�
n q
)
�
�
q r
profileClientDto�
�
r �
.�
�
� �
Id�
�
� �
)�
�
� �
;�
�
� �
Profile
�
�
 !
profileClientRecord
�
�
 '
=
�
�
( )
await
�
�
* /
repositoryManager
�
�
0 A
.
�
�
A B
ProfileRepository
�
�
B S
.
�
�
S T!
FindEntityByIdAsync
�
�
T g
(
�
�
g h
(
�
�
h i
int
�
�
i l
)
�
�
l m
profileClientDto
�
�
m }
.
�
�
} ~
Id�
�
~ �
)�
�
� �
;�
�
� �
listFriends
�
�
 
.
�
�
 
Add
�
�
 
(
�
�
 !
profileClientRecord
�
�
 /
)
�
�
/ 0
;
�
�
0 1
return
�
�
 
listFriends
�
�
 
;
�
�
 
}
�
�
 	
private
�
�
 
static
�
�
 
void
�
�
 
AssignPositions
�
�
 +
(
�
�
+ ,
List
�
�
, 0
<
�
�
0 1
ProfileScoreDto
�
�
1 @
>
�
�
@ A
listScoreGameDtos
�
�
B S
)
�
�
S T
{
�
�
 	
for
�
�
 
(
�
�
 
int
�
�
 
i
�
�
 
=
�
�
 
$num
�
�
 
;
�
�
 
i
�
�
 
<
�
�
 
listScoreGameDtos
�
�
  1
.
�
�
1 2
Count
�
�
2 7
;
�
�
7 8
i
�
�
9 :
++
�
�
: <
)
�
�
< =
{
�
�
 
listScoreGameDtos
�
�
 !
[
�
�
! "
i
�
�
" #
]
�
�
# $
.
�
�
$ %
Position
�
�
% -
=
�
�
. /
i
�
�
0 1
+
�
�
2 3
$num
�
�
4 5
;
�
�
5 6
}
�
�
 
}
�
�
 	
public
�
�
 
async
�
�
 
Task
�
�
 )
StartGameForAllPlayersAsync
�
�
 5
(
�
�
5 6
int
�
�
6 9
gameId
�
�
: @
)
�
�
@ A
{
�
�
 	
if
�
�
 
(
�
�
 $
connectedPlayersByGame
�
�
 &
.
�
�
& '
TryGetValue
�
�
' 2
(
�
�
2 3
gameId
�
�
3 9
,
�
�
9 :
out
�
�
; >
var
�
�
? B
playersInGame
�
�
C P
)
�
�
P Q
)
�
�
Q R
{
�
�
 
Game
�
�
 

gameRecord
�
�
 
=
�
�
  !
await
�
�
" '
repositoryManager
�
�
( 9
.
�
�
9 :
GameRepository
�
�
: H
.
�
�
H I!
FindEntityByIdAsync
�
�
I \
(
�
�
\ ]
gameId
�
�
] c
)
�
�
c d
;
�
�
d e
await
�
�
 
ChangeStatusGame
�
�
 &
(
�
�
& '

gameRecord
�
�
' 1
,
�
�
1 2
GameUtilities
�
�
3 @
.
�
�
@ A'
DOMAIN_GAME_STATUS_INGAME
�
�
A Z
)
�
�
Z [
;
�
�
[ \$
CancelExistingNotifier
�
�
 &
(
�
�
& '
gameId
�
�
' -
)
�
�
- .
;
�
�
. /
await
�
�
 )
NotifyPlayersGameStartAsync
�
�
 1
(
�
�
1 2
gameId
�
�
2 8
,
�
�
8 9
playersInGame
�
�
: G
)
�
�
G H
;
�
�
H I
await
�
�
 %
NextTurnInDataBaseAsync
�
�
 -
(
�
�
- .
gameId
�
�
. 4
,
�
�
4 5
-
�
�
6 7
$num
�
�
7 8
)
�
�
8 9
;
�
�
9 :-
StartPeriodicPlayerListNotifier
�
�
 /
(
�
�
/ 0
gameId
�
�
0 6
)
�
�
6 7
;
�
�
7 8(
DistributeInitialResources
�
�
 *
(
�
�
* +
gameId
�
�
+ 1
)
�
�
1 2
;
�
�
2 3(
NotifyPlayersWithResources
�
�
 *
(
�
�
* +
gameId
�
�
+ 1
)
�
�
1 2
;
�
�
2 3
}
�
�
 
}
�
�
 	
private
�
�
 
async
�
�
 
Task
�
�
 )
NotifyPlayersGameStartAsync
�
�
 6
(
�
�
6 7
int
�
�
7 :
gameId
�
�
; A
,
�
�
A B
ConcurrentBag
�
�
C P
<
�
�
P Q
ConnectedPlayer
�
�
Q `
>
�
�
` a
playersInGame
�
�
b o
)
�
�
o p
{
�
�
 	
List
�
�
 
<
�
�
 
Task
�
�
 
>
�
�
 
notificationTasks
�
�
 (
=
�
�
) *
new
�
�
+ .
List
�
�
/ 3
<
�
�
3 4
Task
�
�
4 8
>
�
�
8 9
(
�
�
9 :
)
�
�
: ;
;
�
�
; <
List
�
�
 
<
�
�
 
ConnectedPlayer
�
�
  
>
�
�
  !!
disconnectedPlayers
�
�
" 5
=
�
�
6 7
new
�
�
8 ;
List
�
�
< @
<
�
�
@ A
ConnectedPlayer
�
�
A P
>
�
�
P Q
(
�
�
Q R
)
�
�
R S
;
�
�
S T
foreach
�
�
 
(
�
�
 
ConnectedPlayer
�
�
 $
player
�
�
% +
in
�
�
, .
playersInGame
�
�
/ <
)
�
�
< =
{
�
�
 
notificationTasks
�
�
 !
.
�
�
! "
Add
�
�
" %
(
�
�
% &(
NotifyPlayerGameStartAsync
�
�
& @
(
�
�
@ A
player
�
�
A G
,
�
�
G H!
disconnectedPlayers
�
�
I \
)
�
�
\ ]
)
�
�
] ^
;
�
�
^ _
}
�
�
 
await
�
�
 
Task
�
�
 
.
�
�
 
WhenAll
�
�
 
(
�
�
 
notificationTasks
�
�
 0
)
�
�
0 1
;
�
�
1 2,
HandleDisconnectedPlayersStart
�
�
 *
(
�
�
* +
gameId
�
�
+ 1
,
�
�
1 2
playersInGame
�
�
3 @
,
�
�
@ A!
disconnectedPlayers
�
�
B U
)
�
�
U V
;
�
�
V W
}
�
�
 	
private
�
�
 
static
�
�
 
async
�
�
 
Task
�
�
 !(
NotifyPlayerGameStartAsync
�
�
" <
(
�
�
< =
ConnectedPlayer
�
�
= L
player
�
�
M S
,
�
�
S T
List
�
�
U Y
<
�
�
Y Z
ConnectedPlayer
�
�
Z i
>
�
�
i j!
disconnectedPlayers
�
�
k ~
)
�
�
~ 
{
�
�
 	
bool
�
�
 
isDisconnected
�
�
 
=
�
�
  !
true
�
�
" &
;
�
�
& '
try
�
�
 
{
�
�
 
if
�
�
 
(
�
�
 "
IsPlayerCallbackOpen
�
�
 (
(
�
�
( )
player
�
�
) /
)
�
�
/ 0
)
�
�
0 1
{
�
�
 
await
�
�
 
Task
�
�
 
.
�
�
 
Run
�
�
 "
(
�
�
" #
(
�
�
# $
)
�
�
$ %
=>
�
�
& (
player
�
�
) /
.
�
�
/ 0
gameCallback
�
�
0 <
.
�
�
< =$
StartGameForAllPlayers
�
�
= S
(
�
�
S T
)
�
�
T U
)
�
�
U V
;
�
�
V W
isDisconnected
�
�
 "
=
�
�
# $
false
�
�
% *
;
�
�
* +
}
�
�
 
}
�
�
 
catch
�
�
 
(
�
�
 1
#CommunicationObjectAbortedException
�
�
 6
ex
�
�
7 9
)
�
�
9 :
{
�
�
 
Log
�
�
 
.
�
�
 
Error
�
�
 
(
�
�
 
ex
�
�
 
,
�
�
 
ex
�
�
  
.
�
�
  !
Source
�
�
! '
)
�
�
' (
;
�
�
( )
}
�
�
 
catch
�
�
 
(
�
�
 $
CommunicationException
�
�
 )
ex
�
�
* ,
)
�
�
, -
{
�
�
 
Log
�
�
 
.
�
�
 
Error
�
�
 
(
�
�
 
ex
�
�
 
,
�
�
 
ex
�
�
  
.
�
�
  !
Source
�
�
! '
)
�
�
' (
;
�
�
( )
}
�
�
 
catch
�
�
 
(
�
�
 
	Exception
�
�
 
ex
�
�
 
)
�
�
  
{
�
�
 
Log
�
�
 
.
�
�
 
Error
�
�
 
(
�
�
 
ex
�
�
 
,
�
�
 
ex
�
�
  
.
�
�
  !
Source
�
�
! '
)
�
�
' (
;
�
�
( )
}
�
�
 
if
�
�
 
(
�
�
 
isDisconnected
�
�
 
)
�
�
 
{
�
�
 
lock
�
�
 
(
�
�
 !
disconnectedPlayers
�
�
 )
)
�
�
) *
{
�
�
 !
disconnectedPlayers
�
�
 '
.
�
�
' (
Add
�
�
( +
(
�
�
+ ,
player
�
�
, 2
)
�
�
2 3
;
�
�
3 4
}
�
�
 
}
�
�
 
}
�
�
 	
private
�
�
 
void
�
�
 ,
HandleDisconnectedPlayersStart
�
�
 3
(
�
�
3 4
int
�
�
4 7
gameId
�
�
8 >
,
�
�
> ?
ConcurrentBag
�
�
@ M
<
�
�
M N
ConnectedPlayer
�
�
N ]
>
�
�
] ^
playersInGame
�
�
_ l
,
�
�
l m
List
�
�
n r
<
�
�
r s
ConnectedPlayer�
�
s �
>�
�
� �#
disconnectedPlayers�
�
� �
)�
�
� �
{
�
�
 	
if
�
�
 
(
�
�
 !
disconnectedPlayers
�
�
 #
.
�
�
# $
Any
�
�
$ '
(
�
�
' (
)
�
�
( )
)
�
�
) *
{
�
�
 
List
�
�
 
<
�
�
 
ConnectedPlayer
�
�
 $
>
�
�
$ %
updatedPlayers
�
�
& 4
=
�
�
5 6
playersInGame
�
�
7 D
.
�
�
D E
Except
�
�
E K
(
�
�
K L!
disconnectedPlayers
�
�
L _
)
�
�
_ `
.
�
�
` a
ToList
�
�
a g
(
�
�
g h
)
�
�
h i
;
�
�
i j$
connectedPlayersByGame
�
�
 &
[
�
�
& '
gameId
�
�
' -
]
�
�
- .
=
�
�
/ 0
new
�
�
1 4
ConcurrentBag
�
�
5 B
<
�
�
B C
ConnectedPlayer
�
�
C R
>
�
�
R S
(
�
�
S T
updatedPlayers
�
�
T b
)
�
�
b c
;
�
�
c d
}
�
�
 
}
�
�
 	
public
�
�
 
async
�
�
 
Task
�
�
 
<
�
�
 
bool
�
�
 
>
�
�
 %
NextTurnInDataBaseAsync
�
�
  7
(
�
�
7 8
int
�
�
8 ;
gameId
�
�
< B
,
�
�
B C
int
�
�
D G
playerId
�
�
H P
)
�
�
P Q
{
�
�
 	
if
�
�
 
(
�
�
 $
IsGameReadyForNextTurn
�
�
 &
(
�
�
& '
gameId
�
�
' -
)
�
�
- .
)
�
�
. /
{
�
�
 
List
�
�
 
<
�
�
 
ConnectedPlayer
�
�
 $
>
�
�
$ %
orderedPlayers
�
�
& 4
=
�
�
5 6
GetOrderedPlayers
�
�
7 H
(
�
�
H I
gameId
�
�
I O
)
�
�
O P
;
�
�
P Q
int
�
�
 
currentTurnIndex
�
�
 $
=
�
�
% &!
GetCurrentTurnIndex
�
�
' :
(
�
�
: ;
gameId
�
�
; A
)
�
�
A B
;
�
�
B C
return
�
�
 
await
�
�
 
ProcessTurn
�
�
 (
(
�
�
( )
gameId
�
�
) /
,
�
�
/ 0
playerId
�
�
1 9
,
�
�
9 :
orderedPlayers
�
�
; I
,
�
�
I J
currentTurnIndex
�
�
K [
)
�
�
[ \
;
�
�
\ ]
}
�
�
 
return
�
�
 
false
�
�
 
;
�
�
 
}
�
�
 	
private
�
�
 
bool
�
�
 $
IsGameReadyForNextTurn
�
�
 +
(
�
�
+ ,
int
�
�
, /
gameId
�
�
0 6
)
�
�
6 7
{
�
�
 	
return
�� $
connectedPlayersByGame
�� )
.
��) *
TryGetValue
��* 5
(
��5 6
gameId
��6 <
,
��< =
out
��> A
var
��B E
playersInGame
��F S
)
��S T
&&
�� 
playersInGame
�� #
.
��# $
Count
��$ )
>
��* +
GameUtilities
��, 9
.
��9 :%
MINIMUN_PLAYERS_BY_GAME
��: Q
;
��Q R
}
�� 	
private
�� 
List
�� 
<
�� 
ConnectedPlayer
�� $
>
��$ %
GetOrderedPlayers
��& 7
(
��7 8
int
��8 ;
gameId
��< B
)
��B C
{
�� 	
var
�� 
playersInGame
�� 
=
�� $
connectedPlayersByGame
��  6
[
��6 7
gameId
��7 =
]
��= >
;
��> ?
return
�� 
playersInGame
��  
.
��  !
OrderBy
��! (
(
��( )
player
��) /
=>
��0 2
player
��3 9
.
��9 :
JoinedAt
��: B
)
��B C
.
��C D
ToList
��D J
(
��J K
)
��K L
;
��L M
}
�� 	
private
�� 
int
�� !
GetCurrentTurnIndex
�� '
(
��' (
int
��( +
gameId
��, 2
)
��2 3
{
�� 	
return
�� 
gameCurrentTurns
�� #
.
��# $
GetOrAdd
��$ ,
(
��, -
gameId
��- 3
,
��3 4
GameUtilities
��5 B
.
��B C 
NOT_TURNS_ASSIGNED
��C U
)
��U V
;
��V W
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
ProcessTurn
��! ,
(
��, -
int
��- 0
gameId
��1 7
,
��7 8
int
��9 <
playerId
��= E
,
��E F
List
��G K
<
��K L
ConnectedPlayer
��L [
>
��[ \
orderedPlayers
��] k
,
��k l
int
��m p
currentTurnIndex��q �
)��� �
{
�� 	
if
�� 
(
�� 
currentTurnIndex
��  
==
��! #
GameUtilities
��$ 1
.
��1 2 
NOT_TURNS_ASSIGNED
��2 D
)
��D E
{
�� 
return
�� 
await
�� 
StartFirstTurn
�� +
(
��+ ,
gameId
��, 2
,
��2 3
orderedPlayers
��4 B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
playerId
�� 
==
�� 
GameUtilities
�� )
.
��) * 
NOT_TURNS_ASSIGNED
��* <
)
��< =
{
�� 
CancelTurnTimer
�� 
(
��  
gameId
��  &
)
��& '
;
��' (
return
�� 
await
�� 
HandleNextTurn
�� +
(
��+ ,
gameId
��, 2
,
��2 3
orderedPlayers
��4 B
,
��B C
currentTurnIndex
��D T
)
��T U
;
��U V
}
�� 
return
�� 
await
�� 
HandlePlayerTurn
�� )
(
��) *
gameId
��* 0
,
��0 1
playerId
��2 :
,
��: ;
orderedPlayers
��< J
,
��J K
currentTurnIndex
��L \
)
��\ ]
;
��] ^
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
StartFirstTurn
��! /
(
��/ 0
int
��0 3
gameId
��4 :
,
��: ;
List
��< @
<
��@ A
ConnectedPlayer
��A P
>
��P Q
orderedPlayers
��R `
)
��` a
{
�� 	
int
�� 
currentTurnIndex
��  
=
��! "
$num
��# $
;
��$ %
gameCurrentTurns
�� 
[
�� 
gameId
�� #
]
��# $
=
��% &
currentTurnIndex
��' 7
;
��7 8
await
�� '
NotifyAllPlayersAboutTurn
�� +
(
��+ ,
gameId
��, 2
,
��2 3
orderedPlayers
��4 B
,
��B C
currentTurnIndex
��D T
)
��T U
;
��U V
_
�� 
=
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
(
�� 
)
�� 
=>
�� 
StartTurnTimer
�� -
(
��- .
gameId
��. 4
,
��4 5
orderedPlayers
��6 D
,
��D E
currentTurnIndex
��F V
)
��V W
)
��W X
;
��X Y
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
HandlePlayerTurn
��! 1
(
��1 2
int
��2 5
gameId
��6 <
,
��< =
int
��> A
playerId
��B J
,
��J K
List
��L P
<
��P Q
ConnectedPlayer
��Q `
>
��` a
orderedPlayers
��b p
,
��p q
int
��r u
currentTurnIndex��v �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� #
IsPlayerInCurrentTurn
�� &
(
��& '
orderedPlayers
��' 5
,
��5 6
playerId
��7 ?
,
��? @
currentTurnIndex
��A Q
)
��Q R
)
��R S
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
CancelTurnTimer
�� 
(
�� 
gameId
�� "
)
��" #
;
��# $
return
�� 
await
�� 
HandleNextTurn
�� '
(
��' (
gameId
��( .
,
��. /
orderedPlayers
��0 >
,
��> ?
currentTurnIndex
��@ P
)
��P Q
;
��Q R
}
�� 	
private
�� 
static
�� 
bool
�� #
IsPlayerInCurrentTurn
�� 1
(
��1 2
List
��2 6
<
��6 7
ConnectedPlayer
��7 F
>
��F G
orderedPlayers
��H V
,
��V W
int
��X [
playerId
��\ d
,
��d e
int
��f i
currentTurnIndex
��j z
)
��z {
{
�� 	
int
�� 
currentIndex
�� 
=
�� 
orderedPlayers
�� -
.
��- .
	FindIndex
��. 7
(
��7 8
player
��8 >
=>
��? A
player
�� 
.
�� 
profileClientDto
�� '
?
��' (
.
��( )
Id
��) +
==
��, .
playerId
��/ 7
||
��8 :
player
��; A
.
��A B
guestAccountDto
��B Q
?
��Q R
.
��R S
Id
��S U
==
��V X
playerId
��Y a
)
��a b
;
��b c
return
�� 
currentIndex
�� 
!=
��  "
GameUtilities
��# 0
.
��0 1 
NOT_TURNS_ASSIGNED
��1 C
&&
��D F
currentIndex
��G S
==
��T V
currentTurnIndex
��W g
;
��g h
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
HandleNextTurn
��! /
(
��/ 0
int
��0 3
gameId
��4 :
,
��: ;
List
��< @
<
��@ A
ConnectedPlayer
��A P
>
��P Q
orderedPlayers
��R `
,
��` a
int
��b e
currentTurnIndex
��f v
)
��v w
{
�� 	
if
�� 
(
�� 
orderedPlayers
�� 
.
�� 
Count
�� $
==
��% '
GameUtilities
��( 5
.
��5 6%
MINIMUN_PLAYERS_BY_GAME
��6 M
)
��M N
{
�� 
EndGame
�� 
(
�� 
gameId
�� 
)
�� 
;
��  
return
�� 
false
�� 
;
�� 
}
�� 
bool
��  
continueProcessing
�� #
=
��$ %
true
��& *
;
��* +
while
�� 
(
��  
continueProcessing
�� %
)
��% &
{
�� 
int
�� 
	nextIndex
�� 
=
�� 
(
��  !
currentTurnIndex
��! 1
+
��2 3
GameUtilities
��4 A
.
��A B
ONE_TURN
��B J
)
��J K
%
��L M
orderedPlayers
��N \
.
��\ ]
Count
��] b
;
��b c
ConnectedPlayer
�� 
player
��  &
=
��' (
orderedPlayers
��) 7
[
��7 8
	nextIndex
��8 A
]
��A B
;
��B C
if
�� 
(
�� "
IsPlayerCallbackOpen
�� (
(
��( )
player
��) /
)
��/ 0
)
��0 1
{
�� 
gameCurrentTurns
�� $
[
��$ %
gameId
��% +
]
��+ ,
=
��- .
	nextIndex
��/ 8
;
��8 9
await
�� '
NotifyAllPlayersAboutTurn
�� 3
(
��3 4
gameId
��4 :
,
��: ;
orderedPlayers
��< J
,
��J K
	nextIndex
��L U
)
��U V
;
��V W
_
�� 
=
�� 
Task
�� 
.
�� 
Run
��  
(
��  !
(
��! "
)
��" #
=>
��$ &
StartTurnTimer
��' 5
(
��5 6
gameId
��6 <
,
��< =
orderedPlayers
��> L
,
��L M
	nextIndex
��N W
)
��W X
)
��X Y
;
��Y Z 
continueProcessing
�� &
=
��' (
false
��) .
;
��. /
}
�� 
else
�� 
{
�� 
orderedPlayers
�� "
.
��" #
RemoveAt
��# +
(
��+ ,
	nextIndex
��, 5
)
��5 6
;
��6 7
int
�� 
playerId
��  
=
��! ",
GetPlayerIdFromConnectedPlayer
��# A
(
��A B
player
��B H
)
��H I
;
��I J
await
�� &
RemoveDisconnectedPlayer
�� 2
(
��2 3
gameId
��3 9
,
��9 :
playerId
��; C
)
��C D
;
��D E
if
�� 
(
�� 
orderedPlayers
�� &
.
��& '
Count
��' ,
==
��- /
GameUtilities
��0 =
.
��= >.
 NUMBER_OF_PLAYERS_TO_CANCEL_GAME
��> ^
)
��^ _
{
�� 
gameCurrentTurns
�� (
.
��( )
	TryRemove
��) 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
_
��? @
)
��@ A
;
��A B
CancelTurnTimer
�� '
(
��' (
gameId
��( .
)
��. /
;
��/ 0 
continueProcessing
�� *
=
��+ ,
false
��- 2
;
��2 3
}
�� 
else
�� 
{
�� 
currentTurnIndex
�� (
=
��) *
	nextIndex
��+ 4
%
��5 6
orderedPlayers
��7 E
.
��E F
Count
��F K
;
��K L
}
�� 
}
�� 
}
�� 
return
�� 
!
��  
continueProcessing
�� &
;
��& '
}
�� 	
private
�� 
async
�� 
Task
�� '
NotifyAllPlayersAboutTurn
�� 4
(
��4 5
int
��5 8
gameId
��9 ?
,
��? @
List
��A E
<
��E F
ConnectedPlayer
��F U
>
��U V
orderedPlayers
��W e
,
��e f
int
��g j
currentTurnIndex
��k {
)
��{ |
{
�� 	
List
�� 
<
�� !
PlayerTurnStatusDto
�� $
>
��$ %
playersTurnStatus
��& 7
=
��8 9.
 OrderPlayerTurnStatusByIndexList
��: Z
(
��Z [
orderedPlayers
��[ i
,
��i j
currentTurnIndex
��k {
)
��{ |
;
��| }
bool
�� "
needEliminatePlayers
�� %
=
��& '
true
��( ,
;
��, -
List
�� 
<
�� 
ConnectedPlayer
��  
>
��  !!
disconnectedPlayers
��" 5
=
��6 7
new
��8 ;
List
��< @
<
��@ A
ConnectedPlayer
��A P
>
��P Q
(
��Q R
)
��R S
;
��S T
foreach
�� 
(
�� 
ConnectedPlayer
�� $
player
��% +
in
��, .
orderedPlayers
��/ =
)
��= >
{
�� 
try
�� 
{
�� 
if
�� 
(
�� "
IsPlayerCallbackOpen
�� ,
(
��, -
player
��- 3
)
��3 4
)
��4 5
{
�� 
await
�� 
Task
�� "
.
��" #
Run
��# &
(
��& '
(
��' (
)
��( )
=>
��* ,
player
��- 3
.
��3 4
gameCallback
��4 @
?
��@ A
.
��A B
UpdateTurnStatus
��B R
(
��R S
playersTurnStatus
��S d
)
��d e
)
��e f
;
��f g"
needEliminatePlayers
�� ,
=
��- .
false
��/ 4
;
��4 5
}
�� 
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� :
ex
��; =
)
��= >
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
if
�� 
(
�� "
needEliminatePlayers
�� (
)
��( )
{
�� !
disconnectedPlayers
�� '
.
��' (
Add
��( +
(
��+ ,
player
��, 2
)
��2 3
;
��3 4
}
�� 
}
�� 
if
�� 
(
�� !
disconnectedPlayers
�� #
.
��# $
Any
��$ '
(
��' (
)
��( )
)
��) *
{
�� 
await
�� '
RemoveDisconnectedPlayers
�� /
(
��/ 0
gameId
��0 6
,
��6 7!
disconnectedPlayers
��8 K
)
��K L
;
��L M
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� !
PlayerTurnStatusDto
�� (
>
��( ).
 OrderPlayerTurnStatusByIndexList
��* J
(
��J K
List
��K O
<
��O P
ConnectedPlayer
��P _
>
��_ `
orderedPlayers
��a o
,
��o p
int
��q t
currentTurnIndex��u �
)��� �
{
�� 	
return
�� 
orderedPlayers
�� !
.
��! "
Select
��" (
(
��( )
(
��) *
player
��* 0
,
��0 1
index
��2 7
)
��7 8
=>
��9 ;
new
��< ?!
PlayerTurnStatusDto
��@ S
{
�� 
ProfileTurnDto
�� 
=
��  
player
��! '
.
��' (
profileClientDto
��( 8
,
��8 9!
GuestAccountTurnDto
�� #
=
��$ %
player
��& ,
.
��, -
guestAccountDto
��- <
,
��< =
IsTurn
�� 
=
�� 
index
�� 
==
�� !
currentTurnIndex
��" 2
,
��2 3
Points
�� 
=
�� 
player
�� 
.
��  
Points
��  &
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
StartTurnTimer
�� )
(
��) *
int
��* -
gameId
��. 4
,
��4 5
List
��6 :
<
��: ;
ConnectedPlayer
��; J
>
��J K
orderedPlayers
��L Z
,
��Z [
int
��\ _
currentTurnIndex
��` p
,
��p q
int
��r u"
turnDurationSeconds��v �
=��� �
GameUtilities��� �
.��� �"
TIME_TURN_DURATION��� �
)��� �
{
�� 	
if
�� 
(
�� &
cancelTokenTurnCountDown
�� (
.
��( )
	TryRemove
��) 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >%
CancellationTokenSource
��? V!
existingCancelToken
��W j
)
��j k
)
��k l
{
�� !
existingCancelToken
�� #
.
��# $
Cancel
��$ *
(
��* +
)
��+ ,
;
��, -
}
�� %
CancellationTokenSource
�� #
cancellationToken
��$ 5
=
��6 7
new
��8 ;%
CancellationTokenSource
��< S
(
��S T
)
��T U
;
��U V&
cancelTokenTurnCountDown
�� $
[
��$ %
gameId
��% +
]
��+ ,
=
��- .
cancellationToken
��/ @
;
��@ A
try
�� 
{
�� 
for
�� 
(
�� 
int
�� 
remainingTime
�� &
=
��' (!
turnDurationSeconds
��) <
;
��< =
remainingTime
��> K
>
��L M
GameUtilities
��N [
.
��[ \#
TIME_MINIMUN_TO_START
��\ q
;
��q r
remainingTime��s �
--��� �
)��� �
{
�� 
await
�� *
NotifyTimeRemainingToPlayers
�� 6
(
��6 7
gameId
��7 =
,
��= >
remainingTime
��? L
)
��L M
;
��M N
await
�� 
Task
�� 
.
�� 
Delay
�� $
(
��$ %
GameUtilities
��% 2
.
��2 3
TIME_MILISECONDS
��3 C
,
��C D
cancellationToken
��E V
.
��V W
Token
��W \
)
��\ ]
;
��] ^
}
�� 
await
�� 
HandleNextTurn
�� $
(
��$ %
gameId
��% +
,
��+ ,
orderedPlayers
��- ;
,
��; <
currentTurnIndex
��= M
)
��M N
;
��N O
}
�� 
catch
�� 
(
�� #
TaskCanceledException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� *
NotifyTimeRemainingToPlayers
�� 7
(
��7 8
int
��8 ;
gameId
��< B
,
��B C
int
��D G
remainingTime
��H U
)
��U V
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
)
��Q R
{
�� 
foreach
�� 
(
�� 
var
�� 
player
�� #
in
��$ &
playersInGame
��' 4
)
��4 5
{
�� 
try
�� 
{
�� 
if
�� 
(
�� 
player
�� "
.
��" #
gameCallback
��# /
!=
��0 2
null
��3 7
&&
��8 :"
IsPlayerCallbackOpen
��; O
(
��O P
player
��P V
)
��V W
)
��W X
{
�� 
await
�� !
Task
��" &
.
��& '
Run
��' *
(
��* +
(
��+ ,
)
��, -
=>
��. 0
player
��1 7
.
��7 8
gameCallback
��8 D
.
��D E%
UpdateTurnTimeRemaining
��E \
(
��\ ]
remainingTime
��] j
)
��j k
)
��k l
;
��l m
}
�� 
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� >
ex
��? A
)
��A B
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
CancelTurnTimer
�� $
(
��$ %
int
��% (
gameId
��) /
)
��/ 0
{
�� 	
if
�� 
(
�� &
cancelTokenTurnCountDown
�� (
.
��( )
	TryRemove
��) 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >%
CancellationTokenSource
��? V

cancelTime
��W a
)
��a b
)
��b c
{
�� 
try
�� 
{
�� 

cancelTime
�� 
.
�� 
Cancel
�� %
(
��% &
)
��& '
;
��' (
}
�� 
catch
�� 
(
�� %
ObjectDisposedException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Information
�� #
(
��# $
ex
��$ &
,
��& '
ex
��( *
.
��* +
Source
��+ 1
)
��1 2
;
��2 3
}
�� 
catch
�� 
(
��  
AggregateException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Information
�� #
(
��# $
ex
��$ &
,
��& '
ex
��( *
.
��* +
Source
��+ 1
)
��1 2
;
��2 3
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
��  "
)
��" #
{
�� 
Log
�� 
.
�� 
Information
�� #
(
��# $
ex
��$ &
,
��& '
ex
��( *
.
��* +
Source
��+ 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� '
RemoveDisconnectedPlayers
�� 4
(
��4 5
int
��5 8
gameId
��9 ?
,
��? @
List
��A E
<
��E F
ConnectedPlayer
��F U
>
��U V!
disconnectedPlayers
��W j
)
��j k
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
)
��Q R
{
�� 
List
�� 
<
�� 
ConnectedPlayer
�� $
>
��$ %
updatedPlayers
��& 4
=
��5 6
playersInGame
��7 D
.
��D E
Except
��E K
(
��K L!
disconnectedPlayers
��L _
)
��_ `
.
��` a
ToList
��a g
(
��g h
)
��h i
;
��i j
await
�� '
ProcessDisconnectedPlayer
�� /
(
��/ 0!
disconnectedPlayers
��0 C
,
��C D
gameId
��E K
)
��K L
;
��L M
if
�� 
(
�� 
updatedPlayers
�� "
.
��" #
Count
��# (
==
��) +
GameUtilities
��, 9
.
��9 :%
MINIMUN_PLAYERS_BY_GAME
��: Q
)
��Q R
{
�� 
EndGame
�� 
(
�� 
gameId
�� "
)
��" #
;
��# $
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
updatedPlayers
�� "
.
��" #
Any
��# &
(
��& '
)
��' (
)
��( )
{
�� $
connectedPlayersByGame
�� *
[
��* +
gameId
��+ 1
]
��1 2
=
��3 4
new
��5 8
ConcurrentBag
��9 F
<
��F G
ConnectedPlayer
��G V
>
��V W
(
��W X
updatedPlayers
��X f
)
��f g
;
��g h
if
�� 
(
�� 
gameCurrentTurns
�� (
.
��( )
TryGetValue
��) 4
(
��4 5
gameId
��5 ;
,
��; <
out
��= @
int
��A D
currentTurnIndex
��E U
)
��U V
)
��V W
{
�� 
ConnectedPlayer
�� '
currentTurnPlayer
��( 9
=
��: ;
playersInGame
��< I
.
��I J 
ElementAtOrDefault
��J \
(
��\ ]
currentTurnIndex
��] m
)
��m n
;
��n o
if
�� 
(
�� !
disconnectedPlayers
�� /
.
��/ 0
Contains
��0 8
(
��8 9
currentTurnPlayer
��9 J
)
��J K
)
��K L
{
�� 
await
�� !
HandleNextTurn
��" 0
(
��0 1
gameId
��1 7
,
��7 8
updatedPlayers
��9 G
,
��G H
currentTurnIndex
��I Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
}
�� 
else
�� 
{
�� $
connectedPlayersByGame
�� *
.
��* +
	TryRemove
��+ 4
(
��4 5
gameId
��5 ;
,
��; <
out
��= @
_
��A B
)
��B C
;
��C D
CancelTurnTimer
�� #
(
��# $
gameId
��$ *
)
��* +
;
��+ ,
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� '
ProcessDisconnectedPlayer
�� 4
(
��4 5
List
��5 9
<
��9 :
ConnectedPlayer
��: I
>
��I J!
disconnectedPlayers
��K ^
,
��^ _
int
��` c
gameId
��d j
)
��j k
{
�� 	
foreach
�� 
(
�� 
ConnectedPlayer
�� $ 
disconnectedPlayer
��% 7
in
��8 :!
disconnectedPlayers
��; N
)
��N O
{
�� 
int
�� 
?
�� 
playerId
�� 
=
��  
disconnectedPlayer
��  2
.
��2 3
profileClientDto
��3 C
?
��C D
.
��D E
Id
��E G
??
��H J 
disconnectedPlayer
��K ]
.
��] ^
guestAccountDto
��^ m
?
��m n
.
��n o
Id
��o q
;
��q r
if
�� 
(
�� 
playerId
�� 
.
�� 
HasValue
�� %
)
��% &
{
�� 
await
�� &
RemoveDisconnectedPlayer
�� 2
(
��2 3
gameId
��3 9
,
��9 :
playerId
��; C
.
��C D
Value
��D I
)
��I J
;
��J K
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� &
ThrowDiceInDataBaseAsync
�� 2
(
��2 3
int
��3 6
gameId
��7 =
,
��= >
int
��? B
playerId
��C K
,
��K L
int
��M P
	valueDice
��Q Z
)
��Z [
{
�� 	
int
�� 

resultDice
�� 
=
�� 
	valueDice
�� &
;
��& '
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
)
��l m
{
�� 
ConnectedPlayer
�� 
senderPlayer
��  ,
=
��- . 
GetConnectedPlayer
��/ A
(
��A B
gameId
��B H
,
��H I
playerId
��J R
)
��R S
;
��S T
List
�� 
<
�� 
Task
�� 
>
�� 
tasks
��  
=
��! "
new
��# &
List
��' +
<
��+ ,
Task
��, 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
foreach
�� 
(
�� 
ConnectedPlayer
�� (
player
��) /
in
��0 2
playersInGame
��3 @
)
��@ A
{
�� 
tasks
�� 
.
�� 
Add
�� 
(
�� -
NotifyPlayerWithDiceResultAsync
�� =
(
��= >
player
��> D
,
��D E
senderPlayer
��F R
,
��R S

resultDice
��T ^
)
��^ _
)
��_ `
;
��` a
}
�� 
await
�� 
Task
�� 
.
�� 
WhenAll
�� "
(
��" #
tasks
��# (
)
��( )
;
��) *
await
�� &
DistributeResourcesAsync
�� .
(
��. /
gameId
��/ 5
,
��5 6

resultDice
��7 A
)
��A B
;
��B C
}
�� 
}
�� 	
private
�� 
static
�� 
async
�� 
Task
�� !-
NotifyPlayerWithDiceResultAsync
��" A
(
��A B
ConnectedPlayer
��B Q
player
��R X
,
��X Y
ConnectedPlayer
��Z i
senderPlayer
��j v
,
��v w
int
��x {

resultDice��| �
)��� �
{
�� 	
if
�� 
(
�� 
player
�� 
==
�� 
null
�� 
||
�� !
player
��" (
==
��) +
senderPlayer
��, 8
||
��9 ;
player
��< B
.
��B C
gameCallback
��C O
==
��P R
null
��S W
)
��W X
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� "
IsPlayerCallbackOpen
�� $
(
��$ %
player
��% +
)
��+ ,
)
��, -
{
�� 
await
�� ,
HandlePlayerCommunicationAsync
�� 4
(
��4 5
player
��5 ;
,
��; <

resultDice
��= G
)
��G H
;
��H I
}
�� 
}
�� 	
private
�� 
static
�� 
async
�� 
Task
�� !,
HandlePlayerCommunicationAsync
��" @
(
��@ A
ConnectedPlayer
��A P
player
��Q W
,
��W X
int
��Y \

resultDice
��] g
)
��g h
{
�� 	
try
�� 
{
�� 
await
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
(
��  
)
��  !
=>
��" $
player
��% +
.
��+ ,
gameCallback
��, 8
.
��8 9
SendDiceResult
��9 G
(
��G H

resultDice
��H R
)
��R S
)
��S T
;
��T U
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� 6
ex
��7 9
)
��9 :
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )
ex
��* ,
)
��, -
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� )
QuitGameplayInDataBaseAsync
�� 5
(
��5 6
PlayerGameplayDto
��6 G
playerGameplayDto
��H Y
,
��Y Z
GameDto
��[ b
gameClientDto
��c p
)
��p q
{
�� 	
Profile
�� 
profileRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
ProfileRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
playerGameplayDto
��b s
.
��s t
Id
��t v
)
��v w
;
��w x
GuestAccount
��  
guestAccountRecord
�� +
=
��, -
await
��. 3
repositoryManager
��4 E
.
��E F$
GuestAccountRepository
��F \
.
��\ ]!
FindEntityByIdAsync
��] p
(
��p q 
playerGameplayDto��q �
.��� �
Id��� �
)��� �
;��� �
await
�� %
NextTurnInDataBaseAsync
�� )
(
��) *
(
��* +
int
��+ .
)
��. /
gameClientDto
��/ <
.
��< =
Id
��= ?
,
��? @
playerGameplayDto
��A R
.
��R S
Id
��S U
)
��U V
;
��V W
if
�� 
(
�� 
profileRecord
�� 
!=
��  
null
��! %
)
��% &
{
�� 

ProfileDto
�� 
profileServerDto
�� +
=
��, -
serviceManager
��. <
.
��< =
ProfileService
��= K
.
��K L
CreateProfileDto
��L \
(
��\ ]
profileRecord
��] j
)
��j k
;
��k l
await
�� %
QuitGameInDatabaseAsync
�� -
(
��- .
gameClientDto
��. ;
,
��; <
profileServerDto
��= M
)
��M N
;
��N O
}
�� 
else
�� 
if
�� 
(
��  
guestAccountRecord
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
GuestAccountDto
�� #
guestAccountServerDto
��  5
=
��6 7
await
��8 =
serviceManager
��> L
.
��L M!
GuestAccountService
��M `
.
��` a#
CreateGuestAccountDto
��a v
(
��v w!
guestAccountRecord��w �
)��� �
;��� �
await
�� 4
&QuitGameAsaGuestAccountInDatabaseAsync
�� <
(
��< =
gameClientDto
��= J
,
��J K#
guestAccountServerDto
��L a
)
��a b
;
��b c
}
�� 
}
�� 	
private
�� 
void
�� -
StartPeriodicPlayerListNotifier
�� 4
(
��4 5
int
��5 8
gameId
��9 ?
,
��? @
int
��A D
intervalSeconds
��E T
=
��U V
GameUtilities
��W d
.
��d e(
TIME_PING_INTERVAL_SECONDS
��e 
)�� �
{
�� 	%
CancellationTokenSource
�� #%
cancellationTokenSource
��$ ;
=
��< =
new
��> A%
CancellationTokenSource
��B Y
(
��Y Z
)
��Z [
;
��[ \/
!cancelTokenEliminatePlayersInGame
�� -
[
��- .
gameId
��. 4
]
��4 5
=
��6 7%
cancellationTokenSource
��8 O
;
��O P
Task
�� 
.
�� 
Run
�� 
(
�� 
(
�� 
)
�� 
=>
�� &
PeriodicNotificationLoop
�� 3
(
��3 4
gameId
��4 :
,
��: ;
intervalSeconds
��< K
,
��K L%
cancellationTokenSource
��M d
)
��d e
)
��e f
;
��f g
}
�� 	
private
�� 
void
�� $
CancelExistingNotifier
�� +
(
��+ ,
int
��, /
gameId
��0 6
)
��6 7
{
�� 	
if
�� 
(
�� 2
$cancelTokenEliminatePlayersInPreGame
�� 4
.
��4 5
TryGetValue
��5 @
(
��@ A
gameId
��A G
,
��G H
out
��I L%
CancellationTokenSource
��M d!
existingCancelToken
��e x
)
��x y
)
��y z
{
�� 
try
�� 
{
�� !
existingCancelToken
�� '
.
��' (
Cancel
��( .
(
��. /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� %
ObjectDisposedException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Information
�� #
(
��# $
ex
��$ &
,
��& '
ex
��( *
.
��* +
Source
��+ 1
)
��1 2
;
��2 3
}
�� 
catch
�� 
(
��  
AggregateException
�� )
ex
��* ,
)
��, -
{
�� 
Log
�� 
.
�� 
Information
�� #
(
��# $
ex
��$ &
,
��& '
ex
��( *
.
��* +
Source
��+ 1
)
��1 2
;
��2 3
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Information
�� #
(
��# $
ex
��$ &
,
��& '
ex
��( *
.
��* +
Source
��+ 1
)
��1 2
;
��2 3
}
�� 
finally
�� 
{
�� 2
$cancelTokenEliminatePlayersInPreGame
�� 8
.
��8 9
Remove
��9 ?
(
��? @
gameId
��@ F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� &
PeriodicNotificationLoop
�� 3
(
��3 4
int
��4 7
gameId
��8 >
,
��> ?
int
��@ C
intervalSeconds
��D S
,
��S T%
CancellationTokenSource
��U l&
cancellationTokenSource��m �
)��� �
{
�� 	
try
�� 
{
�� 
while
�� 
(
�� 
!
�� %
cancellationTokenSource
�� /
.
��/ 0
Token
��0 5
.
��5 6%
IsCancellationRequested
��6 M
)
��M N
{
�� 
if
�� 
(
�� $
connectedPlayersByGame
�� .
.
��. /
TryGetValue
��/ :
(
��: ;
gameId
��; A
,
��A B
out
��C F
ConcurrentBag
��G T
<
��T U
ConnectedPlayer
��U d
>
��d e
playersInGame
��f s
)
��s t
)
��t u
{
�� 
await
�� '
HandleDisconnectedPlayers
�� 7
(
��7 8
gameId
��8 >
,
��> ?
playersInGame
��@ M
)
��M N
;
��N O
if
�� 
(
�� 
!
�� 
playersInGame
�� *
.
��* +
Any
��+ .
(
��. /
)
��/ 0
)
��0 1
{
�� ,
StopPeriodicPlayerListNotifier
�� :
(
��: ;
gameId
��; A
)
��A B
;
��B C
EndGame
�� #
(
��# $
gameId
��$ *
)
��* +
;
��+ ,
return
�� "
;
��" #
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
gameCurrentTurns
�� )
.
��) *
TryGetValue
��* 5
(
��5 6
gameId
��6 <
,
��< =
out
��> A
int
��B E
currentTurnIndex
��F V
)
��V W
)
��W X
{
�� ,
StopPeriodicPlayerListNotifier
�� 6
(
��6 7
gameId
��7 =
)
��= >
;
��> ?
return
�� 
;
�� 
}
�� 
await
�� &
NotifyAllPlayersWithList
�� 2
(
��2 3
gameId
��3 9
,
��9 :
currentTurnIndex
��; K
)
��K L
;
��L M
await
�� 
Task
�� 
.
�� 
Delay
�� $
(
��$ %
intervalSeconds
��% 4
*
��5 6
GameUtilities
��7 D
.
��D E
TIME_MILISECONDS
��E U
,
��U V%
cancellationTokenSource
��W n
.
��n o
Token
��o t
)
��t u
;
��u v
}
�� 
}
�� 
catch
�� 
(
�� #
TaskCanceledException
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� '
HandleDisconnectedPlayers
�� 4
(
��4 5
int
��5 8
gameId
��9 ?
,
��? @
ConcurrentBag
��A N
<
��N O
ConnectedPlayer
��O ^
>
��^ _
playersInGame
��` m
)
��m n
{
�� 	
List
�� 
<
�� 
ConnectedPlayer
��  
>
��  !!
disconnectedPlayers
��" 5
=
��6 7
playersInGame
��8 E
.
�� 
Where
�� 
(
�� 
player
�� 
=>
��  
player
��! '
.
��' (
gameCallback
��( 4
==
��5 7
null
��8 <
||
��= ?
(
��@ A
(
��A B"
ICommunicationObject
��B V
)
��V W
player
��W ]
.
��] ^
gameCallback
��^ j
)
��j k
.
��k l
State
��l q
!=
��r t!
CommunicationState��u �
.��� �
Opened��� �
)��� �
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
ConnectedPlayer
�� $
player
��% +
in
��, .!
disconnectedPlayers
��/ B
)
��B C
{
�� 
int
�� 
idPlayer
�� 
=
�� 
player
�� %
.
��% &
profileClientDto
��& 6
?
��6 7
.
��7 8
Id
��8 :
??
��; =
player
��> D
.
��D E
guestAccountDto
��E T
?
��T U
.
��U V
Id
��V X
??
��Y [ 
CharacterUtilities
��\ n
.
��n o
NON_VALID_ID
��o {
;
��{ |
await
�� &
RemoveDisconnectedPlayer
�� .
(
��. /
gameId
��/ 5
,
��5 6
idPlayer
��7 ?
)
��? @
;
��@ A
}
�� 
if
�� 
(
�� !
disconnectedPlayers
�� #
.
��# $
Any
��$ '
(
��' (
)
��( )
)
��) *
{
�� 
await
�� '
RemoveDisconnectedPlayers
�� /
(
��/ 0
gameId
��0 6
,
��6 7!
disconnectedPlayers
��8 K
)
��K L
;
��L M
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� &
NotifyAllPlayersWithList
�� 3
(
��3 4
int
��4 7
gameId
��8 >
,
��> ?
int
��@ C
currentTurnIndex
��D T
)
��T U
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
)
��l m
{
�� 
List
�� 
<
�� 
ConnectedPlayer
�� $
>
��$ %
orderedPlayers
��& 4
=
��5 6
playersInGame
��7 D
.
��D E
OrderBy
��E L
(
��L M
player
��M S
=>
��T V
player
��W ]
.
��] ^
JoinedAt
��^ f
)
��f g
.
��g h
ToList
��h n
(
��n o
)
��o p
;
��p q
List
�� 
<
�� !
PlayerTurnStatusDto
�� (
>
��( )
playersTurnStatus
��* ;
=
��< =&
GeneratePlayerTurnStatus
��> V
(
��V W
orderedPlayers
��W e
,
��e f
currentTurnIndex
��g w
)
��w x
;
��x y
List
�� 
<
�� 
ConnectedPlayer
�� $
>
��$ %
openPlayers
��& 1
=
��2 3
playersInGame
��4 A
.
�� 
Where
�� 
(
�� 
player
�� !
=>
��" $
player
��% +
.
��+ ,
gameCallback
��, 8
!=
��9 ;
null
��< @
&&
��A C
(
��D E
(
��E F"
ICommunicationObject
��F Z
)
��Z [
player
��[ a
.
��a b
gameCallback
��b n
)
��n o
.
��o p
State
��p u
==
��v x!
CommunicationState��y �
.��� �
Opened��� �
)��� �
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
await
�� 
Task
�� 
.
�� 
WhenAll
�� "
(
��" #
openPlayers
��# .
.
��. /
Select
��/ 5
(
��5 6
async
��6 ;
player
��< B
=>
��C E
{
�� 
try
�� 
{
�� 
if
�� 
(
�� 
player
�� "
.
��" #
gameCallback
��# /
!=
��0 2
null
��3 7
)
��7 8
{
�� 
player
�� "
.
��" #
gameCallback
��# /
?
��/ 0
.
��0 1&
UpdateListOfPlayersTurns
��1 I
(
��I J
playersTurnStatus
��J [
)
��[ \
;
��\ ]
}
�� 
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
await
�� 
Task
�� 
.
�� 
CompletedTask
�� ,
;
��, -
}
�� 
)
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� !
PlayerTurnStatusDto
�� (
>
��( )&
GeneratePlayerTurnStatus
��* B
(
��B C
List
��C G
<
��G H
ConnectedPlayer
��H W
>
��W X
orderedPlayers
��Y g
,
��g h
int
��i l
currentTurnIndex
��m }
)
��} ~
{
�� 	
return
�� 
orderedPlayers
�� !
.
��! "
Select
��" (
(
��( )
(
��) *
player
��* 0
,
��0 1
index
��2 7
)
��7 8
=>
��9 ;
new
��< ?!
PlayerTurnStatusDto
��@ S
{
�� 
ProfileTurnDto
�� 
=
��  
player
��! '
.
��' (
profileClientDto
��( 8
,
��8 9!
GuestAccountTurnDto
�� #
=
��$ %
player
��& ,
.
��, -
guestAccountDto
��- <
,
��< =
Points
�� 
=
�� 
player
�� 
.
��  
Points
��  &
,
��& '
IsTurn
�� 
=
�� 
index
�� 
==
�� !
currentTurnIndex
��" 2
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� ,
StopPeriodicPlayerListNotifier
�� 3
(
��3 4
int
��4 7
gameId
��8 >
)
��> ?
{
�� 	
if
�� 
(
�� /
!cancelTokenEliminatePlayersInGame
�� 1
.
��1 2
	TryRemove
��2 ;
(
��; <
gameId
��< B
,
��B C
out
��D G
var
��H K%
cancellationTokenSource
��L c
)
��c d
)
��d e
{
�� %
cancellationTokenSource
�� '
.
��' (
Cancel
��( .
(
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
private
�� 
void
�� 
EndGame
�� 
(
�� 
int
��  
gameId
��! '
)
��' (
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
	TryRemove
��' 0
(
��0 1
gameId
��1 7
,
��7 8
out
��9 <
var
��= @
playersInGame
��A N
)
��N O
)
��O P
{
�� 
foreach
�� 
(
�� 
var
�� 
player
�� #
in
��$ &
playersInGame
��' 4
)
��4 5
{
�� 
int
�� 
idPlayer
��  
=
��! "
player
��# )
.
��) *
profileClientDto
��* :
?
��: ;
.
��; <
Id
��< >
??
��? A
player
��B H
.
��H I
guestAccountDto
��I X
?
��X Y
.
��Y Z
Id
��Z \
??
��] _ 
CharacterUtilities
��` r
.
��r s
NON_VALID_ID
��s 
;�� �
if
�� 
(
�� 
player
�� 
.
�� 
gameCallback
�� +
!=
��, .
null
��/ 3
&&
��4 6
(
��7 8
(
��8 9"
ICommunicationObject
��9 M
)
��M N
player
��N T
.
��T U
gameCallback
��U a
)
��a b
.
��b c
State
��c h
==
��i k 
CommunicationState
��l ~
.
��~ 
Opened�� �
)��� �
{
�� 
try
�� 
{
�� 
Task
��  
.
��  !
Run
��! $
(
��$ %
(
��% &
)
��& '
=>
��( *
player
��+ 1
.
��1 2
gameCallback
��2 >
.
��> ?(
EndGameDisconnectedPlayers
��? Y
(
��Y Z
)
��Z [
)
��[ \
.
��\ ]
Wait
��] a
(
��a b
)
��b c
;
��c d&
RemoveDisconnectedPlayer
�� 4
(
��4 5
gameId
��5 ;
,
��; <
idPlayer
��= E
)
��E F
.
��F G
Wait
��G K
(
��K L
)
��L M
;
��M N
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� B
ex
��C E
)
��E F
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 5
ex
��6 8
)
��8 9
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
}
�� ,
StopPeriodicPlayerListNotifier
�� *
(
��* +
gameId
��+ 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
void
�� !
InitializeGameBoard
�� '
(
��' (
int
��( +
gameId
��, 2
)
��2 3
{
�� 	
if
�� 
(
�� 
gameBoardStates
�� 
.
��  
TryGetValue
��  +
(
��+ ,
gameId
��, 2
,
��2 3
out
��4 7
GameBoardStateDto
��8 I 
existingBoardState
��J \
)
��\ ]
)
��] ^
{
�� (
NotifyPlayersWithGameBoard
�� *
(
��* +
gameId
��+ 1
,
��1 2 
existingBoardState
��3 E
)
��E F
;
��F G
return
�� 
;
�� 
}
�� 
List
�� 
<
�� 

HexTileDto
�� 
>
�� 
hexTiles
�� %
=
��& '
GenerateHexTiles
��( 8
(
��8 9
)
��9 :
;
��: ;
GameplayRules
�� 
.
�� .
 GenerateVerticesAndEdgesForHexes
�� :
(
��: ;
hexTiles
��; C
)
��C D
;
��D E
GameplayRules
�� 
.
�� ,
ConnectVerticesWithManualRules
�� 8
(
��8 9
hexTiles
��9 A
)
��A B
;
��B C
GameBoardStateDto
�� 
gameBoardState
�� ,
=
��- .
new
��/ 2
GameBoardStateDto
��3 D
{
�� 
GameId
�� 
=
�� 
gameId
�� 
,
��  
HexTiles
�� 
=
�� 
hexTiles
�� #
}
�� 
;
�� 
gameBoardStates
�� 
[
�� 
gameId
�� "
]
��" #
=
��$ %
gameBoardState
��& 4
;
��4 5(
NotifyPlayersWithGameBoard
�� &
(
��& '
gameId
��' -
,
��- .
gameBoardState
��/ =
)
��= >
;
��> ?
}
�� 	
private
�� 
void
�� (
NotifyPlayersWithGameBoard
�� /
(
��/ 0
int
��0 3
gameId
��4 :
,
��: ;
GameBoardStateDto
��< M
gameBoardState
��N \
)
��\ ]
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
)
��l m
{
�� 
playersInGame
�� 
.
�� 
Where
�� 
(
�� 
player
�� !
=>
��" $
player
��% +
.
��+ ,
gameCallback
��, 8
!=
��9 ;
null
��< @
&&
��A C
(
��D E
(
��E F"
ICommunicationObject
��F Z
)
��Z [
player
��[ a
.
��a b
gameCallback
��b n
)
��n o
.
��o p
State
��p u
==
��v x!
CommunicationState��y �
.��� �
Opened��� �
)��� �
.
�� 
ToList
�� 
(
�� 
)
�� 
.
�� 
ForEach
�� 
(
�� 
player
�� #
=>
��$ &
{
�� 
try
�� 
{
�� 
player
�� "
.
��" #
gameCallback
��# /
.
��/ 0(
NotifyGameBoardInitialized
��0 J
(
��J K
gameBoardState
��K Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� B
ex
��C E
)
��E F
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 5
ex
��6 8
)
��8 9
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� &
NotifyPlayersPiecePlaced
�� -
(
��- .
int
��. 1
gameId
��2 8
,
��8 9
PlayerGameplayDto
��: K
playerGameplayDto
��L ]
)
��] ^
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
&&
��R T
gameBoardStates
��U d
.
��d e
TryGetValue
��e p
(
��p q
gameId
��q w
,
��w x
out
��y |
var��} �
gameBoardState��� �
)��� �
)��� �
{
�� 
GameBoardStateDto
�� !
gameBoardStateDto
��" 3
=
��4 5
gameBoardStates
��6 E
[
��E F
gameId
��F L
]
��L M
;
��M N
playersInGame
�� 
.
�� 
Where
�� 
(
�� 
player
�� !
=>
��" $
player
��% +
.
��+ ,
gameCallback
��, 8
!=
��9 ;
null
��< @
&&
��A C
(
��D E
(
��E F"
ICommunicationObject
��F Z
)
��Z [
player
��[ a
.
��a b
gameCallback
��b n
)
��n o
.
��o p
State
��p u
==
��v x!
CommunicationState��y �
.��� �
Opened��� �
)��� �
.
�� 
ToList
�� 
(
�� 
)
�� 
.
�� 
ForEach
�� 
(
�� 
player
�� #
=>
��$ &
{
�� 
try
�� 
{
�� 
player
�� "
.
��" #
gameCallback
��# /
.
��/ 0%
NotifyPlayerPlacedPiece
��0 G
(
��G H
gameBoardStateDto
��H Y
,
��Y Z
playerGameplayDto
��[ l
)
��l m
;
��m n
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� B
ex
��C E
)
��E F
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 5
ex
��6 8
)
��8 9
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
{
�� 
Log
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
,
��( )
ex
��* ,
.
��, -
Source
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
List
�� 
<
�� 

HexTileDto
�� &
>
��& '
GenerateHexTiles
��( 8
(
��8 9
)
��9 :
{
�� 	
string
�� 
[
�� 
]
�� 
	resources
�� 
=
��  
GameplayUtilities
��! 2
.
��2 3
RESOURCES_GAME
��3 A
;
��A B
int
�� 
[
�� 
]
�� 

diceValues
�� 
=
�� 
GameplayUtilities
�� 0
.
��0 1
DICE_VALUES
��1 <
;
��< =
Random
�� 
random
�� 
=
�� 
new
�� 
Random
��  &
(
��& '
)
��' (
;
��( )
List
�� 
<
�� 

HexTileDto
�� 
>
�� 
hexTiles
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1

HexTileDto
��1 ;
>
��; <
(
��< =
)
��= >
;
��> ?
int
�� 
[
�� 
]
�� 
[
�� 
]
�� 
hexTileLayout
�� !
=
��" #
GameplayUtilities
��$ 5
.
��5 6
HEX_TILE_LAYOUT
��6 E
;
��E F
int
�� 
hexId
�� 
=
�� 
GameplayUtilities
�� )
.
��) * 
HEXTILE_INITIAL_ID
��* <
;
��< =
for
�� 
(
�� 
int
�� 
row
�� 
=
�� 
$num
�� 
;
�� 
row
�� !
<
��" #
hexTileLayout
��$ 1
.
��1 2
Length
��2 8
;
��8 9
row
��: =
++
��= ?
)
��? @
{
�� 
for
�� 
(
�� 
int
�� 
column
�� 
=
��  !
$num
��" #
;
��# $
column
��% +
<
��, -
hexTileLayout
��. ;
[
��; <
row
��< ?
]
��? @
.
��@ A
Length
��A G
;
��G H
column
��I O
++
��O Q
)
��Q R
{
�� 

HexTileDto
�� 
newHext
�� &
=
��' (
new
��) ,

HexTileDto
��- 7
(
��7 8
)
��8 9
;
��9 :
newHext
�� 
.
�� 
Id
�� 
=
��  
hexId
��! &
++
��& (
;
��( )
newHext
�� 
.
�� 
Resource
�� $
=
��% &
	resources
��' 0
[
��0 1
random
��1 7
.
��7 8
Next
��8 <
(
��< =
	resources
��= F
.
��F G
Length
��G M
)
��M N
]
��N O
;
��O P
newHext
�� 
.
�� 
	DiceValue
�� %
=
��& '

diceValues
��( 2
[
��2 3
random
��3 9
.
��9 :
Next
��: >
(
��> ?

diceValues
��? I
.
��I J
Length
��J P
)
��P Q
]
��Q R
;
��R S
newHext
�� 
.
�� 
Row
�� 
=
��  !
row
��" %
;
��% &
newHext
�� 
.
�� 
Column
�� "
=
��# $
column
��% +
;
��+ ,
newHext
�� 
.
�� 
Vertices
�� $
=
��% &
new
��' *
List
��+ /
<
��/ 0
	VertexDto
��0 9
>
��9 :
(
��: ;
GameplayUtilities
��; L
.
��L M 
NUMBER_OF_VERTICES
��M _
)
��_ `
;
��` a
newHext
�� 
.
�� 
Edges
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
EdgeDto
��- 4
>
��4 5
(
��5 6
GameplayUtilities
��6 G
.
��G H 
NUMBER_OF_VERTICES
��H Z
)
��Z [
;
��[ \
hexTiles
�� 
.
�� 
Add
��  
(
��  !
newHext
��! (
)
��( )
;
��) *
}
�� 
}
�� 
return
�� 
hexTiles
�� 
;
�� 
}
�� 	
private
�� 
void
�� "
UpdateGameBoardState
�� )
(
��) *
int
��* -
gameId
��. 4
,
��4 5
GameBoardStateDto
��6 G#
updatedGameBoardState
��H ]
)
��] ^
{
�� 	
gameBoardStates
�� 
[
�� 
gameId
�� "
]
��" #
=
��$ %#
updatedGameBoardState
��& ;
;
��; <
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -$
PlacePieceOnBoardAsync
��. D
(
��D E
PiecePlacementDto
��E V
placementDto
��W c
,
��c d
PlayerGameplayDto
��e v 
playerGameplayDto��w �
,��� �
int��� �
gameId��� �
)��� �
{
�� 	
if
�� 
(
�� 
gameBoardStates
�� 
.
��  
TryGetValue
��  +
(
��+ ,
gameId
��, 2
,
��2 3
out
��4 7
GameBoardStateDto
��8 I
gameBoardState
��J X
)
��X Y
)
��Y Z
{
�� 
return
�� 
await
�� '
HandlePiecePlacementAsync
�� 6
(
��6 7
gameBoardState
��7 E
,
��E F
placementDto
��G S
,
��S T
playerGameplayDto
��U f
,
��f g
gameId
��h n
)
��n o
;
��o p
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C%
MessageUnableToSaveData
��C Z
(
��Z [
LanguageUtilities
��[ l
.
��l m+
LANGUAGE_ENGLISH_FORMAT_RESX��m �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� -
>
��- .'
HandlePiecePlacementAsync
��/ H
(
��H I
GameBoardStateDto
��I Z
gameBoardState
��[ i
,
��i j
PiecePlacementDto
��k |
placementDto��} �
,��� �!
PlayerGameplayDto��� �!
playerGameplayDto��� �
,��� �
int��� �
gameId��� �
)��� �
{
�� 	 
OperationResultDto
�� 
result
�� %
;
��% &
switch
�� 
(
�� 
placementDto
��  
.
��  !
	PieceType
��! *
)
��* +
{
�� 
case
�� 
GameplayUtilities
�� &
.
��& '&
PIECE_GAMEPLAY_SETTLEMEN
��' ?
:
��? @
result
�� 
=
�� 
PlaceSettlement
�� ,
(
��, -
gameBoardState
��- ;
,
��; <
placementDto
��= I
,
��I J
playerGameplayDto
��K \
,
��\ ]
gameId
��^ d
)
��d e
;
��e f
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& '!
PIECE_GAMEPLAY_ROAD
��' :
:
��: ;
result
�� 
=
�� 
	PlaceRoad
�� &
(
��& '
gameBoardState
��' 5
,
��5 6
placementDto
��7 C
,
��C D
playerGameplayDto
��E V
,
��V W
gameId
��X ^
)
��^ _
;
��_ `
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& '!
PIECE_GAMEPLAY_CITY
��' :
:
��: ;
result
�� 
=
�� 
	PlaceCity
�� &
(
��& '
gameBoardState
��' 5
,
��5 6
placementDto
��7 C
,
��C D
playerGameplayDto
��E V
,
��V W
gameId
��X ^
)
��^ _
;
��_ `
break
�� 
;
�� 
default
�� 
:
�� 
result
�� 
=
�� 
new
��   
OperationResultDto
��! 3
(
��3 4
false
��4 9
,
��9 :
LanguageUtilities
��; L
.
��L M%
MessageUnableToSaveData
��M d
(
��d e
LanguageUtilities
��e v
.
��v w+
LANGUAGE_ENGLISH_FORMAT_RESX��w �
)��� �
)��� �
;��� �
break
�� 
;
�� 
}
�� 
return
�� 
await
�� 
Task
�� 
.
�� 

FromResult
�� (
(
��( )
result
��) /
)
��/ 0
;
��0 1
}
�� 	
private
��  
OperationResultDto
�� "
PlaceSettlement
��# 2
(
��2 3
GameBoardStateDto
��3 D
gameBoardState
��E S
,
��S T
PiecePlacementDto
��U f
placementDto
��g s
,
��s t 
PlayerGameplayDto��u �!
playerGameplayDto��� �
,��� �
int��� �
gameId��� �
)��� �
{
�� 	
	VertexDto
�� 
vertex
�� 
=
�� 
gameBoardState
�� -
.
��- .
HexTiles
��. 6
.
��6 7

SelectMany
��7 A
(
��A B
hextile
��B I
=>
��J L
hextile
��M T
.
��T U
Vertices
��U ]
)
��] ^
.
��^ _
FirstOrDefault
��_ m
(
��m n
vertices
��n v
=>
��w y
vertices��z �
.��� �
Id��� �
==��� �
placementDto��� �
.��� �
TargetVertexId��� �
)��� �
;��� �

Dictionary
�� 
<
�� 
string
�� 
,
�� 
int
�� "
>
��" #
cost
��$ (
=
��) *
new
��+ .

Dictionary
��/ 9
<
��9 :
string
��: @
,
��@ A
int
��B E
>
��E F
{
�� 
{
�� 
GameplayUtilities
�� #
.
��# $ 
RESOURCE_TRITONIUM
��$ 6
,
��6 7
$num
��8 9
}
��: ;
,
��; <
{
�� 
GameplayUtilities
�� #
.
��# $
RESOURCE_GRX_810
��$ 4
,
��4 5
$num
��6 7
}
��8 9
,
��9 :
{
�� 
GameplayUtilities
�� #
.
��# $'
RESOURCE_ALPHA_NANOFIBERS
��$ =
,
��= >
$num
��? @
}
��A B
,
��B C
{
�� 
GameplayUtilities
�� #
.
��# $&
RESOURCE_EPSILON_BIOMASS
��$ <
,
��< =
$num
��> ?
}
��@ A
}
�� 
;
�� 
if
�� 
(
�� 
vertex
�� 
==
�� 
null
�� 
||
�� !
vertex
��" (
.
��( )

IsOccupied
��) 3
||
��4 6
!
��7 8
DeductResources
��8 G
(
��G H!
gamePlayerResources
��H [
[
��[ \
gameId
��\ b
]
��b c
,
��c d
playerGameplayDto
��e v
.
��v w
Id
��w y
,
��y z
cost
��{ 
)�� �
)��� �
{
�� 
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G%
MessageUnableToSaveData
��G ^
(
��^ _
LanguageUtilities
��_ p
.
��p q+
LANGUAGE_ENGLISH_FORMAT_RESX��q �
)��� �
)��� �
;��� �
}
�� 
vertex
�� 
.
�� 

IsOccupied
�� 
=
�� 
true
��  $
;
��$ %
vertex
�� 
.
�� 
OwnerPlayerId
��  
=
��! "
playerGameplayDto
��# 4
.
��4 5
Id
��5 7
;
��7 8"
UpdateGameBoardState
��  
(
��  !
gameId
��! '
,
��' (
gameBoardState
��) 7
)
��7 8
;
��8 9
_
�� 
=
�� 
AddPointsToPlayer
�� !
(
��! "
playerGameplayDto
��" 3
.
��3 4
Id
��4 6
,
��6 7
$num
��8 9
,
��9 :
gameId
��; A
)
��A B
;
��B C&
NotifyPlayersPiecePlaced
�� $
(
��$ %
gameId
��% +
,
��+ ,
playerGameplayDto
��- >
)
��> ?
;
��? @(
NotifyPlayersWithResources
�� &
(
��& '
gameId
��' -
)
��- .
;
��. /
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
true
��* .
,
��. /
LanguageUtilities
��0 A
.
��A B
MessageSuccess
��B P
(
��P Q
LanguageUtilities
��Q b
.
��b c*
LANGUAGE_ENGLISH_FORMAT_RESX
��c 
)�� �
)��� �
;��� �
}
�� 	
private
��  
OperationResultDto
�� "
	PlaceRoad
��# ,
(
��, -
GameBoardStateDto
��- >
gameBoardState
��? M
,
��M N
PiecePlacementDto
��O `
placementDto
��a m
,
��m n 
PlayerGameplayDto��o �!
playerGameplayDto��� �
,��� �
int��� �
gameId��� �
)��� �
{
�� 	
EdgeDto
�� 
edge
�� 
=
�� 
gameBoardState
�� )
.
��) *
HexTiles
��* 2
.
��2 3

SelectMany
��3 =
(
��= >
hextile
��> E
=>
��F H
hextile
��I P
.
��P Q
Edges
��Q V
)
��V W
.
��W X
FirstOrDefault
��X f
(
��f g
edges
��g l
=>
��m o
edges
��p u
.
��u v
Id
��v x
==
��y {
placementDto��| �
.��� �
TargetEdgeId��� �
)��� �
;��� �

Dictionary
�� 
<
�� 
string
�� 
,
�� 
int
�� "
>
��" #
cost
��$ (
=
��) *
new
��+ .

Dictionary
��/ 9
<
��9 :
string
��: @
,
��@ A
int
��B E
>
��E F
{
�� 
{
�� 
GameplayUtilities
�� #
.
��# $ 
RESOURCE_TRITONIUM
��$ 6
,
��6 7
$num
��8 9
}
��: ;
,
��; <
{
�� 
GameplayUtilities
�� #
.
��# $
RESOURCE_GRX_810
��$ 4
,
��4 5
$num
��6 7
}
��8 9
}
�� 
;
�� 
if
�� 
(
�� 
edge
�� 
==
�� 
null
�� 
||
�� 
edge
��  $
.
��$ %

IsOccupied
��% /
||
��0 2
!
��3 4!
PlayerHasSettlement
��4 G
(
��G H
gameBoardState
��H V
,
��V W
playerGameplayDto
��X i
.
��i j
Id
��j l
)
��l m
||
��n p
!
��q r
DeductResources��r �
(��� �#
gamePlayerResources��� �
[��� �
gameId��� �
]��� �
,��� �!
playerGameplayDto��� �
.��� �
Id��� �
,��� �
cost��� �
)��� �
)��� �
{
�� 
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G%
MessageUnableToSaveData
��G ^
(
��^ _
LanguageUtilities
��_ p
.
��p q+
LANGUAGE_ENGLISH_FORMAT_RESX��q �
)��� �
)��� �
;��� �
}
�� 
edge
�� 
.
�� 

IsOccupied
�� 
=
�� 
true
�� "
;
��" #
edge
�� 
.
�� 
OwnerPlayerId
�� 
=
��  
playerGameplayDto
��! 2
.
��2 3
Id
��3 5
;
��5 6"
UpdateGameBoardState
��  
(
��  !
gameId
��! '
,
��' (
gameBoardState
��) 7
)
��7 8
;
��8 9
_
�� 
=
�� 
AddPointsToPlayer
�� !
(
��! "
playerGameplayDto
��" 3
.
��3 4
Id
��4 6
,
��6 7
$num
��8 9
,
��9 :
gameId
��; A
)
��A B
;
��B C&
NotifyPlayersPiecePlaced
�� $
(
��$ %
gameId
��% +
,
��+ ,
playerGameplayDto
��- >
)
��> ?
;
��? @(
NotifyPlayersWithResources
�� &
(
��& '
gameId
��' -
)
��- .
;
��. /
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
true
��* .
,
��. /
LanguageUtilities
��0 A
.
��A B
MessageSuccess
��B P
(
��P Q
LanguageUtilities
��Q b
.
��b c*
LANGUAGE_ENGLISH_FORMAT_RESX
��c 
)�� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
bool
�� !
PlayerHasSettlement
�� /
(
��/ 0
GameBoardStateDto
��0 A
gameBoardState
��B P
,
��P Q
int
��R U
playerId
��V ^
)
��^ _
{
�� 	
return
�� 
gameBoardState
�� !
.
��! "
HexTiles
��" *
.
�� 

SelectMany
�� 
(
�� 
hextile
�� #
=>
��$ &
hextile
��' .
.
��. /
Vertices
��/ 7
)
��7 8
.
�� 
Any
�� 
(
�� 
vertex
�� 
=>
�� 
vertex
�� %
.
��% &
OwnerPlayerId
��& 3
==
��4 6
playerId
��7 ?
&&
��@ B
vertex
��C I
.
��I J

IsOccupied
��J T
&&
��U W
!
��X Y
vertex
��Y _
.
��_ `
IsCity
��` f
)
��f g
;
��g h
}
�� 	
private
��  
OperationResultDto
�� "
	PlaceCity
��# ,
(
��, -
GameBoardStateDto
��- >
gameBoardState
��? M
,
��M N
PiecePlacementDto
��O `
placementDto
��a m
,
��m n 
PlayerGameplayDto��o �!
playerGameplayDto��� �
,��� �
int��� �
gameId��� �
)��� �
{
�� 	
	VertexDto
�� 
vertex
�� 
=
�� 
gameBoardState
�� -
.
��- .
HexTiles
��. 6
.
��6 7

SelectMany
��7 A
(
��A B
hextile
��B I
=>
��J L
hextile
��M T
.
��T U
Vertices
��U ]
)
��] ^
.
��^ _
FirstOrDefault
��_ m
(
��m n
v
��n o
=>
��p r
v
��s t
.
��t u
Id
��u w
==
��x z
placementDto��{ �
.��� �
TargetVertexId��� �
)��� �
;��� �

Dictionary
�� 
<
�� 
string
�� 
,
�� 
int
�� "
>
��" #
cost
��$ (
=
��) *
new
��+ .

Dictionary
��/ 9
<
��9 :
string
��: @
,
��@ A
int
��B E
>
��E F
{
�� 
{
�� 
GameplayUtilities
�� #
.
��# $&
RESOURCE_EPSILON_BIOMASS
��$ <
,
��< =
$num
��> ?
}
��@ A
,
��A B
{
�� 
GameplayUtilities
�� #
.
��# $"
RESOURCE_LUNAR_STONE
��$ 8
,
��8 9
$num
��: ;
}
��< =
}
�� 
;
�� 
if
�� 
(
�� 
vertex
�� 
==
�� 
null
�� 
||
�� !
!
��" #
GameplayRules
��# 0
.
��0 1
CanUpgradeToCity
��1 A
(
��A B
vertex
��B H
,
��H I
playerGameplayDto
��J [
.
��[ \
Id
��\ ^
)
��^ _
||
��` b
!
��c d
DeductResources
��d s
(
��s t"
gamePlayerResources��t �
[��� �
gameId��� �
]��� �
,��� �!
playerGameplayDto��� �
.��� �
Id��� �
,��� �
cost��� �
)��� �
)��� �
{
�� 
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G%
MessageUnableToSaveData
��G ^
(
��^ _
LanguageUtilities
��_ p
.
��p q+
LANGUAGE_ENGLISH_FORMAT_RESX��q �
)��� �
)��� �
;��� �
}
�� 
vertex
�� 
.
�� 
IsCity
�� 
=
�� 
true
��  
;
��  !"
UpdateGameBoardState
��  
(
��  !
gameId
��! '
,
��' (
gameBoardState
��) 7
)
��7 8
;
��8 9
_
�� 
=
�� 
AddPointsToPlayer
�� !
(
��! "
playerGameplayDto
��" 3
.
��3 4
Id
��4 6
,
��6 7
$num
��8 9
,
��9 :
gameId
��; A
)
��A B
;
��B C&
NotifyPlayersPiecePlaced
�� $
(
��$ %
gameId
��% +
,
��+ ,
playerGameplayDto
��- >
)
��> ?
;
��? @(
NotifyPlayersWithResources
�� &
(
��& '
gameId
��' -
)
��- .
;
��. /
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
true
��* .
,
��. /
LanguageUtilities
��0 A
.
��A B
MessageSuccess
��B P
(
��P Q
LanguageUtilities
��Q b
.
��b c*
LANGUAGE_ENGLISH_FORMAT_RESX
��c 
)�� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
bool
�� 
DeductResources
�� +
(
��+ ,

Dictionary
��, 6
<
��6 7
int
��7 :
,
��: ; 
PlayerResourcesDto
��< N
>
��N O 
playerResourcesMap
��P b
,
��b c
int
��d g
playerId
��h p
,
��p q

Dictionary
��r |
<
��| }
string��} �
,��� �
int��� �
>��� �
cost��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
��  
playerResourcesMap
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
playerId
��0 8
,
��8 9
out
��: =
var
��> A
	resources
��B K
)
��K L
)
��L M
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
resource
�� !
in
��" $
cost
��% )
)
��) *
{
�� 
var
�� 
currentQuantity
�� #
=
��$ %!
GetResourceQuantity
��& 9
(
��9 :
	resources
��: C
,
��C D
resource
��E M
.
��M N
Key
��N Q
)
��Q R
;
��R S
if
�� 
(
�� 
currentQuantity
�� #
<
��$ %
resource
��& .
.
��. /
Value
��/ 4
)
��4 5
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
resource
�� !
in
��" $
cost
��% )
)
��) *
{
�� 
DeductResource
�� 
(
�� 
	resources
�� (
,
��( )
resource
��* 2
.
��2 3
Key
��3 6
,
��6 7
resource
��8 @
.
��@ A
Value
��A F
)
��F G
;
��G H
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
DeductResources
�� +
(
��+ ,

Dictionary
��, 6
<
��6 7
int
��7 :
,
��: ; 
PlayerResourcesDto
��< N
>
��N O 
playerResourcesMap
��P b
,
��b c
int
��d g
playerId
��h p
,
��p q!
PlayerResourcesDto��r �
	resources��� �
)��� �
{
�� 	

Dictionary
�� 
<
�� 
string
�� 
,
�� 
int
�� "
>
��" #
cost
��$ (
=
��) *
new
��+ .

Dictionary
��/ 9
<
��9 :
string
��: @
,
��@ A
int
��B E
>
��E F
{
�� 
{
�� 
GameplayUtilities
�� #
.
��# $"
RESOURCE_LUNAR_STONE
��$ 8
,
��8 9
	resources
��: C
.
��C D

LunarStone
��D N
.
��N O
Quantity
��O W
}
��X Y
,
��Y Z
{
�� 
GameplayUtilities
�� #
.
��# $ 
RESOURCE_TRITONIUM
��$ 6
,
��6 7
	resources
��8 A
.
��A B
	Tritonium
��B K
.
��K L
Quantity
��L T
}
��U V
,
��V W
{
�� 
GameplayUtilities
�� #
.
��# $'
RESOURCE_ALPHA_NANOFIBERS
��$ =
,
��= >
	resources
��? H
.
��H I
AlphaNanofibers
��I X
.
��X Y
Quantity
��Y a
}
��b c
,
��c d
{
�� 
GameplayUtilities
�� #
.
��# $&
RESOURCE_EPSILON_BIOMASS
��$ <
,
��< =
	resources
��> G
.
��G H
EpsilonBiomass
��H V
.
��V W
Quantity
��W _
}
��` a
,
��a b
{
�� 
GameplayUtilities
�� #
.
��# $
RESOURCE_GRX_810
��$ 4
,
��4 5
	resources
��6 ?
.
��? @
Grx810
��@ F
.
��F G
Quantity
��G O
}
��P Q
}
�� 
;
�� 
return
�� 
DeductResources
�� "
(
��" # 
playerResourcesMap
��# 5
,
��5 6
playerId
��7 ?
,
��? @
cost
��A E
)
��E F
;
��F G
}
�� 	
private
�� 
static
�� 
void
�� 
DeductResource
�� *
(
��* + 
PlayerResourcesDto
��+ =
	resources
��> G
,
��G H
string
��I O
resourceName
��P \
,
��\ ]
int
��^ a
amount
��b h
)
��h i
{
�� 	
switch
�� 
(
�� 
resourceName
��  
)
��  !
{
�� 
case
�� 
GameplayUtilities
�� &
.
��& '"
RESOURCE_LUNAR_STONE
��' ;
:
��; <
	resources
�� 
.
�� 

LunarStone
�� (
.
��( )
Quantity
��) 1
-=
��2 4
amount
��5 ;
;
��; <
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& ' 
RESOURCE_TRITONIUM
��' 9
:
��9 :
	resources
�� 
.
�� 
	Tritonium
�� '
.
��' (
Quantity
��( 0
-=
��1 3
amount
��4 :
;
��: ;
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& ''
RESOURCE_ALPHA_NANOFIBERS
��' @
:
��@ A
	resources
�� 
.
�� 
AlphaNanofibers
�� -
.
��- .
Quantity
��. 6
-=
��7 9
amount
��: @
;
��@ A
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& '&
RESOURCE_EPSILON_BIOMASS
��' ?
:
��? @
	resources
�� 
.
�� 
EpsilonBiomass
�� ,
.
��, -
Quantity
��- 5
-=
��6 8
amount
��9 ?
;
��? @
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& '
RESOURCE_GRX_810
��' 7
:
��7 8
	resources
�� 
.
�� 
Grx810
�� $
.
��$ %
Quantity
��% -
-=
��. 0
amount
��1 7
;
��7 8
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
int
�� !
GetResourceQuantity
�� .
(
��. / 
PlayerResourcesDto
��/ A
	resources
��B K
,
��K L
string
��M S
resourceName
��T `
)
��` a
{
�� 	
switch
�� 
(
�� 
resourceName
��  
)
��  !
{
�� 
case
�� 
GameplayUtilities
�� &
.
��& '"
RESOURCE_LUNAR_STONE
��' ;
:
��; <
return
�� 
	resources
�� $
.
��$ %

LunarStone
��% /
.
��/ 0
Quantity
��0 8
;
��8 9
case
�� 
GameplayUtilities
�� &
.
��& ' 
RESOURCE_TRITONIUM
��' 9
:
��9 :
return
�� 
	resources
�� $
.
��$ %
	Tritonium
��% .
.
��. /
Quantity
��/ 7
;
��7 8
case
�� 
GameplayUtilities
�� &
.
��& ''
RESOURCE_ALPHA_NANOFIBERS
��' @
:
��@ A
return
�� 
	resources
�� $
.
��$ %
AlphaNanofibers
��% 4
.
��4 5
Quantity
��5 =
;
��= >
case
�� 
GameplayUtilities
�� &
.
��& '&
RESOURCE_EPSILON_BIOMASS
��' ?
:
��? @
return
�� 
	resources
�� $
.
��$ %
EpsilonBiomass
��% 3
.
��3 4
Quantity
��4 <
;
��< =
case
�� 
GameplayUtilities
�� &
.
��& '
RESOURCE_GRX_810
��' 7
:
��7 8
return
�� 
	resources
�� $
.
��$ %
Grx810
��% +
.
��+ ,
Quantity
��, 4
;
��4 5
default
�� 
:
�� 
return
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
AddPointsToPlayer
�� ,
(
��, -
int
��- 0
playerId
��1 9
,
��9 :
int
��; >
points
��? E
,
��E F
int
��G J
gameId
��K Q
)
��Q R
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
)
��Q R
{
�� 
ConnectedPlayer
�� 
player
��  &
=
��' (
playersInGame
��) 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
p
��F G
=>
��H J
p
�� 
.
�� 
profileClientDto
�� &
?
��& '
.
��' (
Id
��( *
==
��+ -
playerId
��. 6
||
��7 9
p
��: ;
.
��; <
guestAccountDto
��< K
?
��K L
.
��L M
Id
��M O
==
��P R
playerId
��S [
)
��[ \
;
��\ ]
if
�� 
(
�� 
player
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
player
�� 
.
�� 
Points
�� !
+=
��" $
points
��% +
;
��+ ,
if
�� 
(
�� 
player
�� 
.
�� 
Points
�� %
>=
��& (
GameplayUtilities
��) :
.
��: ;
WIN_POINTS_TO_WIN
��; L
)
��L M
{
�� 
Game
�� 

gameRecord
�� '
=
��( )
await
��* /
repositoryManager
��0 A
.
��A B
GameRepository
��B P
.
��P Q!
FindEntityByIdAsync
��Q d
(
��d e
gameId
��e k
)
��k l
;
��l m
await
�� 
ChangeStatusGame
�� .
(
��. /

gameRecord
��/ 9
,
��9 :
GameUtilities
��; H
.
��H I)
DOMAIN_GAME_STATUS_POSTGAME
��I d
)
��d e
;
��e f
int
�� 
idPlayer
�� $
=
��% &
player
��' -
.
��- .
profileClientDto
��. >
?
��> ?
.
��? @
Id
��@ B
??
��C E
player
��F L
.
��L M
guestAccountDto
��M \
?
��\ ]
.
��] ^
Id
��^ `
??
��a c 
CharacterUtilities
��d v
.
��v w
NON_VALID_ID��w �
;��� �
ProfileGame
�� #
profileGameRecord
��$ 5
=
��6 7
await
��8 =
repositoryManager
��> O
.
��O P#
ProfileGameRepository
��P e
.
��e f'
IsPlayerJoinedToGameAsync
��f 
(�� �
idPlayer��� �
,��� �
gameId��� �
)��� �
;��� �
if
�� 
(
�� 
profileGameRecord
�� ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
profileGameRecord
�� -
.
��- .
Points
��. 4
=
��5 6
GameplayUtilities
��7 H
.
��H I
WIN_POINTS_TO_WIN
��I Z
;
��Z [
profileGameRecord
�� -
.
��- .
IsPlayerInGame
��. <
=
��= >
false
��? D
;
��D E
}
�� 
CancelTurnTimer
�� '
(
��' (
gameId
��( .
)
��. /
;
��/ 0
await
�� 
Task
�� "
.
��" #
Delay
��# (
(
��( )
$num
��) -
)
��- .
;
��. /
await
�� 
repositoryManager
�� /
.
��/ 0
	SaveAsync
��0 9
(
��9 :
)
��: ;
;
��; <
await
�� 
EndGameWithWinner
�� /
(
��/ 0
player
��0 6
,
��6 7
gameId
��8 >
)
��> ?
;
��? @
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
EndGameWithWinner
�� ,
(
��, -
ConnectedPlayer
��- <
winnerPlayer
��= I
,
��I J
int
��K N
gameId
��O U
)
��U V
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
)
��l m
{
�� 
foreach
�� 
(
�� 
ConnectedPlayer
�� (
player
��) /
in
��0 2
playersInGame
��3 @
)
��@ A
{
�� 
try
�� 
{
�� 
if
�� 
(
�� "
IsPlayerCallbackOpen
�� 0
(
��0 1
player
��1 7
)
��7 8
)
��8 9
{
�� 
string
�� "

nameWinner
��# -
=
��. /
winnerPlayer
��0 <
?
��< =
.
��= >
profileClientDto
��> N
?
��N O
.
��O P
Name
��P T
??
��U W
winnerPlayer
��X d
?
��d e
.
��e f
guestAccountDto
��f u
?
��u v
.
��v w
Name
��w {
;
��{ |
player
�� "
.
��" #
gameCallback
��# /
.
��/ 0
NotifyWinner
��0 <
(
��< =

nameWinner
��= G
)
��G H
;
��H I
}
�� 
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� >
ex
��? A
)
��A B
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
await
�� 
Task
�� 
.
�� 
Delay
�� 
(
�� 
GameplayUtilities
�� .
.
��. /'
TIME_PREVIOUS_TO_END_GAME
��/ H
)
��H I
;
��I J
EndGame
�� 
(
�� 
gameId
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� &
DistributeResourcesAsync
�� 2
(
��2 3
int
��3 6
gameId
��7 =
,
��= >
int
��? B
	diceValue
��C L
)
��L M
{
�� 	
if
�� 
(
�� 
!
�� 
gameBoardStates
��  
.
��  !
TryGetValue
��! ,
(
��, -
gameId
��- 3
,
��3 4
out
��5 8
GameBoardStateDto
��9 J
gameBoardState
��K Y
)
��Y Z
)
��Z [
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� !
gamePlayerResources
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
gameId
��1 7
)
��7 8
)
��8 9
{
�� !
gamePlayerResources
�� #
[
��# $
gameId
��$ *
]
��* +
=
��, -
new
��. 1

Dictionary
��2 <
<
��< =
int
��= @
,
��@ A 
PlayerResourcesDto
��B T
>
��T U
(
��U V
)
��V W
;
��W X
}
�� 
var
�� &
activatedHexesWithOwners
�� (
=
��) *)
GetActivatedHexesWithOwners
��+ F
(
��F G
gameBoardState
��G U
,
��U V
	diceValue
��W `
)
��` a
;
��a b
if
�� 
(
�� 
!
�� &
activatedHexesWithOwners
�� )
.
��) *
Any
��* -
(
��- .
)
��. /
)
��/ 0
{
�� 
return
�� 
;
�� 
}
�� 4
&UpdatePlayerResourcesForActivatedHexes
�� 2
(
��2 3
gameId
��3 9
,
��9 :&
activatedHexesWithOwners
��; S
)
��S T
;
��T U(
NotifyPlayersWithResources
�� &
(
��& '
gameId
��' -
)
��- .
;
��. /
await
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
}
�� 	
private
�� 
void
�� (
DistributeInitialResources
�� /
(
��/ 0
int
��0 3
gameId
��4 :
)
��: ;
{
�� 	
if
�� 
(
�� 
!
�� $
connectedPlayersByGame
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
gameId
��4 :
,
��: ;
out
��< ?
var
��@ C
playersInGame
��D Q
)
��Q R
)
��R S
return
��T Z
;
��Z [
if
�� 
(
�� 
!
�� !
gamePlayerResources
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
gameId
��1 7
)
��7 8
)
��8 9
{
�� !
gamePlayerResources
�� #
[
��# $
gameId
��$ *
]
��* +
=
��, -
new
��. 1

Dictionary
��2 <
<
��< =
int
��= @
,
��@ A 
PlayerResourcesDto
��B T
>
��T U
(
��U V
)
��V W
;
��W X
}
�� 
var
��  
playerResourcesMap
�� "
=
��# $!
gamePlayerResources
��% 8
[
��8 9
gameId
��9 ?
]
��? @
;
��@ A
foreach
�� 
(
�� 
var
�� 
player
�� 
in
��  "
playersInGame
��# 0
)
��0 1
{
�� 
int
�� 
playerId
�� 
=
�� ,
GetPlayerIdFromConnectedPlayer
�� =
(
��= >
player
��> D
)
��D E
;
��E F
if
�� 
(
�� 
!
��  
playerResourcesMap
�� '
.
��' (
ContainsKey
��( 3
(
��3 4
playerId
��4 <
)
��< =
)
��= >
{
��  
playerResourcesMap
�� &
[
��& '
playerId
��' /
]
��/ 0
=
��1 2
new
��3 6 
PlayerResourcesDto
��7 I
{
�� 
PlayerId
��  
=
��! "
playerId
��# +
,
��+ ,

LunarStone
�� "
=
��# $
new
��% (
ResourceDto
��) 4
{
��5 6
ResourceName
��7 C
=
��D E
GameplayUtilities
��F W
.
��W X"
RESOURCE_LUNAR_STONE
��X l
,
��l m
Quantity
��n v
=
��w x 
GameplayUtilities��y �
.��� �3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS��� �
}��� �
,��� �
	Tritonium
�� !
=
��" #
new
��$ '
ResourceDto
��( 3
{
��4 5
ResourceName
��6 B
=
��C D
GameplayUtilities
��E V
.
��V W 
RESOURCE_TRITONIUM
��W i
,
��i j
Quantity
��k s
=
��t u 
GameplayUtilities��v �
.��� �3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS��� �
}��� �
,��� �
AlphaNanofibers
�� '
=
��( )
new
��* -
ResourceDto
��. 9
{
��: ;
ResourceName
��< H
=
��I J
GameplayUtilities
��K \
.
��\ ]'
RESOURCE_ALPHA_NANOFIBERS
��] v
,
��v w
Quantity��x �
=��� �!
GameplayUtilities��� �
.��� �3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS��� �
}��� �
,��� �
EpsilonBiomass
�� &
=
��' (
new
��) ,
ResourceDto
��- 8
{
��9 :
ResourceName
��; G
=
��H I
GameplayUtilities
��J [
.
��[ \&
RESOURCE_EPSILON_BIOMASS
��\ t
,
��t u
Quantity
��v ~
=�� �!
GameplayUtilities��� �
.��� �3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS��� �
}��� �
,��� �
Grx810
�� 
=
��  
new
��! $
ResourceDto
��% 0
{
��1 2
ResourceName
��3 ?
=
��@ A
GameplayUtilities
��B S
.
��S T
RESOURCE_GRX_810
��T d
,
��d e
Quantity
��f n
=
��o p 
GameplayUtilities��q �
.��� �3
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS��� �
}��� �
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 4
&UpdatePlayerResourcesForActivatedHexes
�� ;
(
��; <
int
��< ?
gameId
��@ F
,
��F G
List
��H L
<
��L M
(
��M N

HexTileDto
��N X
,
��X Y

Dictionary
��Z d
<
��d e
int
��e h
,
��h i
int
��j m
>
��m n
)
��n o
>
��o p'
activatedHexesWithOwners��q �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� !
gamePlayerResources
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
gameId
��1 7
)
��7 8
)
��8 9
{
�� !
gamePlayerResources
�� #
[
��# $
gameId
��$ *
]
��* +
=
��, -
new
��. 1

Dictionary
��2 <
<
��< =
int
��= @
,
��@ A 
PlayerResourcesDto
��B T
>
��T U
(
��U V
)
��V W
;
��W X
}
�� 

Dictionary
�� 
<
�� 
int
�� 
,
��  
PlayerResourcesDto
�� .
>
��. / 
playerResourcesMap
��0 B
=
��C D!
gamePlayerResources
��E X
[
��X Y
gameId
��Y _
]
��_ `
;
��` a
foreach
�� 
(
�� 
var
�� 
(
�� 
hex
�� 
,
�� 
playerResources
�� .
)
��. /
in
��0 2&
activatedHexesWithOwners
��3 K
)
��K L
{
�� 
foreach
�� 
(
�� 
var
�� 
playerResource
�� +
in
��, .
playerResources
��/ >
)
��> ?
{
�� 
int
�� 
playerId
��  
=
��! "
playerResource
��# 1
.
��1 2
Key
��2 5
;
��5 6
int
�� 
resourceAmount
�� &
=
��' (
playerResource
��) 7
.
��7 8
Value
��8 =
;
��= >
if
�� 
(
�� 
!
��  
playerResourcesMap
�� +
.
��+ ,
TryGetValue
��, 7
(
��7 8
playerId
��8 @
,
��@ A
out
��B E
var
��F I
	resources
��J S
)
��S T
)
��T U
{
�� 
continue
��  
;
��  !
}
�� 
switch
�� 
(
�� 
hex
�� 
.
��  
Resource
��  (
)
��( )
{
�� 
case
�� 
GameplayUtilities
�� .
.
��. /"
RESOURCE_LUNAR_STONE
��/ C
:
��C D
	resources
�� %
.
��% &

LunarStone
��& 0
.
��0 1
Quantity
��1 9
+=
��: <
resourceAmount
��= K
;
��K L
break
�� !
;
��! "
case
�� 
GameplayUtilities
�� .
.
��. / 
RESOURCE_TRITONIUM
��/ A
:
��A B
	resources
�� %
.
��% &
	Tritonium
��& /
.
��/ 0
Quantity
��0 8
+=
��9 ;
resourceAmount
��< J
;
��J K
break
�� !
;
��! "
case
�� 
GameplayUtilities
�� .
.
��. /'
RESOURCE_ALPHA_NANOFIBERS
��/ H
:
��H I
	resources
�� %
.
��% &
AlphaNanofibers
��& 5
.
��5 6
Quantity
��6 >
+=
��? A
resourceAmount
��B P
;
��P Q
break
�� !
;
��! "
case
�� 
GameplayUtilities
�� .
.
��. /&
RESOURCE_EPSILON_BIOMASS
��/ G
:
��G H
	resources
�� %
.
��% &
EpsilonBiomass
��& 4
.
��4 5
Quantity
��5 =
+=
��> @
resourceAmount
��A O
;
��O P
break
�� !
;
��! "
case
�� 
GameplayUtilities
�� .
.
��. /
RESOURCE_GRX_810
��/ ?
:
��? @
	resources
�� %
.
��% &
Grx810
��& ,
.
��, -
Quantity
��- 5
+=
��6 8
resourceAmount
��9 G
;
��G H
break
�� !
;
��! "
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� (
NotifyPlayersWithResources
�� /
(
��/ 0
int
��0 3
gameId
��4 :
)
��: ;
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
ConcurrentBag
��? L
<
��L M
ConnectedPlayer
��M \
>
��\ ]
playersInGame
��^ k
)
��k l
&&
��m o!
gamePlayerResources
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
gameId
��0 6
,
��6 7
out
��8 ;
var
��< ? 
playerResourcesMap
��@ R
)
��R S
)
��S T
{
�� 
foreach
�� 
(
�� 
ConnectedPlayer
�� (
player
��) /
in
��0 2
playersInGame
��3 @
)
��@ A
{
�� 
try
�� 
{
�� 
int
�� 
playerId
�� $
=
��% &,
GetPlayerIdFromConnectedPlayer
��' E
(
��E F
player
��F L
)
��L M
;
��M N 
PlayerResourcesDto
�� *
	resources
��+ 4
=
��5 6 
playerResourcesMap
��7 I
[
��I J
playerId
��J R
]
��R S
;
��S T
if
�� 
(
�� "
IsPlayerCallbackOpen
�� 0
(
��0 1
player
��1 7
)
��7 8
&&
��9 ;
	resources
��< E
!=
��F H
null
��I M
)
��M N
{
�� 
player
�� "
.
��" #
gameCallback
��# /
.
��/ 0(
NotifyResourcesDistributed
��0 J
(
��J K
	resources
��K T
)
��T U
;
��U V
}
�� 
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� >
ex
��? A
)
��A B
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -
StartTradeAsync
��. =
(
��= > 
PlayerResourcesDto
��> P
needResources
��Q ^
,
��^ _ 
PlayerResourcesDto
��` r
offerResources��s �
,��� �
int��� �
gameId��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� $
HasSufficientResources
�� '
(
��' (
gameId
��( .
,
��. /
offerResources
��0 >
.
��> ?
PlayerId
��? G
,
��G H
offerResources
��I W
)
��W X
)
��X Y
{
�� 
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G%
MessageUnableToSaveData
��G ^
(
��^ _
LanguageUtilities
��_ p
.
��p q+
LANGUAGE_ENGLISH_FORMAT_RESX��q �
)��� �
)��� �
;��� �
}
�� %
NotifyPlayersAboutTrade
�� #
(
��# $
gameId
��$ *
,
��* +
needResources
��, 9
,
��9 :
offerResources
��; I
)
��I J
;
��J K
await
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
true
��* .
,
��. /
LanguageUtilities
��0 A
.
��A B
MessageSuccess
��B P
(
��P Q
LanguageUtilities
��Q b
.
��b c*
LANGUAGE_ENGLISH_FORMAT_RESX
��c 
)�� �
)��� �
;��� �
}
�� 	
private
�� 
bool
�� $
HasSufficientResources
�� +
(
��+ ,
int
��, /
gameId
��0 6
,
��6 7
int
��8 ;
playerId
��< D
,
��D E 
PlayerResourcesDto
��F X
offerResources
��Y g
)
��g h
{
�� 	
if
�� 
(
�� 
!
�� !
gamePlayerResources
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
gameId
��1 7
)
��7 8
||
��9 ;
!
��< =!
gamePlayerResources
��= P
[
��P Q
gameId
��Q W
]
��W X
.
��X Y
ContainsKey
��Y d
(
��d e
playerId
��e m
)
��m n
)
��n o
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 
playerResources
�� 
=
��  !!
gamePlayerResources
��" 5
[
��5 6
gameId
��6 <
]
��< =
[
��= >
playerId
��> F
]
��F G
;
��G H
return
�� '
CheckResourceAvailability
�� ,
(
��, -
playerResources
��- <
,
��< =
offerResources
��> L
)
��L M
;
��M N
}
�� 	
private
�� 
static
�� 
bool
�� '
CheckResourceAvailability
�� 5
(
��5 6 
PlayerResourcesDto
��6 H
playerResources
��I X
,
��X Y 
PlayerResourcesDto
��Z l
offerResources
��m {
)
��{ |
{
�� 	
if
�� 
(
�� 
offerResources
�� 
.
�� 

LunarStone
�� )
.
��) *
Quantity
��* 2
>
��3 4
playerResources
��5 D
.
��D E

LunarStone
��E O
.
��O P
Quantity
��P X
||
��Y [
offerResources
��\ j
.
��j k
	Tritonium
��k t
.
��t u
Quantity
��u }
>
��~ 
playerResources��� �
.��� �
	Tritonium��� �
.��� �
Quantity��� �
||
�� 
offerResources
�� !
.
��! "
AlphaNanofibers
��" 1
.
��1 2
Quantity
��2 :
>
��; <
playerResources
��= L
.
��L M
AlphaNanofibers
��M \
.
��\ ]
Quantity
��] e
||
��f h
offerResources
��i w
.
��w x
EpsilonBiomass��x �
.��� �
Quantity��� �
>��� �
playerResources��� �
.��� �
EpsilonBiomass��� �
.��� �
Quantity��� �
||
�� 
offerResources
�� !
.
��! "
Grx810
��" (
.
��( )
Quantity
��) 1
>
��2 3
playerResources
��4 C
.
��C D
Grx810
��D J
.
��J K
Quantity
��K S
)
��S T
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� %
NotifyPlayersAboutTrade
�� ,
(
��, -
int
��- 0
gameId
��1 7
,
��7 8 
PlayerResourcesDto
��9 K
needResources
��L Y
,
��Y Z 
PlayerResourcesDto
��[ m
offerResources
��n |
)
��| }
{
�� 	
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
)
��Q R
{
�� 
foreach
�� 
(
�� 
ConnectedPlayer
�� (
player
��) /
in
��0 2
playersInGame
��3 @
)
��@ A
{
�� 
try
�� 
{
�� 
int
�� 
playerId
�� $
=
��% &,
GetPlayerIdFromConnectedPlayer
��' E
(
��E F
player
��F L
)
��L M
;
��M N
if
�� 
(
�� "
IsPlayerCallbackOpen
�� 0
(
��0 1
player
��1 7
)
��7 8
&&
��9 ;
playerId
��< D
!=
��E G
needResources
��H U
.
��U V
PlayerId
��V ^
)
��^ _
{
�� 
player
�� "
.
��" #
gameCallback
��# /
.
��/ 0 
NotifyTradeRequest
��0 B
(
��B C
needResources
��C P
,
��P Q
offerResources
��R `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� >
ex
��? A
)
��A B
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -
AcceptTradeAsync
��. >
(
��> ? 
PlayerResourcesDto
��? Q
sendResources
��R _
,
��_ ` 
PlayerResourcesDto
��a s
receiveResources��t �
,��� �
int��� �
gameId��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� $
HasSufficientResources
�� '
(
��' (
gameId
��( .
,
��. /
receiveResources
��0 @
.
��@ A
PlayerId
��A I
,
��I J
receiveResources
��K [
)
��[ \
||
��] _
!
��` a$
HasSufficientResources
��a w
(
��w x
gameId
��x ~
,
��~ 
sendResources��� �
.��� �
PlayerId��� �
,��� �
sendResources��� �
)��� �
||
�� 
!
�� 
DeductResources
�� #
(
��# $!
gamePlayerResources
��$ 7
[
��7 8
gameId
��8 >
]
��> ?
,
��? @
sendResources
��A N
.
��N O
PlayerId
��O W
,
��W X
sendResources
��Y f
)
��f g
||
��h j
!
��k l
DeductResources
��l {
(
��{ |"
gamePlayerResources��| �
[��� �
gameId��� �
]��� �
,��� � 
receiveResources��� �
.��� �
PlayerId��� �
,��� � 
receiveResources��� �
)��� �
||
�� 
!
�� 
AddResources
��  
(
��  !!
gamePlayerResources
��! 4
[
��4 5
gameId
��5 ;
]
��; <
,
��< =
receiveResources
��> N
.
��N O
PlayerId
��O W
,
��W X
sendResources
��Y f
)
��f g
||
�� 
!
�� 
AddResources
��  
(
��  !!
gamePlayerResources
��! 4
[
��4 5
gameId
��5 ;
]
��; <
,
��< =
sendResources
��> K
.
��K L
PlayerId
��L T
,
��T U
receiveResources
��V f
)
��f g
)
��g h
{
�� 
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
false
��. 3
,
��3 4
LanguageUtilities
��5 F
.
��F G%
MessageUnableToSaveData
��G ^
(
��^ _
LanguageUtilities
��_ p
.
��p q+
LANGUAGE_ENGLISH_FORMAT_RESX��q �
)��� �
)��� �
;��� �
}
�� /
!NotifyPlayersAboutTradeCompletion
�� -
(
��- .
gameId
��. 4
,
��4 5
sendResources
��6 C
,
��C D
receiveResources
��E U
)
��U V
;
��V W
await
�� 
Task
�� 
.
�� 
CompletedTask
�� $
;
��$ %
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
true
��* .
,
��. /
LanguageUtilities
��0 A
.
��A B
MessageSuccess
��B P
(
��P Q
LanguageUtilities
��Q b
.
��b c*
LANGUAGE_ENGLISH_FORMAT_RESX
��c 
)�� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
bool
�� 
AddResources
�� (
(
��( )

Dictionary
��) 3
<
��3 4
int
��4 7
,
��7 8 
PlayerResourcesDto
��9 K
>
��K L 
playerResourcesMap
��M _
,
��_ `
int
��a d
playerId
��e m
,
��m n!
PlayerResourcesDto��o �
	resources��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
��  
playerResourcesMap
�� #
.
��# $
ContainsKey
��$ /
(
��/ 0
playerId
��0 8
)
��8 9
)
��9 :
{
�� 
return
�� 
false
�� 
;
�� 
}
��  
PlayerResourcesDto
�� 
playerResources
�� .
=
��/ 0 
playerResourcesMap
��1 C
[
��C D
playerId
��D L
]
��L M
;
��M N
playerResources
�� 
.
�� 

LunarStone
�� &
.
��& '
Quantity
��' /
+=
��0 2
	resources
��3 <
.
��< =

LunarStone
��= G
.
��G H
Quantity
��H P
;
��P Q
playerResources
�� 
.
�� 
	Tritonium
�� %
.
��% &
Quantity
��& .
+=
��/ 1
	resources
��2 ;
.
��; <
	Tritonium
��< E
.
��E F
Quantity
��F N
;
��N O
playerResources
�� 
.
�� 
AlphaNanofibers
�� +
.
��+ ,
Quantity
��, 4
+=
��5 7
	resources
��8 A
.
��A B
AlphaNanofibers
��B Q
.
��Q R
Quantity
��R Z
;
��Z [
playerResources
�� 
.
�� 
EpsilonBiomass
�� *
.
��* +
Quantity
��+ 3
+=
��4 6
	resources
��7 @
.
��@ A
EpsilonBiomass
��A O
.
��O P
Quantity
��P X
;
��X Y
playerResources
�� 
.
�� 
Grx810
�� "
.
��" #
Quantity
��# +
+=
��, .
	resources
��/ 8
.
��8 9
Grx810
��9 ?
.
��? @
Quantity
��@ H
;
��H I
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� /
!NotifyPlayersAboutTradeCompletion
�� 6
(
��6 7
int
��7 :
gameId
��; A
,
��A B 
PlayerResourcesDto
��C U
sendResources
��V c
,
��c d 
PlayerResourcesDto
��e w
receiveResources��x �
)��� �
{
�� 	
var
�� 
involvedPlayers
�� 
=
��  !
new
��" %
List
��& *
<
��* +
int
��+ .
>
��. /
{
��0 1
sendResources
��2 ?
.
��? @
PlayerId
��@ H
,
��H I
receiveResources
��J Z
.
��Z [
PlayerId
��[ c
}
��d e
;
��e f
if
�� 
(
�� $
connectedPlayersByGame
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
gameId
��3 9
,
��9 :
out
��; >
var
��? B
playersInGame
��C P
)
��P Q
)
��Q R
{
�� (
NotifyPlayersWithResources
�� *
(
��* +
gameId
��+ 1
)
��1 2
;
��2 3
foreach
�� 
(
�� 
ConnectedPlayer
�� (
player
��) /
in
��0 2
playersInGame
��3 @
)
��@ A
{
�� 
try
�� 
{
�� 
int
�� 
playerId
�� $
=
��% &,
GetPlayerIdFromConnectedPlayer
��' E
(
��E F
player
��F L
)
��L M
;
��M N
if
�� 
(
�� 
involvedPlayers
�� +
.
��+ ,
Contains
��, 4
(
��4 5
playerId
��5 =
)
��= >
&&
��? A"
IsPlayerCallbackOpen
��B V
(
��V W
player
��W ]
)
��] ^
)
��^ _
{
�� 
player
�� "
.
��" #
gameCallback
��# /
.
��/ 0#
NotifyTradeCompletion
��0 E
(
��E F
)
��F G
;
��G H
}
�� 
}
�� 
catch
�� 
(
�� 1
#CommunicationObjectAbortedException
�� >
ex
��? A
)
��A B
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� $
CommunicationException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
Log
�� 
.
�� 
Error
�� !
(
��! "
ex
��" $
,
��$ %
ex
��& (
.
��( )
Source
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
int
�� ,
GetPlayerIdFromConnectedPlayer
�� 9
(
��9 :
ConnectedPlayer
��: I
player
��J P
)
��P Q
{
�� 	
return
�� 
player
�� 
.
�� 
profileClientDto
�� *
?
��* +
.
��+ ,
Id
��, .
??
��/ 1
player
��2 8
.
��8 9
guestAccountDto
��9 H
?
��H I
.
��I J
Id
��J L
??
��M O(
AccountValidationUtilities
��P j
.
��j k 
ACCOUNT_ID_DEFAULT
��k }
;
��} ~
}
�� 	
private
�� 
static
�� 
bool
�� "
IsPlayerCallbackOpen
�� 0
(
��0 1
ConnectedPlayer
��1 @
player
��A G
)
��G H
{
�� 	
return
�� 
player
�� 
.
�� 
gameCallback
�� &
!=
��' )
null
��* .
&&
��/ 1
(
��2 3
(
��3 4"
ICommunicationObject
��4 H
)
��H I
player
��I O
.
��O P
gameCallback
��P \
)
��\ ]
.
��] ^
State
��^ c
==
��d f 
CommunicationState
��g y
.
��y z
Opened��z �
;��� �
}
�� 	
private
�� 
void
�� 
AssignResources
�� $
(
��$ %

Dictionary
��% /
<
��/ 0
int
��0 3
,
��3 4

Dictionary
��5 ?
<
��? @
int
��@ C
,
��C D 
PlayerResourcesDto
��E W
>
��W X
>
��X Y!
gamePlayerResources
��Z m
,
��m n
int
��o r
gameId
��s y
,
��y z
int
��{ ~
playerId�� �
,��� �
string��� �
resourceName��� �
,��� �
int��� �
amount��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� !
gamePlayerResources
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
gameId
��1 7
)
��7 8
)
��8 9
{
�� !
gamePlayerResources
�� #
[
��# $
gameId
��$ *
]
��* +
=
��, -
new
��. 1

Dictionary
��2 <
<
��< =
int
��= @
,
��@ A 
PlayerResourcesDto
��B T
>
��T U
(
��U V
)
��V W
;
��W X
}
�� 
var
��  
playerResourcesMap
�� "
=
��# $!
gamePlayerResources
��% 8
[
��8 9
gameId
��9 ?
]
��? @
;
��@ A
if
�� 
(
�� 
!
��  
playerResourcesMap
�� #
.
��# $
ContainsKey
��$ /
(
��/ 0
playerId
��0 8
)
��8 9
)
��9 :
{
��  
playerResourcesMap
�� "
[
��" #
playerId
��# +
]
��+ ,
=
��- .
new
��/ 2 
PlayerResourcesDto
��3 E
{
��F G
PlayerId
��H P
=
��Q R
playerId
��S [
}
��\ ]
;
��] ^
}
�� 
var
�� 
	resources
�� 
=
��  
playerResourcesMap
�� .
[
��. /
playerId
��/ 7
]
��7 8
;
��8 9
switch
�� 
(
�� 
resourceName
��  
)
��  !
{
�� 
case
�� 
GameplayUtilities
�� &
.
��& '"
RESOURCE_LUNAR_STONE
��' ;
:
��; <
	resources
�� 
.
�� 

LunarStone
�� (
.
��( )
Quantity
��) 1
+=
��2 4
amount
��5 ;
;
��; <
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& ' 
RESOURCE_TRITONIUM
��' 9
:
��9 :
	resources
�� 
.
�� 
	Tritonium
�� '
.
��' (
Quantity
��( 0
+=
��1 3
amount
��4 :
;
��: ;
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& ''
RESOURCE_ALPHA_NANOFIBERS
��' @
:
��@ A
	resources
�� 
.
�� 
AlphaNanofibers
�� -
.
��- .
Quantity
��. 6
+=
��7 9
amount
��: @
;
��@ A
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& '&
RESOURCE_EPSILON_BIOMASS
��' ?
:
��? @
	resources
�� 
.
�� 
EpsilonBiomass
�� ,
.
��, -
Quantity
��- 5
+=
��6 8
amount
��9 ?
;
��? @
break
�� 
;
�� 
case
�� 
GameplayUtilities
�� &
.
��& '
RESOURCE_GRX_810
��' 7
:
��7 8
	resources
�� 
.
�� 
Grx810
�� $
.
��$ %
Quantity
��% -
+=
��. 0
amount
��1 7
;
��7 8
break
�� 
;
�� 
default
�� 
:
�� 
break
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
(
�� 

HexTileDto
�� 
,
��  

Dictionary
��! +
<
��+ ,
int
��, /
,
��/ 0
int
��1 4
>
��4 5
)
��5 6
>
��6 7)
GetActivatedHexesWithOwners
��8 S
(
��S T
GameBoardStateDto
��T e
gameBoardState
��f t
,
��t u
int
��v y
	diceValue��z �
)��� �
{
�� 	
List
�� 
<
�� 

HexTileDto
�� 
>
�� 
activatedHexes
�� +
=
��, -
GetActivatedHexes
��. ?
(
��? @
gameBoardState
��@ N
,
��N O
	diceValue
��P Y
)
��Y Z
;
��Z [
var
�� 
hexesWithOwners
�� 
=
��  !
new
��" %
List
��& *
<
��* +
(
��+ ,

HexTileDto
��, 6
,
��6 7

Dictionary
��8 B
<
��B C
int
��C F
,
��F G
int
��H K
>
��K L
)
��L M
>
��M N
(
��N O
)
��O P
;
��P Q
var
�� 
hexMap
�� 
=
�� 
gameBoardState
�� '
.
��' (
HexTiles
��( 0
.
��0 1
ToDictionary
��1 =
(
��= >
h
��> ?
=>
��@ B
h
��C D
.
��D E
Id
��E G
)
��G H
;
��H I
var
�� 
vertexConnections
�� !
=
��" #
GameplayUtilities
��$ 5
.
��5 6
GET_MAP_HEXTILES
��6 F
(
��F G
)
��G H
;
��H I
foreach
�� 
(
�� 
var
�� 
hex
�� 
in
�� 
activatedHexes
��  .
)
��. /
{
�� 
var
�� 
playerResources
�� #
=
��$ %

ProcessHex
��& 0
(
��0 1
hex
��1 4
,
��4 5
gameBoardState
��6 D
,
��D E
	diceValue
��F O
,
��O P
hexMap
��Q W
,
��W X
vertexConnections
��Y j
)
��j k
;
��k l
hexesWithOwners
�� 
.
��  
Add
��  #
(
��# $
(
��$ %
hex
��% (
,
��( )
playerResources
��* 9
)
��9 :
)
��: ;
;
��; <
}
�� (
NotifyPlayersWithResources
�� &
(
��& '
gameBoardState
��' 5
.
��5 6
GameId
��6 <
)
��< =
;
��= >
return
�� 
hexesWithOwners
�� "
;
��" #
}
�� 	
private
�� 
static
�� 
List
�� 
<
�� 

HexTileDto
�� &
>
��& '
GetActivatedHexes
��( 9
(
��9 :
GameBoardStateDto
��: K
gameBoardState
��L Z
,
��Z [
int
��\ _
	diceValue
��` i
)
��i j
{
�� 	
return
�� 
gameBoardState
�� !
.
��! "
HexTiles
��" *
.
�� 
Where
�� 
(
�� 
hex
�� 
=>
�� 
hex
�� !
.
��! "
	DiceValue
��" +
==
��, .
	diceValue
��/ 8
)
��8 9
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 

Dictionary
�� 
<
�� 
int
�� 
,
�� 
int
��  #
>
��# $

ProcessHex
��% /
(
��/ 0

HexTileDto
��0 :
hex
��; >
,
��> ?
GameBoardStateDto
��@ Q
gameBoardState
��R `
,
��` a
int
��b e
	diceValue
��f o
,
��o p

Dictionary
�� 
<
�� 
int
�� 
,
�� 

HexTileDto
�� &
>
��& '
hexMap
��( .
,
��. /

Dictionary
��0 :
<
��: ;
int
��; >
,
��> ?
List
��@ D
<
��D E
int
��E H
>
��H I
>
��I J
vertexConnections
��K \
)
��\ ]
{
�� 	
var
�� 
playerResources
�� 
=
��  !
new
��" %

Dictionary
��& 0
<
��0 1
int
��1 4
,
��4 5
int
��6 9
>
��9 :
(
��: ;
)
��; <
;
��< =
foreach
�� 
(
�� 
var
�� 
vertex
�� 
in
��  "
hex
��# &
.
��& '
Vertices
��' /
)
��/ 0
{
�� 
if
�� 
(
�� 
vertex
�� 
.
�� 

IsOccupied
�� %
&&
��& (
vertex
��) /
.
��/ 0
OwnerPlayerId
��0 =
.
��= >
HasValue
��> F
)
��F G
{
�� 
int
�� 
playerId
��  
=
��! "
vertex
��# )
.
��) *
OwnerPlayerId
��* 7
.
��7 8
Value
��8 =
;
��= >
int
�� 

multiplier
�� "
=
��# $
vertex
��% +
.
��+ ,
IsCity
��, 2
?
��3 4
$num
��5 6
:
��7 8
$num
��9 :
;
��: ;
AssignResources
�� #
(
��# $!
gamePlayerResources
��$ 7
,
��7 8
gameBoardState
��9 G
.
��G H
GameId
��H N
,
��N O
playerId
��P X
,
��X Y
hex
��Z ]
.
��] ^
Resource
��^ f
,
��f g

multiplier
��h r
)
��r s
;
��s t#
ProcessConnectedHexes
�� )
(
��) *
vertex
��* 0
,
��0 1
hexMap
��2 8
,
��8 9
vertexConnections
��: K
,
��K L
	diceValue
��M V
,
��V W
gameBoardState
��X f
)
��f g
;
��g h
}
�� 
}
�� 
return
�� 
playerResources
�� "
;
��" #
}
�� 	
private
�� 
void
�� #
ProcessConnectedHexes
�� *
(
��* +
	VertexDto
��+ 4
vertex
��5 ;
,
��; <

Dictionary
��= G
<
��G H
int
��H K
,
��K L

HexTileDto
��M W
>
��W X
hexMap
��Y _
,
��_ `

Dictionary
�� 
<
�� 
int
�� 
,
�� 
List
��  
<
��  !
int
��! $
>
��$ %
>
��% &
vertexConnections
��' 8
,
��8 9
int
��: =
	diceValue
��> G
,
��G H
GameBoardStateDto
��I Z
gameBoardState
��[ i
)
��i j
{
�� 	
if
�� 
(
�� 
!
�� 
vertexConnections
�� "
.
��" #
ContainsKey
��# .
(
��. /
vertex
��/ 5
.
��5 6
Id
��6 8
)
��8 9
)
��9 :
return
��; A
;
��A B
foreach
�� 
(
�� 
var
�� 
connectedHexId
�� '
in
��( *
vertexConnections
��+ <
[
��< =
vertex
��= C
.
��C D
Id
��D F
]
��F G
)
��G H
{
�� 
if
�� 
(
�� 
hexMap
�� 
.
�� 
TryGetValue
�� &
(
��& '
connectedHexId
��' 5
,
��5 6
out
��7 :
var
��; >
connectedHex
��? K
)
��K L
&&
��M O
connectedHex
��P \
.
��\ ]
	DiceValue
��] f
==
��g i
	diceValue
��j s
)
��s t
{
�� 
var
�� 
connectedVertex
�� '
=
��( )
connectedHex
��* 6
.
��6 7
Vertices
��7 ?
.
��? @
FirstOrDefault
��@ N
(
��N O
v
��O P
=>
��Q S
v
��T U
.
��U V
Id
��V X
==
��Y [
vertex
��\ b
.
��b c
Id
��c e
)
��e f
;
��f g
if
�� 
(
�� 
connectedVertex
�� '
!=
��( *
null
��+ /
&&
��0 2
connectedVertex
��3 B
.
��B C
OwnerPlayerId
��C P
.
��P Q
HasValue
��Q Y
)
��Y Z
{
�� 
int
�� 
	playerId2
�� %
=
��& '
connectedVertex
��( 7
.
��7 8
OwnerPlayerId
��8 E
.
��E F
Value
��F K
;
��K L
int
�� 
multiplier2
�� '
=
��( )
connectedVertex
��* 9
.
��9 :
IsCity
��: @
?
��A B
$num
��C D
:
��E F
$num
��G H
;
��H I
AssignResources
�� '
(
��' (!
gamePlayerResources
��( ;
,
��; <
gameBoardState
��= K
.
��K L
GameId
��L R
,
��R S
	playerId2
��T ]
,
��] ^
connectedHex
��_ k
.
��k l
Resource
��l t
,
��t u
multiplier2��v �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
} �}
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
ConcurrentBag	~ �
<
� �

ChatPlayer
� �
>
� �
>
� �
(
� �
)
� �
;
� �
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
;	// �%
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
string	dd �
,
dd� �
string
dd� �
,
dd� �
Task
dd� �
>
dd� �
sendMessageAction
dd� �
)
dd� �
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
�� '
.
��' (
Add
��( +
(
��+ ,
player
��, 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -!
disconnectedPlayers
�� '
.
��' (
Add
��( +
(
��+ ,
player
��, 2
)
��2 3
;
��3 4
}
�� 
}
�� 
foreach
�� 
(
�� 

ChatPlayer
�� 
player
��  &
in
��' )!
disconnectedPlayers
��* =
)
��= >
{
�� &
RemoveDisconnectedPlayer
�� (
(
��( )
gameClientDto
��) 6
.
��6 7
Id
��7 9
.
��9 :
Value
��: ?
,
��? @
player
��A G
)
��G H
;
��H I
}
�� 
}
�� 	
private
�� 
void
�� &
RemoveDisconnectedPlayer
�� -
(
��- .
int
��. 1
gameId
��2 8
,
��8 9

ChatPlayer
��: D
player
��E K
)
��K L
{
�� 	
if
�� 
(
�� 
gameChatsOnline
�� 
.
��  
TryGetValue
��  +
(
��+ ,
gameId
��, 2
,
��2 3
out
��4 7
ConcurrentBag
��8 E
<
��E F

ChatPlayer
��F P
>
��P Q
players
��R Y
)
��Y Z
)
��Z [
{
�� 
var
�� 
updatedPlayers
�� "
=
��# $
players
��% ,
.
��, -
Where
��- 2
(
��2 3
p
��3 4
=>
��5 7
p
��8 9
.
��9 :

PlayerName
��: D
!=
��E G
player
��H N
.
��N O

PlayerName
��O Y
)
��Y Z
.
��Z [
ToList
��[ a
(
��a b
)
��b c
;
��c d
if
�� 
(
�� 
updatedPlayers
�� "
.
��" #
Any
��# &
(
��& '
)
��' (
)
��( )
{
�� 
gameChatsOnline
�� #
[
��# $
gameId
��$ *
]
��* +
=
��, -
new
��. 1
ConcurrentBag
��2 ?
<
��? @

ChatPlayer
��@ J
>
��J K
(
��K L
updatedPlayers
��L Z
)
��Z [
;
��[ \
}
�� 
else
�� 
{
�� 
gameChatsOnline
�� #
.
��# $
	TryRemove
��$ -
(
��- .
gameId
��. 4
,
��4 5
out
��6 9
_
��: ;
)
��; <
;
��< =
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
accountClientDto	{ �
)
� �
;
� �
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
} �9
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
SMTP_CLIENT_ENVIROMENT_NAME	''n �
)
''� �
)
''� �
;
''� �
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
CharacterUtilities	**p �
.
**� �
STRING_CHAR_SPACE
**� �
+
**� �
accountEntity
**� �
.
**� �
Token
**� �
;
**� �
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
SMTP_CLIENT_ENVIROMENT_NAME	;;n �
)
;;� �
)
;;� �
;
;;� �
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
STRING_CHAR_SPACE	>>{ �
+
>>� �
codeGame
>>� �
;
>>� �
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
}[[ ��
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
accountClientDto	&&v �
.
&&� �
PhoneNumber
&&� �
)
&&� �
)
&&� �
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
accountClientDto	((p �
.
((� �
PreferredLanguage
((� �
)
((� �
,
((� �#
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
accountClientDto	--p �
.
--� �
PreferredLanguage
--� �
)
--� �
,
--� �#
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
PreferredLanguage	33w �
)
33� �
,
33� �#
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
PreferredLanguage	99y �
)
99� �
,
99� �%
EnumCreateAccountStatus
99� �
.
99� �
ErrorSaving
99� �
)
99� �
;
99� �
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
TT� �
)
TT� �
;
TT� �
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
�� 
.
�� 
PhoneNumber
�� )
=
��* +
accountClientDto
��, <
.
��< =
PhoneNumber
��= H
;
��H I
}
�� 
accountRecord
�� 
.
�� 
Salt
�� 
=
��  
PasswordUtilities
��! 2
.
��2 3
GetSaltPassword
��3 B
(
��B C
)
��C D
;
��D E
accountRecord
�� 
.
�� 
PasswordHash
�� &
=
��' (
PasswordUtilities
��) :
.
��: ;
GetHashPassword
��; J
(
��J K
accountClientDto
��K [
.
��[ \
Password
��\ d
,
��d e
accountRecord
��f s
.
��s t
Salt
��t x
)
��x y
;
��y z
accountRecord
�� 
.
�� 
	CreatedAt
�� #
=
��$ %
DateTime
��& .
.
��. /
UtcNow
��/ 5
;
��5 6
accountRecord
�� 
.
�� 
	UpdatedAt
�� #
=
��$ %
DateTime
��& .
.
��. /
UtcNow
��/ 5
;
��5 6
accountRecord
�� 
.
�� 
PreferredLanguage
�� +
=
��, -
accountClientDto
��. >
.
��> ?
PreferredLanguage
��? P
;
��P Q
accountRecord
�� 
.
�� 
Status
��  
=
��! "
false
��# (
;
��( )
accountRecord
�� 
.
�� 
Token
�� 
=
��  !&
GenerateVerificationCode
��" :
(
��: ;
)
��; <
;
��< =
accountRecord
�� 
.
�� !
RecoveryTokenExpiry
�� -
=
��. /
DateTime
��0 8
.
��8 9
UtcNow
��9 ?
;
��? @
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
return
�� 
accountRecord
��  
;
��  !
}
�� 	
public
�� 
async
�� 
Task
�� /
!CreateRelationAccountProfileAsync
�� ;
(
��; <
Account
��< C
accountEntity
��D Q
,
��Q R
Profile
��S Z
profileEntity
��[ h
)
��h i
{
�� 	
accountEntity
�� 
.
�� 
RelationProfile
�� )
=
��* +
profileEntity
��, 9
;
��9 :
profileEntity
�� 
.
�� 
RelationAccount
�� )
=
��* +
accountEntity
��, 9
;
��9 :
repositoryManager
�� 
.
�� 
AccountRepository
�� /
.
��/ 0
	AddEntity
��0 9
(
��9 :
accountEntity
��: G
)
��G H
;
��H I
repositoryManager
�� 
.
�� 
ProfileRepository
�� /
.
��/ 0
	AddEntity
��0 9
(
��9 :
profileEntity
��: G
)
��G H
;
��H I
await
�� 
repositoryManager
�� #
.
��# $
	SaveAsync
��$ -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
async
�� 
Task
�� '
SendEmailVerificationCode
�� 3
(
��3 4
Account
��4 ;
accountRecord
��< I
)
��I J
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
accountRecord
��% 2
.
��2 3
Email
��3 8
)
��8 9
)
��9 :
{
�� 
await
�� 
serviceManager
�� $
.
��$ %
EmailService
��% 1
.
��1 2(
SendConfirmationEmailAsync
��2 L
(
��L M
accountRecord
��M Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� %
SendSmsVerificationCode
�� 1
(
��1 2
Account
��2 9
accountRecord
��: G
)
��G H
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
accountRecord
��& 3
.
��3 4
PhoneNumber
��4 ?
)
��? @
)
��@ A
{
�� 
await
�� 
serviceManager
�� $
.
��$ %

SmsService
��% /
.
��/ 0
SendSmsAsync
��0 <
(
��< =
accountRecord
��= J
.
��J K
PhoneNumber
��K V
,
��V W
accountRecord
��X e
.
��e f
Token
��f k
)
��k l
;
��l m
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� *
SendTelegramVerificationCode
�� 6
(
��6 7
Account
��7 >
accountRecord
��? L
)
��L M
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
accountRecord
��% 2
.
��2 3
PhoneNumber
��3 >
)
��> ?
)
��? @
{
�� 
await
�� 
serviceManager
�� $
.
��$ %
TelegramService
��% 4
.
��4 5
SendMessageAsync
��5 E
(
��E F
accountRecord
��F S
.
��S T
PhoneNumber
��T _
,
��_ `
LanguageUtilities
�� !
.
��! "!
MessageTokenSubject
��" 5
(
��5 6
accountRecord
��6 C
.
��C D
PreferredLanguage
��D U
)
��U V
+
��W X 
CharacterUtilities
��Y k
.
��k l
STRING_CHAR_SPACE
��l }
+
��~ 
accountRecord��� �
.��� �
Token��� �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� '
OperationResultProfileDto
�� 3
>
��3 4"
LogInInDataBaseAsync
��5 I
(
��I J

AccountDto
��J T
accountClientDto
��U e
)
��e f
{
�� 	
if
�� 
(
�� 
(
�� !
IsValidAccountEmail
�� $
(
��$ %
accountClientDto
��% 5
.
��5 6
Email
��6 ;
)
��; <
||
��= ?'
IsValidAccountPhoneNumber
��@ Y
(
��Y Z
accountClientDto
��Z j
.
��j k
PhoneNumber
��k v
)
��v w
)
��w x
&&
�� $
IsValidAccountPassword
�� )
(
��) *
accountClientDto
��* :
.
��: ;
Password
��; C
)
��C D
)
��D E
{
�� 
Account
�� 
accountRecord
�� %
=
��& '
await
��( -
repositoryManager
��. ?
.
��? @
AccountRepository
��@ Q
.
��Q R
FindAccountAsync
��R b
(
��b c
accountClientDto
��c s
.
��s t
PhoneNumber
��t 
,�� � 
accountClientDto��� �
.��� �
Email��� �
,��� �
accountClientDto
�� $
.
��$ %
Password
��% -
)
��- .
;
��. /
if
�� 
(
�� 
accountRecord
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
Profile
�� 
profileRecord
�� )
=
��* +
await
��, 1
serviceManager
��2 @
.
��@ A
ProfileService
��A O
.
��O P(
GetProfileWithNewSessionId
��P j
(
��j k
accountRecord
��k x
.
��x y
Id
��y {
)
��{ |
;
��| }
if
�� 
(
�� 
accountRecord
�� %
.
��% &
Status
��& ,
)
��, -
{
�� 

ProfileDto
�� "
profileServerDto
��# 3
=
��4 5
serviceManager
��6 D
.
��D E
ProfileService
��E S
.
��S T
CreateProfileDto
��T d
(
��d e
profileRecord
��e r
)
��r s
;
��s t
profileServerDto
�� (
.
��( )
IsRegistered
��) 5
=
��6 7
true
��8 <
;
��< =
return
�� 
new
�� "'
OperationResultProfileDto
��# <
(
��< =
true
��= A
,
��A B
LanguageUtilities
��C T
.
��T U
MessageSuccess
��U c
(
��c d
accountClientDto
��d t
.
��t u 
PreferredLanguage��u �
)��� �
,��� �
profileServerDto
��  0
,
��0 1&
EnumAuthenticationStatus
��2 J
.
��J K
Verified
��K S
)
��S T
;
��T U
}
�� 
else
�� 
{
�� 
return
�� 
new
�� "'
OperationResultProfileDto
��# <
(
��< =
false
��= B
,
��B C
LanguageUtilities
��D U
.
��U V)
MessageDataBaseUnableToLoad
��V q
(
��q r
accountClientDto��r �
.��� �!
PreferredLanguage��� �
)��� �
,��� �&
EnumAuthenticationStatus
�� 4
.
��4 5
NotVerified
��5 @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 
return
�� 
new
�� '
OperationResultProfileDto
�� 0
(
��0 1
false
��1 6
,
��6 7
LanguageUtilities
��8 I
.
��I J)
MessageDataBaseUnableToLoad
��J e
(
��e f
accountClientDto
��f v
.
��v w 
PreferredLanguage��w �
)��� �
,��� �&
EnumAuthenticationStatus
�� (
.
��( )
	Incorrect
��) 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
static
�� 
bool
�� 
ComparePassWord
�� *
(
��* +
Account
��+ 2
accountRecord
��3 @
,
��@ A

AccountDto
��B L
accountClientDto
��M ]
)
��] ^
{
�� 	
return
�� 
PasswordUtilities
�� $
.
��$ %
ComparePassword
��% 4
(
��4 5
accountClientDto
��5 E
.
��E F
Password
��F N
,
��N O
accountRecord
��P ]
.
��] ^
Salt
��^ b
,
��b c
accountRecord
��d q
.
��q r
PasswordHash
��r ~
)
��~ 
;�� �
}
�� 	
public
�� 
static
�� 
bool
�� !
IsValidAccountEmail
�� .
(
��. /
string
��/ 5
email
��6 ;
)
��; <
{
�� 	
bool
�� 
isValid
�� 
=
�� 
true
�� 
;
��  
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
email
��* /
)
��/ 0
)
��0 1
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
try
�� 
{
�� 
isValid
�� 
&=
�� 
Regex
��  
.
��  !
IsMatch
��! (
(
��( )
email
��) .
,
��. /(
AccountValidationUtilities
��0 J
.
��J K,
REGEX_PROFILE_EMAIL_VALIDATION
��K i
,
��i j
RegexOptions
��k w
.
��w x
None
��x |
,
��| }
TimeSpan��~ �
.��� � 
FromMilliseconds��� �
(��� �
$num��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
isValid
�� 
)
�� 
{
�� 
string
�� 
[
�� 
]
�� 
parts
�� "
=
��# $
email
��% *
.
��* +
Split
��+ 0
(
��0 1 
CharacterUtilities
��1 C
.
��C D 
STRING_CHAR_ARROBA
��D V
,
��V W
(
��X Y
char
��Y ]
)
��] ^ 
StringSplitOptions
��^ p
.
��p q!
RemoveEmptyEntries��q �
)��� �
;��� �
isValid
�� 
&=
�� 
parts
�� $
.
��$ %
Length
��% +
==
��, .
$num
��/ 0
;
��0 1
if
�� 
(
�� 
isValid
�� 
)
��  
{
�� 
string
�� 
	localPart
�� (
=
��) *
parts
��+ 0
[
��0 1
$num
��1 2
]
��2 3
;
��3 4
string
�� 

domainPart
�� )
=
��* +
parts
��, 1
[
��1 2
$num
��2 3
]
��3 4
;
��4 5
isValid
�� 
&=
��  "
!
��# $$
HasInvalidDotsOrDashes
��$ :
(
��: ;
	localPart
��; D
)
��D E
&&
��F H
!
��I J$
HasInvalidDotsOrDashes
��J `
(
��` a

domainPart
��a k
)
��k l
;
��l m
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� (
RegexMatchTimeoutException
�� -
ex
��. 0
)
��0 1
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
,
�� 
ex
��  
.
��  !
Source
��! '
)
��' (
;
��( )
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
return
�� 
isValid
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� $
HasInvalidDotsOrDashes
�� 2
(
��2 3
string
��3 9
part
��: >
)
��> ?
{
�� 	
return
�� 
Regex
�� 
.
�� 
IsMatch
��  
(
��  !
part
��! %
,
��% &(
AccountValidationUtilities
��' A
.
��A B!
REGEX_DOUBLE_POINTS
��B U
,
��U V
RegexOptions
��W c
.
��c d
None
��d h
,
��h i
TimeSpan
��j r
.
��r s
FromMilliseconds��s �
(��� �
$num��� �
)��� �
)��� �
||��� �
part
�� 
.
�� 

StartsWith
�� "
(
��" # 
CharacterUtilities
��# 5
.
��5 6
STRING_CHAR_DASH
��6 F
)
��F G
||
��H J
part
�� 
.
�� 
EndsWith
��  
(
��  ! 
CharacterUtilities
��! 3
.
��3 4
STRING_CHAR_DASH
��4 D
)
��D E
||
��F H
part
�� 
.
�� 

StartsWith
�� "
(
��" # 
CharacterUtilities
��# 5
.
��5 6
STRING_CHAR_POINT
��6 G
)
��G H
||
��I K
part
�� 
.
�� 
EndsWith
��  
(
��  ! 
CharacterUtilities
��! 3
.
��3 4
STRING_CHAR_POINT
��4 E
)
��E F
;
��F G
}
�� 	
public
�� 
static
�� 
bool
�� '
IsValidAccountPhoneNumber
�� 4
(
��4 5
string
��5 ;
phoneNumber
��< G
)
��G H
{
�� 	
bool
��  
isValidPhoneNumber
�� #
=
��$ %
false
��& +
;
��+ ,
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
phoneNumber
��& 1
)
��1 2
&&
��3 5
phoneNumber
��6 A
.
��A B
Length
��B H
<=
��I K
$num
��L N
&&
��O Q
phoneNumber
��R ]
.
��] ^
Length
��^ d
>=
��e g
$num
��h i
)
��i j
{
�� 
string
�� 
phoneNumberRegex
�� '
=
��( )(
AccountValidationUtilities
��* D
.
��D E+
REGEX_PHONE_NUMBER_VALIDATION
��E b
;
��b c
try
�� 
{
��  
isValidPhoneNumber
�� &
=
��' (
Regex
��) .
.
��. /
IsMatch
��/ 6
(
��6 7
phoneNumber
��7 B
,
��B C
phoneNumberRegex
��D T
,
��T U
RegexOptions
��V b
.
��b c
None
��c g
,
��g h
TimeSpan
��i q
.
��q r
FromMilliseconds��r �
(��� �
$num��� �
)��� �
)��� �
;��� �
}
�� 
catch
�� 
(
�� (
RegexMatchTimeoutException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 
return
��  
isValidPhoneNumber
�� %
;
��% &
}
�� 	
public
�� 
static
�� 
bool
�� $
IsValidAccountPassword
�� 1
(
��1 2
string
��2 8
password
��9 A
)
��A B
{
�� 	
bool
�� 
isValidPassword
��  
=
��! "
false
��# (
;
��( )
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
password
��& .
)
��. /
&&
��0 2
password
��3 ;
.
��; <
Length
��< B
>=
��C E(
AccountValidationUtilities
��F `
.
��` a!
PASSWORD_MIN_LENGTH
��a t
&&
��u w
password��x �
.��� �
Length��� �
<=��� �*
AccountValidationUtilities��� �
.��� �#
PASSWORD_MAX_LENGTH��� �
)��� �
{
�� 
string
�� 
passwordRegex
�� $
=
��% &(
AccountValidationUtilities
��' A
.
��A B/
!REGEX_PASSWORD_ACCOUNT_VALIDATION
��B c
;
��c d
try
�� 
{
�� 
isValidPassword
�� #
=
��$ %
Regex
��& +
.
��+ ,
IsMatch
��, 3
(
��3 4
password
��4 <
,
��< =
passwordRegex
��> K
,
��K L
RegexOptions
��M Y
.
��Y Z
None
��Z ^
,
��^ _
TimeSpan
��` h
.
��h i
FromMilliseconds
��i y
(
��y z
$num
��z ~
)
��~ 
)�� �
;��� �
}
�� 
catch
�� 
(
�� (
RegexMatchTimeoutException
�� 1
ex
��2 4
)
��4 5
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
��  "
)
��" #
{
�� 
Log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
,
��  !
ex
��" $
.
��$ %
Source
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 
return
�� 
isValidPassword
�� "
;
��" #
}
�� 	
public
�� 
static
�� 
string
�� &
GenerateVerificationCode
�� 5
(
��5 6
)
��6 7
{
�� 	
const
�� 
string
�� 
alphabet
�� !
=
��" #(
AccountValidationUtilities
��$ >
.
��> ?
ALPHABET_EN
��? J
;
��J K
StringBuilder
�� 
verificationCode
�� *
=
��+ ,
new
��- 0
StringBuilder
��1 >
(
��> ?
)
��? @
;
��@ A
using
�� 
(
�� #
RandomNumberGenerator
�� (
randomNumber
��) 5
=
��6 7#
RandomNumberGenerator
��8 M
.
��M N
Create
��N T
(
��T U
)
��U V
)
��V W
{
�� 
byte
�� 
[
�� 
]
��  
arrayRandomNumbers
�� )
=
��* +
new
��, /
byte
��0 4
[
��4 5(
AccountValidationUtilities
��5 O
.
��O P&
VERIFICATION_CODE_LENGTH
��P h
]
��h i
;
��i j
randomNumber
�� 
.
�� 
GetBytes
�� %
(
��% & 
arrayRandomNumbers
��& 8
)
��8 9
;
��9 :
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  
<
��! "(
AccountValidationUtilities
��# =
.
��= >&
VERIFICATION_CODE_LENGTH
��> V
;
��V W
i
��X Y
++
��Y [
)
��[ \
{
�� 
verificationCode
�� $
.
��$ %
Append
��% +
(
��+ ,
alphabet
��, 4
[
��4 5 
arrayRandomNumbers
��5 G
[
��G H
i
��H I
]
��I J
%
��K L
alphabet
��M U
.
��U V
Length
��V \
]
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
i
�� 
<
�� (
AccountValidationUtilities
�� 6
.
��6 7&
VERIFICATION_CODE_LENGTH
��7 O
-
��P Q
$num
��R S
&&
��T V
(
��W X
i
��X Y
+
��Z [
$num
��\ ]
)
��] ^
%
��_ `(
AccountValidationUtilities
��a {
.
��{ |-
VERIFICATION_CODE_PARTS_LENGTH��| �
==��� �
$num��� �
)��� �
{
�� 
verificationCode
�� (
.
��( )
Append
��) /
(
��/ 0 
CharacterUtilities
��0 B
.
��B C
STRING_CHAR_DASH
��C S
)
��S T
;
��T U
}
�� 
}
�� 
}
�� 
return
�� 
verificationCode
�� #
.
��# $
ToString
��$ ,
(
��, -
)
��- .
;
��. /
}
�� 	
public
�� 
static
�� 
bool
�� 
IsValidLanguage
�� *
(
��* +
string
��+ 1
language
��2 :
)
��: ;
{
�� 	
return
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
language
��) 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -
IsVerifyAccount
��. =
(
��= >

AccountDto
��> H
accountClientDto
��I Y
)
��Y Z
{
�� 	
bool
�� 

isVerified
�� 
=
�� 
false
�� #
;
��# $
if
�� 
(
�� 
accountClientDto
��  
.
��  !
Token
��! &
!=
��' )
null
��* .
&&
��0 2
(
��3 4!
IsValidAccountEmail
��4 G
(
��G H
accountClientDto
��H X
.
��X Y
Email
��Y ^
)
��^ _
||
��` b'
IsValidAccountPhoneNumber
��c |
(
��| }
accountClientDto��} �
.��� �
PhoneNumber��� �
)��� �
)��� �
)��� �
{
�� 

isVerified
�� 
=
�� 
await
�� "
repositoryManager
��# 4
.
��4 5
AccountRepository
��5 F
.
��F G'
ChangeStatusToVerifyAsync
�� )
(
��) *
accountClientDto
��* :
.
��: ;
PhoneNumber
��; F
,
��F G
accountClientDto
��H X
.
��X Y
Email
��Y ^
,
��^ _
accountClientDto
��` p
.
��p q
Token
��q v
)
��v w
;
��w x
if
�� 
(
�� 

isVerified
�� 
)
�� 
{
�� 
await
�� 
repositoryManager
�� +
.
��+ ,
	SaveAsync
��, 5
(
��5 6
)
��6 7
;
��7 8
return
�� 
new
��  
OperationResultDto
�� 1
(
��1 2

isVerified
��2 <
,
��< =
LanguageUtilities
��> O
.
��O P
MessageSuccess
��P ^
(
��^ _
accountClientDto
��_ o
.
��o p 
PreferredLanguage��p �
)��� �
)��� �
;��� �
}
�� 
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C)
MessageDataBaseUnableToLoad
��C ^
(
��^ _
accountClientDto
��_ o
.
��o p 
PreferredLanguage��p �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� )
ResendVerificationCodeAsync
��  ;
(
��; <
string
��< B
emailOrPhone
��C O
)
��O P
{
�� 	
Account
�� 
accountRecord
�� !
=
��" #
null
��$ (
;
��( )
if
�� 
(
�� !
IsValidAccountEmail
�� #
(
��# $
emailOrPhone
��$ 0
)
��0 1
)
��1 2
{
�� 
accountRecord
�� 
=
�� 
await
��  %
repositoryManager
��& 7
.
��7 8
AccountRepository
��8 I
.
��I J%
FindAccountByEmailAsync
��J a
(
��a b
emailOrPhone
��b n
)
��n o
;
��o p
}
�� 
else
�� 
if
�� 
(
�� '
IsValidAccountPhoneNumber
�� .
(
��. /
emailOrPhone
��/ ;
)
��; <
)
��< =
{
�� 
accountRecord
�� 
=
�� 
await
��  %
repositoryManager
��& 7
.
��7 8
AccountRepository
��8 I
.
��I J%
FindAccountByPhoneAsync
��J a
(
��a b
emailOrPhone
��b n
)
��n o
;
��o p
}
�� 
if
�� 
(
�� 
accountRecord
�� 
!=
��  
null
��! %
)
��% &
{
�� 
return
�� 
await
�� 
HandleResendToken
�� .
(
��. /
accountRecord
��/ <
.
��< =
Id
��= ?
)
��? @
;
��@ A
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� "
SendverificationCode
�� .
(
��. /
Account
��/ 6
accountRecord
��7 D
)
��D E
{
�� 	
await
�� '
SendEmailVerificationCode
�� +
(
��+ ,
accountRecord
��, 9
)
��9 :
;
��: ;
await
�� %
SendSmsVerificationCode
�� )
(
��) *
accountRecord
��* 7
)
��7 8
;
��8 9
await
�� *
SendTelegramVerificationCode
�� .
(
��. /
accountRecord
��/ <
)
��< =
;
��= >
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� *
IsAccountRegisteredWithEmail
��  <
(
��< =
string
��= C
email
��D I
)
��I J
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
email
��& +
)
��+ ,
)
��, -
{
�� 
return
�� 
await
�� 
repositoryManager
�� .
.
��. /
AccountRepository
��/ @
.
��@ A/
!IsAccountRegisteredWithEmailAsync
��A b
(
��b c
email
��c h
)
��h i
;
��i j
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� *
IsAccountRegisteredWithPhone
��  <
(
��< =
string
��= C
phone
��D I
)
��I J
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
phone
��% *
)
��* +
)
��+ ,
{
�� 
return
�� 
await
�� 
repositoryManager
�� .
.
��. /
AccountRepository
��/ @
.
��@ A/
!IsAccountRegisteredWithPhoneAsync
��A b
(
��b c
phone
��c h
)
��h i
;
��i j
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
HandleResendToken
��  1
(
��1 2
int
��2 5
idAccountClient
��6 E
)
��E F
{
�� 	
bool
�� 
isAccountFind
�� 
=
��  
false
��! &
;
��& '
Account
�� 
accountRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
AccountRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
idAccountClient
��b q
)
��q r
;
��r s
if
�� 
(
�� 
accountRecord
�� 
!=
��  
null
��! %
)
��% &
{
�� 
accountRecord
�� 
.
�� 
Token
�� #
=
��$ %&
GenerateVerificationCode
��& >
(
��> ?
)
��? @
;
��@ A
accountRecord
�� 
.
�� 
	UpdatedAt
�� '
=
��( )
DateTime
��* 2
.
��2 3
UtcNow
��3 9
;
��9 :
accountRecord
�� 
.
�� !
RecoveryTokenExpiry
�� 1
=
��2 3
DateTime
��4 <
.
��< =
UtcNow
��= C
;
��C D
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
_
�� 
=
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
async
�� "
(
��# $
)
��$ %
=>
��& (
{
�� 
await
�� "
SendverificationCode
�� .
(
��. /
accountRecord
��/ <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
isAccountFind
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
return
�� 
isAccountFind
��  
;
��  !
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -A
3SendVerificationCodeToChangePasswordInDataBaseAsync
��. a
(
��a b

AccountDto
��b l
accountClientDto
��m }
)
��} ~
{
�� 	
if
�� 
(
�� $
IsValidAccountPassword
�� &
(
��& '
accountClientDto
��' 7
.
��7 8
Password
��8 @
)
��@ A
&&
��B D
accountClientDto
��E U
.
��U V
Id
��V X
!=
��Y [
null
��\ `
&&
�� 
await
�� 
HandleResendToken
�� *
(
��* +
(
��+ ,
int
��, /
)
��/ 0
accountClientDto
��0 @
.
��@ A
Id
��A C
)
��C D
)
��D E
{
�� 
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
true
��. 2
,
��2 3
LanguageUtilities
��4 E
.
��E F
MessageSuccess
��F T
(
��T U
accountClientDto
��U e
.
��e f
PreferredLanguage
��f w
)
��w x
)
��x y
;
��y z
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C%
MessageUnableToSaveData
��C Z
(
��Z [
accountClientDto
��[ k
.
��k l
PreferredLanguage
��l }
)
��} ~
)
��~ 
;�� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 5
'CompareTokenServerAndTokenClientAndSave
��  G
(
��G H

AccountDto
��H R
accountClientDto
��S c
)
��c d
{
�� 	
Account
�� 
accountRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
AccountRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
(
��b c
int
��c f
)
��f g
accountClientDto
��g w
.
��w x
Id
��x z
)
��z {
;
��{ |
if
�� 
(
�� 
accountRecord
�� 
!=
��  
null
��! %
&&
��& (
accountClientDto
��) 9
.
��9 :
Token
��: ?
==
��@ B
accountRecord
��C P
.
��P Q
Token
��Q V
&&
��W Y#
DiferenceBetweenDates
�� %
(
��% &
(
��& '
DateTime
��' /
)
��/ 0
accountRecord
��0 =
.
��= >!
RecoveryTokenExpiry
��> Q
,
��Q R
accountClientDto
��S c
.
��c d
TokenExpiration
��d s
)
��s t
)
��t u
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� #
DiferenceBetweenDates
�� 0
(
��0 1
DateTime
��1 9
dateTimeExpiricy
��: J
,
��J K
DateTime
��L T
dateTimeClient
��U c
)
��c d
{
�� 	
TimeSpan
�� 
timeDifference
�� #
=
��$ %
dateTimeClient
��& 4
-
��5 6
dateTimeExpiricy
��7 G
;
��G H
return
�� 
timeDifference
�� !
.
��! "

TotalHours
��" ,
<=
��- /(
AccountValidationUtilities
��0 J
.
��J K"
HOURS_MAX_DIFFERENCE
��K _
;
��_ `
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -+
ChangePasswordInDataBaseAsync
��. K
(
��K L

AccountDto
��L V
accountClientDto
��W g
)
��g h
{
�� 	
if
�� 
(
�� 
await
�� 5
'CompareTokenServerAndTokenClientAndSave
�� <
(
��< =
accountClientDto
��= M
)
��M N
)
��N O
{
�� 
await
�� 
SaveNewPassWord
�� %
(
��% &
accountClientDto
��& 6
)
��6 7
;
��7 8
return
�� 
new
��  
OperationResultDto
�� -
(
��- .
true
��. 2
,
��2 3
LanguageUtilities
��4 E
.
��E F
MessageSuccess
��F T
(
��T U
accountClientDto
��U e
.
��e f
PreferredLanguage
��f w
)
��w x
)
��x y
;
��y z
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C%
MessageUnableToSaveData
��C Z
(
��Z [
accountClientDto
��[ k
.
��k l
PreferredLanguage
��l }
)
��} ~
)
��~ 
;�� �
}
�� 	
public
�� 
async
�� 
Task
�� 
SaveNewPassWord
�� )
(
��) *

AccountDto
��* 4
accountClientDto
��5 E
)
��E F
{
�� 	
Account
�� 
accountRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
AccountRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
(
��b c
int
��c f
)
��f g
accountClientDto
��g w
.
��w x
Id
��x z
)
��z {
;
��{ |
if
�� 
(
�� 
accountRecord
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
accountRecord
�� 
.
�� 
Salt
�� "
=
��# $
PasswordUtilities
��% 6
.
��6 7
GetSaltPassword
��7 F
(
��F G
)
��G H
;
��H I
accountRecord
�� 
.
�� 
PasswordHash
�� *
=
��+ ,
PasswordUtilities
��- >
.
��> ?
GetHashPassword
��? N
(
��N O
accountClientDto
��O _
.
��_ `
Password
��` h
,
��h i
accountRecord
��j w
.
��w x
Salt
��x |
)
��| }
;
��} ~
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 7
)OperationResultChangeRegisterEmailOrPhone
�� C
>
��C DE
7SendVerificationCodeToChangeEmailOrPhoneInDataBaseAsync
��E |
(
��| }

AccountDto��} � 
accountClientDto��� �
)��� �
{
�� 	
if
�� 
(
�� !
IsValidAccountEmail
�� #
(
��# $
accountClientDto
��$ 4
.
��4 5
Email
��5 :
)
��: ;
||
��< >'
IsValidAccountPhoneNumber
��? X
(
��X Y
accountClientDto
��Y i
.
��i j
PhoneNumber
��j u
)
��u v
)
��v w
{
�� 
if
�� 
(
�� 
await
�� *
IsAccountRegisteredWithEmail
�� 5
(
��5 6
accountClientDto
��6 F
.
��F G
Email
��G L
)
��L M
||
��N P
await
��Q V*
IsAccountRegisteredWithPhone
��W s
(
��s t
accountClientDto��t �
.��� �
PhoneNumber��� �
)��� �
)��� �
{
�� 
return
�� 
new
�� 7
)OperationResultChangeRegisterEmailOrPhone
�� H
(
��H I
false
��I N
,
��N O
LanguageUtilities
��P a
.
��a b%
MessageUnableToSaveData
��b y
(
��y z
accountClientDto��z �
.��� �!
PreferredLanguage��� �
)��� �
,��� �'
EnumChangeAccountRegister
�� 1
.
��1 2
AlreadyExists
��2 ?
)
��? @
;
��@ A
}
�� 
else
�� 
if
�� 
(
�� 
await
�� 
HandleResendToken
��  1
(
��1 2
(
��2 3
int
��3 6
)
��6 7
accountClientDto
��7 G
.
��G H
Id
��H J
)
��J K
)
��K L
{
�� 
return
�� 
new
�� 7
)OperationResultChangeRegisterEmailOrPhone
�� H
(
��H I
true
��I M
,
��M N
LanguageUtilities
��O `
.
��` a
MessageSuccess
��a o
(
��o p
accountClientDto��p �
.��� �!
PreferredLanguage��� �
)��� �
,��� �'
EnumChangeAccountRegister
�� 1
.
��1 2
Success
��2 9
)
��9 :
;
��: ;
}
�� 
}
�� 
return
�� 
new
�� 7
)OperationResultChangeRegisterEmailOrPhone
�� @
(
��@ A
false
��A F
,
��F G
LanguageUtilities
��H Y
.
��Y Z%
MessageUnableToSaveData
��Z q
(
��q r
accountClientDto��r �
.��� �!
PreferredLanguage��� �
)��� �
,��� �'
EnumChangeAccountRegister
�� -
.
��- .
UnableToSaveData
��. >
)
��> ?
;
��? @
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 7
)OperationResultChangeRegisterEmailOrPhone
�� C
>
��C D/
!ChangeEmailOrPhoneInDataBaseAsync
��E f
(
��f g

AccountDto
��g q
accountClientDto��r �
)��� �
{
�� 	
if
�� 
(
�� 
(
�� !
IsValidAccountEmail
�� $
(
��$ %
accountClientDto
��% 5
.
��5 6
Email
��6 ;
)
��; <
||
��= ?$
IsValidAccountPassword
��@ V
(
��V W
accountClientDto
��W g
.
��g h
Password
��h p
)
��p q
)
��q r
&&
��s u
(
�� 
!
�� 
await
�� *
IsAccountRegisteredWithEmail
�� 4
(
��4 5
accountClientDto
��5 E
.
��E F
Email
��F K
)
��K L
||
��M O
!
��P Q
await
��Q V*
IsAccountRegisteredWithPhone
��W s
(
��s t
accountClientDto��t �
.��� �
PhoneNumber��� �
)��� �
)��� �
&&
�� 
await
�� 5
'CompareTokenServerAndTokenClientAndSave
�� @
(
��@ A
accountClientDto
��A Q
)
��Q R
)
��R S
{
�� 
await
�� !
SaveNewEmailOrPhone
�� )
(
��) *
accountClientDto
��* :
)
��: ;
;
��; <
return
�� 
new
�� 7
)OperationResultChangeRegisterEmailOrPhone
�� D
(
��D E
true
��E I
,
��I J
LanguageUtilities
��K \
.
��\ ]
MessageSuccess
��] k
(
��k l
accountClientDto
��l |
.
��| } 
PreferredLanguage��} �
)��� �
,��� �'
EnumChangeAccountRegister
�� -
.
��- .
Success
��. 5
)
��5 6
;
��6 7
}
�� 
return
�� 
new
�� 7
)OperationResultChangeRegisterEmailOrPhone
�� @
(
��@ A
false
��A F
,
��F G
LanguageUtilities
��H Y
.
��Y Z%
MessageUnableToSaveData
��Z q
(
��q r
accountClientDto��r �
.��� �!
PreferredLanguage��� �
)��� �
,��� �'
EnumChangeAccountRegister
�� )
.
��) *
UnableToSaveData
��* :
)
��: ;
;
��; <
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� !
SaveNewEmailOrPhone
��  3
(
��3 4

AccountDto
��4 >
accountClientDto
��? O
)
��O P
{
�� 	
bool
�� 
isSuccessChanged
�� !
=
��" #
false
��$ )
;
��) *
Account
�� 
accountRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
AccountRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
(
��b c
int
��c f
)
��f g
accountClientDto
��g w
.
��w x
Id
��x z
)
��z {
;
��{ |
if
�� 
(
�� 
accountRecord
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
accountClientDto
��* :
.
��: ;
Email
��; @
)
��@ A
)
��A B
{
�� 
accountRecord
�� !
.
��! "
Email
��" '
=
��( )
accountClientDto
��* :
.
��: ;
Email
��; @
;
��@ A
isSuccessChanged
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
string
��  
.
��  !
IsNullOrEmpty
��! .
(
��. /
accountClientDto
��/ ?
.
��? @
PhoneNumber
��@ K
)
��K L
)
��L M
{
�� 
accountRecord
�� !
.
��! "
PhoneNumber
��" -
=
��. /
accountClientDto
��0 @
.
��@ A
PhoneNumber
��A L
;
��L M
isSuccessChanged
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
await
�� 
repositoryManager
�� '
.
��' (
	SaveAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
return
�� 
isSuccessChanged
�� #
;
��# $
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� '
OperationResultAccountDto
�� 3
>
��3 44
&ConsultAccountProfileServiceInDataBase
��5 [
(
��[ \

ProfileDto
��\ f
profileClientDto
��g w
)
��w x
{
�� 	

AccountDto
�� 
accountServerDto
�� '
=
��( )
await
��* /*
GetProfileAccountInformation
��0 L
(
��L M
(
��M N
int
��N Q
)
��Q R
profileClientDto
��R b
.
��b c
Id
��c e
)
��e f
;
��f g
if
�� 
(
�� 
accountServerDto
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
return
�� 
new
�� '
OperationResultAccountDto
�� 4
(
��4 5
true
��5 9
,
��9 :
LanguageUtilities
��; L
.
��L M
MessageSuccess
��M [
(
��[ \
profileClientDto
��\ l
.
��l m
PreferredLanguage
��m ~
)
��~ 
,�� � 
accountServerDto��� �
)��� �
;��� �
}
�� 
return
�� 
new
�� '
OperationResultAccountDto
�� 0
(
��0 1
false
��1 6
,
��6 7
LanguageUtilities
��8 I
.
��I J)
MessageDataBaseUnableToLoad
��J e
(
��e f
profileClientDto
��f v
.
��v w 
PreferredLanguage��w �
)��� �
,��� � 
accountServerDto��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 

AccountDto
�� $
>
��$ %*
GetProfileAccountInformation
��& B
(
��B C
int
��C F
	idProfile
��G P
)
��P Q
{
�� 	
Account
�� 
accountRecord
�� !
=
��" #
await
��$ )
repositoryManager
��* ;
.
��; <
AccountRepository
��< M
.
��M N!
FindEntityByIdAsync
��N a
(
��a b
	idProfile
��b k
)
��k l
;
��l m

AccountDto
�� 
accountServerDto
�� '
=
��( )
null
��* .
;
��. /
if
�� 
(
�� 
accountRecord
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
accountServerDto
��  
=
��! "
new
��# &

AccountDto
��' 1
(
��1 2
)
��2 3
;
��3 4
accountServerDto
��  
.
��  !
Email
��! &
=
��' (
accountRecord
��) 6
.
��6 7
Email
��7 <
;
��< =
accountServerDto
��  
.
��  !
PhoneNumber
��! ,
=
��- .
accountRecord
��/ <
.
��< =
PhoneNumber
��= H
;
��H I
}
�� 
return
�� 
accountServerDto
�� #
;
��# $
}
�� 	
public
�� 
async
�� 
Task
�� %
SendInviteGameToFriends
�� 1
(
��1 2
Account
��2 9
accountRecord
��: G
,
��G H
string
��I O
	accessKey
��P Y
)
��Y Z
{
�� 	
await
�� !
SendGameCodeByEmail
�� %
(
��% &
accountRecord
��& 3
,
��3 4
	accessKey
��5 >
)
��> ?
;
��? @
await
�� !
SendGameCodeToPhone
�� %
(
��% &
accountRecord
��& 3
,
��3 4
	accessKey
��5 >
)
��> ?
;
��? @
await
�� $
SendGameCodeToTelegram
�� (
(
��( )
accountRecord
��) 6
,
��6 7
	accessKey
��8 A
)
��A B
;
��B C
}
�� 	
public
�� 
async
�� 
Task
�� !
SendGameCodeByEmail
�� -
(
��- .
Account
��. 5
accountRecord
��6 C
,
��C D
string
��E K
	accessKey
��L U
)
��U V
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
accountRecord
��% 2
.
��2 3
Email
��3 8
)
��8 9
&&
��: <
!
��= >
string
��> D
.
��D E
IsNullOrEmpty
��E R
(
��R S
	accessKey
��S \
)
��\ ]
)
��] ^
{
�� 
await
�� 
serviceManager
�� $
.
��$ %
EmailService
��% 1
.
��1 2#
SendGameCodeToFriends
��2 G
(
��G H
accountRecord
��H U
,
��U V
	accessKey
��W `
)
��` a
;
��a b
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� !
SendGameCodeToPhone
�� -
(
��- .
Account
��. 5
accountRecord
��6 C
,
��C D
string
��E K
	accessKey
��L U
)
��U V
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
accountRecord
��& 3
.
��3 4
PhoneNumber
��4 ?
)
��? @
&&
��A C
!
��D E
string
��E K
.
��K L
IsNullOrEmpty
��L Y
(
��Y Z
	accessKey
��Z c
)
��c d
)
��d e
{
�� 
await
�� 
serviceManager
�� $
.
��$ %

SmsService
��% /
.
��/ 0
SendSmsAsync
��0 <
(
��< =
accountRecord
��= J
.
��J K
PhoneNumber
��K V
,
��V W
	accessKey
��X a
)
��a b
;
��b c
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� $
SendGameCodeToTelegram
�� 0
(
��0 1
Account
��1 8
accountRecord
��9 F
,
��F G
string
��H N
	accessKey
��O X
)
��X Y
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
accountRecord
��& 3
.
��3 4
PhoneNumber
��4 ?
)
��? @
&&
��A C
!
��D E
string
��E K
.
��K L
IsNullOrEmpty
��L Y
(
��Y Z
	accessKey
��Z c
)
��c d
)
��d e
{
�� 
await
�� 
serviceManager
�� $
.
��$ %
TelegramService
��% 4
.
��4 5
SendMessageAsync
��5 E
(
��E F
accountRecord
��F S
.
��S T
PhoneNumber
��T _
,
��_ `
	accessKey
��a j
)
��j k
;
��k l
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 0
"NeedHelpProblemWithEmailInDataBase
��  B
(
��B C
string
��C I
email
��J O
)
��O P
{
�� 	
bool
�� 
isFreeEmail
�� 
=
�� 
false
�� $
;
��$ %
if
�� 
(
�� !
IsValidAccountEmail
�� #
(
��# $
email
��$ )
)
��) *
)
��* +
{
�� 
isFreeEmail
�� 
=
�� 
await
�� #
repositoryManager
��$ 5
.
��5 6
AccountRepository
��6 G
.
��G H*
LiberateEmailForFreeUseAsync
��H d
(
��d e
email
��e j
)
��j k
;
��k l
}
�� 
return
�� 
isFreeEmail
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 3
%NeedHelpProblemWithPasswordInDataBase
��  E
(
��E F
string
��F L
email
��M R
)
��R S
{
�� 	
if
�� 
(
�� !
IsValidAccountEmail
�� #
(
��# $
email
��$ )
)
��) *
)
��* +
{
�� 
Account
�� 
accountRecord
�� $
=
��% &
await
��' ,
repositoryManager
��- >
.
��> ?
AccountRepository
��? P
.
��P Q%
FindAccountByEmailAsync
��Q h
(
��h i
email
��i n
)
��n o
;
��o p
if
�� 
(
�� 
accountRecord
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
await
�� 
HandleResendToken
�� +
(
��+ ,
accountRecord
��, 9
.
��9 :
Id
��: <
)
��< =
;
��= >
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� ,
ChangeForgotPasswordInDataBase
��  >
(
��> ?
string
��? E
email
��F K
,
��K L
string
��M S
newPassword
��T _
,
��_ `
string
��a g
token
��h m
)
��m n
{
�� 	
if
�� 
(
�� !
IsValidAccountEmail
�� #
(
��# $
email
��$ )
)
��) *
&&
��+ -$
IsValidAccountPassword
��. D
(
��D E
newPassword
��E P
)
��P Q
)
��Q R
{
�� 
Account
�� 
accountRecord
�� %
=
��& '
await
��( -
repositoryManager
��. ?
.
��? @
AccountRepository
��@ Q
.
��Q R%
FindAccountByEmailAsync
��R i
(
��i j
email
��j o
)
��o p
;
��p q
if
�� 
(
�� 
accountRecord
�� !
!=
��" $
null
��% )
&&
��* ,
accountRecord
��- :
.
��: ;
Token
��; @
==
��A C
token
��D I
)
��I J
{
�� 
accountRecord
�� !
.
��! "
Salt
��" &
=
��' (
PasswordUtilities
��) :
.
��: ;
GetSaltPassword
��; J
(
��J K
)
��K L
;
��L M
accountRecord
�� !
.
��! "
PasswordHash
��" .
=
��/ 0
PasswordUtilities
��1 B
.
��B C
GetHashPassword
��C R
(
��R S
newPassword
��S ^
,
��^ _
accountRecord
��` m
.
��m n
Salt
��n r
)
��r s
;
��s t
await
�� 
repositoryManager
�� +
.
��+ ,
	SaveAsync
��, 5
(
��5 6
)
��6 7
;
��7 8
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
]$$) *�	
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
} �U
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
AccountServiceEndPoint	m �
)
� �
)
� �
)
� �
;
� �!
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
)	   �
;
  � �!
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
)	!! �
;
!!� �!
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
ProfileServiceEndpoint	""m �
)
""� �
)
""� �
)
""� �
;
""� �!
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
GuestAccountEndpoint	##r �
)
##� �
)
##� �
)
##� �
;
##� �
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
FirstOrDefault	..t �
(
..� �
service
..� �
=>
..� �
service
..� �
.
..� �
Name
..� �
==
..� �
endpointName
..� �
)
..� �
;
..� �
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
�� 
}
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
Dispose
�� 
(
�� 
true
�� 
)
�� 
;
�� 
GC
�� 
.
�� 
SuppressFinalize
�� 
(
��  
this
��  $
)
��$ %
;
��% &
}
�� 	
}
�� 
}�� �
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
} �@
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
}PP �
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
}&& �L
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
}zz �
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
}// �
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
}// �
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
} �
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
$str	@ �
;
� �
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
} ��
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
profileClientDto	r �
)
� �
;
� �
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
GUEST_USER_RESERVED_NAME	''h �
)
''� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	--t �
)
--� �
,
--� �%
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
LANGUAGE_ENGLISH_FORMAT_RESX	BBx �
)
BB� �
)
BB� �
;
BB� �
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
preferredLanguage	EEp �
)
EE� �
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
;	II �
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
LANGUAGE_ENGLISH_FORMAT_RESX	KKt �
)
KK� �
)
KK� �
;
KK� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	VVx �
)
VV� �
)
VV� �
;
VV� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	``t �
)
``� �
)
``� �
;
``� �
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
profileClientDto	rrr �
)
rr� �
;
rr� �
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
profileClientDto	wwx �
)
ww� �
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
profileClientDto	}}p �
)
}}� �
;
}}� �
}~~ 
return
�� 
new
�� -
OperationResultFriendRequestDto
�� 6
(
��6 7
false
��7 <
,
��< =
LanguageUtilities
��> O
.
��O P%
MessageUnableToSaveData
��P g
(
��g h
LanguageUtilities
��h y
.
��y z+
LANGUAGE_ENGLISH_FORMAT_RESX��z �
)��� �
,��� �%
EnumSendFriendRequest��� �
.��� �
ErrorSaving��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� '
OperationResultProfileDto
�� 3
>
��3 4'
UploadProfilePictureAsync
��5 N
(
��N O

ProfileDto
��O Y
profileClientDto
��Z j
,
��j k
byte
��l p
[
��p q
]
��q r

imageBytes
��s }
)
��} ~
{
�� 	
if
�� 
(
�� 
profileClientDto
��  
!=
��! #
null
��$ (
&&
��) +
profileClientDto
��, <
.
��< =
Id
��= ?
!=
��@ B
null
��C G
&&
��H J

imageBytes
��K U
!=
��V X
null
��Y ]
&&
��^ `

imageBytes
��a k
.
��k l
Length
��l r
>
��s t)
AccountValidationUtilities��u �
.��� �$
PICTURE_MINIMUN_SIZE��� �
&&
�� 

imageBytes
�� 
.
�� 
Length
�� $
<=
��% '
ProfileUtilities
��( 8
.
��8 9
PICTURE_MAX_SIZE
��9 I
)
��I J
{
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
ProfileService
��, :
.
��: ;1
#UploadProfilePictureInDataBaseAsync
��; ^
(
��^ _
profileClientDto
��_ o
,
��o p

imageBytes
��q {
)
��{ |
;
��| }
}
�� 
return
�� 
new
�� '
OperationResultProfileDto
�� 0
(
��0 1
false
��1 6
,
��6 7
LanguageUtilities
��8 I
.
��I J%
MessageUnableToSaveData
��J a
(
��a b
LanguageUtilities
��b s
.
��s t+
LANGUAGE_ENGLISH_FORMAT_RESX��t �
)��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �
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
}ss �
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
} �
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
LANGUAGE_ENGLISH_FORMAT_RESX	} �
)
� �
)
� �
;
� �
} 	
} 
} �3
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
�� 
<
�� 
bool
�� 
>
�� 
NextTurnAync
�� 
(
��  
PlayerGameplayDto
��  1
playerGameplayDto
��2 C
,
��C D
GameDto
��E L
gameClientDto
��M Z
)
��Z [
;
��[ \
[
�� 	
OperationContract
��	 
]
�� 
Task
�� 
ThrowDiceAsync
�� 
(
�� 
PlayerGameplayDto
�� -
playerGameplayDto
��. ?
,
��? @
GameDto
��A H
gameClientDto
��I V
,
��V W
int
��X [
	valueDice
��\ e
)
��e f
;
��f g
[
�� 	
OperationContract
��	 
]
�� 
Task
�� 
QuitGamePlayAsync
�� 
(
�� 
PlayerGameplayDto
�� 0
playerGameplayDto
��1 B
,
��B C
GameDto
��D K
gameClientDto
��L Y
)
��Y Z
;
��Z [
[
�� 	
OperationContract
��	 
]
�� 
Task
�� 
<
��  
OperationResultDto
�� 
>
��  $
PlacePieceOnBoardAsync
��! 7
(
��7 8
PiecePlacementDto
��8 I
placementDto
��J V
,
��V W
PlayerGameplayDto
��X i
playerGameplayDto
��j {
,
��{ |
GameDto��} �
gameClientDto��� �
)��� �
;��� �
[
�� 	
OperationContract
��	 
]
�� 
Task
�� 
<
��  
OperationResultDto
�� 
>
��  
StartTradeAsync
��! 0
(
��0 1 
PlayerResourcesDto
��1 C
needResources
��D Q
,
��Q R 
PlayerResourcesDto
��S e
offerResources
��f t
,
��t u
GameDto
��v }
gameClientDto��~ �
)��� �
;��� �
[
�� 	
OperationContract
��	 
]
�� 
Task
�� 
<
��  
OperationResultDto
�� 
>
��  
AcceptTradeAsync
��! 1
(
��1 2 
PlayerResourcesDto
��2 D
sendResources
��E R
,
��R S 
PlayerResourcesDto
��T f
receivedResources
��g x
,
��x y
GameDto��z �
gameClientDto��� �
)��� �
;��� �
}
�� 
}�� ��
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
.	&& �
Name
&&� �
.
&&� �
Length
&&� �
<
&&� �
$num
&&� �
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
playerCallback	**v �
)
**� �
;
**� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	,,q �
)
,,� �
)
,,� �
;
,,� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	88q �
)
88� �
)
88� �
;
88� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	BBm �
)
BB� �
)
BB� �
;
BB� �
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
playerCallback	LLz �
)
LL� �
;
LL� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	NNq �
)
NN� �
)
NN� �
;
NN� �
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
guestAccountClientDto	QQr �
)
QQ� �
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
guestAccountClientDto	VVn �
)
VV� �
;
VV� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	XXm �
)
XX� �
)
XX� �
;
XX� �
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
.	hh �
INT_VALUE_ZERO
hh� �
&&
hh� �
expelPlayerDto
hh� �
!=
hh� �
null
hh� �
)
hh� �
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
preferredLanguage	oop �
)
oo� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	vv} �
)
vv� �
)
vv� �
;
vv� �
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
profileClientDto	{{s �
.
{{� �
CurrentSessionID
{{� �
)
{{� �
)
{{� �
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
LANGUAGE_ENGLISH_FORMAT_RESX	w �
)
� �
)
� �
;
� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� *
OperationResultListScoreGame
�� 6
>
��6 7!
GetScoreGameFriends
��8 K
(
��K L

ProfileDto
��L V
profileClientDto
��W g
)
��g h
{
�� 	
if
�� 
(
�� 
profileClientDto
��  
!=
��! #
null
��$ (
&&
��) +
await
��, 1
serviceManager
��2 @
.
��@ A
ProfileService
��A O
.
��O P
IsOnline
��P X
(
��X Y
(
��Y Z
int
��Z ]
)
��] ^
profileClientDto
��^ n
.
��n o
Id
��o q
,
��q r
profileClientDto��s �
.��� � 
CurrentSessionID��� �
)��� �
)��� �
{
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
GameService
��, 7
.
��7 8+
GetScoreGameFriendsInDataBase
��8 U
(
��U V
profileClientDto
��V f
)
��f g
;
��g h
}
�� 
return
�� 
new
�� *
OperationResultListScoreGame
�� 3
(
��3 4
false
��4 9
,
��9 :
LanguageUtilities
��; L
.
��L M%
MessageUnableToSaveData
��M d
(
��d e
LanguageUtilities
��e v
.
��v w+
LANGUAGE_ENGLISH_FORMAT_RESX��w �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
StartGameAsync
��  .
(
��. /
PlayerGameplayDto
��/ @
playerGameplayDto
��A R
,
��R S
GameDto
��T [
gameClientDto
��\ i
)
��i j
{
�� 	
if
�� 
(
�� 
playerGameplayDto
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
�� 
playerGameplayDto
�� %
.
��% &
isRegistered
��& 2
)
��2 3
{
�� 
await
�� 
serviceManager
�� )
.
��) *
ProfileService
��* 8
.
��8 9
IsOnline
��9 A
(
��A B
playerGameplayDto
��B S
.
��S T
Id
��T V
,
��V W
playerGameplayDto
��X i
.
��i j
CurrentSession
��j x
)
��x y
;
��y z
}
�� 
else
�� 
{
�� 
await
�� 
serviceManager
�� (
.
��( )!
GuestAccountService
��) <
.
��< ="
IsOnlineGuestAccount
��= Q
(
��Q R
playerGameplayDto
��R c
.
��c d
Id
��d f
)
��f g
;
��g h
}
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
GameService
��, 7
.
��7 8&
StartGameInDataBaseAsync
��8 P
(
��P Q
playerGameplayDto
��Q b
.
��b c
Id
��c e
,
��e f
gameClientDto
��g t
)
��t u
;
��u v
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
NextTurnAync
��  ,
(
��, -
PlayerGameplayDto
��- >
playerGameplayDto
��? P
,
��P Q
GameDto
��R Y
gameClientDto
��Z g
)
��g h
{
�� 	
if
�� 
(
�� 
playerGameplayDto
�� !
!=
��" $
null
��% )
&&
��* ,
gameClientDto
��- :
!=
��; =
null
��> B
)
��B C
{
�� 
if
�� 
(
�� 
playerGameplayDto
�� %
.
��% &
isRegistered
��& 2
)
��2 3
{
�� 
await
�� 
serviceManager
�� (
.
��( )
ProfileService
��) 7
.
��7 8
IsOnline
��8 @
(
��@ A
playerGameplayDto
��A R
.
��R S
Id
��S U
,
��U V
playerGameplayDto
��W h
.
��h i
CurrentSession
��i w
)
��w x
;
��x y
}
�� 
else
�� 
{
�� 
await
�� 
serviceManager
�� (
.
��( )!
GuestAccountService
��) <
.
��< ="
IsOnlineGuestAccount
��= Q
(
��Q R
playerGameplayDto
��R c
.
��c d
Id
��d f
)
��f g
;
��g h
}
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
GameService
��, 7
.
��7 8%
NextTurnInDataBaseAsync
��8 O
(
��O P
(
��P Q
int
��Q T
)
��T U
gameClientDto
��U b
.
��b c
Id
��c e
,
��e f
playerGameplayDto
��g x
.
��x y
Id
��y {
)
��{ |
;
��| }
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
ThrowDiceAsync
�� (
(
��( )
PlayerGameplayDto
��) :
playerGameplayDto
��; L
,
��L M
GameDto
��N U
gameClientDto
��V c
,
��c d
int
��e h
	valueDice
��i r
)
��r s
{
�� 	
if
�� 
(
�� 
playerGameplayDto
�� !
!=
��" $
null
��% )
&&
��* ,
gameClientDto
��- :
!=
��; =
null
��> B
)
��B C
{
�� 
if
�� 
(
�� 
playerGameplayDto
�� %
.
��% &
isRegistered
��& 2
)
��2 3
{
�� 
await
�� 
serviceManager
�� (
.
��( )
ProfileService
��) 7
.
��7 8
IsOnline
��8 @
(
��@ A
playerGameplayDto
��A R
.
��R S
Id
��S U
,
��U V
playerGameplayDto
��W h
.
��h i
CurrentSession
��i w
)
��w x
;
��x y
}
�� 
else
�� 
{
�� 
await
�� 
serviceManager
�� (
.
��( )!
GuestAccountService
��) <
.
��< ="
IsOnlineGuestAccount
��= Q
(
��Q R
playerGameplayDto
��R c
.
��c d
Id
��d f
)
��f g
;
��g h
}
�� 
await
�� 
serviceManager
�� $
.
��$ %
GameService
��% 0
.
��0 1&
ThrowDiceInDataBaseAsync
��1 I
(
��I J
(
��J K
int
��K N
)
��N O
gameClientDto
��O \
.
��\ ]
Id
��] _
,
��_ `
playerGameplayDto
��a r
.
��r s
Id
��s u
,
��u v
	valueDice��w �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
QuitGamePlayAsync
�� +
(
��+ ,
PlayerGameplayDto
��, =
playerGameplayDto
��> O
,
��O P
GameDto
��Q X
gameClientDto
��Y f
)
��f g
{
�� 	
if
�� 
(
�� 
playerGameplayDto
�� !
.
��! "
isRegistered
��" .
)
��. /
{
�� 
await
�� 
serviceManager
�� $
.
��$ %
ProfileService
��% 3
.
��3 4
IsOnline
��4 <
(
��< =
playerGameplayDto
��= N
.
��N O
Id
��O Q
,
��Q R
playerGameplayDto
��S d
.
��d e
CurrentSession
��e s
)
��s t
;
��t u
}
�� 
else
�� 
{
�� 
await
�� 
serviceManager
�� $
.
��$ %!
GuestAccountService
��% 8
.
��8 9"
IsOnlineGuestAccount
��9 M
(
��M N
playerGameplayDto
��N _
.
��_ `
Id
��` b
)
��b c
;
��c d
}
�� 
_
�� 
=
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
async
�� 
(
��  
)
��  !
=>
��" $
{
�� 
await
�� 
serviceManager
�� $
.
��$ %
GameService
��% 0
.
��0 1)
QuitGameplayInDataBaseAsync
��1 L
(
��L M
playerGameplayDto
��M ^
,
��^ _
gameClientDto
��` m
)
��m n
;
��n o
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -$
PlacePieceOnBoardAsync
��. D
(
��D E
PiecePlacementDto
��E V
placementDto
��W c
,
��c d
PlayerGameplayDto
��e v 
playerGameplayDto��w �
,��� �
GameDto��� �
gameClientDto��� �
)��� �
{
�� 	
if
�� 
(
�� 
playerGameplayDto
�� !
!=
��" $
null
��% )
&&
��* ,
gameClientDto
��- :
!=
��; =
null
��> B
&&
��C E
placementDto
��F R
!=
��S U
null
��V Z
)
��Z [
{
�� 
if
�� 
(
�� 
playerGameplayDto
�� %
.
��% &
isRegistered
��& 2
)
��2 3
{
�� 
await
�� 
serviceManager
�� (
.
��( )
ProfileService
��) 7
.
��7 8
IsOnline
��8 @
(
��@ A
playerGameplayDto
��A R
.
��R S
Id
��S U
,
��U V
playerGameplayDto
��W h
.
��h i
CurrentSession
��i w
)
��w x
;
��x y
}
�� 
else
�� 
{
�� 
await
�� 
serviceManager
�� (
.
��( )!
GuestAccountService
��) <
.
��< ="
IsOnlineGuestAccount
��= Q
(
��Q R
playerGameplayDto
��R c
.
��c d
Id
��d f
)
��f g
;
��g h
}
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
GameService
��, 7
.
��7 8$
PlacePieceOnBoardAsync
��8 N
(
��N O
placementDto
��O [
,
��[ \
playerGameplayDto
��] n
,
��n o
(
��p q
int
��q t
)
��t u
gameClientDto��u �
.��� �
Id��� �
)��� �
;��� �
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C%
MessageUnableToSaveData
��C Z
(
��Z [
LanguageUtilities
��[ l
.
��l m+
LANGUAGE_ENGLISH_FORMAT_RESX��m �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -
StartTradeAsync
��. =
(
��= > 
PlayerResourcesDto
��> P
needResources
��Q ^
,
��^ _ 
PlayerResourcesDto
��` r
offerResources��s �
,��� �
GameDto��� �
gameClientDto��� �
)��� �
{
�� 	
if
�� 
(
�� 
offerResources
�� 
!=
�� !
null
��" &
&&
��' )
needResources
��* 7
!=
��8 :
null
��; ?
&&
��@ B
gameClientDto
��C P
!=
��Q S
null
��T X
)
��X Y
{
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
GameService
��, 7
.
��7 8
StartTradeAsync
��8 G
(
��G H
needResources
��H U
,
��U V
offerResources
��W e
,
��e f
(
��g h
int
��h k
)
��k l
gameClientDto
��l y
.
��y z
Id
��z |
)
��| }
;
��} ~
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C%
MessageUnableToSaveData
��C Z
(
��Z [
LanguageUtilities
��[ l
.
��l m+
LANGUAGE_ENGLISH_FORMAT_RESX��m �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
��  
OperationResultDto
�� ,
>
��, -
AcceptTradeAsync
��. >
(
��> ? 
PlayerResourcesDto
��? Q
sendResources
��R _
,
��_ ` 
PlayerResourcesDto
��a s 
receivedResources��t �
,��� �
GameDto��� �
gameClientDto��� �
)��� �
{
�� 	
if
�� 
(
�� 
sendResources
�� 
!=
��  
null
��! %
&&
��& (
receivedResources
��) :
!=
��; =
null
��> B
&&
��C E
gameClientDto
��F S
!=
��T V
null
��W [
)
��[ \
{
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
GameService
��, 7
.
��7 8
AcceptTradeAsync
��8 H
(
��H I
sendResources
��I V
,
��V W
receivedResources
��X i
,
��i j
(
��k l
int
��l o
)
��o p
gameClientDto
��p }
.
��} ~
Id��~ �
)��� �
;��� �
}
�� 
return
�� 
new
��  
OperationResultDto
�� )
(
��) *
false
��* /
,
��/ 0
LanguageUtilities
��1 B
.
��B C%
MessageUnableToSaveData
��C Z
(
��Z [
LanguageUtilities
��[ l
.
��l m+
LANGUAGE_ENGLISH_FORMAT_RESX��m �
)��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �"
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
}-- �+
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
}~~ �
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
},, �
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
}55 �
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
} �

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
}'' �
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
}vv �
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
accountClientDto	x �
.
� �
Id
� �
!=
� �
null
� �
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
accountClientDto	!!s �
)
!!� �
;
!!� �
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
EnumChangeAccountRegister	##x �
.
##� �
UnableToSaveData
##� �
)
##� �
;
##� �
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
)	++ �
;
++� �
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
GUEST_USER_RESERVED_NAME	22s �
)
22� �
)
22� �
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
EnumCreateAccountStatus	77n �
.
77� �
ErrorSaving
77� �
)
77� �
;
77� �
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
EnumAuthenticationStatus	@@h �
.
@@� �
	Incorrect
@@� �
)
@@� �
;
@@� �
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
TOKEN_VERIFY_ACCOUNT_SIZE	\\h �
)
\\� �
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
accountClientDto	bby �
)
bb� �
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
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� .
 NeedHelpProblemWithPasswordAsync
��  @
(
��@ A
string
��A G
email
��H M
)
��M N
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
email
��& +
)
��+ ,
)
��, -
{
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
AccountService
��, :
.
��: ;3
%NeedHelpProblemWithPasswordInDataBase
��; `
(
��` a
email
��a f
)
��f g
;
��g h
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� '
ChangeForgotPasswordAsync
��  9
(
��9 :
string
��: @
email
��A F
,
��F G
string
��H N
newPassword
��O Z
,
��Z [
string
��\ b
token
��c h
)
��h i
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
email
��& +
)
��+ ,
&&
��- /
!
��0 1
string
��1 7
.
��7 8
IsNullOrEmpty
��8 E
(
��E F
newPassword
��F Q
)
��Q R
&&
��S U
!
��V W
string
��W ]
.
��] ^
IsNullOrEmpty
��^ k
(
��k l
token
��l q
)
��q r
)
��r s
{
�� 
return
�� 
await
�� 
serviceManager
�� +
.
��+ ,
AccountService
��, :
.
��: ;,
ChangeForgotPasswordInDataBase
��; Y
(
��Y Z
email
��Z _
,
��_ `
newPassword
��a l
,
��l m
token
��n s
)
��s t
;
��t u
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
	IsSuccess			w �
,
		� �
MessageResponse
		� �
)
		� �
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
} �#
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
Status	~ �
)
� �
:
� �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
status	 �
)
� �
:
� �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
MessageResponse	w �
)
� �
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
	IsSuccess	""z �
,
""� �
MessageResponse
""� �
)
""� �
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
	IsSuccess	''y �
,
''� �
MessageResponse
''� �
)
''� �
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
}33 �
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
MessageResponse	s �
)
� �
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
} �
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
ProfileScoreDto	 �
profileScoreDto
� �
)
� �
:
� �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
:	 �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
} �
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
actualPlayerGameplay	l �
)
� �
:
� �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
} �
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
GuestAccountDto	} �
>
� �
guestAccountDtos
� �
)
� �
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
votesReceived	| �
)
� �
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
}## �
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
	IsSuccess	{ �
,
� �
MessageResponse
� �
)
� �
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
} �
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
MessageResponse	r �
)
� �
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
} �

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
)	 �
:
� �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
} �
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
}&& �	
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
} �
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
	IsSuccess	~ �
,
� �
MessageResponse
� �
)
� �
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

ProfileDto	w �

profileDto
� �
)
� �
:
� �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
} �

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
status	{ �
)
� �
:
� �
base
� �
(
� �
	IsSuccess
� �
,
� �
MessageResponse
� �
)
� �
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
} �
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
MessageResponse	z �
)
� �
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
} �
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
	IsSuccess	~ �
,
� �
MessageResponse
� �
)
� �
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
} �

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
} �

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
} �
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
} �
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
} �
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
} �

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
} �
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
} �
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
} �
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
} �
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
} �
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
}   �
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
}!! �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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