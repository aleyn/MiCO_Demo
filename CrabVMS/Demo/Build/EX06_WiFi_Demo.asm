;Generate by CrabScript v3.0
;Compile Mode: 3
;void Welcome()
{$D 168, 182}
::Welcome::
{$N 'Welcome', 'P', 0}
{$N 'Welcome', 'L', 0}
  FUNC <Welcome>
  INTR $2000
  PUSH #L, #P, #V, #M
  VAR  #L, 0
  MOV  #P, #F
  INTR $1000
{$A True}
;PrintLn('============ Crab for MiCO ===============')
{$D 189, 242}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.1> ;'============ Crab for MiCO ==============='
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::Welcome.1.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;PrintLn('= Power by Crab SDK 2.0 / MiCO SDK 3.2.2 =')
{$D 247, 300}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.2> ;'= Power by Crab SDK 2.0 / MiCO SDK 3.2.2 ='
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::Welcome.3.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;PrintLn('= Program by aleyn.wu   / MXCHIP         =')
{$D 305, 358}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.3> ;'= Program by aleyn.wu   / MXCHIP         ='
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::Welcome.5.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;PrintLn('= Support EMW3166, EMW3239               =')
{$D 363, 416}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.4> ;'= Support EMW3166, EMW3239               ='
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::Welcome.7.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;PrintLn('=                                        =')
{$D 421, 474}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.5> ;'=                                        ='
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::Welcome.9.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;PrintLn('= WIFI Demo                              =')
{$D 479, 532}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.6> ;'= WIFI Demo                              ='
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::Welcome.11.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;PrintLn('==========================================')
{$D 537, 590}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.7> ;'=========================================='
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::Welcome.13.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
{$D 593, 594}
::Welcome.@::
  INTR $2000
{$A False}
  MOV  #F, #P
  FREE #L
  POP  #L, #P, #V, #M
  INTR $1000
  RET
;OnKey1 :
{$D 636, 644}
{$E $01000021}
::OnKey1::
{$N 'OnKey1', 'L', 1}
{$V 'Active', $000000, 'B', 1, 0}
  FUNC <OnKey1>
  PUSH #L, #F, #Q, #V, #M
  VAR  #L, 1
{$A True}
;boolean Active;
{$D 664, 679}
;board.LED1 = LED_RED;
{$D 685, 706}
  GET  #Q, 2 ;LED_RED
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
;PrintLn("Connect to Wifi Router...")
{$D 710, 746}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.8> ;"Connect to Wifi Router..."
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey1.1.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;Net.Connect("WU-FAMILY","adg82826812")
{$D 783, 821}
  VAR  #F, 9
  TYPE #W, (S:01)
  ADDR #D, <@DATA.9> ;"WU-FAMILY"
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;SSID
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;Connect[1]:SSID
  TYPE #W, (S:01)
  ADDR #D, <@DATA.10> ;"adg82826812"
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0005 ;Password
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;Connect[2]:Password
  TYPE #W, (B:01)
  CAPI [&000038] ;Connect
::OnKey1.3.SSID::
  BASE #M, #F
  SEEK #M, $0001 ;SSID
  TYPE #W, (S:04)
  DEL  #M, #W
::OnKey1.3.Password::
  BASE #M, #F
  SEEK #M, $0005 ;Password
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;Active = Net.LinkStatus();
{$D 846, 872}
  VAR  #F, 1
  TYPE #W, (B:01)
  CAPI [&00003B] ;LinkStatus
  BASE #M, #F
  SEEK #M, $0000 ;Result
  TYPE #W, (B:01)
  LOAD #Q, #W, #M
  FREE #F
  BASE #M, #L
  SEEK #M, $0000 ;Active
  TYPE #W, (B:01)
  SAVE #M, #W, #Q
;if (Active)
{$D 878, 889}
::OnKey1.6C::
  BASE #M, #L
  SEEK #M, $0000 ;Active
  TYPE #W, (B:01)
  LOAD #Q, #W, #M
  TST  #Q
  JOF  <OnKey1.6F>
::OnKey1.6T::
;PrintLn ("Connect Success.")
{$D 900, 928}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.11> ;"Connect Success."
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey1.7.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
  JMP  <OnKey1.6X>
;else
{$D 938, 942}
::OnKey1.6F::
;PrintLn("Connect Faild.")
{$D 953, 978}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.12> ;"Connect Faild."
  READ #V, #W, #D
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey1.9.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
::OnKey1.6X::
;board.LED1 = LED_OFF;
{$D 990, 1011}
  GET  #Q, 0 ;LED_OFF
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
{$D 1013, 1014}
::OnKey1.@::
{$A False}
  FREE #L
  POP  #L, #F, #Q, #V, #M
  IRET
