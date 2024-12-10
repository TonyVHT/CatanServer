�
mC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\ProfileRepositories\ProfileRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '
ProfileRepositories' :
{ 
public 

class 
ProfileRepository "
:# $

Repository% /
</ 0
Profile0 7
>7 8
,8 9
IProfileRepository: L
{ 
public 
ProfileRepository  
(  !
	DbContext! *
	dbContext+ 4
)4 5
:6 7
base8 <
(< =
	dbContext= F
)F G
{ 	
}
 
public 
async 
Task 
< 
List 
< 
Profile &
>& '
>' (&
GetFriendsByProfileIdAsync) C
(C D
intD G
	profileIdH Q
)Q R
{ 	
List 
< 
Profile 
> 

friendList $
=% &
new' *
List+ /
</ 0
Profile0 7
>7 8
(8 9
)9 :
;: ;
try 
{ 

friendList 
= 
await "
dbDomain# +
.+ ,
Where, 1
(1 2
profile2 9
=>: <
profile= D
.D E
IdE G
!=H J
	profileIdK T
&&U W
( 
profile 
. &
RelationSentFriendRequests 7
.7 8
Any8 ;
(; <
friendRequest< I
=>J L
friendRequest !
.! "
ReceiverProfileId" 3
==4 6
	profileId7 @
&&A C
friendRequestD Q
.Q R
StatusR X
==Y [(
FriendRequestStatusUtilities\ x
.x y+
FRIEND_REQUEST_STATUS_ACCEPTED	y �
)
� �
||
� �
profile 
. *
RelationReceivedFriendRequests :
.: ;
Any; >
(> ?
friendRequest? L
=>M O
friendRequest   !
.  ! "
SenderProfileId  " 1
==  2 4
	profileId  5 >
&&  ? A
friendRequest  B O
.  O P
Status  P V
==  W Y(
FriendRequestStatusUtilities  Z v
.  v w+
FRIEND_REQUEST_STATUS_ACCEPTED	  w �
)
  � �
)
  � �
)
  � �
.
  � �
ToListAsync
  � �
(
  � �
)
  � �
;
  � �
}!! 
catch"" 
("" !
ArgumentNullException"" (
ex"") +
)""+ ,
{## 
Log$$ 
.$$ 
Error$$ 
($$ 
ex$$ 
,$$ 
ex$$  
.$$  !
Source$$! '
)$$' (
;$$( )
}%% 
catch&& 
(&& %
InvalidOperationException&& ,
ex&&- /
)&&/ 0
{'' 
Log(( 
.(( 
Error(( 
((( 
ex(( 
,(( 
ex((  
.((  !
Source((! '
)((' (
;((( )
}** 
catch++ 
(++ 
	Exception++ 
ex++ 
)++  
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
}.. 
return00 

friendList00 
;00 
}11 	
public33 
async33 
Task33 
<33 
List33 
<33 
Profile33 &
>33& '
>33' (4
(GetPendingFriendRequestsByProfileIdAsync33) Q
(33Q R
int33R U
	profileId33V _
)33_ `
{44 	
List55 
<55 
Profile55 
>55 
pendingRequests55 )
=55* +
new55, /
List550 4
<554 5
Profile555 <
>55< =
(55= >
)55> ?
;55? @
try66 
{77 
pendingRequests88 
=88  !
await88" '
dbDomain88( 0
.880 1
Where881 6
(886 7
profile887 >
=>88? A
profile88B I
.88I J
Id88J L
!=88M O
	profileId88P Y
&&88Z \
profile88] d
.88d e&
RelationSentFriendRequests88e 
.	88 �
Any
88� �
(
88� �
friendRequest
88� �
=>
88� �
friendRequest99 !
.99! "
ReceiverProfileId99" 3
==994 6
	profileId997 @
&&99A C
friendRequest99D Q
.99Q R
Status99R X
==99Y [(
FriendRequestStatusUtilities99\ x
.99x y*
FRIEND_REQUEST_STATUS_PENDING	99y �
)
99� �
)
99� �
.
99� �
ToListAsync
99� �
(
99� �
)
99� �
;
99� �
};; 
catch<< 
(<< !
ArgumentNullException<< (
ex<<) +
)<<+ ,
{== 
Log>> 
.>> 
Error>> 
(>> 
ex>> 
,>> 
ex>>  
.>>  !
Source>>! '
)>>' (
;>>( )
}?? 
catch@@ 
(@@ %
InvalidOperationException@@ ,
ex@@- /
)@@/ 0
{AA 
LogBB 
.BB 
ErrorBB 
(BB 
exBB 
,BB 
exBB  
.BB  !
SourceBB! '
)BB' (
;BB( )
}DD 
catchEE 
(EE 
	ExceptionEE 
exEE 
)EE  
{FF 
LogGG 
.GG 
ErrorGG 
(GG 
exGG 
,GG 
exGG  
.GG  !
SourceGG! '
)GG' (
;GG( )
}HH 
returnJJ 
pendingRequestsJJ "
;JJ" #
}KK 	
publicNN 
asyncNN 
TaskNN 
<NN 
intNN 
>NN #
GetProfileIdByNameAsyncNN 6
(NN6 7
stringNN7 =
nameProfileNN> I
)NNI J
{OO 	
tryPP 
{QQ 
ProfileRR 
profileRecordRR %
=RR& '
awaitRR( -
dbDomainRR. 6
.RR6 7
FirstOrDefaultAsyncRR7 J
(RRJ K
profileRRK R
=>RRS U
profileRRV ]
.RR] ^
NameRR^ b
==RRc e
nameProfileRRf q
)RRq r
;RRr s
ifTT 
(TT 
profileRecordTT !
!=TT" $
nullTT% )
)TT) *
{UU 
returnVV 
profileRecordVV (
.VV( )
IdVV) +
;VV+ ,
}WW 
}YY 
catchZZ 
(ZZ !
ArgumentNullExceptionZZ (
exZZ) +
)ZZ+ ,
{[[ 
Log\\ 
.\\ 
Error\\ 
(\\ 
ex\\ 
,\\ 
ex\\  
.\\  !
Source\\! '
)\\' (
;\\( )
}]] 
catch^^ 
(^^ %
InvalidOperationException^^ ,
ex^^- /
)^^/ 0
{__ 
Log`` 
.`` 
Error`` 
(`` 
ex`` 
,`` 
ex``  
.``  !
Source``! '
)``' (
;``( )
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
Logee 
.ee 
Erroree 
(ee 
exee 
,ee 
exee  
.ee  !
Sourceee! '
)ee' (
;ee( )
}ff 
returnhh 
CharacterUtilitieshh %
.hh% &
INT_VALUE_ZEROhh& 4
;hh4 5
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
boolkk 
>kk (
IsProfileNameRegisteredAsynckk  <
(kk< =
stringkk= C
namekkD H
)kkH I
{ll 	
boolmm 
isNameRegiseredmm  
=mm! "
falsemm# (
;mm( )
tryoo 
{pp 
Profileqq 
profileRecordqq %
=qq& '
awaitqq( -
dbDomainqq. 6
.qq6 7
FirstOrDefaultAsyncqq7 J
(qqJ K
profileqqK R
=>qqS U
profileqqV ]
.qq] ^
Nameqq^ b
==qqc e
nameqqf j
)qqj k
;qqk l
ifss 
(ss 
profileRecordss !
!=ss" $
nullss% )
)ss) *
{tt 
isNameRegisereduu #
=uu$ %
trueuu& *
;uu* +
}vv 
}xx 
catchyy 
(yy !
ArgumentNullExceptionyy (
exyy) +
)yy+ ,
{zz 
Log{{ 
.{{ 
Error{{ 
({{ 
ex{{ 
,{{ 
ex{{  
.{{  !
Source{{! '
){{' (
;{{( )
}|| 
catch}} 
(}} %
InvalidOperationException}} ,
ex}}- /
)}}/ 0
{~~ 
Log 
. 
Error 
( 
ex 
, 
ex  
.  !
Source! '
)' (
;( )
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
�� 
isNameRegisered
�� "
;
��" #
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
�� $
SendFriendRequestAsync
��  6
(
��6 7
int
��7 :
	profileId
��; D
,
��D E
int
��F I
profileIdFriend
��J Y
)
��Y Z
{
�� 	
bool
�� 
isSuccessful
�� 
=
�� 
false
��  %
;
��% &
try
�� 
{
�� 
Profile
�� 
profile
�� 
=
��  !
await
��" '
dbDomain
��( 0
.
��0 1
	FindAsync
��1 :
(
��: ;
	profileId
��; D
)
��D E
;
��E F
Profile
�� 
profileFriend
�� %
=
��& '
await
��( -
dbDomain
��. 6
.
��6 7
	FindAsync
��7 @
(
��@ A
profileIdFriend
��A P
)
��P Q
;
��Q R
if
�� 
(
�� 
profile
�� 
!=
�� 
null
�� #
&&
��$ &
profileFriend
��' 4
!=
��5 7
null
��8 <
)
��< =
{
�� 
return
�� !
TryAddFriendRequest
�� .
(
��. /
profile
��/ 6
,
��6 7
profileFriend
��8 E
,
��E F
	profileId
��G P
,
��P Q
profileIdFriend
��R a
)
��a b
;
��b c
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
isSuccessful
�� 
;
��  
}
�� 	
private
�� 
static
�� 
bool
�� !
TryAddFriendRequest
�� /
(
��/ 0
Profile
��0 7
senderProfile
��8 E
,
��E F
Profile
��G N
receiverProfile
��O ^
,
��^ _
int
��` c
senderId
��d l
,
��l m
int
��n q

receiverId
��r |
)
��| }
{
�� 	
if
�� 
(
�� 
!
�� 
senderProfile
�� 
.
�� (
RelationSentFriendRequests
�� 9
.
��9 :
Any
��: =
(
��= >
fr
��> @
=>
��A C
fr
��D F
.
��F G
ReceiverProfileId
��G X
==
��Y [

receiverId
��\ f
)
��f g
&&
��h j
!
�� 
senderProfile
�� 
.
�� ,
RelationReceivedFriendRequests
�� =
.
��= >
Any
��> A
(
��A B
fr
��B D
=>
��E G
fr
��H J
.
��J K
SenderProfileId
��K Z
==
��[ ]
senderId
��^ f
)
��f g
)
��g h
{
�� 
FriendRequest
�� 
friendRequest
�� +
=
��, -
new
��. 1
FriendRequest
��2 ?
{
�� 
Date
�� 
=
�� 
DateTime
�� #
.
��# $
Now
��$ '
,
��' (
SenderProfileId
�� #
=
��$ %
senderId
��& .
,
��. /
ReceiverProfileId
�� %
=
��& '

receiverId
��( 2
,
��2 3
Status
�� 
=
�� *
FriendRequestStatusUtilities
�� 9
.
��9 :+
FRIEND_REQUEST_STATUS_PENDING
��: W
}
�� 
;
�� 
senderProfile
�� 
.
�� (
RelationSentFriendRequests
�� 8
.
��8 9
Add
��9 <
(
��< =
friendRequest
��= J
)
��J K
;
��K L
receiverProfile
�� 
.
��  ,
RelationReceivedFriendRequests
��  >
.
��> ?
Add
��? B
(
��B C
friendRequest
��C P
)
��P Q
;
��Q R
return
�� 
true
�� 
;
�� 
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
�� &
AcceptFriendRequestAsync
��  8
(
��8 9
int
��9 <
	profileId
��= F
,
��F G
int
��H K
profileIdFriend
��L [
)
��[ \
{
�� 	
bool
�� 
isSuccessful
�� 
=
�� 
false
��  %
;
��% &
try
�� 
{
�� 
Profile
�� 
profile
�� 
=
��  !
await
��" '
dbDomain
��( 0
.
��0 1
	FindAsync
��1 :
(
��: ;
	profileId
��; D
)
��D E
;
��E F
Profile
�� 
profileFriend
�� %
=
��& '
await
��( -
dbDomain
��. 6
.
��6 7
	FindAsync
��7 @
(
��@ A
profileIdFriend
��A P
)
��P Q
;
��Q R
if
�� 
(
�� 
profile
�� 
!=
�� 
null
�� #
&&
��$ &
profileFriend
��' 4
!=
��5 7
null
��8 <
)
��< =
{
�� 
FriendRequest
�� !!
friendRequestFriend
��" 5
=
��6 7
profile
��8 ?
.
��? @,
RelationReceivedFriendRequests
��@ ^
.
��^ _
FirstOrDefault
��_ m
(
��m n
friendRequest
��n {
=>
��| ~
friendRequest
�� %
.
��% &
SenderProfileId
��& 5
==
��6 8
profileIdFriend
��9 H
&&
��I K
friendRequest
��L Y
.
��Y Z
Status
��Z `
==
��a c+
FriendRequestStatusUtilities��d �
.��� �-
FRIEND_REQUEST_STATUS_PENDING��� �
)��� �
;��� �
if
�� 
(
�� !
friendRequestFriend
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� !
friendRequestFriend
�� +
.
��+ ,
Status
��, 2
=
��3 4*
FriendRequestStatusUtilities
��5 Q
.
��Q R,
FRIEND_REQUEST_STATUS_ACCEPTED
��R p
;
��p q
isSuccessful
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
isSuccessful
�� 
;
��  
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
�� &
RejectFriendRequestAsync
��  8
(
��8 9
int
��9 <
	profileId
��= F
,
��F G
int
��H K
profileIdFriend
��L [
)
��[ \
{
�� 	
bool
�� 
isSuccessful
�� 
=
�� 
false
��  %
;
��% &
try
�� 
{
�� 
Profile
�� 
profile
�� 
=
��  !
await
��" '
dbDomain
��( 0
.
��0 1
	FindAsync
��1 :
(
��: ;
	profileId
��; D
)
��D E
;
��E F
Profile
�� 
profileFriend
�� %
=
��& '
await
��( -
dbDomain
��. 6
.
��6 7
	FindAsync
��7 @
(
��@ A
profileIdFriend
��A P
)
��P Q
;
��Q R
if
�� 
(
�� 
profile
�� 
!=
�� 
null
�� #
&&
��$ &
profileFriend
��' 4
!=
��5 7
null
��8 <
)
��< =
{
�� 
FriendRequest
�� !!
friendRequestFriend
��" 5
=
��6 7
profile
��8 ?
.
��? @,
RelationReceivedFriendRequests
��@ ^
.
��^ _
FirstOrDefault
��_ m
(
��m n
friendRequest
��n {
=>
��| ~
friendRequest
�� %
.
��% &
SenderProfileId
��& 5
==
��6 8
profileIdFriend
��9 H
&&
��I K
friendRequest
��L Y
.
��Y Z
Status
��Z `
==
��a c+
FriendRequestStatusUtilities��d �
.��� �-
FRIEND_REQUEST_STATUS_PENDING��� �
)��� �
;��� �
if
�� 
(
�� !
friendRequestFriend
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� !
friendRequestFriend
�� +
.
��+ ,
Status
��, 2
=
��3 4*
FriendRequestStatusUtilities
��5 Q
.
��Q R,
FRIEND_REQUEST_STATUS_REJECTED
��R p
;
��p q
isSuccessful
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
isSuccessful
�� 
;
��  
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
��! "#
GetProfileByNameAsync
��# 8
(
��8 9
string
��9 ?
nameProfile
��@ K
)
��K L
{
�� 	
Profile
�� 
profileRecord
�� !
=
��" #
null
��$ (
;
��( )
try
�� 
{
�� 
profileRecord
�� 
=
�� 
await
��  %
dbDomain
��& .
.
��. /!
FirstOrDefaultAsync
��/ B
(
��B C
profile
��C J
=>
��K M
profile
��N U
.
��U V
Name
��V Z
==
��[ ]
nameProfile
��^ i
)
��i j
;
��j k
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
profileRecord
��  
;
��  !
}
�� 	
}
�� 
}�� �
nC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\ProfileRepositories\IProfileRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '
ProfileRepositories' :
{		 
public

 

	interface

 
IProfileRepository

 '
:

( )
IRepository

* 5
<

5 6
Profile

6 =
>

= >
{ 
Task 
< 
bool 
> (
IsProfileNameRegisteredAsync /
(/ 0
string0 6
name7 ;
); <
;< =
Task 
< 
int 
> #
GetProfileIdByNameAsync )
() *
string* 0
nameProfile1 <
)< =
;= >
Task 
< 
Profile 
> !
GetProfileByNameAsync +
(+ ,
string, 2
nameProfile3 >
)> ?
;? @
Task 
< 
List 
< 
Profile 
> 
> &
GetFriendsByProfileIdAsync 6
(6 7
int7 :
	profileId; D
)D E
;E F
Task 
< 
List 
< 
Profile 
> 
> 4
(GetPendingFriendRequestsByProfileIdAsync D
(D E
intE H
	profileIdI R
)R S
;S T
Task 
< 
bool 
> "
SendFriendRequestAsync )
() *
int* -
	profileId. 7
,7 8
int9 <
profileIdFriend= L
)L M
;M N
Task 
< 
bool 
> $
AcceptFriendRequestAsync +
(+ ,
int, /
	profileId0 9
,9 :
int; >
profileIdFriend? N
)N O
;O P
Task 
< 
bool 
> $
RejectFriendRequestAsync +
(+ ,
int, /
	profileId0 9
,9 :
int; >
profileIdFriend? N
)N O
;O P
} 
} �D
RC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\Repository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
{ 
public 

class 

Repository 
< 
T 
> 
:  
IRepository! ,
<, -
T- .
>. /
where0 5
T6 7
:8 9
class: ?
{ 
	protected 
readonly 
	DbContext $
	dbContext% .
;. /
	protected 
readonly 
DbSet  
<  !
T! "
>" #
dbDomain$ ,
;, -
public 

Repository 
( 
	DbContext #
	dbContext$ -
)- .
{ 	
this 
. 
	dbContext 
= 
	dbContext &
;& '
this 
. 
dbDomain 
= 
	dbContext %
.% &
Set& )
<) *
T* +
>+ ,
(, -
)- .
;. /
} 	
public 
bool 
	AddEntity 
( 
T 
entity  &
)& '
{ 	
bool 
isSuccessAdd 
= 
false  %
;% &
try 
{ 
dbDomain 
. 
Add 
( 
entity #
)# $
;$ %
isSuccessAdd 
= 
true #
;# $
}   
catch!! 
(!! '
DbEntityValidationException!! .
ex!!/ 1
)!!1 2
{"" 
Log## 
.## 
Error## 
(## 
ex## 
,## 
ex##  
.##  !
Source##! '
)##' (
;##( )
}$$ 
catch%% 
(%% 
DbUpdateException%% $
ex%%% '
)%%' (
{&& 
Log'' 
.'' 
Error'' 
('' 
ex'' 
,'' 
ex''  
.''  !
Source''! '
)''' (
;''( )
}(( 
catch)) 
()) 
	Exception)) 
ex)) 
))) 
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
},, 
return-- 
isSuccessAdd-- 
;--  
}.. 	
public00 
async00 
Task00 
<00 
bool00 
>00 !
DeleteEntityByIdAsync00  5
(005 6
int006 9
id00: <
)00< =
{11 	
bool22 
isSuccessfulDelete22 #
=22$ %
false22& +
;22+ ,
try33 
{44 
T55 
entity55 
=55 
await55  
dbDomain55! )
.55) *
	FindAsync55* 3
(553 4
id554 6
)556 7
;557 8
if66 
(66 
entity66 
!=66 
null66 "
)66" #
{77 
dbDomain88 
.88 
Remove88 #
(88# $
entity88$ *
)88* +
;88+ ,
isSuccessfulDelete99 &
=99' (
true99) -
;99- .
}:: 
};; 
catch<< 
(<< 
DbUpdateException<< $
ex<<% '
)<<' (
{== 
Log>> 
.>> 
Error>> 
(>> 
ex>> 
,>> 
ex>>  
.>>  !
Source>>! '
)>>' (
;>>( )
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@ 
{AA 
LogBB 
.BB 
ErrorBB 
(BB 
exBB 
,BB 
exBB  
.BB  !
SourceBB! '
)BB' (
;BB( )
}CC 
returnDD 
isSuccessfulDeleteDD %
;DD% &
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
TGG 
>GG 
FindEntityByIdAsyncGG 0
(GG0 1
intGG1 4
idGG5 7
)GG7 8
{HH 	
TII 
entityII 
=II 
nullII 
;II 
tryJJ 
{KK 
entityLL 
=LL 
awaitLL 
	dbContextLL (
.LL( )
SetLL) ,
<LL, -
TLL- .
>LL. /
(LL/ 0
)LL0 1
.LL1 2
	FindAsyncLL2 ;
(LL; <
idLL< >
)LL> ?
;LL? @
ifNN 
(NN 
entityNN 
!=NN 
nullNN "
)NN" #
{OO 
awaitPP 
	dbContextPP #
.PP# $
EntryPP$ )
(PP) *
entityPP* 0
)PP0 1
.PP1 2
ReloadAsyncPP2 =
(PP= >
)PP> ?
;PP? @
}QQ 
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
LogUU 
.UU 
ErrorUU 
(UU 
exUU 
,UU 
exUU  
.UU  !
SourceUU! '
)UU' (
;UU( )
}VV 
returnWW 
entityWW 
;WW 
}XX 	
publicYY 
asyncYY 
TaskYY 
<YY 
IEnumerableYY %
<YY% &
TYY& '
>YY' (
>YY( )
GetAllEntitiesAsyncYY* =
(YY= >
)YY> ?
{ZZ 	
IEnumerable[[ 
<[[ 
T[[ 
>[[ 
entities[[ #
=[[$ %
null[[& *
;[[* +
try\\ 
{]] 
entities^^ 
=^^ 
await^^  
dbDomain^^! )
.^^) *
ToListAsync^^* 5
(^^5 6
)^^6 7
;^^7 8
}__ 
catch`` 
(`` 
	Exception`` 
ex`` 
)``  
{aa 
Logbb 
.bb 
Errorbb 
(bb 
exbb 
,bb 
exbb  
.bb  !
Sourcebb! '
)bb' (
;bb( )
}cc 
returndd 
entitiesdd 
;dd 
}ee 	
publicgg 
asyncgg 
Taskgg 
<gg 
Tgg 
>gg 
GetEntityByIdAsyncgg /
(gg/ 0
intgg0 3
idgg4 6
)gg6 7
{hh 	
Tii 
entityii 
=ii 
nullii 
;ii 
tryjj 
{kk 
entityll 
=ll 
awaitll 
dbDomainll '
.ll' (
	FindAsyncll( 1
(ll1 2
idll2 4
)ll4 5
;ll5 6
}mm 
catchnn 
(nn 
	Exceptionnn 
exnn 
)nn  
{oo 
Logpp 
.pp 
Errorpp 
(pp 
expp 
,pp 
expp  
.pp  !
Sourcepp! '
)pp' (
;pp( )
}qq 
returnrr 
entityrr 
;rr 
}ss 	
publicuu 
booluu 
UpdateEntityuu  
(uu  !
Tuu! "
entityuu# )
)uu) *
{vv 	
boolww 
isSuccessfulUpdateww #
=ww$ %
falseww& +
;ww+ ,
tryxx 
{yy 
	dbContextzz 
.zz 
Entryzz 
(zz  
entityzz  &
)zz& '
.zz' (
Statezz( -
=zz. /
EntityStatezz0 ;
.zz; <
Modifiedzz< D
;zzD E
isSuccessfulUpdate{{ "
={{# $
true{{% )
;{{) *
}|| 
catch}} 
(}} 
DbUpdateException}} $
ex}}% '
)}}' (
{~~ 
Log 
. 
Error 
( 
ex 
, 
ex  
.  !
Source! '
)' (
;( )
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
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
��  
isSuccessfulUpdate
�� %
;
��% &
}
�� 	
}
�� 
}�� �<
YC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\RepositoryManager.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
{ 
public 

class 
RepositoryManager "
:# $
IRepositoryManager% 7
{ 
private 
readonly 
	DbContext "
	dbContext# ,
;, -
private 
IAccountRepository "
accountRepository# 4
;4 5
private 
IProfileRepository "
profileRepository# 4
;4 5
private 
IGameRepository 
gameRepository  .
;. /
private "
IProfileGameRepository &!
profileGameRepository' <
;< =
private #
IGuestAccountRepository '"
guestAccountRepository( >
;> ?
private '
IGuestAccountGameRepository +&
guestAccountGameRepository, F
;F G
private $
IFriendRequestRepository (#
friendRequestRepository) @
;@ A
public 
RepositoryManager  
(  !
	DbContext! *
	dbContext+ 4
)4 5
{ 	
this 
. 
	dbContext 
= 
	dbContext &
;& '
}   	
public!! 
IAccountRepository!! !
AccountRepository!!" 3
{"" 	
get## 
{$$ 
if%% 
(%% 
accountRepository%% %
==%%& (
null%%) -
)%%- .
{&& 
accountRepository'' %
=''& '
new''( +
AccountRepository'', =
(''= >
	dbContext''> G
)''G H
;''H I
}(( 
return** 
accountRepository** (
;**( )
}++ 
},, 	
public.. 
IProfileRepository.. !
ProfileRepository.." 3
{// 	
get00 
{11 
if22 
(22 
profileRepository22 %
==22& (
null22) -
)22- .
{33 
profileRepository44 %
=44& '
new44( +
ProfileRepository44, =
(44= >
	dbContext44> G
)44G H
;44H I
}55 
return66 
profileRepository66 (
;66( )
}77 
}88 	
public:: 
IGameRepository:: 
GameRepository:: -
{;; 	
get<< 
{== 
if>> 
(>> 
gameRepository>> !
==>>" $
null>>% )
)>>) *
{?? 
gameRepository@@ "
=@@# $
new@@% (
GameRepository@@) 7
(@@7 8
	dbContext@@8 A
)@@A B
;@@B C
}AA 
returnBB 
gameRepositoryBB %
;BB% &
}CC 
}DD 	
publicFF "
IProfileGameRepositoryFF %!
ProfileGameRepositoryFF& ;
{GG 	
getHH 
{II 
ifJJ 
(JJ !
profileGameRepositoryJJ (
==JJ) +
nullJJ, 0
)JJ0 1
{KK !
profileGameRepositoryLL )
=LL* +
newLL, /!
ProfileGameRepositoryLL0 E
(LLE F
	dbContextLLF O
)LLO P
;LLP Q
}MM 
returnNN !
profileGameRepositoryNN ,
;NN, -
}OO 
}PP 	
publicRR #
IGuestAccountRepositoryRR &"
GuestAccountRepositoryRR' =
{SS 	
getTT 
{UU 
ifVV 
(VV "
guestAccountRepositoryVV *
==VV+ -
nullVV. 2
)VV2 3
{WW "
guestAccountRepositoryXX *
=XX+ ,
newXX- 0"
GuestAccountRepositoryXX1 G
(XXG H
	dbContextXXH Q
)XXQ R
;XXR S
}YY 
returnZZ "
guestAccountRepositoryZZ -
;ZZ- .
}[[ 
}\\ 	
public^^ '
IGuestAccountGameRepository^^ *&
GuestAccountGameRepository^^+ E
{__ 	
get`` 
{aa 
ifbb 
(bb &
guestAccountGameRepositorybb .
==bb/ 1
nullbb2 6
)bb6 7
{cc &
guestAccountGameRepositorydd .
=dd/ 0
newdd1 4&
GuestAccountGameRepositorydd5 O
(ddO P
	dbContextddP Y
)ddY Z
;ddZ [
}ee 
returnff &
guestAccountGameRepositoryff 1
;ff1 2
}gg 
}hh 	
publicjj $
IFriendRequestRepositoryjj '#
FriendRequestRepositoryjj( ?
{kk 	
getll 
{mm 
ifnn 
(nn #
friendRequestRepositorynn +
==nn, .
nullnn/ 3
)nn3 4
{oo #
friendRequestRepositorypp +
=pp, -
newpp. 1#
FriendRequestRepositorypp2 I
(ppI J
	dbContextppJ S
)ppS T
;ppT U
}qq 
returnrr #
friendRequestRepositoryrr .
;rr. /
}ss 
}tt 	
publicvv 
asyncvv 
Taskvv 
	SaveAsyncvv #
(vv# $
)vv$ %
{ww 	
tryxx 
{yy 
awaitzz 
	dbContextzz 
.zz  
SaveChangesAsynczz  0
(zz0 1
)zz1 2
;zz2 3
}{{ 
catch|| 
(|| 
DbUpdateException|| $
ex||% '
)||' (
{}} 
Log~~ 
.~~ 
Error~~ 
(~~ 
ex~~ 
,~~ 
ex~~  
.~~  !
Source~~! '
)~~' (
;~~( )
} 
catch
�� 
(
�� #
NotSupportedException
�� '
ex
��( *
)
��* +
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
�� %
ObjectDisposedException
�� )
ex
��* ,
)
��, -
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
�� '
InvalidOperationException
�� +
ex
��, .
)
��. /
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
�� 
	Exception
�� 
ex
�� 
)
�� 
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
�� 	
public
�� 
Task
�� 
<
�� "
DbContextTransaction
�� (
>
��( )#
StartTransactionAsync
��* ?
(
��? @
)
��@ A
{
�� 	
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" #
	dbContext
��# ,
.
��, -
Database
��- 5
.
��5 6
BeginTransaction
��6 F
(
��F G
)
��G H
)
��H I
;
��I J
}
�� 	
}
�� 
}�� ϵ
uC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\ProfileGameRepositories\ProfileGameRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '#
ProfileGameRepositories' >
{ 
public 

class !
ProfileGameRepository &
:' (

Repository) 3
<3 4
ProfileGame4 ?
>? @
,@ A"
IProfileGameRepositoryB X
{ 
public !
ProfileGameRepository $
($ %
	DbContext% .
	dbContext/ 8
)8 9
:: ;
base; ?
(? @
	dbContext@ I
)I J
{ 	
} 	
public 
async 
Task 
< 
ProfileGame %
>% &%
IsPlayerJoinedToGameAsync' @
(@ A
intA D
	idProfileE N
,N O
intP S
idGameT Z
)Z [
{ 	
ProfileGame 
profilegameRecord )
=* +
null, 0
;0 1
try 
{ 
profilegameRecord !
=" #
await$ )
dbDomain* 2
.2 3
FirstOrDefaultAsync3 F
(F G
profileGameG R
=>S U
profileGameV a
.a b
	ProfileIdb k
==l n
	idProfileo x
&& 
profileGame 
. 
GameId %
==& (
idGame) /
)/ 0
;0 1
} 
catch 
( !
ArgumentNullException (
ex) +
)+ ,
{ 
Log 
. 
Error 
( 
ex 
, 
ex  
.  !
Source! '
)' (
;( )
} 
catch   
(   %
InvalidOperationException   ,
ex  - /
)  / 0
{!! 
Log"" 
."" 
Error"" 
("" 
ex"" 
,"" 
ex""  
.""  !
Source""! '
)""' (
;""( )
}$$ 
catch%% 
(%% 
	Exception%% 
ex%% 
)%%  
{&& 
Log'' 
.'' 
Error'' 
('' 
ex'' 
,'' 
ex''  
.''  !
Source''! '
)''' (
;''( )
}(( 
return** 
profilegameRecord** $
;**$ %
}++ 	
public-- 
async-- 
Task-- 
<-- 
bool-- 
>-- 
StartGameProfile--  0
(--0 1
int--1 4
idGame--5 ;
,--; <
int--= @
	idProfile--A J
)--J K
{.. 	
bool// 
isSuccessChange//  
=//! "
false//# (
;//( )
try11 
{22 
ProfileGame33 
profilegameRecord33 -
=33. /
await330 5
dbDomain336 >
.33> ?
FirstOrDefaultAsync33? R
(33R S
profileGame33S ^
=>33_ a
profileGame33b m
.33m n
	ProfileId33n w
==33x z
	idProfile	33{ �
&&44 
profileGame44 
.44 
GameId44 %
==44& (
idGame44) /
)44/ 0
;440 1
if66 
(66 
profilegameRecord66 %
!=66& (
null66) -
)66- .
{77 
profilegameRecord88 %
.88% &
IsActiveGame88& 2
=883 4
GameplayUtilities885 F
.88F G!
GAMEPLAY_STATUS_START88G \
;88\ ]
}99 
};; 
catch<< 
(<< !
ArgumentNullException<< (
ex<<) +
)<<+ ,
{== 
Log>> 
.>> 
Error>> 
(>> 
ex>> 
,>> 
ex>>  
.>>  !
Source>>! '
)>>' (
;>>( )
}?? 
catch@@ 
(@@ %
InvalidOperationException@@ ,
ex@@- /
)@@/ 0
{AA 
LogBB 
.BB 
ErrorBB 
(BB 
exBB 
,BB 
exBB  
.BB  !
SourceBB! '
)BB' (
;BB( )
}DD 
catchEE 
(EE 
	ExceptionEE 
exEE 
)EE  
{FF 
LogGG 
.GG 
ErrorGG 
(GG 
exGG 
,GG 
exGG  
.GG  !
SourceGG! '
)GG' (
;GG( )
}HH 
returnJJ 
isSuccessChangeJJ "
;JJ" #
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
ListMM 
<MM 
ProfileGameMM *
>MM* +
>MM+ ,
GetTenBestPlayersMM- >
(MM> ?
)MM? @
{NN 	
ListOO 
<OO 
ProfileGameOO 
>OO 
profileGameRecordOO /
=OO0 1
nullOO2 6
;OO6 7
tryPP 
{QQ 
profileGameRecordRR !
=RR" #
awaitRR$ )
dbDomainRR* 2
.SS 
WhereSS 
(SS 
profileGameSS &
=>SS' )
profileGameSS* 5
.SS5 6
PointsSS6 <
>=SS= ?
GameplayUtilitiesSS@ Q
.SSQ R
WIN_POINTS_TO_WINSSR c
)SSc d
.TT 
GroupByTT 
(TT 
profileGameTT (
=>TT) +
profileGameTT, 7
.TT7 8
	ProfileIdTT8 A
)TTA B
.UU 
SelectUU 
(UU 
groupUU !
=>UU" $
groupUU% *
.UU* +
FirstOrDefaultUU+ 9
(UU9 :
)UU: ;
)UU; <
.VV 
OrderByDescendingVV &
(VV& '
profileGameVV' 2
=>VV3 5
profileGameVV6 A
.VVA B
PointsVVB H
)VVH I
.WW 
TakeWW 
(WW 
GameplayUtilitiesWW +
.WW+ ,
WIN_POINTS_TO_WINWW, =
)WW= >
.XX 
ToListAsyncXX  
(XX  !
)XX! "
;XX" #
foreachZZ 
(ZZ 
ProfileGameZZ $
profileGameZZ% 0
inZZ1 3
profileGameRecordZZ4 E
)ZZE F
{[[ 
Console\\ 
.\\ 
	WriteLine\\ %
(\\% &
profileGame\\& 1
.\\1 2
	ProfileId\\2 ;
)\\; <
;\\< =
}]] 
}^^ 
catch__ 
(__ !
ArgumentNullException__ (
ex__) +
)__+ ,
{`` 
Logaa 
.aa 
Erroraa 
(aa 
exaa 
,aa 
exaa  
.aa  !
Sourceaa! '
)aa' (
;aa( )
}bb 
catchcc 
(cc %
InvalidOperationExceptioncc ,
excc- /
)cc/ 0
{dd 
Logee 
.ee 
Erroree 
(ee 
exee 
,ee 
exee  
.ee  !
Sourceee! '
)ee' (
;ee( )
}ff 
catchgg 
(gg 
	Exceptiongg 
exgg 
)gg  
{hh 
Logii 
.ii 
Errorii 
(ii 
exii 
,ii 
exii  
.ii  !
Sourceii! '
)ii' (
;ii( )
}jj 
returnkk 
profileGameRecordkk $
;kk$ %
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
intnn 
>nn 
GetGlobalPositionnn 0
(nn0 1
Profilenn1 8
currentPlayernn9 F
)nnF G
{oo 	
intpp 
globalPositionpp 
=pp  
-pp! "
$numpp" #
;pp# $
tryrr 
{ss 
iftt 
(tt 
currentPlayertt !
!=tt" $
nulltt% )
)tt) *
{uu 
intvv #
gamesWonByCurrentPlayervv /
=vv0 1
awaitvv2 7
dbDomainvv8 @
.ww 
Whereww 
(ww 
profilegameww *
=>ww+ -
profilegameww. 9
.ww9 :
	ProfileIdww: C
==wwD F
currentPlayerwwG T
.wwT U
IdwwU W
&&wwX Z
profilegameww[ f
.wwf g
Pointswwg m
>=wwn p
GameplayUtilities	wwq �
.
ww� �
WIN_POINTS_TO_WIN
ww� �
)
ww� �
.xx 

CountAsyncxx #
(xx# $
)xx$ %
;xx% &
ifzz 
(zz #
gamesWonByCurrentPlayerzz /
==zz0 2
$numzz3 4
)zz4 5
{{{ 
return|| 
-||  
$num||  !
;||! "
}}} 
var 
playersWithGamesWon +
=, -
await. 3
dbDomain4 <
.
�� 
Where
�� 
(
�� 
profilegame
�� *
=>
��+ -
profilegame
��. 9
.
��9 :
Points
��: @
>=
��A C
GameplayUtilities
��D U
.
��U V
WIN_POINTS_TO_WIN
��V g
)
��g h
.
�� 
GroupBy
��  
(
��  !
profilegame
��! ,
=>
��- /
profilegame
��0 ;
.
��; <
	ProfileId
��< E
)
��E F
.
�� 
Select
�� 
(
��  
group
��  %
=>
��& (
new
��) ,
{
�� 
	ProfileId
�� %
=
��& '
group
��( -
.
��- .
Key
��. 1
,
��1 2
GamesWon
�� $
=
��% &
group
��' ,
.
��, -
Count
��- 2
(
��2 3
)
��3 4
}
�� 
)
�� 
.
�� 
OrderByDescending
�� *
(
��* +
player
��+ 1
=>
��2 4
player
��5 ;
.
��; <
GamesWon
��< D
)
��D E
.
�� 
ToListAsync
�� $
(
��$ %
)
��% &
;
��& '
var
�� 
playerPosition
�� &
=
��' (!
playersWithGamesWon
��) <
.
�� 
Select
�� 
(
��  
(
��  !
player
��! '
,
��' (
index
��) .
)
��. /
=>
��0 2
new
��3 6
{
��7 8
player
��9 ?
.
��? @
	ProfileId
��@ I
,
��I J
Position
��K S
=
��T U
index
��V [
+
��\ ]
$num
��^ _
}
��` a
)
��a b
.
�� 
FirstOrDefault
�� '
(
��' (
player
��( .
=>
��/ 1
player
��2 8
.
��8 9
	ProfileId
��9 B
==
��C E
currentPlayer
��F S
.
��S T
Id
��T V
)
��V W
;
��W X
if
�� 
(
�� 
playerPosition
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
globalPosition
�� &
=
��' (
playerPosition
��) 7
.
��7 8
Position
��8 @
;
��@ A
}
�� 
else
�� 
{
�� 
globalPosition
�� &
=
��' (
-
��) *
$num
��* +
;
��+ ,
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
globalPosition
�� !
;
��! "
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
List
�� 
<
�� 
ProfileGame
�� *
>
��* +
>
��+ ,%
GetFriendsPositionAsync
��- D
(
��D E
List
��E I
<
��I J
Profile
��J Q
>
��Q R 
listProfileFriends
��S e
)
��e f
{
�� 	
List
�� 
<
�� 
ProfileGame
�� 
>
�� %
friendsAndSelfPositions
�� 5
=
��6 7
new
��8 ;
List
��< @
<
��@ A
ProfileGame
��A L
>
��L M
(
��M N
)
��N O
;
��O P
try
�� 
{
�� 
if
�� 
(
��  
listProfileFriends
�� &
.
��& '
Any
��' *
(
��* +
)
��+ ,
)
��, -
{
�� 
List
�� 
<
�� 
int
�� 
>
�� 
	friendIds
�� '
=
��( ) 
listProfileFriends
��* <
.
��< =
Select
��= C
(
��C D
friend
��D J
=>
��K M
friend
��N T
.
��T U
Id
��U W
)
��W X
.
��X Y
ToList
��Y _
(
��_ `
)
��` a
;
��a b
List
�� 
<
�� 
ProfileGame
�� $
>
��$ %
profileGames
��& 2
=
��3 4
await
��5 :
dbDomain
��; C
.
��C D
Where
��D I
(
��I J
profileGame
��J U
=>
��V X
	friendIds
��Y b
.
��b c
Contains
��c k
(
��k l
profileGame
��l w
.
��w x
	ProfileId��x �
)��� �
)��� �
.��� �
ToListAsync��� �
(��� �
)��� �
;��� �
var
�� 
friendsWithWins
�� '
=
��( )
await
��* /
dbDomain
��0 8
.
�� 
Where
�� 
(
�� 
profileGame
�� *
=>
��+ -
	friendIds
��. 7
.
��7 8
Contains
��8 @
(
��@ A
profileGame
��A L
.
��L M
	ProfileId
��M V
)
��V W
)
��W X
.
�� 
GroupBy
��  
(
��  !
profileGame
��! ,
=>
��- /
profileGame
��0 ;
.
��; <
	ProfileId
��< E
)
��E F
.
�� 
Select
�� 
(
��  
group
��  %
=>
��& (
new
��) ,
{
�� 
	ProfileId
�� %
=
��& '
group
��( -
.
��- .
Key
��. 1
,
��1 2
GamesWon
�� $
=
��% &
group
��' ,
.
��, -
Count
��- 2
(
��2 3
pg
��3 5
=>
��6 8
pg
��9 ;
.
��; <
Points
��< B
>=
��C E
GameplayUtilities
��F W
.
��W X
WIN_POINTS_TO_WIN
��X i
)
��i j
}
�� 
)
�� 
.
�� 
ToListAsync
�� &
(
��& '
)
��' (
;
��( )%
friendsAndSelfPositions
�� +
=
��, -
profileGames
��. :
.
�� 
Select
�� 
(
�� 
profileGame
�� '
=>
��( *
{
�� 
var
�� 
gamesWon
�� $
=
��% &
friendsWithWins
��' 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
f
��F G
=>
��H J
f
��K L
.
��L M
	ProfileId
��M V
==
��W Y
profileGame
��Z e
.
��e f
	ProfileId
��f o
)
��o p
?
��p q
.
��q r
GamesWon
��r z
??
��{ }
$num
��~ 
;�� �
return
�� 
new
�� "
{
��# $
profileGame
��% 0
,
��0 1
gamesWon
��2 :
}
��; <
;
��< =
}
�� 
)
�� 
.
�� 
OrderByDescending
�� &
(
��& '
f
��' (
=>
��) +
f
��, -
.
��- .
gamesWon
��. 6
)
��6 7
.
��7 8
ThenByDescending
��8 H
(
��H I
f
��I J
=>
��K M
f
��N O
.
��O P
profileGame
��P [
.
��[ \
Points
��\ b
)
��b c
.
��c d
GroupBy
��d k
(
��k l
f
��l m
=>
��n p
f
��q r
.
��r s
profileGame
��s ~
.
��~ 
	ProfileId�� �
)��� �
.��� �
Select
�� 
(
�� 
g
�� 
=>
��  
g
��! "
.
��" #
First
��# (
(
��( )
)
��) *
.
��* +
profileGame
��+ 6
)
��6 7
.
��7 8
ToList
��8 >
(
��> ?
)
��? @
;
��@ A
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� %
friendsAndSelfPositions
�� *
;
��* +
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
int
�� 
>
�� !
GetGamesWonByPlayer
�� 2
(
��2 3
int
��3 6
	idProfile
��7 @
)
��@ A
{
�� 	
int
�� 
gamesWon
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
gamesWon
�� 
=
�� 
await
��  
dbDomain
��! )
.
�� 
Where
�� 
(
�� 
profileGame
�� &
=>
��' )
profileGame
��* 5
.
��5 6
	ProfileId
��6 ?
==
��@ B
	idProfile
��C L
&&
��M O
profileGame
��P [
.
��[ \
Points
��\ b
>=
��c e
GameplayUtilities
��f w
.
��w x 
WIN_POINTS_TO_WIN��x �
)��� �
.
�� 

CountAsync
�� 
(
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
gamesWon
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
int
�� 
>
�� $
GetTotalPointsByPlayer
�� 5
(
��5 6
int
��6 9
	idProfile
��: C
)
��C D
{
�� 	
int
�� 
totalPoints
�� 
=
�� 
$num
�� 
;
��  
try
�� 
{
�� 
totalPoints
�� 
=
�� 
await
�� #
dbDomain
��$ ,
.
�� 
Where
�� 
(
�� 
profileGame
�� &
=>
��' )
profileGame
��* 5
.
��5 6
	ProfileId
��6 ?
==
��@ B
	idProfile
��C L
&&
��M O
profileGame
��P [
.
��[ \
Points
��\ b
>=
��c e
GameplayUtilities
��f w
.
��w x 
WIN_POINTS_TO_WIN��x �
)��� �
.
�� 
SumAsync
�� 
(
�� 
profileGame
�� )
=>
��* ,
(
��- .
int
��. 1
?
��1 2
)
��2 3
profileGame
��3 >
.
��> ?
Points
��? E
)
��E F
??
��G I
$num
��J K
;
��K L
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
{
�� 
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
�� 
totalPoints
�� 
;
�� 
}
�� 	
}
�� 
}�� �
vC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\ProfileGameRepositories\IProfileGameRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '#
ProfileGameRepositories' >
{		 
public

 

	interface

 "
IProfileGameRepository

 +
:

, -
IRepository

- 8
<

8 9
ProfileGame

9 D
>

D E
{ 
Task 
< 
ProfileGame 
> %
IsPlayerJoinedToGameAsync 3
(3 4
int4 7
	idProfile8 A
,A B
intC F
idGameG M
)M N
;N O
Task 
< 
bool 
> 
StartGameProfile #
(# $
int$ '
idGame( .
,. /
int0 3
	idProfile4 =
)= >
;> ?
Task 
< 
List 
< 
ProfileGame 
> 
> 
GetTenBestPlayers  1
(1 2
)2 3
;3 4
Task 
< 
int 
> 
GetGlobalPosition #
(# $
Profile$ +
currentPlayer, 9
)9 :
;: ;
Task 
< 
List 
< 
ProfileGame 
> 
> #
GetFriendsPositionAsync  7
(7 8
List8 <
<< =
Profile= D
>D E
listProfileFriendsF X
)X Y
;Y Z
Task 
< 
int 
> 
GetGamesWonByPlayer %
(% &
int& )
	idProfile* 3
)3 4
;4 5
Task 
< 
int 
> "
GetTotalPointsByPlayer (
(( )
int) ,
	idProfile- 6
)6 7
;7 8
} 
} �
ZC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\IRepositoryManager.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
{ 
public 

	interface 
IRepositoryManager '
{ 
IAccountRepository 
AccountRepository ,
{- .
get/ 2
;2 3
}4 5
IProfileRepository 
ProfileRepository ,
{- .
get/ 2
;2 3
}4 5
IGameRepository 
GameRepository &
{' (
get) ,
;, -
}. /"
IProfileGameRepository !
ProfileGameRepository 4
{5 6
get7 :
;: ;
}< =#
IGuestAccountRepository "
GuestAccountRepository  6
{7 8
get9 <
;< =
}> ?'
IGuestAccountGameRepository #&
GuestAccountGameRepository$ >
{? @
getA D
;D E
}F G$
IFriendRequestRepository  #
FriendRequestRepository! 8
{9 :
get; >
;> ?
}@ A
Task 
<  
DbContextTransaction !
>! "!
StartTransactionAsync# 8
(8 9
)9 :
;: ;
Task 
	SaveAsync 
( 
) 
; 
} 
} �

SC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\IRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
{ 
public		 

	interface		 
IRepository		  
<		! "
T		" #
>		# $
where		% *
T		+ ,
:		- .
class		/ 4
{

 
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAllEntitiesAsync 0
(0 1
)1 2
;2 3
Task 
< 
T 
> 
GetEntityByIdAsync "
(" #
int# &
id' )
)) *
;* +
bool 
	AddEntity 
( 
T 
entity 
)  
;  !
Task 
< 
bool 
> !
DeleteEntityByIdAsync (
(( )
int) ,
id- /
)/ 0
;0 1
bool 
UpdateEntity 
( 
T 
entity "
)" #
;# $
Task 
< 
T 
> 
FindEntityByIdAsync #
(# $
int$ '
id( *
)* +
;+ ,
} 
} �
xC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\GuestAccountRepositories\IGuestAccountRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '$
GuestAccountRepositories' ?
{		 
public

 

	interface

 #
IGuestAccountRepository

 ,
:

- .
IRepository

/ :
<

: ;
GuestAccount

; G
>

G H
{ 
} 
} �
wC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\GuestAccountRepositories\GuestAccountRepository.cs
	namespace		 	
CatanDataAccess		
 
.		 
Repositories		 &
.		& '$
GuestAccountRepositories		' ?
{

 
public 

class "
GuestAccountRepository '
:( )

Repository* 4
<4 5
GuestAccount5 A
>A B
,B C#
IGuestAccountRepositoryD [
{ 
public "
GuestAccountRepository %
(% &
	DbContext& /
	dbContext0 9
)9 :
:; <
base= A
(A B
	dbContextB K
)K L
{ 	
} 	
} 
} �	
�C:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\GuestAccountGameRepositories\IGuestAccountGameRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '(
GuestAccountGameRepositories' C
{		 
public

 

	interface

 '
IGuestAccountGameRepository

 0
:

1 2
IRepository

3 >
<

> ?
GuestAccountGame

? O
>

O P
{ 
Task 
< 
GuestAccountGame 
> +
IsGuestAccountJoinedToGameAsync >
(> ?
int? B
idGuestAccountC Q
,Q R
intS V
idGameW ]
)] ^
;^ _
int -
!FindGuestAccountIdToBeAdminByGame -
(- .
Game. 2

gameRecord3 =
)= >
;> ?
Task 
< 
bool 
> &
StartGameGuestAccountAsync -
(- .
int. 1
idGame2 8
,8 9
int: =
idGuestAccount> L
)L M
;M N
} 
} �=
C:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\GuestAccountGameRepositories\GuestAccountGameRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
{ 
public 

class &
GuestAccountGameRepository +
:, -

Repository. 8
<8 9
GuestAccountGame9 I
>I J
,J K'
IGuestAccountGameRepositoryL g
{ 
public &
GuestAccountGameRepository )
() *
	DbContext* 3
	dbContext4 =
)= >
:? @
baseA E
(E F
	dbContextF O
)O P
{ 	
} 	
public 
int -
!FindGuestAccountIdToBeAdminByGame 4
(4 5
Game5 9

gameRecord: D
)D E
{ 	
try 
{ 
GuestAccountGame  
	nextAdmin! *
=+ ,

gameRecord- 7
.7 8%
RelationGuestAccountGames8 Q
.Q R
FirstOrDefaultR `
(` a
guestAccountGamea q
=>r t
guestAccountGame	u �
.
� �
GuestAccountId
� �
!=
� �

gameRecord
� �
.
� �
AdminGameId
� �
&& $
IsActiveWithinTimeLimite +
(+ ,
guestAccountGame, <
.< = 
RelationGuestAccount= Q
.Q R
LastActivityR ^
,^ _
DateTime` h
.h i
UtcNowi o
,o p
GameUtilitiesq ~
.~ -
 TIME_LIMIT_TO_DISCONNECT_PLAYERS	 �
)
� �
)
� �
;
� �
if 
( 
	nextAdmin 
!= 
null  $
)$ %
{ 
return 
	nextAdmin $
.$ %
GuestAccountId% 3
;3 4
} 
} 
catch   
(   !
ArgumentNullException   (
ex  ) +
)  + ,
{!! 
Log"" 
."" 
Error"" 
("" 
ex"" 
,"" 
ex""  
.""  !
Source""! '
)""' (
;""( )
}## 
catch$$ 
($$ 
	Exception$$ 
ex$$ 
)$$  
{%% 
Log&& 
.&& 
Error&& 
(&& 
ex&& 
,&& 
ex&&  
.&&  !
Source&&! '
)&&' (
;&&( )
}'' 
return(( 
$num(( 
;(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
GuestAccountGame++ *
>++* ++
IsGuestAccountJoinedToGameAsync++, K
(++K L
int++L O
idGuestAccount++P ^
,++^ _
int++` c
idGame++d j
)++j k
{,, 	
GuestAccountGame-- 
guestAccountGame-- -
=--. /
null--0 4
;--4 5
try.. 
{// 
guestAccountGame00  
=00! "
await00# (
dbDomain00) 1
.001 2
FirstOrDefaultAsync11 '
(11' (
guestAccount11( 4
=>115 7
guestAccount118 D
.11D E
GuestAccountId11E S
==11T V
idGuestAccount11W e
&&11f h
guestAccount11i u
.11u v
GameId11v |
==11} 
idGame
11� �
)
11� �
;
11� �
}22 
catch33 
(33 !
ArgumentNullException33 '
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
(77 %
InvalidOperationException77 ,
ex77- /
)77/ 0
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
}:: 
catch;; 
(;; 
	Exception;; 
ex;; 
);;  
{<< 
Log== 
.== 
Error== 
(== 
ex== 
,== 
ex==  
.==  !
Source==! '
)==' (
;==( )
}>> 
return@@ 
guestAccountGame@@ #
;@@# $
}AA 	
publicCC 
staticCC 
boolCC $
IsActiveWithinTimeLimiteCC 3
(CC3 4
DateTimeCC4 <
?CC< =
lastActivityCC> J
,CCJ K
DateTimeCCL T
?CCT U
newActivityCCV a
,CCa b
intCCc f
	timeLimitCCg p
)CCp q
{DD 	
boolEE 
isOnlineEE 
=EE 
falseEE !
;EE! "
ifGG 
(GG 
lastActivityGG 
!=GG 
nullGG  $
&&GG% '
newActivityGG( 3
!=GG4 6
nullGG7 ;
)GG; <
{HH 
DoubleII 
timeDifferenceII %
=II& '
(II( )
newActivityII) 4
.II4 5
ValueII5 :
-II; <
lastActivityII= I
.III J
ValueIIJ O
)IIO P
.IIP Q
TotalMinutesIIQ ]
;II] ^
isOnlineKK 
=KK 
timeDifferenceKK )
<KK* +
	timeLimitKK, 5
;KK5 6
}LL 
returnNN 
isOnlineNN 
;NN 
}OO 	
publicRR 
asyncRR 
TaskRR 
<RR 
boolRR 
>RR &
StartGameGuestAccountAsyncRR  :
(RR: ;
intRR; >
idGameRR? E
,RRE F
intRRG J
idGuestAccountRRK Y
)RRY Z
{SS 	
tryTT 
{UU 
GuestAccountGameVV  
guestAccountGameVV! 1
=VV2 3
awaitVV4 9
dbDomainVV: B
.VVB C
FirstOrDefaultAsyncWW '
(WW' (
guestAccountWW( 4
=>WW5 7
guestAccountWW8 D
.WWD E
GuestAccountIdWWE S
==WWT V
idGuestAccountWWW e
&&WWf h
guestAccountWWi u
.WWu v
GameIdWWv |
==WW} 
idGame
WW� �
)
WW� �
;
WW� �
ifYY 
(YY 
guestAccountGameYY $
!=YY% '
nullYY( ,
)YY, -
{ZZ 
guestAccountGame[[ $
.[[$ %
IsActiveGame[[% 1
=[[2 3
GameplayUtilities[[4 E
.[[E F!
GAMEPLAY_STATUS_START[[F [
;[[[ \
return\\ 
true\\ 
;\\  
}]] 
}^^ 
catch__ 
(__ !
ArgumentNullException__ (
ex__) +
)__+ ,
{`` 
Logaa 
.aa 
Erroraa 
(aa 
exaa 
,aa 
exaa  
.aa  !
Sourceaa! '
)aa' (
;aa( )
}bb 
catchcc 
(cc %
InvalidOperationExceptioncc ,
excc- /
)cc/ 0
{dd 
Logee 
.ee 
Erroree 
(ee 
exee 
,ee 
exee  
.ee  !
Sourceee! '
)ee' (
;ee( )
}ff 
catchgg 
(gg 
	Exceptiongg 
exgg 
)gg  
{hh 
Logii 
.ii 
Errorii 
(ii 
exii 
,ii 
exii  
.ii  !
Sourceii! '
)ii' (
;ii( )
}jj 
returnll 
falsell 
;ll 
}mm 	
}nn 
}oo �
hC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\GameRepositories\IGameRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '
GameRepositories' 7
{		 
public

 

	interface

 
IGameRepository

 $
:

% &
IRepository

' 2
<

2 3
Game

3 7
>

7 8
{ 
Task 
< 
Game 
> $
FindGameByKeyAccessAsync +
(+ ,
string, 2
	accessKey3 <
)< =
;= >
Task 
< 
bool 
>  
IsGameAdminByIdAsync '
(' (
int( +
	idProfile, 5
,5 6
int7 :
idGame; A
)A B
;B C
} 
} �"
gC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\GameRepositories\GameRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
{ 
public 

class 
GameRepository 
:  !

Repository" ,
<, -
Game- 1
>1 2
,2 3
IGameRepository4 C
{ 
public 
GameRepository 
( 
	DbContext '
	dbContext( 1
)1 2
:3 4
base5 9
(9 :
	dbContext: C
)C D
{ 	
}
 
public 
async 
Task 
< 
Game 
> $
FindGameByKeyAccessAsync  8
(8 9
string9 ?
	accessKey@ I
)I J
{ 	
Game 

gameRecord 
= 
null "
;" #
try 
{ 

gameRecord 
= 
await "
dbDomain# +
.+ ,
FirstOrDefaultAsync, ?
(? @
game@ D
=>E G
gameH L
.L M
	AccessKeyM V
==W Y
	accessKeyZ c
&&d f
gameg k
.k l
Statusl r
==s u
GameUtilities	v �
.
� �(
DOMAIN_GAME_STATUS_PREGAME
� �
)
� �
;
� �
} 
catch 
( !
ArgumentNullException (
ex) +
)+ ,
{ 
Log 
. 
Error 
( 
ex 
, 
ex  
.  !
Source! '
)' (
;( )
} 
catch 
( %
InvalidOperationException +
ex, .
). /
{ 
Log 
. 
Error 
( 
ex 
, 
ex  
.  !
Source! '
)' (
;( )
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!! 
{"" 
Log## 
.## 
Error## 
(## 
ex## 
,## 
ex##  
.##  !
Source##! '
)##' (
;##( )
}$$ 
return&& 

gameRecord&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
bool)) 
>))  
IsGameAdminByIdAsync))  4
())4 5
int))5 8
	idProfile))9 B
,))B C
int))D G
idGame))H N
)))N O
{** 	
bool++ 
isGameAdmin++ 
=++ 
false++ $
;++$ %
try-- 
{.. 
isGameAdmin// 
=// 
await// #
dbDomain//$ ,
.//, -
FirstOrDefaultAsync//- @
(//@ A
game//A E
=>//F H
game//I M
.//M N
Id//N P
==//Q S
idGame//T Z
&&//[ ]
game//^ b
.//b c
AdminGameId//c n
==//o q
	idProfile//r {
)//{ |
!=//} 
null
//� �
;
//� �
}00 
catch11 
(11 !
ArgumentNullException11 (
ex11) +
)11+ ,
{22 
Log33 
.33 
Error33 
(33 
ex33 
,33 
ex33  
.33  !
Source33! '
)33' (
;33( )
}44 
catch55 
(55 %
InvalidOperationException55 ,
ex55- /
)55/ 0
{66 
Log77 
.77 
Error77 
(77 
ex77 
,77 
ex77  
.77  !
Source77! '
)77' (
;77( )
}88 
catch99 
(99 
	Exception99 
ex99 
)99  
{:: 
Log;; 
.;; 
Error;; 
(;; 
ex;; 
,;; 
ex;;  
.;;  !
Source;;! '
);;' (
;;;( )
}<< 
return>> 
isGameAdmin>> 
;>> 
}?? 	
}@@ 
}AA �
zC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\FriendRequestRepositories\IFriendRequestRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '%
FriendRequestRepositories' @
{		 
public

 

	interface

 $
IFriendRequestRepository

 -
:

. /
IRepository

0 ;
<

; <
FriendRequest

< I
>

I J
{ 
Task 
< 
bool 
> %
ExistsAFriendRequestAsync -
(- .
int. 1
	profileId2 ;
,; <
int= @
profileIdFriendA P
)P Q
;Q R
Task 
< 
bool 
> $
DeleteFriendRequestAsync +
(+ ,
int, /
senderProfileId0 ?
,? @
intA D
receiverProfileIdE V
)V W
;W X
} 
} �(
yC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\FriendRequestRepositories\FriendRequestRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
{ 
public 

class #
FriendRequestRepository (
:) *

Repository+ 5
<5 6
FriendRequest6 C
>C D
,D E$
IFriendRequestRepositoryF ^
{ 
public #
FriendRequestRepository &
(& '
	DbContext' 0
	dbContext1 :
): ;
:< =
base> B
(B C
	dbContextC L
)L M
{ 	
} 	
public 
async 
Task 
< 
bool 
> $
DeleteFriendRequestAsync  8
(8 9
int9 <
senderProfileId= L
,L M
intN Q
receiverProfileIdR c
)c d
{ 	
bool 
	isDeleted 
= 
false "
;" #
try 
{ 
FriendRequest 
friendRequest +
=, -
await. 3
dbDomain4 <
.< =
FirstOrDefaultAsync= P
(P Q
friendQ W
=>X Z
friend 
. 
SenderProfileId *
==+ -
senderProfileId. =
&&> @
friendA G
.G H
ReceiverProfileIdH Y
==Z \
receiverProfileId] n
|| 
friend 
. 
SenderProfileId -
==. 0
receiverProfileId1 B
&&C E
friendF L
.L M
ReceiverProfileIdM ^
==_ a
senderProfileIdb q
)q r
;r s
if 
( 
friendRequest !
!=" $
null% )
)) *
{ 
friendRequest   !
.  ! "
Status  " (
=  ) *(
FriendRequestStatusUtilities  + G
.  G H)
FRIEND_REQUEST_STATUS_DELETED  H e
;  e f
	isDeleted!! 
=!! 
true!!  $
;!!$ %
}"" 
}## 
catch$$ 
($$ !
ArgumentNullException$$ (
ex$$) +
)$$+ ,
{%% 
Log&& 
.&& 
Error&& 
(&& 
ex&& 
,&& 
ex&&  
.&&  !
Source&&! '
)&&' (
;&&( )
}'' 
catch(( 
((( %
InvalidOperationException(( ,
ex((- /
)((/ 0
{)) 
Log** 
.** 
Error** 
(** 
ex** 
,** 
ex**  
.**  !
Source**! '
)**' (
;**( )
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
Log.. 
... 
Error.. 
(.. 
ex.. 
,.. 
ex..  
...  !
Source..! '
)..' (
;..( )
}// 
return11 
	isDeleted11 
;11 
}22 	
public44 
async44 
Task44 
<44 
bool44 
>44 %
ExistsAFriendRequestAsync44  9
(449 :
int44: =
	profileId44> G
,44G H
int44I L
profileIdFriend44M \
)44\ ]
{55 	
bool66 
exists66 
=66 
false66 
;66  
try88 
{99 
exists:: 
=:: 
await:: 
dbDomain:: '
.::' (
AnyAsync::( 0
(::0 1
friendRequest::1 >
=>::? A
friendRequest::B O
.::O P
SenderProfileId::P _
==::` b
	profileId::c l
&&;; 
friendRequest;;  
.;;  !
ReceiverProfileId;;! 2
==;;3 5
profileIdFriend;;6 E
);;E F
;;;F G
}<< 
catch== 
(== !
ArgumentNullException== '
ex==( *
)==* +
{>> 
Log?? 
.?? 
Error?? 
(?? 
ex?? 
,?? 
ex??  
.??  !
Source??! '
)??' (
;??( )
}@@ 
catchAA 
(AA %
InvalidOperationExceptionAA ,
exAA- /
)AA/ 0
{BB 
LogCC 
.CC 
ErrorCC 
(CC 
exCC 
,CC 
exCC  
.CC  !
SourceCC! '
)CC' (
;CC( )
}DD 
catchEE 
(EE 
	ExceptionEE 
exEE 
)EE  
{FF 
LogGG 
.GG 
ErrorGG 
(GG 
exGG 
,GG 
exGG  
.GG  !
SourceGG! '
)GG' (
;GG( )
}HH 
returnJJ 
existsJJ 
;JJ 
}KK 	
}LL 
}MM �
nC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\AccountRepositories\IAccountRepository.cs
	namespace		 	
CatanDataAccess		
 
.		 
Repositories		 &
.		& '
AccountRepositories		' :
{

 
public 

	interface 
IAccountRepository '
:( )
IRepository* 5
<5 6
Account6 =
>= >
{ 
Task 
< 
bool 
>  
IsAccountExistsAsync (
(( )
string) /
username0 8
,8 9
string: @
phoneA F
,F G
stringH N
emailO T
)T U
;U V
Task 
< 
Account 
> 
FindAccountAsync &
(& '
string' -
phone. 3
,3 4
string5 ;
email< A
,A B
stringC I
passwordJ R
)R S
;S T
Task 
< 
bool 
> %
ChangeStatusToVerifyAsync ,
(, -
string- 3
phone4 9
,9 :
string; A
emailB G
,G H
stringI O
tokenP U
)U V
;V W
Task 
< 
string 
> %
GetPreferredLanguageAsync .
(. /
int/ 2
id3 5
)5 6
;6 7
Task 
< 
bool 
> %
SetPreferredLanguageAsync ,
(, -
int- 0
id1 3
,3 4
string5 ;
preferredLanguage< M
)M N
;N O
Task 
< 
bool 
> -
!IsAccountRegisteredWithEmailAsync 4
(4 5
string5 ;
email< A
)A B
;B C
Task 
< 
bool 
> -
!IsAccountRegisteredWithPhoneAsync 4
(4 5
string5 ;
phone< A
)A B
;B C
Task 
< 
bool 
> (
LiberateEmailForFreeUseAsync /
(/ 0
string0 6
email7 <
)< =
;= >
Task 
< 
Account 
> #
FindAccountByEmailAsync -
(- .
string. 4
email5 :
): ;
;; <
Task 
< 
Account 
> #
FindAccountByPhoneAsync -
(- .
string. 4
phone5 :
): ;
;; <
} 
} ��
mC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Repositories\AccountRepositories\AccountRepository.cs
	namespace 	
CatanDataAccess
 
. 
Repositories &
.& '
AccountRepositories' :
{ 
public 

class 
AccountRepository "
:# $

Repository% /
</ 0
Account0 7
>7 8
,8 9
IAccountRepository: L
{ 
public 
const 
string 
DEFAULT_LANGUAGE ,
=- .
$str/ 3
;3 4
public 
AccountRepository  
(  !
	DbContext! *
	dbContext+ 4
)4 5
:6 7
base8 <
(< =
	dbContext= F
)F G
{ 	
} 	
public 
async 
Task 
< 
string  
>  !%
GetPreferredLanguageAsync" ;
(; <
int< ?
id@ B
)B C
{ 	
string 
response 
= 
DEFAULT_LANGUAGE .
;. /
try 
{ 
response 
= 
await  
dbDomain! )
.) *
Where* /
(/ 0
account0 7
=>8 :
account; B
.B C
IdC E
==F H
idI K
)K L
.L M
SelectM S
(S T
acccountT \
=>] _
acccount` h
.h i
PreferredLanguagei z
)z {
.{ | 
FirstOrDefaultAsync	| �
(
� �
)
� �
;
� �
}   
catch!! 
(!! !
ArgumentNullException!! (
ex!!) +
)!!+ ,
{"" 
Log## 
.## 
Error## 
(## 
ex## 
,## 
ex##  
.##  !
Source##! '
)##' (
;##( )
}$$ 
catch%% 
(%% %
InvalidOperationException%% ,
ex%%- /
)%%/ 0
{&& 
Log'' 
.'' 
Error'' 
('' 
ex'' 
,'' 
ex''  
.''  !
Source''! '
)''' (
;''( )
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
},, 
return-- 
response-- 
;-- 
}.. 	
public00 
async00 
Task00 
<00 
bool00 
>00 %
SetPreferredLanguageAsync00  9
(009 :
int00: =
id00> @
,00@ A
string00B H
preferredLanguage00I Z
)00Z [
{11 	
bool22 
isSuccessfulSave22 !
=22" #
false22$ )
;22) *
try33 
{44 
Account55 
accountEntity55 %
=55& '
await55( -
dbDomain55. 6
.556 7
Where557 <
(55< =
account55= D
=>55E G
account55H O
.55O P
Id55P R
==55S U
id55V X
)55X Y
.55Y Z
FirstOrDefaultAsync55Z m
(55m n
)55n o
;55o p
accountEntity66 
.66 
PreferredLanguage66 /
=660 1
preferredLanguage662 C
;66C D
isSuccessfulSave77  
=77! "
true77# '
;77' (
}88 
catch99 
(99 !
ArgumentNullException99 (
ex99) +
)99+ ,
{:: 
Log;; 
.;; 
Error;; 
(;; 
ex;; 
,;; 
ex;;  
.;;  !
Source;;! '
);;' (
;;;( )
}<< 
catch== 
(== %
InvalidOperationException== +
ex==, .
)==. /
{>> 
Log?? 
.?? 
Error?? 
(?? 
ex?? 
,?? 
ex??  
.??  !
Source??! '
)??' (
;??( )
}@@ 
catchAA 
(AA 
	ExceptionAA 
exAA 
)AA  
{BB 
LogCC 
.CC 
ErrorCC 
(CC 
exCC 
,CC 
exCC  
.CC  !
SourceCC! '
)CC' (
;CC( )
}DD 
returnFF 
isSuccessfulSaveFF #
;FF# $
}GG 	
publicII 
asyncII 
TaskII 
<II 
boolII 
>II  
IsAccountExistsAsyncII  4
(II4 5
stringII5 ;
usernameII< D
,IID E
stringIIF L
phoneIIM R
,IIR S
stringIIT Z
emailII[ `
)II` a
{JJ 	
boolKK 
isAccountExistsKK  
=KK! "
falseKK# (
;KK( )
tryMM 
{NN 
isAccountExistsOO 
=OO  !
awaitOO" '
dbDomainOO( 0
.OO0 1
IncludeOO1 8
(OO8 9
accountOO9 @
=>OOA C
accountOOD K
.OOK L
RelationProfileOOL [
)OO[ \
.OO\ ]
AnyAsyncPP 
(PP 
accountPP  
=>PP! #
accountPP$ +
.PP+ ,
PhoneNumberPP, 7
==PP8 :
phonePP; @
||PPA C
accountPPD K
.PPK L
EmailPPL Q
==PPR T
emailPPU Z
||PP[ ]
accountPP^ e
.PPe f
RelationProfilePPf u
.PPu v
NamePPv z
==PP{ }
username	PP~ �
)
PP� �
;
PP� �
}QQ 
catchRR 
(RR !
ArgumentNullExceptionRR '
exRR( *
)RR* +
{SS 
LogTT 
.TT 
ErrorTT 
(TT 
exTT 
,TT 
exTT  
.TT  !
SourceTT! '
)TT' (
;TT( )
}UU 
catchVV 
(VV %
InvalidOperationExceptionVV +
exVV, .
)VV. /
{WW 
LogXX 
.XX 
ErrorXX 
(XX 
exXX 
,XX 
exXX  
.XX  !
SourceXX! '
)XX' (
;XX( )
}YY 
catchZZ 
(ZZ 
	ExceptionZZ 
exZZ 
)ZZ 
{[[ 
Log\\ 
.\\ 
Error\\ 
(\\ 
ex\\ 
,\\ 
ex\\  
.\\  !
Source\\! '
)\\' (
;\\( )
}]] 
return__ 
isAccountExists__ "
;__" #
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
Accountbb !
>bb! "
FindAccountAsyncbb# 3
(bb3 4
stringbb4 :
phonebb; @
,bb@ A
stringbbB H
emailbbI N
,bbN O
stringbbP V
passwordbbW _
)bb_ `
{cc 	
Accountdd  
accountRecordValideddd (
=dd) *
nulldd+ /
;dd/ 0
tryee 
{ff 
Accounthh 
accountRecordhh %
=hh& '
awaithh( -
dbDomainhh. 6
.hh6 7
FirstOrDefaultAsynchh7 J
(hhJ K
accounthhK R
=>hhS U
accounthhV ]
.hh] ^
PhoneNumberhh^ i
==hhj l
phonehhm r
||hhs u
accounthhv }
.hh} ~
Email	hh~ �
==
hh� �
email
hh� �
)
hh� �
;
hh� �
ifjj 
(jj 
accountRecordjj !
!=jj" $
nulljj% )
&&jj* ,
PasswordUtilitiesjj- >
.jj> ?
ComparePasswordjj? N
(jjN O
passwordjjO W
,jjW X
accountRecordjjY f
.jjf g
Saltjjg k
,jjk l
accountRecordjjm z
.jjz {
PasswordHash	jj{ �
)
jj� �
)
jj� �
{kk  
accountRecordValidedll (
=ll) *
accountRecordll+ 8
;ll8 9
}mm 
}oo 
catchpp 
(pp !
ArgumentNullExceptionpp (
expp) +
)pp+ ,
{qq 
Logrr 
.rr 
Errorrr 
(rr 
exrr 
,rr 
exrr  
.rr  !
Sourcerr! '
)rr' (
;rr( )
}ss 
catchtt 
(tt %
InvalidOperationExceptiontt ,
extt- /
)tt/ 0
{uu 
Logvv 
.vv 
Errorvv 
(vv 
exvv 
,vv 
exvv  
.vv  !
Sourcevv! '
)vv' (
;vv( )
}ww 
catchxx 
(xx 
	Exceptionxx 
exxx 
)xx  
{yy 
Logzz 
.zz 
Errorzz 
(zz 
exzz 
,zz 
exzz  
.zz  !
Sourcezz! '
)zz' (
;zz( )
}{{ 
return}}  
accountRecordValided}} '
;}}' (
}~~ 	
public 
async 
Task 
< 
bool 
> %
ChangeStatusToVerifyAsync  9
(9 :
string: @
phoneA F
,F G
stringH N
emailO T
,T U
stringV \
token] b
)b c
{
�� 	
bool
�� 
isVerify
�� 
=
�� 
false
�� !
;
��! "
try
�� 
{
�� 
Account
�� 
accountRecord
�� %
=
��& '
await
��( -
dbDomain
��. 6
.
��6 7!
FirstOrDefaultAsync
��7 J
(
��J K
account
��K R
=>
��S U
account
��V ]
.
��] ^
PhoneNumber
��^ i
==
��j l
phone
��m r
||
��s u
account
��v }
.
��} ~
Email��~ �
==��� �
email��� �
)��� �
;��� �
if
�� 
(
�� 
accountRecord
�� !
!=
��" $
null
��% )
&&
��* ,
token
��- 2
.
��2 3
Equals
��3 9
(
��9 :
accountRecord
��: G
.
��G H
Token
��H M
)
��M N
)
��N O
{
�� 
accountRecord
�� !
.
��! "
Status
��" (
=
��) *
true
��+ /
;
��/ 0
isVerify
�� 
=
�� 
true
�� #
;
��# $
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
	Exception
�� 
ex
�� 
)
�� 
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
�� 
isVerify
�� 
;
�� 
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
�� /
!IsAccountRegisteredWithEmailAsync
��  A
(
��A B
string
��B H
email
��I N
)
��N O
{
�� 	
bool
�� 
isAccountExists
��  
=
��! "
false
��# (
;
��( )
try
�� 
{
�� 
Account
�� 
accountRecord
�� %
=
��& '
await
��( -
dbDomain
��. 6
.
��6 7!
FirstOrDefaultAsync
��7 J
(
��J K
account
��K R
=>
��S U
account
��V ]
.
��] ^
Email
��^ c
==
��d f
email
��g l
)
��l m
;
��m n
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
�� 
isAccountExists
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
isAccountExists
�� "
;
��" #
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
�� /
!IsAccountRegisteredWithPhoneAsync
��  A
(
��A B
string
��B H
phone
��I N
)
��N O
{
�� 	
bool
�� 
isAccountExists
��  
=
��! "
false
��# (
;
��( )
try
�� 
{
�� 
Account
�� 
accountRecord
�� %
=
��& '
await
��( -
dbDomain
��. 6
.
��6 7!
FirstOrDefaultAsync
��7 J
(
��J K
account
��K R
=>
��S U
account
��V ]
.
��] ^
PhoneNumber
��^ i
==
��j l
phone
��m r
)
��r s
;
��s t
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
�� 
isAccountExists
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
isAccountExists
�� "
;
��" #
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
�� *
LiberateEmailForFreeUseAsync
��  <
(
��< =
string
��= C
email
��D I
)
��I J
{
�� 	
bool
�� 
isAccountExists
��  
=
��! "
false
��# (
;
��( )
try
�� 
{
�� 
Account
�� 
accountRecord
�� %
=
��& '
await
��( -
dbDomain
��. 6
.
��6 7!
FirstOrDefaultAsync
��7 J
(
��J K
account
��K R
=>
��S U
account
��V ]
.
��] ^
Email
��^ c
==
��d f
email
��g l
)
��l m
;
��m n
if
�� 
(
�� 
accountRecord
�� !
!=
��" $
null
��% )
&&
��* ,
!
��- .
accountRecord
��. ;
.
��; <
Status
��< B
)
��B C
{
�� 
accountRecord
�� !
.
��! "
Email
��" '
=
��( )
null
��* .
;
��. /
isAccountExists
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
isAccountExists
�� "
;
��" #
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Account
�� !
>
��! "%
FindAccountByEmailAsync
��# :
(
��: ;
string
��; A
email
��B G
)
��G H
{
�� 	
Account
�� 
accountRecord
�� !
=
��" #
null
��$ (
;
��( )
try
�� 
{
�� 
accountRecord
�� 
=
�� 
await
��  %
dbDomain
��& .
.
��. /!
FirstOrDefaultAsync
��/ B
(
��B C
account
��C J
=>
��K M
account
��N U
.
��U V
Email
��V [
==
��\ ^
email
��_ d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
accountRecord
��  
;
��  !
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
Account
�� !
>
��! "%
FindAccountByPhoneAsync
��# :
(
��: ;
string
��; A
phone
��B G
)
��G H
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
��( )
try
�� 
{
�� 
accountRecord
�� 
=
�� 
await
��  %
dbDomain
��& .
.
��. /!
FirstOrDefaultAsync
��/ B
(
��B C
account
��C J
=>
��K M
account
��N U
.
��U V
PhoneNumber
��V a
==
��b d
phone
��e j
)
��j k
;
��k l
}
�� 
catch
�� 
(
�� #
ArgumentNullException
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
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
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
�� 
accountRecord
��  
;
��  !
}
�� 	
}
�� 
}�� �
RC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
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
$str ,
), -
]- .
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
[   
assembly   	
:  	 

AssemblyVersion   
(   
$str   $
)  $ %
]  % &
[!! 
assembly!! 	
:!!	 

AssemblyFileVersion!! 
(!! 
$str!! (
)!!( )
]!!) *�
SC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Migrations\Configuration.cs
	namespace 	
CatanDataAccess
 
. 

Migrations $
{ 
internal 
sealed 
class 
Configuration '
:( )%
DbMigrationsConfiguration* C
<C D
CatanDataAccessD S
.S T
ContextsT \
.\ ]
CatanDBContext] k
>k l
{		 
public

 
Configuration

 
(

 
)

 
{ 	&
AutomaticMigrationsEnabled &
=' (
false) .
;. /
} 	
	protected 
override 
void 
Seed  $
($ %
CatanDataAccess% 4
.4 5
Contexts5 =
.= >
CatanDBContext> L
contextM T
)T U
{ 	
} 	
} 
} �

uC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Migrations\202412041753078_NotRequiredPhotoToCreateAccount.cs
	namespace 	
CatanDataAccess
 
. 

Migrations $
{ 
public 

partial 
class +
NotRequiredPhotoToCreateAccount 8
:9 :
DbMigration; F
{ 
public 
override 
void 
Up 
(  
)  !
{		 	
AlterColumn

 
(

 
$str

 &
,

& '
$str

( 5
,

5 6
c

7 8
=>

9 ;
c

< =
.

= >
String

> D
(

D E
	maxLength

E N
:

N O
$num

P S
)

S T
)

T U
;

U V
} 	
public 
override 
void 
Down !
(! "
)" #
{ 	
AlterColumn 
( 
$str &
,& '
$str( 5
,5 6
c7 8
=>9 ;
c< =
.= >
String> D
(D E
nullableE M
:M N
falseO T
,T U
	maxLengthV _
:_ `
$numa d
)d e
)e f
;f g
} 	
} 
} �v
TC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Helpers\GameplayUtilities.cs
	namespace 	
CatanDataAccess
 
. 
Helpers !
{ 
public		 

static		 
class		 
GameplayUtilities		 )
{

 
public 
const 
string !
GAMEPLAY_STATUS_START 1
=2 3
$str4 ;
;; <
public 
const 
int 
TIME_TO_START_GAME +
=, -
$num. 0
;0 1
public 
const 
int #
DICE_NUMBER_FISRT_LIMIT 0
=1 2
$num3 4
;4 5
public 
const 
int !
DICE_NUMBER_END_LIMIT .
=/ 0
$num1 2
;2 3
public 
const 
int #
INT_BEST_PLAYERS_NUMBER 0
=1 2
$num3 5
;5 6
public 
const 
int 
HEXTILE_INITIAL_ID +
=, -
$num. /
;/ 0
public 
const 
int 
NUMBER_OF_EDGES (
=) *
$num+ ,
;, -
public 
const 
int 
NUMBER_OF_VERTICES +
=, -
$num. /
;/ 0
public 
const 
string  
RESOURCE_LUNAR_STONE 0
=1 2
$str3 @
;@ A
public 
const 
string 
RESOURCE_TRITONIUM .
=/ 0
$str1 <
;< =
public 
const 
string %
RESOURCE_ALPHA_NANOFIBERS 5
=6 7
$str8 J
;J K
public 
const 
string $
RESOURCE_EPSILON_BIOMASS 4
=5 6
$str7 H
;H I
public 
const 
string 
RESOURCE_GRX_810 ,
=- .
$str/ 8
;8 9
public 
const 
int &
RESOURCES_INITIAL_QUANTITI 3
=4 5
$num6 7
;7 8
public 
const 
int  
RESOURCE_BASE_AMOUNT -
=. /
$num0 1
;1 2
public 
const 
int $
RESOURCE_CITY_MULTIPLIER 1
=2 3
$num4 5
;5 6
public 
const 
int 
ROAD_INITIAL_LENGTH ,
=- .
$num/ 0
;0 1
public 
const 
int *
ROAD_START_LONGEST_ROAD_LENGTH 7
=8 9
$num: ;
;; <
public 
const 
int 
EDGE_NEXT_EDGE_SUM +
=, -
$num. /
;/ 0
public 
const 
int !
ROAD_EXTENSION_LENGTH .
=/ 0
$num1 2
;2 3
public 
const 
int 
VISITED_EDGE_LENGTH ,
=- .
$num/ 0
;0 1
public   
const   
string   $
PIECE_GAMEPLAY_SETTLEMEN   4
=  5 6
$str  7 C
;  C D
public!! 
const!! 
string!! 
PIECE_GAMEPLAY_ROAD!! /
=!!0 1
$str!!2 8
;!!8 9
public"" 
const"" 
string"" 
PIECE_GAMEPLAY_CITY"" /
=""0 1
$str""2 8
;""8 9
public## 
const## 
int## 
WIN_POINTS_TO_WIN## *
=##+ ,
$num##- /
;##/ 0
public$$ 
const$$ 
int$$ %
TIME_PREVIOUS_TO_END_GAME$$ 2
=$$3 4
$num$$5 :
;$$: ;
public%% 
const%% 
int%% /
#RESOURCE_INITIAL_AMOUNT_ALL_PLAYERS%% <
=%%= >
$num%%? @
;%%@ A
public&& 
static&& 
readonly&& 
string&& %
[&&% &
]&&& '
RESOURCES_GAME&&( 6
=&&7 8
{'' 	
$str(( 
,(( 
$str)) 
,)) 
$str** 
,** 
$str++ 
,++ 
$str,, 
}-- 	
;--	 

public.. 
static.. 
readonly.. 
int.. "
[.." #
]..# $
DICE_VALUES..% 0
=..1 2
{// 	
$num00 
,00 
$num00 
,00 
$num00 
,00 
$num00 
,00 
$num00 
,00 
$num00 
,00 
$num00 
,00  
$num00! #
,00# $
$num00% '
,00' (
$num00) +
}11 	
;11	 

public33 
static33 
readonly33 
int33 "
[33" #
]33# $
[33$ %
]33% &
HEX_TILE_LAYOUT33' 6
=337 8
new339 <
int33= @
[33@ A
]33A B
[33B C
]33C D
{44 	
new55 
int55 
[55 
]55 
{55 
$num55 
,55 
$num55 
,55 
$num55 
}55  !
,55! "
new66 
int66 
[66 
]66 
{66 
$num66 
,66 
$num66 
,66 
$num66 
,66  
$num66! "
}66# $
,66$ %
new77 
int77 
[77 
]77 
{77 
$num77 
,77 
$num77 
,77 
$num77 
,77  
$num77! #
,77# $
$num77% '
}77( )
,77) *
new88 
int88 
[88 
]88 
{88 
$num88 
,88 
$num88 
,88 
$num88  "
,88" #
$num88$ &
}88' (
,88( )
new99 
int99 
[99 
]99 
{99 
$num99 
,99 
$num99 
,99 
$num99  "
}99# $
}:: 	
;::	 

public;; 
static;; 

Dictionary;;  
<;;  !
int;;! $
,;;$ %
List;;& *
<;;* +
int;;+ .
>;;. /
>;;/ 0
GET_MAP_HEXTILES;;1 A
(;;A B
);;B C
{<< 	

Dictionary== 
<== 
int== 
,== 
List==  
<==  !
int==! $
>==$ %
>==% &
mapHexTiles==' 2
===3 4
new==5 8

Dictionary==9 C
<==C D
int==D G
,==G H
List==I M
<==M N
int==N Q
>==Q R
>==R S
{>> 
{?? 
$num?? 
,?? 
new?? 
List?? 
<?? 
int?? !
>??! "
{??# $
$num??% &
}??' (
}??) *
,??* +
{@@ 
$num@@ 
,@@ 
new@@ 
List@@ 
<@@ 
int@@ !
>@@! "
{@@# $
$num@@% &
}@@' (
}@@) *
,@@* +
{AA 
$numAA 
,AA 
newAA 
ListAA 
<AA 
intAA !
>AA! "
{AA# $
$numAA% &
,AA& '
$numAA( )
}AA* +
}AA, -
,AA- .
{BB 
$numBB 
,BB 
newBB 
ListBB 
<BB 
intBB !
>BB! "
{BB# $
$numBB% &
}BB' (
}BB) *
,BB* +
{CC 
$numCC 
,CC 
newCC 
ListCC 
<CC 
intCC "
>CC" #
{CC$ %
$numCC& '
,CC' (
$numCC) *
}CC+ ,
}CC- .
,CC. /
{DD 
$numDD 
,DD 
newDD 
ListDD 
<DD 
intDD "
>DD" #
{DD$ %
$numDD& '
}DD( )
}DD* +
,DD+ ,
{EE 
$numEE 
,EE 
newEE 
ListEE 
<EE 
intEE "
>EE" #
{EE$ %
$numEE& '
,EE' (
$numEE) *
}EE+ ,
}EE- .
,EE. /
{FF 
$numFF 
,FF 
newFF 
ListFF 
<FF 
intFF "
>FF" #
{FF$ %
$numFF& '
}FF( )
}FF* +
,FF+ ,
{GG 
$numGG 
,GG 
newGG 
ListGG 
<GG 
intGG "
>GG" #
{GG$ %
$numGG& '
,GG' (
$numGG) *
}GG+ ,
}GG- .
,GG. /
{HH 
$numHH 
,HH 
newHH 
ListHH 
<HH 
intHH "
>HH" #
{HH$ %
$numHH& '
,HH' (
$numHH) *
}HH+ ,
}HH- .
,HH. /
{II 
$numII 
,II 
newII 
ListII 
<II 
intII "
>II" #
{II$ %
$numII& '
,II' (
$numII) *
}II+ ,
}II- .
,II. /
{JJ 
$numJJ 
,JJ 
newJJ 
ListJJ 
<JJ 
intJJ "
>JJ" #
{JJ$ %
$numJJ& '
,JJ' (
$numJJ) +
}JJ, -
}JJ. /
,JJ/ 0
{KK 
$numKK 
,KK 
newKK 
ListKK 
<KK 
intKK "
>KK" #
{KK$ %
$numKK& (
}KK) *
}KK+ ,
,KK, -
{LL 
$numLL 
,LL 
newLL 
ListLL 
<LL 
intLL "
>LL" #
{LL$ %
$numLL& '
}LL( )
}LL* +
,LL+ ,
{MM 
$numMM 
,MM 
newMM 
ListMM 
<MM 
intMM "
>MM" #
{MM$ %
$numMM& '
,MM' (
$numMM) +
}MM, -
}MM. /
,MM/ 0
{NN 
$numNN 
,NN 
newNN 
ListNN 
<NN 
intNN "
>NN" #
{NN$ %
$numNN& '
,NN' (
$numNN) *
}NN+ ,
}NN- .
,NN. /
{OO 
$numOO 
,OO 
newOO 
ListOO 
<OO 
intOO "
>OO" #
{OO$ %
$numOO& '
,OO' (
$numOO) +
}OO, -
}OO. /
,OO/ 0
{PP 
$numPP 
,PP 
newPP 
ListPP 
<PP 
intPP "
>PP" #
{PP$ %
$numPP& '
,PP' (
$numPP) *
,PP* +
$numPP, .
}PP/ 0
}PP1 2
,PP2 3
{QQ 
$numQQ 
,QQ 
newQQ 
ListQQ 
<QQ 
intQQ "
>QQ" #
{QQ$ %
$numQQ& (
,QQ( )
$numQQ* ,
}QQ- .
}QQ/ 0
,QQ0 1
{RR 
$numRR 
,RR 
newRR 
ListRR 
<RR 
intRR "
>RR" #
{RR$ %
$numRR& '
,RR' (
$numRR) +
}RR, -
}RR. /
,RR/ 0
{SS 
$numSS 
,SS 
newSS 
ListSS 
<SS 
intSS "
>SS" #
{SS$ %
$numSS& (
,SS( )
$numSS* ,
}SS- .
}SS/ 0
,SS0 1
{TT 
$numTT 
,TT 
newTT 
ListTT 
<TT 
intTT "
>TT" #
{TT$ %
$numTT& '
}TT( )
}TT* +
,TT+ ,
{UU 
$numUU 
,UU 
newUU 
ListUU 
<UU 
intUU "
>UU" #
{UU$ %
$numUU& (
,UU( )
$numUU* +
}UU, -
}UU. /
,UU/ 0
{VV 
$numVV 
,VV 
newVV 
ListVV 
<VV 
intVV "
>VV" #
{VV$ %
$numVV& (
,VV( )
$numVV* ,
}VV- .
}VV/ 0
,VV0 1
{WW 
$numWW 
,WW 
newWW 
ListWW 
<WW 
intWW "
>WW" #
{WW$ %
$numWW& (
,WW( )
$numWW* +
}WW, -
}WW. /
,WW/ 0
{XX 
$numXX 
,XX 
newXX 
ListXX 
<XX 
intXX "
>XX" #
{XX$ %
$numXX& (
,XX( )
$numXX* ,
}XX- .
}XX/ 0
,XX0 1
{YY 
$numYY 
,YY 
newYY 
ListYY 
<YY 
intYY "
>YY" #
{YY$ %
$numYY& (
,YY( )
$numYY* ,
}YY- .
}YY/ 0
,YY0 1
{ZZ 
$numZZ 
,ZZ 
newZZ 
ListZZ 
<ZZ 
intZZ "
>ZZ" #
{ZZ$ %
$numZZ& (
,ZZ( )
$numZZ* ,
}ZZ- .
}ZZ/ 0
,ZZ0 1
{[[ 
$num[[ 
,[[ 
new[[ 
List[[ 
<[[ 
int[[ "
>[[" #
{[[$ %
$num[[& (
}[[) *
}[[+ ,
,[[, -
{\\ 
$num\\ 
,\\ 
new\\ 
List\\ 
<\\ 
int\\ "
>\\" #
{\\$ %
$num\\& (
}\\) *
}\\+ ,
,\\, -
{]] 
$num]] 
,]] 
new]] 
List]] 
<]] 
int]] "
>]]" #
{]]$ %
$num]]& (
,]]( )
$num]]* ,
}]]- .
}]]/ 0
,]]0 1
{^^ 
$num^^ 
,^^ 
new^^ 
List^^ 
<^^  
int^^  #
>^^# $
{^^% &
$num^^' )
}^^* +
}^^, -
,^^- .
{__ 
$num__ 
,__ 
new__ 
List__ 
<__  
int__  #
>__# $
{__% &
$num__' )
,__) *
$num__+ -
}__. /
}__0 1
,__1 2
{`` 
$num`` 
,`` 
new`` 
List`` 
<``  
int``  #
>``# $
{``% &
$num``' )
}``* +
}``, -
,``- .
{aa 
$numaa 
,aa 
newaa 
Listaa 
<aa  
intaa  #
>aa# $
{aa% &
$numaa' )
}aa* +
}aa, -
}bb 
;bb 
returndd 
mapHexTilesdd 
;dd 
}ee 	
}ff 
}gg �(
TC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Helpers\PasswordUtilities.cs
	namespace		 	
CatanDataAccess		
 
.		 
Helpers		 !
{

 
public 

static 
class 
PasswordUtilities )
{ 
public 
const 
int 
	SALT_SIZE "
=# $
$num% '
;' (
public 
static 
byte 
[ 
] 
GetSaltPassword ,
(, -
)- .
{ 	
byte 
[ 
] 
salt 
= 
new 
byte "
[" #
	SALT_SIZE# ,
], -
;- .
using 
( $
RNGCryptoServiceProvider +
randomNumber, 8
=9 :
new; >$
RNGCryptoServiceProvider? W
(W X
)X Y
)Y Z
{ 
randomNumber 
. 
GetBytes %
(% &
salt& *
)* +
;+ ,
} 
return 
salt 
; 
} 	
public 
static 
byte 
[ 
] 
GetHashPassword ,
(, -
string- 3
password4 <
,< =
byte> B
[B C
]C D
saltD H
)H I
{ 	
using 
( 
SHA256 
sha256 
=  !
SHA256" (
.( )
Create) /
(/ 0
)0 1
)1 2
{ 
Byte 
[ 
] 
passwordByteValue (
=) *
Encoding+ 3
.3 4
UTF84 8
.8 9
GetBytes9 A
(A B
passwordB J
)J K
;K L
Byte 
[ 
] "
generatePasswordNumber -
=. /
new0 3
byte4 8
[8 9
	SALT_SIZE9 B
+C D
passwordByteValueE V
.V W
LengthW ]
]] ^
;^ _
Buffer   
.   
	BlockCopy    
(    !
salt  ! %
,  % &
$num  ' (
,  ( )"
generatePasswordNumber  * @
,  @ A
$num  B C
,  C D
salt  E I
.  I J
Length  J P
)  P Q
;  Q R
Buffer!! 
.!! 
	BlockCopy!!  
(!!  !
passwordByteValue!!! 2
,!!2 3
$num!!4 5
,!!5 6"
generatePasswordNumber!!7 M
,!!M N
salt!!O S
.!!S T
Length!!T Z
,!!Z [
passwordByteValue!!\ m
.!!m n
Length!!n t
)!!t u
;!!u v
return## 
sha256## 
.## 
ComputeHash## )
(##) *"
generatePasswordNumber##* @
)##@ A
;##A B
}$$ 
}%% 	
public&& 
static&& 
bool&& 
ComparePassword&& *
(&&* +
string&&+ 1
password&&2 :
,&&: ;
byte&&< @
[&&@ A
]&&A B

storedSalt&&C M
,&&M N
byte&&O S
[&&S T
]&&T U

storedHash&&V `
)&&` a
{'' 	
byte(( 
[(( 
](( 
introducedHash(( !
=((" #
GetHashPassword(($ 3
(((3 4
password((4 <
,((< =

storedSalt((> H
)((H I
;((I J
return** 
CompareBytes** 
(**  
introducedHash**  .
,**. /

storedHash**0 :
)**: ;
;**; <
}++ 	
public,, 
static,, 
bool,, 
CompareBytes,, '
(,,' (
byte,,( ,
[,,, -
],,- .
introducedHash,,/ =
,,,= >
byte,,? C
[,,C D
],,D E

storedHash,,F P
),,P Q
{-- 	
int.. 
	minLength.. 
=.. 
Math..  
...  !
Min..! $
(..$ %
introducedHash..% 3
...3 4
Length..4 :
,..: ;

storedHash..< F
...F G
Length..G M
)..M N
;..N O
int// 
isEqual// 
=// 
introducedHash// (
.//( )
Length//) /
^//0 1

storedHash//2 <
.//< =
Length//= C
;//C D
for00 
(00 
int00 
i00 
=00 
$num00 
;00 
i00 
<00 
	minLength00  )
;00) *
i00+ ,
++00, .
)00. /
{11 
isEqual22 
|=22 
introducedHash22 )
[22) *
i22* +
]22+ ,
^22- .

storedHash22/ 9
[229 :
i22: ;
]22; <
;22< =
}33 
return44 
isEqual44 
==44 
$num44 
;44  
}55 	
}66 
}77 �&
[C:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Helpers\ConnectionStringProvider.cs
	namespace

 	
CatanDataAccess


 
.

 
Helper

  
{ 
public 

static 
class $
ConnectionStringProvider 0
{ 
public 
static 
string 
GetConnectionString 0
(0 1
)1 2
{ 	&
SqlConnectionStringBuilder &
stringConnection' 7
=8 9
null: >
;> ?
try 
{ 
stringConnection  
=! "
new# &&
SqlConnectionStringBuilder' A
(A B
)B C
;C D
stringConnection  
.  !

DataSource! +
=, -"
GetEnvironmentVariable. D
(D E
$strE U
)U V
;V W
stringConnection  
.  !
InitialCatalog! /
=0 1"
GetEnvironmentVariable2 H
(H I
$strI W
)W X
;X Y
stringConnection  
.  !
UserID! '
=( )"
GetEnvironmentVariable* @
(@ A
$strA O
)O P
;P Q
stringConnection  
.  !
Password! )
=* +"
GetEnvironmentVariable, B
(B C
$strC U
)U V
;V W
stringConnection  
.  !
ConnectTimeout! /
=0 1
$num2 4
;4 5
stringConnection  
.  !$
MultipleActiveResultSets! 9
=: ;
true< @
;@ A
} 
catch 
( !
ArgumentNullException '
ex( *
)* +
{ 
Log 
. 
Error 
( 
ex 
, 
ex  
.  !
Source! '
)' (
;( )
} 
catch 
( 
FormatException "
ex# %
)% &
{   
Log!! 
.!! 
Error!! 
(!! 
ex!! 
,!! 
ex!!  
.!!  !
Source!!! '
)!!' (
;!!( )
}"" 
catch## 
(## 
	Exception## 
ex## 
)## 
{$$ 
Log%% 
.%% 
Error%% 
(%% 
ex%% 
,%% 
ex%%  
.%%  !
Source%%! '
)%%' (
;%%( )
}&& 
return(( 
stringConnection(( #
?((# $
.(($ %
ConnectionString((% 5
??((6 8
string((9 ?
.((? @
Empty((@ E
;((E F
})) 	
public** 
static** 
string** #
GetSafeConnectionString** 4
(**4 5
)**5 6
{++ 	
try,, 
{-- 
return.. 
GetConnectionString.. *
(..* +
)..+ ,
;.., -
}// 
catch00 
(00 !
ArgumentNullException00 (
ex00) +
)00+ ,
{11 
Log22 
.22 
Error22 
(22 
ex22 
,22 
ex22  
.22  !
Source22! '
)22' (
;22( )
}33 
catch44 
(44 
FormatException44 "
ex44# %
)44% &
{55 
Log66 
.66 
Error66 
(66 
ex66 
,66 
ex66  
.66  !
Source66! '
)66' (
;66( )
}77 
catch88 
(88 
	Exception88 
ex88 
)88  
{99 
Log:: 
.:: 
Error:: 
(:: 
ex:: 
,:: 
ex::  
.::  !
Source::! '
)::' (
;::( )
};; 
return== 
string== 
.== 
Empty== 
;==  
}?? 	
publicAA 
staticAA 
stringAA "
GetEnvironmentVariableAA 3
(AA3 4
stringAA4 :
variableNameAA; G
)AAG H
{BB 	
stringCC 
environmentValueCC #
=CC$ %
EnvironmentCC& 1
.CC1 2"
GetEnvironmentVariableCC2 H
(CCH I
variableNameCCI U
)CCU V
;CCV W
ifDD 
(DD 
environmentValueDD  
==DD! #
nullDD$ (
)DD( )
{EE 
returnFF 
stringFF 
.FF 
EmptyFF #
;FF# $
}GG 
returnHH 
environmentValueHH #
;HH# $
}II 	
}JJ 
}KK �

rC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Migrations\202412041744467_RequiredPhotoToCreateAccount.cs
	namespace 	
CatanDataAccess
 
. 

Migrations $
{ 
public 

partial 
class (
RequiredPhotoToCreateAccount 5
:6 7
DbMigration8 C
{ 
public 
override 
void 
Up 
(  
)  !
{		 	
AlterColumn

 
(

 
$str

 &
,

& '
$str

( 5
,

5 6
c

7 8
=>

9 ;
c

< =
.

= >
String

> D
(

D E
nullable

E M
:

M N
false

O T
,

T U
	maxLength

V _
:

_ `
$num

a d
)

d e
)

e f
;

f g
} 	
public 
override 
void 
Down !
(! "
)" #
{ 	
AlterColumn 
( 
$str &
,& '
$str( 5
,5 6
c7 8
=>9 ;
c< =
.= >
String> D
(D E
	maxLengthE N
:N O
$numP S
)S T
)T U
;U V
} 	
} 
} �
_C:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Helpers\FriendRequestStatusUtilities.cs
	namespace 	
CatanDataAccess
 
. 
Helpers !
{ 
public		 

static		 
class		 (
FriendRequestStatusUtilities		 4
{

 
public 
const 
string )
FRIEND_REQUEST_STATUS_PENDING 9
=: ;
$str< E
;E F
public 
const 
string *
FRIEND_REQUEST_STATUS_ACCEPTED :
=; <
$str= G
;G H
public 
const 
string *
FRIEND_REQUEST_STATUS_REJECTED :
=; <
$str= G
;G H
public 
const 
string )
FRIEND_REQUEST_STATUS_DELETED 9
=: ;
$str< E
;E F
} 
} ��
mC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Migrations\202412040807438_InitialMigrationCatanDB.cs
	namespace 	
CatanDataAccess
 
. 

Migrations $
{ 
public 

partial 
class #
InitialMigrationCatanDB 0
:1 2
DbMigration3 >
{ 
public 
override 
void 
Up 
(  
)  !
{		 	
CreateTable

 
(

 
$str 
, 
c 
=> 
new 
{ 
Id 
= 
c 
. 
Int "
(" #
nullable# +
:+ ,
false- 2
,2 3
identity4 <
:< =
true> B
)B C
,C D
Email 
= 
c  !
.! "
String" (
(( )
	maxLength) 2
:2 3
$num4 7
)7 8
,8 9
PhoneNumber #
=$ %
c& '
.' (
String( .
(. /
	maxLength/ 8
:8 9
$num: <
)< =
,= >
PasswordHash $
=% &
c' (
.( )
Binary) /
(/ 0
nullable0 8
:8 9
false: ?
)? @
,@ A
Salt 
= 
c  
.  !
Binary! '
(' (
nullable( 0
:0 1
false2 7
)7 8
,8 9
	CreatedAt !
=" #
c$ %
.% &
DateTime& .
(. /
nullable/ 7
:7 8
false9 >
)> ?
,? @
PreferredLanguage )
=* +
c, -
.- .
String. 4
(4 5
nullable5 =
:= >
false? D
)D E
,E F
	UpdatedAt !
=" #
c$ %
.% &
DateTime& .
(. /
nullable/ 7
:7 8
false9 >
)> ?
,? @
Status 
=  
c! "
." #
Boolean# *
(* +
nullable+ 3
:3 4
false5 :
): ;
,; <
Token 
= 
c  !
.! "
String" (
(( )
)) *
,* +
RecoveryTokenExpiry +
=, -
c. /
./ 0
DateTime0 8
(8 9
)9 :
,: ;
} 
) 
. 

PrimaryKey 
( 
t 
=>  
t! "
." #
Id# %
)% &
;& '
CreateTable 
( 
$str 
, 
c 
=> 
new 
{ 
Id   
=   
c   
.   
Int   "
(  " #
nullable  # +
:  + ,
false  - 2
)  2 3
,  3 4
Name!! 
=!! 
c!!  
.!!  !
String!!! '
(!!' (
nullable!!( 0
:!!0 1
false!!2 7
,!!7 8
	maxLength!!9 B
:!!B C
$num!!D G
)!!G H
,!!H I
	SessionId"" !
=""" #
c""$ %
.""% &
String""& ,
("", -
)""- .
,"". /
LastActivity## $
=##% &
c##' (
.##( )
DateTime##) 1
(##1 2
)##2 3
,##3 4
PicturePath$$ #
=$$$ %
c$$& '
.$$' (
String$$( .
($$. /
	maxLength$$/ 8
:$$8 9
$num$$: =
)$$= >
,$$> ?
PictureVersion%% &
=%%' (
c%%) *
.%%* +
Int%%+ .
(%%. /
nullable%%/ 7
:%%7 8
false%%9 >
)%%> ?
,%%? @
IsOnline&&  
=&&! "
c&&# $
.&&$ %
Boolean&&% ,
(&&, -
nullable&&- 5
:&&5 6
false&&7 <
)&&< =
,&&= >
}'' 
)'' 
.(( 

PrimaryKey(( 
((( 
t(( 
=>((  
t((! "
.((" #
Id((# %
)((% &
.)) 

ForeignKey)) 
()) 
$str)) *
,))* +
t)), -
=>)). 0
t))1 2
.))2 3
Id))3 5
,))5 6
cascadeDelete))7 D
:))D E
true))F J
)))J K
.** 
Index** 
(** 
t** 
=>** 
t** 
.** 
Id**  
)**  !
;**! "
CreateTable,, 
(,, 
$str-- "
,--" #
c.. 
=>.. 
new.. 
{// 
	ProfileId00 !
=00" #
c00$ %
.00% &
Int00& )
(00) *
nullable00* 2
:002 3
false004 9
)009 :
,00: ;
GameId11 
=11  
c11! "
.11" #
Int11# &
(11& '
nullable11' /
:11/ 0
false111 6
)116 7
,117 8
IsActiveGame22 $
=22% &
c22' (
.22( )
String22) /
(22/ 0
)220 1
,221 2
IsPlayerInGame33 &
=33' (
c33) *
.33* +
Boolean33+ 2
(332 3
nullable333 ;
:33; <
false33= B
)33B C
,33C D
Points44 
=44  
c44! "
.44" #
Int44# &
(44& '
nullable44' /
:44/ 0
false441 6
)446 7
,447 8
}55 
)55 
.66 

PrimaryKey66 
(66 
t66 
=>66  
new66! $
{66% &
t66' (
.66( )
	ProfileId66) 2
,662 3
t664 5
.665 6
GameId666 <
}66= >
)66> ?
.77 

ForeignKey77 
(77 
$str77 '
,77' (
t77) *
=>77+ -
t77. /
.77/ 0
GameId770 6
)776 7
.88 

ForeignKey88 
(88 
$str88 *
,88* +
t88, -
=>88. 0
t881 2
.882 3
	ProfileId883 <
,88< =
cascadeDelete88> K
:88K L
true88M Q
)88Q R
.99 
Index99 
(99 
t99 
=>99 
t99 
.99 
	ProfileId99 '
)99' (
.:: 
Index:: 
(:: 
t:: 
=>:: 
t:: 
.:: 
GameId:: $
)::$ %
;::% &
CreateTable<< 
(<< 
$str== 
,== 
c>> 
=>>> 
new>> 
{?? 
Id@@ 
=@@ 
c@@ 
.@@ 
Int@@ "
(@@" #
nullable@@# +
:@@+ ,
false@@- 2
,@@2 3
identity@@4 <
:@@< =
true@@> B
)@@B C
,@@C D
	AccessKeyAA !
=AA" #
cAA$ %
.AA% &
StringAA& ,
(AA, -
nullableAA- 5
:AA5 6
falseAA7 <
,AA< =
	maxLengthAA> G
:AAG H
$numAAI K
)AAK L
,AAL M
DateBB 
=BB 
cBB  
.BB  !
DateTimeBB! )
(BB) *
nullableBB* 2
:BB2 3
falseBB4 9
)BB9 :
,BB: ;
StatusCC 
=CC  
cCC! "
.CC" #
StringCC# )
(CC) *
nullableCC* 2
:CC2 3
falseCC4 9
,CC9 :
	maxLengthCC; D
:CCD E
$numCCF H
)CCH I
,CCI J
NumberPlayersDD %
=DD& '
cDD( )
.DD) *
IntDD* -
(DD- .
nullableDD. 6
:DD6 7
falseDD8 =
)DD= >
,DD> ?
MaxNumberPlayersEE (
=EE) *
cEE+ ,
.EE, -
IntEE- 0
(EE0 1
nullableEE1 9
:EE9 :
falseEE; @
)EE@ A
,EEA B
NameFF 
=FF 
cFF  
.FF  !
StringFF! '
(FF' (
nullableFF( 0
:FF0 1
falseFF2 7
)FF7 8
,FF8 9
AdminGameIdGG #
=GG$ %
cGG& '
.GG' (
IntGG( +
(GG+ ,
nullableGG, 4
:GG4 5
falseGG6 ;
)GG; <
,GG< =
}HH 
)HH 
.II 

PrimaryKeyII 
(II 
tII 
=>II  
tII! "
.II" #
IdII# %
)II% &
.JJ 
IndexJJ 
(JJ 
tJJ 
=>JJ 
tJJ 
.JJ 
	AccessKeyJJ '
,JJ' (
uniqueJJ) /
:JJ/ 0
trueJJ1 5
)JJ5 6
;JJ6 7
CreateTableLL 
(LL 
$strMM '
,MM' (
cNN 
=>NN 
newNN 
{OO 
GuestAccountIdPP &
=PP' (
cPP) *
.PP* +
IntPP+ .
(PP. /
nullablePP/ 7
:PP7 8
falsePP9 >
)PP> ?
,PP? @
GameIdQQ 
=QQ  
cQQ! "
.QQ" #
IntQQ# &
(QQ& '
nullableQQ' /
:QQ/ 0
falseQQ1 6
)QQ6 7
,QQ7 8
IsPlayerInGameRR &
=RR' (
cRR) *
.RR* +
BooleanRR+ 2
(RR2 3
nullableRR3 ;
:RR; <
falseRR= B
)RRB C
,RRC D
IsActiveGameSS $
=SS% &
cSS' (
.SS( )
StringSS) /
(SS/ 0
)SS0 1
,SS1 2
}TT 
)TT 
.UU 

PrimaryKeyUU 
(UU 
tUU 
=>UU  
newUU! $
{UU% &
tUU' (
.UU( )
GuestAccountIdUU) 7
,UU7 8
tUU9 :
.UU: ;
GameIdUU; A
}UUB C
)UUC D
.VV 

ForeignKeyVV 
(VV 
$strVV '
,VV' (
tVV) *
=>VV+ -
tVV. /
.VV/ 0
GameIdVV0 6
,VV6 7
cascadeDeleteVV8 E
:VVE F
trueVVG K
)VVK L
.WW 

ForeignKeyWW 
(WW 
$strWW /
,WW/ 0
tWW1 2
=>WW3 5
tWW6 7
.WW7 8
GuestAccountIdWW8 F
,WWF G
cascadeDeleteWWH U
:WWU V
trueWWW [
)WW[ \
.XX 
IndexXX 
(XX 
tXX 
=>XX 
tXX 
.XX 
GuestAccountIdXX ,
)XX, -
.YY 
IndexYY 
(YY 
tYY 
=>YY 
tYY 
.YY 
GameIdYY $
)YY$ %
;YY% &
CreateTable[[ 
([[ 
$str\\ #
,\\# $
c]] 
=>]] 
new]] 
{^^ 
Id__ 
=__ 
c__ 
.__ 
Int__ "
(__" #
nullable__# +
:__+ ,
false__- 2
,__2 3
identity__4 <
:__< =
true__> B
)__B C
,__C D
Name`` 
=`` 
c``  
.``  !
String``! '
(``' (
	maxLength``( 1
:``1 2
$num``3 6
)``6 7
,``7 8
IsActiveaa  
=aa! "
caa# $
.aa$ %
Booleanaa% ,
(aa, -
nullableaa- 5
:aa5 6
falseaa7 <
)aa< =
,aa= >
LastActivitybb $
=bb% &
cbb' (
.bb( )
DateTimebb) 1
(bb1 2
)bb2 3
,bb3 4
}cc 
)cc 
.dd 

PrimaryKeydd 
(dd 
tdd 
=>dd  
tdd! "
.dd" #
Iddd# %
)dd% &
;dd& '
CreateTableff 
(ff 
$strgg $
,gg$ %
chh 
=>hh 
newhh 
{ii 
Idjj 
=jj 
cjj 
.jj 
Intjj "
(jj" #
nullablejj# +
:jj+ ,
falsejj- 2
,jj2 3
identityjj4 <
:jj< =
truejj> B
)jjB C
,jjC D
Datekk 
=kk 
ckk  
.kk  !
DateTimekk! )
(kk) *
nullablekk* 2
:kk2 3
falsekk4 9
)kk9 :
,kk: ;
SenderProfileIdll '
=ll( )
cll* +
.ll+ ,
Intll, /
(ll/ 0
nullablell0 8
:ll8 9
falsell: ?
)ll? @
,ll@ A
ReceiverProfileIdmm )
=mm* +
cmm, -
.mm- .
Intmm. 1
(mm1 2
nullablemm2 :
:mm: ;
falsemm< A
)mmA B
,mmB C
Statusnn 
=nn  
cnn! "
.nn" #
Stringnn# )
(nn) *
nullablenn* 2
:nn2 3
falsenn4 9
)nn9 :
,nn: ;
}oo 
)oo 
.pp 

PrimaryKeypp 
(pp 
tpp 
=>pp  
tpp! "
.pp" #
Idpp# %
)pp% &
.qq 

ForeignKeyqq 
(qq 
$strqq *
,qq* +
tqq, -
=>qq. 0
tqq1 2
.qq2 3
ReceiverProfileIdqq3 D
,qqD E
cascadeDeleteqqF S
:qqS T
trueqqU Y
)qqY Z
.rr 

ForeignKeyrr 
(rr 
$strrr *
,rr* +
trr, -
=>rr. 0
trr1 2
.rr2 3
SenderProfileIdrr3 B
)rrB C
.ss 
Indexss 
(ss 
tss 
=>ss 
tss 
.ss 
SenderProfileIdss -
)ss- .
.tt 
Indextt 
(tt 
ttt 
=>tt 
ttt 
.tt 
ReceiverProfileIdtt /
)tt/ 0
;tt0 1
}vv 	
publicxx 
overridexx 
voidxx 
Downxx !
(xx! "
)xx" #
{yy 	
DropForeignKeyzz 
(zz 
$strzz )
,zz) *
$strzz+ /
,zz/ 0
$strzz1 ?
)zz? @
;zz@ A
DropForeignKey{{ 
({{ 
$str{{ /
,{{/ 0
$str{{1 B
,{{B C
$str{{D R
){{R S
;{{S T
DropForeignKey|| 
(|| 
$str|| /
,||/ 0
$str||1 D
,||D E
$str||F T
)||T U
;||U V
DropForeignKey}} 
(}} 
$str}} -
,}}- .
$str}}/ :
,}}: ;
$str}}< J
)}}J K
;}}K L
DropForeignKey~~ 
(~~ 
$str~~ -
,~~- .
$str~~/ 7
,~~7 8
$str~~9 D
)~~D E
;~~E F
DropForeignKey 
( 
$str 2
,2 3
$str4 D
,D E
$strF Y
)Y Z
;Z [
DropForeignKey
�� 
(
�� 
$str
�� 2
,
��2 3
$str
��4 <
,
��< =
$str
��> I
)
��I J
;
��J K
	DropIndex
�� 
(
�� 
$str
�� *
,
��* +
new
��, /
[
��/ 0
]
��0 1
{
��2 3
$str
��4 G
}
��H I
)
��I J
;
��J K
	DropIndex
�� 
(
�� 
$str
�� *
,
��* +
new
��, /
[
��/ 0
]
��0 1
{
��2 3
$str
��4 E
}
��F G
)
��G H
;
��H I
	DropIndex
�� 
(
�� 
$str
�� -
,
��- .
new
��/ 2
[
��2 3
]
��3 4
{
��5 6
$str
��7 ?
}
��@ A
)
��A B
;
��B C
	DropIndex
�� 
(
�� 
$str
�� -
,
��- .
new
��/ 2
[
��2 3
]
��3 4
{
��5 6
$str
��7 G
}
��H I
)
��I J
;
��J K
	DropIndex
�� 
(
�� 
$str
�� !
,
��! "
new
��# &
[
��& '
]
��' (
{
��) *
$str
��+ 6
}
��7 8
)
��8 9
;
��9 :
	DropIndex
�� 
(
�� 
$str
�� (
,
��( )
new
��* -
[
��- .
]
��. /
{
��0 1
$str
��2 :
}
��; <
)
��< =
;
��= >
	DropIndex
�� 
(
�� 
$str
�� (
,
��( )
new
��* -
[
��- .
]
��. /
{
��0 1
$str
��2 =
}
��> ?
)
��? @
;
��@ A
	DropIndex
�� 
(
�� 
$str
�� $
,
��$ %
new
��& )
[
��) *
]
��* +
{
��, -
$str
��. 2
}
��3 4
)
��4 5
;
��5 6
	DropTable
�� 
(
�� 
$str
�� *
)
��* +
;
��+ ,
	DropTable
�� 
(
�� 
$str
�� )
)
��) *
;
��* +
	DropTable
�� 
(
�� 
$str
�� -
)
��- .
;
��. /
	DropTable
�� 
(
�� 
$str
�� !
)
��! "
;
��" #
	DropTable
�� 
(
�� 
$str
�� (
)
��( )
;
��) *
	DropTable
�� 
(
�� 
$str
�� $
)
��$ %
;
��% &
	DropTable
�� 
(
�� 
$str
�� $
)
��$ %
;
��% &
}
�� 	
}
�� 
}�� �
PC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Helpers\GameUtilities.cs
	namespace 	
CatanDataAccess
 
. 
Helpers !
{ 
public		 

static		 
class		 
GameUtilities		 %
{

 
public 
const 
string %
DOMAIN_GAME_STATUS_INGAME 5
=6 7
$str8 @
;@ A
public 
const 
string (
DOMAIN_GAME_STATUS_CANCELLED 8
=9 :
$str; F
;F G
public 
const 
string &
DOMAIN_GAME_STATUS_PREGAME 6
=7 8
$str9 B
;B C
public 
const 
string '
DOMAIN_GAME_STATUS_POSTGAME 7
=8 9
$str: D
;D E
public 
static 
readonly 
string %
[% &
]& '$
WORDS_DICTIONARY_ANIMALS( @
=A B
{C D
$strE K
,K L
$strM S
,S T
$strU \
}] ^
;^ _
public 
const 
int ,
 TIME_LIMIT_TO_DISCONNECT_PLAYERS 9
=: ;
$num< >
;> ?
public 
const 
int *
TIME_LIMIT_TO_DISCONNECT_GAMES 7
=8 9
$num: ;
;; <
public 
const 
int ,
 NUMBER_OF_PLAYERS_TO_CANCEL_GAME 9
=: ;
$num< =
;= >
public 
const 
int .
"REQUIRED_MAYORITY_DIVISOR_TO_EXPEL ;
=< =
$num> ?
;? @
public 
const 
int ,
 MINIMUN_REQUIRRED_VOTES_TO_EXPEL 9
=: ;
$num< =
;= >
public 
const 
int &
TIME_PING_INTERVAL_SECONDS 3
=4 5
$num6 8
;8 9
public 
const 
int 
TIME_MILISECONDS )
=* +
$num, 0
;0 1
public 
const 
int !
TIME_MINIMUN_TO_START .
=/ 0
$num1 2
;2 3
public 
const 
int #
MINIMUN_PLAYERS_BY_GAME 0
=1 2
$num3 4
;4 5
public 
const 
int )
MINIMUN_PLAYERS_TO_START_GAME 6
=7 8
$num9 :
;: ;
public 
const 
int (
TIME_TO_START_GAME_COUNTDOWN 5
=6 7
$num8 :
;: ;
public 
const 
int %
TIME_LAST_SECOND_TO_START 2
=3 4
$num5 6
;6 7
public 
const 
int 
NOT_TURNS_ASSIGNED +
=, -
-. /
$num/ 0
;0 1
public 
const 
int 
ONE_TURN !
=" #
$num$ %
;% &
public 
const 
int 
TIME_TURN_DURATION +
=, -
$num. 1
;1 2
} 
}   �

UC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Helpers\CharacterUtilities.cs
	namespace 	
CatanDataAccess
 
. 
Helpers !
{ 
public		 

static		 
class		 
CharacterUtilities		 *
{

 
public 
const 
string 
STRING_CHAR_SPACE -
=. /
$str0 3
;3 4
public 
const 
char 
STRING_CHAR_ARROBA ,
=- .
$char/ 2
;2 3
public 
const 
string 
STRING_CHAR_DASH ,
=- .
$str/ 2
;2 3
public 
const 
string 
STRING_CHAR_POINT -
=. /
$str0 3
;3 4
public 
const 
int 
START_POSITION '
=( )
$num* +
;+ ,
public 
const 
int 
INT_VALUE_ZERO '
=( )
$num* +
;+ ,
public 
const 
int  
FIRST_POSITION_ARRAY -
=. /
$num0 1
;1 2
public 
const 
int 
NON_VALID_ID %
=& '
$num( )
;) *
} 
} �
RC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Domain\GuestAccountGame.cs
	namespace		 	
CatanDataAccess		
 
.		 
Domain		  
{

 
public 

class 
GuestAccountGame !
{ 
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
GuestAccountId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
GameId 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
IsPlayerInGame "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
false3 8
;8 9
public 
string 
IsActiveGame "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

ForeignKey	 
( 
$str $
)$ %
]% &
public 
virtual 
GuestAccount # 
RelationGuestAccount$ 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
virtual 
Game 
RelationGame (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} �
IC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Domain\Profile.cs
	namespace		 	
CatanDataAccess		
 
.		 
Domain		  
{

 
public 

class 
Profile 
{ 
[ 	
Key	 
] 
[ 	

ForeignKey	 
( 
$str %
)% &
]& '
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	SessionId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
? 
LastActivity %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
PicturePath !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
PictureVersion !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$num2 3
;3 4
public 
bool 
IsOnline 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
false- 2
;2 3
public 
virtual 
Account 
RelationAccount .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
virtual 
ICollection "
<" #
FriendRequest# 0
>0 1&
RelationSentFriendRequests2 L
{M N
getO R
;R S
setT W
;W X
}Y Z
=[ \
new] `
Lista e
<e f
FriendRequestf s
>s t
(t u
)u v
;v w
public 
virtual 
ICollection "
<" #
FriendRequest# 0
>0 1*
RelationReceivedFriendRequests2 P
{Q R
getS V
;V W
setX [
;[ \
}] ^
=_ `
newa d
Liste i
<i j
FriendRequestj w
>w x
(x y
)y z
;z {
public 
virtual 
ICollection "
<" #
ProfileGame# .
>. / 
RelationProfileGames0 D
{E F
getG J
;J K
setL O
;O P
}Q R
=S T
newU X
ListY ]
<] ^
ProfileGame^ i
>i j
(j k
)k l
;l m
} 
} �
MC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Domain\ProfileGame.cs
	namespace		 	
CatanDataAccess		
 
.		 
Domain		  
{

 
public 

class 
ProfileGame 
{ 
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
	ProfileId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Key	 
, 
Column 
( 
Order 
= 
$num 
) 
]  
public 
int 
GameId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
IsActiveGame "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IsPlayerInGame "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
false3 8
;8 9
public 
int 
Points 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$num* +
;+ ,
[ 	

ForeignKey	 
( 
$str 
)  
]  !
public 
virtual 
Profile 
RelationProfile .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
virtual 
Game 
RelationGame (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} �
NC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Domain\GuestAccount.cs
	namespace		 	
CatanDataAccess		
 
.		 
Domain		  
{

 
public 

class 
GuestAccount 
{ 
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
true- 1
;1 2
public 
DateTime 
? 
LastActivity %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
virtual 
ICollection "
<" #
GuestAccountGame# 3
>3 4%
RelationGuestAccountGames5 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
new_ b
Listc g
<g h
GuestAccountGameh x
>x y
(y z
)z {
;{ |
} 
} �
OC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Domain\FriendRequest.cs
	namespace		 	
CatanDataAccess		
 
.		 
Domain		  
{

 
public 

class 
FriendRequest 
{ 
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
DateTime- 5
.5 6
Now6 9
;9 :
[ 	
Required	 
] 
public 
int 
SenderProfileId "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
public 
int 
ReceiverProfileId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
] 
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

ForeignKey	 
( 
$str %
)% &
]& '
public 
Profile !
RelationSenderProfile ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	

ForeignKey	 
( 
$str '
)' (
]( )
public 
Profile #
RelationReceiverProfile .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
}   �
IC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Domain\Account.cs
	namespace		 	
CatanDataAccess		
 
.		 
Domain		  
{

 
public 

class 
Account 
{ 
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
EmailAddress	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Phone	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
byte 
[ 
] 
PasswordHash "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
public 
byte 
[ 
] 
Salt 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
DateTime 
	CreatedAt !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
string 
PreferredLanguage '
{( )
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Required	 
] 
public 
DateTime 
	UpdatedAt !
{" #
get$ '
;' (
set) ,
;, -
}. /
[   	
Required  	 
]   
public!! 
bool!! 
Status!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
=!!) *
false!!+ 0
;!!1 2
public"" 
string"" 
Token"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
public## 
DateTime## 
?## 
RecoveryTokenExpiry## ,
{##- .
get##/ 2
;##2 3
set##4 7
;##7 8
}##9 :
public%% 
virtual%% 
Profile%% 
RelationProfile%% .
{%%/ 0
get%%1 4
;%%4 5
set%%6 9
;%%9 :
}%%; <
}&& 
}'' �
FC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Domain\Game.cs
	namespace		 	
CatanDataAccess		
 
.		 
Domain		  
{

 
public 

class 
Game 
{ 
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
[ 	
Index	 
( 
IsUnique 
= 
true 
) 
]  
public 
string 
	AccessKey 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
public 
int 
NumberPlayers  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
$num1 2
;2 3
[ 	
Required	 
] 
public 
int 
MaxNumberPlayers #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
AdminGameId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public!! 
virtual!! 
ICollection!! "
<!!" #
GuestAccountGame!!# 3
>!!3 4%
RelationGuestAccountGames!!5 N
{!!O P
get!!Q T
;!!T U
set!!V Y
;!!Y Z
}!![ \
=!!] ^
new!!_ b
List!!c g
<!!g h
GuestAccountGame!!h x
>!!x y
(!!y z
)!!z {
;!!{ |
public"" 
virtual"" 
ICollection"" "
<""" #
ProfileGame""# .
>"". / 
RelationProfileGames""0 D
{""E F
get""G J
;""J K
set""L O
;""O P
}""Q R
=""S T
new""U X
List""Y ]
<""] ^
ProfileGame""^ i
>""i j
(""j k
)""k l
;""l m
}## 
}$$ �<
RC:\Users\gearh\source\repos\CatanServer\CatanDataAccess\Contexts\CatanDBContext.cs
	namespace 	
CatanDataAccess
 
. 
Contexts "
{ 
public 

class 
CatanDBContext 
:  !
	DbContext" +
{ 
public 
CatanDBContext 
( 
) 
:  !
base" &
(& '$
ConnectionStringProvider' ?
.? @#
GetSafeConnectionString@ W
(W X
)X Y
)Y Z
{ 	
} 	
public 
DbSet 
< 
Account 
> 
Account %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
FriendRequest "
>" #
FriendRequest$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
DbSet 
< 
Game 
> 
Game 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DbSet 
< 
GuestAccount !
>! "
GuestAccount# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
DbSet 
< 
GuestAccountGame %
>% &
GuestAccountsGame' 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
DbSet 
< 
ProfileGame  
>  !
ProfileGame" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< 
Profile 
> 
Profile %
{& '
get) ,
;, -
set. 1
;1 2
}3 4
	protected 
override 
void 
OnModelCreating  /
(/ 0
DbModelBuilder0 >
modelBuilder? K
)K L
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder   
.   
Entity   
<    
GuestAccountGame    0
>  0 1
(  1 2
)  2 3
.  3 4
HasKey  4 :
(  : ;

primaryKey  ; E
=>  F H
new  I L
{  M N

primaryKey  O Y
.  Y Z
GuestAccountId  Z h
,  h i

primaryKey  j t
.  t u
GameId  u {
}  | }
)  } ~
;  ~ 
modelBuilder"" 
."" 
Entity"" 
<""  
ProfileGame""  +
>""+ ,
("", -
)""- .
."". /
HasKey""/ 5
(""5 6

primaryKey""6 @
=>""A C
new""D G
{""H I

primaryKey""J T
.""T U
	ProfileId""U ^
,""^ _

primaryKey""` j
.""j k
GameId""k q
}""r s
)""s t
;""t u
modelBuilder$$ 
.$$ 
Entity$$ 
<$$  
Account$$  '
>$$' (
($$( )
)$$) *
.$$* +
HasRequired$$+ 6
($$6 7
account$$7 >
=>$$? A
account$$B I
.$$I J
RelationProfile$$J Y
)$$Y Z
.$$Z [!
WithRequiredPrincipal$$[ p
($$p q
profile$$q x
=>$$y {
profile	$$| �
.
$$� �
RelationAccount
$$� �
)
$$� �
.%% 
WillCascadeOnDelete%% $
(%%$ %
true%%% )
)%%) *
;%%* +
modelBuilder'' 
.'' 
Entity'' 
<''  
FriendRequest''  -
>''- .
(''. /
)''/ 0
.''0 1
HasRequired''1 <
(''< =
friendRequest''= J
=>''K M
friendRequest''N [
.''[ \#
RelationReceiverProfile''\ s
)''s t
.''t u
WithMany(( 
((( 
profile((  
=>((! #
profile(($ +
.((+ ,*
RelationReceivedFriendRequests((, J
)((J K
.((K L
WillCascadeOnDelete((L _
(((_ `
true((` d
)((d e
;((e f
modelBuilder** 
.** 
Entity** 
<**  
FriendRequest**  -
>**- .
(**. /
)**/ 0
.**0 1
HasRequired**1 <
(**< =
friendRequest**= J
=>**K M
friendRequest**N [
.**[ \!
RelationSenderProfile**\ q
)**q r
.**r s
WithMany++ 
(++ 
profile++  
=>++! #
profile++$ +
.+++ ,&
RelationSentFriendRequests++, F
)++F G
.++G H
WillCascadeOnDelete++H [
(++[ \
false++\ a
)++a b
;++b c
modelBuilder-- 
.-- 
Entity-- 
<--  
ProfileGame--  +
>--+ ,
(--, -
)--- .
.--. /
HasRequired--/ :
(--: ;
profileGame--; F
=>--G I
profileGame--J U
.--U V
RelationProfile--V e
)--e f
.--f g
WithMany--g o
(--o p
profile--p w
=>--x z
profile	--{ �
.
--� �"
RelationProfileGames
--� �
)
--� �
... 
WillCascadeOnDelete.. $
(..$ %
true..% )
)..) *
;..* +
modelBuilder00 
.00 
Entity00 
<00  
ProfileGame00  +
>00+ ,
(00, -
)00- .
.00. /
HasRequired00/ :
(00: ;
profileGame00; F
=>00G I
profileGame00J U
.00U V
RelationGame00V b
)00b c
.00c d
WithMany00d l
(00l m
game00m q
=>00r t
game00u y
.00y z!
RelationProfileGames	00z �
)
00� �
.11 
WillCascadeOnDelete11 $
(11$ %
false11% *
)11* +
;11+ ,
modelBuilder33 
.33 
Entity33 
<33  
GuestAccountGame33  0
>330 1
(331 2
)332 3
.333 4
HasRequired334 ?
(33? @
guestAccountGame33@ P
=>33Q S
guestAccountGame33T d
.33d e 
RelationGuestAccount33e y
)33y z
.44 
WithMany44 
(44 
guestAccount44 &
=>44' )
guestAccount44* 6
.446 7%
RelationGuestAccountGames447 P
)44P Q
.44Q R
WillCascadeOnDelete44R e
(44e f
true44f j
)44j k
;44k l
modelBuilder66 
.66 
Entity66 
<66  
GuestAccountGame66  0
>660 1
(661 2
)662 3
.663 4
HasRequired664 ?
(66? @
guestAccountsGame66@ Q
=>66R T
guestAccountsGame66U f
.66f g
RelationGame66g s
)66s t
.66t u
WithMany77 
(77 
game77 
=>77  
game77! %
.77% &%
RelationGuestAccountGames77& ?
)77? @
.77@ A
WillCascadeOnDelete77A T
(77T U
true77U Y
)77Y Z
;77Z [
}88 	
}99 
}:: 