;OnKey2 :
{$D 1056, 1064}
{$E $01000020}
::OnKey2::
{$N 'OnKey2', 'L', 2}
{$V 'Info', $000000, 'S', 4, 1}
{$V 'Line', $000004, 'S', 4, 0}
  FUNC <OnKey2>
  PUSH #L, #F, #Q, #V, #R, #M, #J, #X
  VAR  #L, 8
{$A True}
;string[] Info;
{$D 1084, 1098}
;string   Line;
{$D 1102, 1116}
;board.LED1 = LED_RED;
{$D 1122, 1143}
  GET  #Q, 2 ;LED_RED
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
;Info = Net.Info(true);
{$D 1167, 1189}
  VAR  #F, 5
  GET  #V, true
  BASE #M, #F
  SEEK #M, $0004 ;AddCaption
  TYPE #W, (B:01)
  SAVE #M, #W, #V ;Info[1]:AddCaption
  TYPE #W, (S:04)
  CAPI [&00003A] ;Info
  BASE #M, #F
  SEEK #M, $0000 ;Result
  TYPE #W, (A:01)
  LDRT #Q, #W, #M
  FREE #F
  BASE #M, #L
  SEEK #M, $0000 ;Info
  TYPE #W, (A:01)
  SVRT #M, #W, #Q
;foreach (Line in Info)
{$D 1215, 1237}
  BASE #M, #L
  SEEK #M, $0000 ;Info
  TYPE #W, (A:01)
  LOAD #V, #W, #M
  SFST #R, #V
  JOF  <OnKey2.2X>
::OnKey2.2C::
  TYPE #W, (S:04)
  LOAD #V, #W, #R
  BASE #M, #L
  SEEK #M, $0004 ;Line
  TYPE #W, (S:04)
  SAVE #M, #W, #V
;PrintLn(Line)
{$D 1248, 1261}
  VAR  #F, 5
  BASE #M, #L
  SEEK #M, $0004 ;Line
  TYPE #W, (S:04)
  LOAD #V, #W, #M
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey2.3.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
  SNXT #R
  JOT  <OnKey2.2C>
::OnKey2.2X::
;board.LED1 = LED_OFF;
{$D 1273, 1294}
  GET  #Q, 0 ;LED_OFF
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
{$D 1296, 1297}
::OnKey2.@::
::OnKey2.@.Info::
  BASE #M, #L
  SEEK #M, $0000 ;Info
  TYPE #W, (A:01)
  TYPE #J, (S:04)
  LOAD #V, #W, #M
  SFST #X, #V
  JOF  <OnKey2.@.Info.1F>
::OnKey2.@.Info.1T::
  DEL  #X, #J
  SNXT #X
  JOT  <OnKey2.@.Info.1T>
::OnKey2.@.Info.1F::
  DEL  #M, #W
::OnKey2.@.Line::
  BASE #M, #L
  SEEK #M, $0004 ;Line
  TYPE #W, (S:04)
  DEL  #M, #W
{$A False}
  FREE #L
  POP  #L, #F, #Q, #V, #R, #M, #J, #X
  IRET
;OnKey3 :
{$D 1339, 1347}
{$E $01000011}
::OnKey3::
{$N 'OnKey3', 'L', 2}
{$V 'IP', $000000, 'S', 4, 0}
{$V 'Domain', $000004, 'S', 4, 0}
  FUNC <OnKey3>
  PUSH #L, #F, #Q, #X, #V, #M
  VAR  #L, 8
{$A True}
;string IP;
{$D 1367, 1377}
;string Domain = "ntp.shu.edu.cn";
{$D 1381, 1414}
  TYPE #W, (S:01)
  ADDR #D, <@DATA.13> ;"ntp.shu.edu.cn"
  READ #Q, #W, #D
  BASE #M, #L
  SEEK #M, $0004 ;Domain
  TYPE #W, (S:04)
  SAVE #M, #W, #Q
;board.LED1 = LED_RED;
{$D 1418, 1439}
  GET  #Q, 2 ;LED_RED
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
;PrintLn("Get DNS from " # Domain # "...")
{$D 1447, 1488}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.14> ;"Get DNS from "
  READ #V, #W, #D
  BASE #M, #L
  SEEK #M, $0004 ;Domain
  TYPE #W, (S:04)
  LOAD #X, #W, #M
  STRA #V, #X
  TYPE #W, (S:01)
  ADDR #D, <@DATA.15> ;"..."
  READ #X, #W, #D
  STRA #V, #X
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey3.1.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;IP = Net.GetDns(Domain);
{$D 1523, 1547}
  VAR  #F, 8
  BASE #M, #L
  SEEK #M, $0004 ;Domain
  TYPE #W, (S:04)
  LOAD #V, #W, #M
  BASE #M, #F
  SEEK #M, $0004 ;Domain
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;GetDns[1]:Domain
  TYPE #W, (S:04)
  CAPI [&00003C] ;GetDns
::OnKey3.3.Domain::
  BASE #M, #F
  SEEK #M, $0004 ;Domain
  TYPE #W, (S:04)
  DEL  #M, #W
  BASE #M, #F
  SEEK #M, $0000 ;Result
  TYPE #W, (S:04)
  LDRT #Q, #W, #M
  DEL  #M, #W
  FREE #F
  BASE #M, #L
  SEEK #M, $0000 ;IP
  TYPE #W, (S:04)
  SAVE #M, #W, #Q
;if (IP != null)
{$D 1587, 1602}
::OnKey3.4C::
  BASE #M, #L
  SEEK #M, $0000 ;IP
  TYPE #W, (S:04)
  LOAD #Q, #W, #M
  NEQU #Q, null
  JOF  <OnKey3.4X>
::OnKey3.4T::
;PrintLn(Domain # ' = ' # IP)
{$D 1613, 1641}
  VAR  #F, 5
  BASE #M, #L
  SEEK #M, $0004 ;Domain
  TYPE #W, (S:04)
  LOAD #V, #W, #M
  TYPE #W, (S:01)
  ADDR #D, <@DATA.16> ;' = '
  READ #X, #W, #D
  STRA #V, #X
  BASE #M, #L
  SEEK #M, $0000 ;IP
  TYPE #W, (S:04)
  LOAD #X, #W, #M
  STRA #V, #X
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey3.5.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
::OnKey3.4X::
;board.LED1 = LED_OFF;
{$D 1655, 1676}
  GET  #Q, 0 ;LED_OFF
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
{$D 1678, 1679}
::OnKey3.@::
::OnKey3.@.IP::
  BASE #M, #L
  SEEK #M, $0000 ;IP
  TYPE #W, (S:04)
  DEL  #M, #W
::OnKey3.@.Domain::
  BASE #M, #L
  SEEK #M, $0004 ;Domain
  TYPE #W, (S:04)
  DEL  #M, #W
{$A False}
  FREE #L
  POP  #L, #F, #Q, #X, #V, #M
  IRET
;OnKey4 :
{$D 1721, 1729}
{$E $01000010}
::OnKey4::
{$N 'OnKey4', 'L', 2}
{$V 'Now', $000000, 'D', 8, 0}
{$V 'Domain', $000008, 'S', 4, 0}
  FUNC <OnKey4>
  PUSH #L, #F, #Q, #X, #V, #H, #M
  VAR  #L, 12
{$A True}
;datetime Now;
{$D 1749, 1762}
;string Domain = "ntp.shu.edu.cn";
{$D 1766, 1799}
  TYPE #W, (S:01)
  ADDR #D, <@DATA.17> ;"ntp.shu.edu.cn"
  READ #Q, #W, #D
  BASE #M, #L
  SEEK #M, $0008 ;Domain
  TYPE #W, (S:04)
  SAVE #M, #W, #Q
;board.LED1 = LED_RED;
{$D 1827, 1848}
  GET  #Q, 2 ;LED_RED
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
;PrintLn("Connect to " # Domain #", Please Wait.")
{$D 1852, 1901}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.18> ;"Connect to "
  READ #V, #W, #D
  BASE #M, #L
  SEEK #M, $0008 ;Domain
  TYPE #W, (S:04)
  LOAD #X, #W, #M
  STRA #V, #X
  TYPE #W, (S:01)
  ADDR #D, <@DATA.19> ;", Please Wait."
  READ #X, #W, #D
  STRA #V, #X
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey4.1.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;Now = Net.Util.ServerDatetime(Domain, 0 ,8);
{$D 1938, 1982}
  VAR  #F, 20
  BASE #M, #L
  SEEK #M, $0008 ;Domain
  TYPE #W, (S:04)
  LOAD #V, #W, #M
  BASE #M, #F
  SEEK #M, $0008 ;Domain
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;ServerDatetime[1]:Domain
  GET  #V, 0
  BASE #M, #F
  SEEK #M, $000C ;DateOffset
  TYPE #W, (N:04)
  SAVE #M, #W, #V ;ServerDatetime[2]:DateOffset
  GET  #V, 8
  BASE #M, #F
  SEEK #M, $0010 ;TimeOffset
  TYPE #W, (N:04)
  SAVE #M, #W, #V ;ServerDatetime[3]:TimeOffset
  TYPE #W, (D:08)
  CAPI [&00003E] ;ServerDatetime
::OnKey4.3.Domain::
  BASE #M, #F
  SEEK #M, $0008 ;Domain
  TYPE #W, (S:04)
  DEL  #M, #W
  BASE #M, #F
  SEEK #M, $0000 ;Result
  TYPE #W, (D:08)
  LOAD #Q, #W, #M
  FREE #F
  BASE #M, #L
  SEEK #M, $0000 ;Now
  TYPE #W, (D:08)
  SAVE #M, #W, #Q
;PrintLn("Server Datetime: " # Now.Date # " " # Now.Time)
{$D 2026, 2082}
  VAR  #F, 5
  TYPE #W, (S:01)
  ADDR #D, <@DATA.20> ;"Server Datetime: "
  READ #V, #W, #D
  BASE #M, #L
  SEEK #M, $0000 ;Now
  TYPE #W, (D:08)
  LDMA #H, #W, #M
  TYPE #W, (D:04)
  PORT #D, $0000 ;Date
  EXTN #D, $0022 ;getDatetimeDate
  LDHP #X, #W, #D
  STRA #V, #X
  GET  #X, " "
  STRA #V, #X
  BASE #M, #L
  SEEK #M, $0000 ;Now
  TYPE #W, (D:08)
  LDMA #H, #W, #M
  TYPE #W, (T:04)
  PORT #D, $0000 ;Time
  EXTN #D, $0024 ;getDatetimeTime
  LDHP #X, #W, #D
  STRA #V, #X
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  SAVE #M, #W, #V ;PrintLn[1]:Text
  TYPE #W, (V:01)
  CAPI [&000006] ;PrintLn
::OnKey4.4.Text::
  BASE #M, #F
  SEEK #M, $0001 ;Text
  TYPE #W, (S:04)
  DEL  #M, #W
  FREE #F
;board.LED1 = LED_OFF;
{$D 2091, 2112}
  GET  #Q, 0 ;LED_OFF
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
{$D 2114, 2115}
::OnKey4.@::
::OnKey4.@.Now::
  BASE #M, #L
  SEEK #M, $0000 ;Now
  CLR  #N
  TYPE #W, (D:08)
  SAVE #M, #W, #N
::OnKey4.@.Domain::
  BASE #M, #L
  SEEK #M, $0008 ;Domain
  TYPE #W, (S:04)
  DEL  #M, #W
{$A False}
  FREE #L
  POP  #L, #F, #Q, #X, #V, #H, #M
  IRET
;main
{$D 2119, 2123}
::main::
{$N 'main', 'P', 0}
{$N 'main', 'L', 0}
  FUNC <main>
  VAR  #P, 0
  VAR  #L, 0
{$A True}
;board.LED1 = LED_OFF;
{$D 2132, 2153}
  GET  #Q, 0 ;LED_OFF
  TYPE #W, (U:01)
  PORT #D, $0001 ;Board.LED1
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
;board.LED2 = LED_OFF;
{$D 2157, 2178}
  GET  #Q, 0 ;LED_OFF
  TYPE #W, (U:01)
  PORT #D, $0002 ;Board.LED2
  EXTN #D, $0029 ;setLED
  WPOR #D, #W, #Q
;Welcome()
{$D 2184, 2193}
  VAR  #F, 1
  TYPE #W, (V:01)
  CALL <Welcome>
  FREE #F
;OpenEvent()
{$D 2222, 2233}
  INTR $8000
  FREE #F
;repeat
{$D 2240, 2246}
::main.4L::
;until error;
{$D 2260, 2272}
::main.4C::
  MOV  #Q, #E ;Global.Error
  TST  #Q
  JOF  <main.4L>
::main.4X::
;CloseEvent()
{$D 2300, 2312}
  INTR $0000
  FREE #F
{$D 2315, 2316}
::main.@::
{$A False}
  INTR $0000
  FREE #L
  FREE #P
  JMP  <@CRABSCRIPT.@>
