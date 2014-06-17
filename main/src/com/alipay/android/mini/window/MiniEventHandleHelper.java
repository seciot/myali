package com.alipay.android.mini.window;

import android.content.BroadcastReceiver;
import com.alipay.android.mini.util.MiniSmsReader;

public class MiniEventHandleHelper
{
  private boolean a;
  private String b;
  private boolean c;
  private boolean d;
  private MiniSmsReader e;
  private BroadcastReceiver f = null;

  public MiniEventHandleHelper(boolean paramBoolean1, String paramString, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.a = paramBoolean1;
    this.b = paramString;
    this.c = paramBoolean2;
    this.d = paramBoolean3;
  }

  // ERROR //
  protected final boolean a(Object paramObject, com.alipay.android.mini.event.MiniEventArgs paramMiniEventArgs, IFormShower paramIFormShower, android.app.Activity paramActivity, com.alipay.android.app.data.BizUiData paramBizUiData, IUIForm paramIUIForm)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +170 -> 171
    //   4: aload_2
    //   5: invokevirtual 38	com/alipay/android/mini/event/MiniEventArgs:getEventType	()Lcom/alipay/android/mini/event/ActionType;
    //   8: astore 8
    //   10: getstatic 43	com/alipay/android/mini/window/k:a	[I
    //   13: aload 8
    //   15: invokevirtual 49	com/alipay/android/mini/event/ActionType:ordinal	()I
    //   18: iaload
    //   19: tableswitch	default:+141 -> 160, 1:+158->177, 2:+214->233, 3:+214->233, 4:+241->260, 5:+241->260, 6:+241->260, 7:+264->283, 8:+336->355, 9:+350->369, 10:+363->382, 11:+363->382, 12:+392->411, 13:+392->411, 14:+485->504, 15:+485->504, 16:+519->538, 17:+529->548, 18:+529->548, 19:+559->578, 20:+568->587, 21:+574->593, 22:+644->663, 23:+652->671, 24:+679->698, 25:+756->775, 26:+788->807, 27:+900->919, 28:+1055->1074, 29:+1103->1122, 30:+1181->1200, 31:+1255->1274, 32:+1262->1281
    //   161: iconst_2
    //   162: invokeinterface 54 1 0
    //   167: invokevirtual 60	com/alipay/android/app/data/DataProcessor:j	()Z
    //   170: pop
    //   171: iconst_0
    //   172: istore 7
    //   174: iload 7
    //   176: ireturn
    //   177: aload_0
    //   178: getfield 27	com/alipay/android/mini/window/MiniEventHandleHelper:c	Z
    //   181: ifne -10 -> 171
    //   184: aload 6
    //   186: invokevirtual 66	com/alipay/android/mini/window/IUIForm:h	()Lcom/alipay/android/mini/window/UISubForm;
    //   189: ifnull +10 -> 199
    //   192: aload 6
    //   194: invokevirtual 68	com/alipay/android/mini/window/IUIForm:a	()V
    //   197: iconst_1
    //   198: ireturn
    //   199: aload_0
    //   200: getfield 23	com/alipay/android/mini/window/MiniEventHandleHelper:a	Z
    //   203: ifeq +19 -> 222
    //   206: aload 4
    //   208: aload_0
    //   209: getfield 25	com/alipay/android/mini/window/MiniEventHandleHelper:b	Ljava/lang/String;
    //   212: aload_3
    //   213: aload_0
    //   214: getfield 29	com/alipay/android/mini/window/MiniEventHandleHelper:d	Z
    //   217: invokestatic 73	com/alipay/android/mini/util/UIPropUtil:a	(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/window/IFormShower;Z)V
    //   220: iconst_0
    //   221: ireturn
    //   222: aload 5
    //   224: invokeinterface 54 1 0
    //   229: invokevirtual 76	com/alipay/android/app/data/DataProcessor:g	()Z
    //   232: ireturn
    //   233: aload 4
    //   235: iconst_0
    //   236: invokestatic 79	com/alipay/android/mini/util/UIPropUtil:a	(Landroid/app/Activity;I)V
    //   239: aload 6
    //   241: invokevirtual 81	com/alipay/android/mini/window/IUIForm:d	()V
    //   244: invokestatic 86	com/alipay/android/mini/window/GuideWindow:a	()Lcom/alipay/android/mini/window/GuideWindow;
    //   247: invokevirtual 88	com/alipay/android/mini/window/GuideWindow:b	()Z
    //   250: ifne -79 -> 171
    //   253: aload 6
    //   255: invokevirtual 90	com/alipay/android/mini/window/IUIForm:e	()V
    //   258: iconst_0
    //   259: ireturn
    //   260: aload_3
    //   261: ifnull +9 -> 270
    //   264: aload_3
    //   265: invokeinterface 93 1 0
    //   270: aload 5
    //   272: invokeinterface 54 1 0
    //   277: invokevirtual 60	com/alipay/android/app/data/DataProcessor:j	()Z
    //   280: pop
    //   281: iconst_0
    //   282: ireturn
    //   283: ldc 95
    //   285: astore 44
    //   287: aload 8
    //   289: invokevirtual 98	com/alipay/android/mini/event/ActionType:g	()Lorg/json/JSONObject;
    //   292: astore 45
    //   294: aload 45
    //   296: ldc 100
    //   298: invokevirtual 106	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   301: astore 50
    //   303: aload 50
    //   305: astore 47
    //   307: aload 45
    //   309: ldc 108
    //   311: invokevirtual 106	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   314: astore 51
    //   316: aload 51
    //   318: astore 44
    //   320: aload 5
    //   322: invokeinterface 54 1 0
    //   327: aload 47
    //   329: aload 44
    //   331: invokevirtual 111	com/alipay/android/app/data/DataProcessor:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   334: pop
    //   335: iconst_0
    //   336: ireturn
    //   337: astore 46
    //   339: ldc 95
    //   341: astore 47
    //   343: aload 46
    //   345: astore 48
    //   347: aload 48
    //   349: invokevirtual 114	java/lang/Exception:printStackTrace	()V
    //   352: goto -32 -> 320
    //   355: aload_3
    //   356: aload_2
    //   357: ldc 116
    //   359: invokevirtual 119	com/alipay/android/mini/event/MiniEventArgs:getDataByKey	(Ljava/lang/String;)Ljava/lang/String;
    //   362: invokeinterface 122 2 0
    //   367: iconst_0
    //   368: ireturn
    //   369: aload_3
    //   370: invokeinterface 93 1 0
    //   375: aload 6
    //   377: invokevirtual 124	com/alipay/android/mini/window/IUIForm:c	()V
    //   380: iconst_1
    //   381: ireturn
    //   382: aload 5
    //   384: invokeinterface 54 1 0
    //   389: invokevirtual 126	com/alipay/android/app/data/DataProcessor:f	()Z
    //   392: istore 7
    //   394: iload 7
    //   396: ifeq -222 -> 174
    //   399: aload 6
    //   401: iconst_0
    //   402: anewarray 128	java/lang/String
    //   405: invokevirtual 131	com/alipay/android/mini/window/IUIForm:a	([Ljava/lang/String;)V
    //   408: iload 7
    //   410: ireturn
    //   411: aload 6
    //   413: aload 8
    //   415: invokevirtual 134	com/alipay/android/mini/window/IUIForm:a	(Lcom/alipay/android/mini/event/ActionType;)Z
    //   418: istore 42
    //   420: iload 42
    //   422: ifeq +12 -> 434
    //   425: aload 6
    //   427: aload 8
    //   429: invokevirtual 136	com/alipay/android/mini/window/IUIForm:b	(Lcom/alipay/android/mini/event/ActionType;)Z
    //   432: istore 42
    //   434: iload 42
    //   436: ifeq +965 -> 1401
    //   439: aload 6
    //   441: aload_1
    //   442: invokevirtual 139	com/alipay/android/mini/window/IUIForm:a	(Ljava/lang/Object;)V
    //   445: aload 6
    //   447: instanceof 141
    //   450: ifeq +42 -> 492
    //   453: aload 6
    //   455: checkcast 141	com/alipay/android/mini/window/UIFormToast
    //   458: invokevirtual 144	com/alipay/android/mini/window/UIFormToast:p	()Z
    //   461: ifeq +31 -> 492
    //   464: iconst_1
    //   465: anewarray 128	java/lang/String
    //   468: astore 43
    //   470: aload 43
    //   472: iconst_0
    //   473: aload 6
    //   475: checkcast 141	com/alipay/android/mini/window/UIFormToast
    //   478: invokevirtual 148	com/alipay/android/mini/window/UIFormToast:q	()Ljava/lang/String;
    //   481: aastore
    //   482: aload 6
    //   484: aload 43
    //   486: invokevirtual 131	com/alipay/android/mini/window/IUIForm:a	([Ljava/lang/String;)V
    //   489: iload 42
    //   491: ireturn
    //   492: aload 6
    //   494: iconst_0
    //   495: anewarray 128	java/lang/String
    //   498: invokevirtual 131	com/alipay/android/mini/window/IUIForm:a	([Ljava/lang/String;)V
    //   501: iload 42
    //   503: ireturn
    //   504: aload 6
    //   506: invokevirtual 151	com/alipay/android/mini/window/IUIForm:o	()V
    //   509: aload 5
    //   511: invokeinterface 54 1 0
    //   516: invokevirtual 154	com/alipay/android/app/data/DataProcessor:k	()Z
    //   519: istore 7
    //   521: iload 7
    //   523: ifeq -349 -> 174
    //   526: aload 6
    //   528: iconst_0
    //   529: anewarray 128	java/lang/String
    //   532: invokevirtual 131	com/alipay/android/mini/window/IUIForm:a	([Ljava/lang/String;)V
    //   535: iload 7
    //   537: ireturn
    //   538: aload 8
    //   540: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   543: invokestatic 160	com/alipay/android/mini/util/ActionUtil:b	(Ljava/lang/String;)V
    //   546: iconst_0
    //   547: ireturn
    //   548: aload_0
    //   549: getfield 29	com/alipay/android/mini/window/MiniEventHandleHelper:d	Z
    //   552: ifne +18 -> 570
    //   555: aload 4
    //   557: new 162	com/alipay/android/mini/window/i
    //   560: dup
    //   561: aload_0
    //   562: aload 4
    //   564: invokespecial 165	com/alipay/android/mini/window/i:<init>	(Lcom/alipay/android/mini/window/MiniEventHandleHelper;Landroid/app/Activity;)V
    //   567: invokevirtual 171	android/app/Activity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   570: aload 6
    //   572: aload_2
    //   573: invokevirtual 174	com/alipay/android/mini/window/IUIForm:a	(Lcom/alipay/android/mini/event/MiniEventArgs;)V
    //   576: iconst_0
    //   577: ireturn
    //   578: aload 6
    //   580: aload 8
    //   582: invokevirtual 177	com/alipay/android/mini/window/IUIForm:c	(Lcom/alipay/android/mini/event/ActionType;)V
    //   585: iconst_0
    //   586: ireturn
    //   587: aload 6
    //   589: invokevirtual 180	com/alipay/android/mini/window/IUIForm:m	()Z
    //   592: ireturn
    //   593: aload 8
    //   595: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   598: invokestatic 183	com/alipay/android/mini/util/ActionUtil:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   601: astore 40
    //   603: aload 40
    //   605: ifnull +56 -> 661
    //   608: aload 40
    //   610: arraylength
    //   611: ifle +50 -> 661
    //   614: aload 40
    //   616: iconst_0
    //   617: aaload
    //   618: astore 41
    //   620: aload_0
    //   621: getfield 185	com/alipay/android/mini/window/MiniEventHandleHelper:e	Lcom/alipay/android/mini/util/MiniSmsReader;
    //   624: ifnonnull +30 -> 654
    //   627: aload_0
    //   628: new 187	com/alipay/android/mini/util/MiniSmsReader
    //   631: dup
    //   632: aload 8
    //   634: invokevirtual 189	com/alipay/android/mini/event/ActionType:a	()Lorg/json/JSONObject;
    //   637: aload 41
    //   639: aload 5
    //   641: invokeinterface 192 1 0
    //   646: aload 6
    //   648: invokespecial 195	com/alipay/android/mini/util/MiniSmsReader:<init>	(Lorg/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/data/ValidatedFrameData;Lcom/alipay/android/mini/window/IUIForm;)V
    //   651: putfield 185	com/alipay/android/mini/window/MiniEventHandleHelper:e	Lcom/alipay/android/mini/util/MiniSmsReader;
    //   654: aload_0
    //   655: getfield 185	com/alipay/android/mini/window/MiniEventHandleHelper:e	Lcom/alipay/android/mini/util/MiniSmsReader;
    //   658: invokevirtual 197	com/alipay/android/mini/util/MiniSmsReader:b	()V
    //   661: iconst_1
    //   662: ireturn
    //   663: aload 6
    //   665: aload_2
    //   666: invokevirtual 199	com/alipay/android/mini/window/IUIForm:b	(Lcom/alipay/android/mini/event/MiniEventArgs;)V
    //   669: iconst_0
    //   670: ireturn
    //   671: aload 6
    //   673: aload 8
    //   675: invokevirtual 201	com/alipay/android/mini/window/IUIForm:d	(Lcom/alipay/android/mini/event/ActionType;)V
    //   678: aload 6
    //   680: aload 6
    //   682: new 34	com/alipay/android/mini/event/MiniEventArgs
    //   685: dup
    //   686: getstatic 205	com/alipay/android/mini/event/ActionType:B	Lcom/alipay/android/mini/event/ActionType;
    //   689: invokespecial 207	com/alipay/android/mini/event/MiniEventArgs:<init>	(Lcom/alipay/android/mini/event/ActionType;)V
    //   692: invokevirtual 210	com/alipay/android/mini/window/IUIForm:a	(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    //   695: pop
    //   696: iconst_1
    //   697: ireturn
    //   698: aload_0
    //   699: getfield 21	com/alipay/android/mini/window/MiniEventHandleHelper:f	Landroid/content/BroadcastReceiver;
    //   702: ifnonnull +46 -> 748
    //   705: aload_0
    //   706: new 212	com/alipay/android/mini/window/j
    //   709: dup
    //   710: aload_0
    //   711: aload 5
    //   713: invokespecial 215	com/alipay/android/mini/window/j:<init>	(Lcom/alipay/android/mini/window/MiniEventHandleHelper;Lcom/alipay/android/app/data/BizUiData;)V
    //   716: putfield 21	com/alipay/android/mini/window/MiniEventHandleHelper:f	Landroid/content/BroadcastReceiver;
    //   719: aload 4
    //   721: invokestatic 221	android/support/v4/content/LocalBroadcastManager:getInstance	(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    //   724: astore 37
    //   726: new 223	android/content/IntentFilter
    //   729: dup
    //   730: ldc 225
    //   732: invokespecial 227	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   735: astore 38
    //   737: aload 37
    //   739: aload_0
    //   740: getfield 21	com/alipay/android/mini/window/MiniEventHandleHelper:f	Landroid/content/BroadcastReceiver;
    //   743: aload 38
    //   745: invokevirtual 231	android/support/v4/content/LocalBroadcastManager:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    //   748: aload 6
    //   750: ldc 233
    //   752: invokevirtual 235	com/alipay/android/mini/window/IUIForm:c	(Ljava/lang/String;)V
    //   755: aload 6
    //   757: aload 6
    //   759: new 34	com/alipay/android/mini/event/MiniEventArgs
    //   762: dup
    //   763: getstatic 205	com/alipay/android/mini/event/ActionType:B	Lcom/alipay/android/mini/event/ActionType;
    //   766: invokespecial 207	com/alipay/android/mini/event/MiniEventArgs:<init>	(Lcom/alipay/android/mini/event/ActionType;)V
    //   769: invokevirtual 210	com/alipay/android/mini/window/IUIForm:a	(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    //   772: pop
    //   773: iconst_1
    //   774: ireturn
    //   775: aload 8
    //   777: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   780: invokestatic 183	com/alipay/android/mini/util/ActionUtil:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   783: astore 35
    //   785: aload 35
    //   787: ifnull -616 -> 171
    //   790: aload 35
    //   792: arraylength
    //   793: ifle -622 -> 171
    //   796: aload 6
    //   798: aload 35
    //   800: iconst_0
    //   801: aaload
    //   802: invokevirtual 235	com/alipay/android/mini/window/IUIForm:c	(Ljava/lang/String;)V
    //   805: iconst_0
    //   806: ireturn
    //   807: aload 8
    //   809: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   812: invokestatic 183	com/alipay/android/mini/util/ActionUtil:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   815: astore 31
    //   817: aload 31
    //   819: ifnull -648 -> 171
    //   822: aload 31
    //   824: arraylength
    //   825: iconst_1
    //   826: if_icmple -655 -> 171
    //   829: aload 31
    //   831: arraylength
    //   832: iconst_2
    //   833: irem
    //   834: ifne -663 -> 171
    //   837: aload 31
    //   839: arraylength
    //   840: iconst_2
    //   841: idiv
    //   842: anewarray 128	java/lang/String
    //   845: astore 32
    //   847: aload 31
    //   849: arraylength
    //   850: iconst_2
    //   851: idiv
    //   852: anewarray 128	java/lang/String
    //   855: astore 33
    //   857: iconst_0
    //   858: istore 34
    //   860: iload 34
    //   862: aload 31
    //   864: arraylength
    //   865: if_icmpge +43 -> 908
    //   868: iload 34
    //   870: iconst_2
    //   871: irem
    //   872: ifne +21 -> 893
    //   875: aload 32
    //   877: iload 34
    //   879: iconst_2
    //   880: idiv
    //   881: aload 31
    //   883: iload 34
    //   885: aaload
    //   886: aastore
    //   887: iinc 34 1
    //   890: goto -30 -> 860
    //   893: aload 33
    //   895: iload 34
    //   897: iconst_2
    //   898: idiv
    //   899: aload 31
    //   901: iload 34
    //   903: aaload
    //   904: aastore
    //   905: goto -18 -> 887
    //   908: aload 4
    //   910: aload 33
    //   912: aload 32
    //   914: invokestatic 238	com/alipay/android/mini/util/UIPropUtil:a	(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    //   917: iconst_0
    //   918: ireturn
    //   919: aload 8
    //   921: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   924: invokestatic 183	com/alipay/android/mini/util/ActionUtil:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   927: astore 24
    //   929: aload 24
    //   931: ifnull -760 -> 171
    //   934: aload 24
    //   936: arraylength
    //   937: iconst_3
    //   938: if_icmpne -767 -> 171
    //   941: aload 24
    //   943: iconst_0
    //   944: aaload
    //   945: ldc 240
    //   947: invokevirtual 243	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   950: astore 25
    //   952: aload 25
    //   954: ifnull +118 -> 1072
    //   957: aload 25
    //   959: arraylength
    //   960: anewarray 128	java/lang/String
    //   963: astore 26
    //   965: aload 25
    //   967: arraylength
    //   968: anewarray 128	java/lang/String
    //   971: astore 27
    //   973: iconst_0
    //   974: istore 28
    //   976: iload 28
    //   978: aload 25
    //   980: arraylength
    //   981: if_icmpge +51 -> 1032
    //   984: aload 25
    //   986: iload 28
    //   988: aaload
    //   989: ldc 245
    //   991: invokevirtual 243	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   994: astore 30
    //   996: aload 30
    //   998: ifnull +28 -> 1026
    //   1001: aload 30
    //   1003: arraylength
    //   1004: iconst_2
    //   1005: if_icmpne +21 -> 1026
    //   1008: aload 26
    //   1010: iload 28
    //   1012: aload 30
    //   1014: iconst_0
    //   1015: aaload
    //   1016: aastore
    //   1017: aload 27
    //   1019: iload 28
    //   1021: aload 30
    //   1023: iconst_1
    //   1024: aaload
    //   1025: aastore
    //   1026: iinc 28 1
    //   1029: goto -53 -> 976
    //   1032: aload_1
    //   1033: instanceof 247
    //   1036: ifeq +36 -> 1072
    //   1039: aload_1
    //   1040: checkcast 247	com/alipay/android/mini/uielement/UILink
    //   1043: invokevirtual 250	com/alipay/android/mini/uielement/UILink:j	()Ljava/lang/Object;
    //   1046: invokevirtual 253	java/lang/Object:toString	()Ljava/lang/String;
    //   1049: astore 29
    //   1051: aload 4
    //   1053: aload 27
    //   1055: aload 26
    //   1057: aload 24
    //   1059: iconst_1
    //   1060: aaload
    //   1061: aload 24
    //   1063: iconst_2
    //   1064: aaload
    //   1065: aload 6
    //   1067: aload 29
    //   1069: invokestatic 256	com/alipay/android/mini/util/UIPropUtil:a	(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/mini/window/IUIForm;Ljava/lang/String;)V
    //   1072: iconst_0
    //   1073: ireturn
    //   1074: aload 8
    //   1076: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   1079: invokestatic 183	com/alipay/android/mini/util/ActionUtil:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   1082: astore 21
    //   1084: aload 21
    //   1086: ifnull -915 -> 171
    //   1089: aload 21
    //   1091: arraylength
    //   1092: iconst_2
    //   1093: if_icmpne -922 -> 171
    //   1096: aload 21
    //   1098: iconst_0
    //   1099: aaload
    //   1100: astore 22
    //   1102: aload 21
    //   1104: iconst_1
    //   1105: aaload
    //   1106: astore 23
    //   1108: aload 6
    //   1110: aload 22
    //   1112: invokevirtual 259	com/alipay/android/mini/window/IUIForm:d	(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;
    //   1115: aload 23
    //   1117: invokevirtual 262	com/alipay/android/mini/uielement/BaseElement:a	(Ljava/lang/String;)V
    //   1120: iconst_0
    //   1121: ireturn
    //   1122: aload 8
    //   1124: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   1127: invokestatic 183	com/alipay/android/mini/util/ActionUtil:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   1130: astore 17
    //   1132: aload 17
    //   1134: ifnull -963 -> 171
    //   1137: aload 17
    //   1139: arraylength
    //   1140: iconst_2
    //   1141: if_icmpne -970 -> 171
    //   1144: aload 17
    //   1146: iconst_0
    //   1147: aaload
    //   1148: astore 18
    //   1150: aload 17
    //   1152: iconst_1
    //   1153: aaload
    //   1154: astore 19
    //   1156: aload 6
    //   1158: aload 18
    //   1160: invokevirtual 259	com/alipay/android/mini/window/IUIForm:d	(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/BaseElement;
    //   1163: astore 20
    //   1165: aload 20
    //   1167: instanceof 264
    //   1170: ifeq +28 -> 1198
    //   1173: aload 20
    //   1175: checkcast 264	com/alipay/android/mini/uielement/UIInput
    //   1178: invokevirtual 268	com/alipay/android/mini/uielement/UIInput:z	()Landroid/widget/EditText;
    //   1181: aload 19
    //   1183: invokevirtual 274	android/widget/EditText:setHint	(Ljava/lang/CharSequence;)V
    //   1186: aload 20
    //   1188: checkcast 264	com/alipay/android/mini/uielement/UIInput
    //   1191: invokevirtual 268	com/alipay/android/mini/uielement/UIInput:z	()Landroid/widget/EditText;
    //   1194: aconst_null
    //   1195: invokevirtual 277	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   1198: iconst_0
    //   1199: ireturn
    //   1200: aload 8
    //   1202: invokevirtual 156	com/alipay/android/mini/event/ActionType:e	()Ljava/lang/String;
    //   1205: invokestatic 183	com/alipay/android/mini/util/ActionUtil:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   1208: astore 14
    //   1210: aload 14
    //   1212: ifnull -1041 -> 171
    //   1215: aload 14
    //   1217: arraylength
    //   1218: ifle -1047 -> 171
    //   1221: new 279	android/content/Intent
    //   1224: dup
    //   1225: ldc_w 281
    //   1228: new 283	java/lang/StringBuilder
    //   1231: dup
    //   1232: ldc_w 285
    //   1235: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1238: aload 14
    //   1240: iconst_0
    //   1241: aaload
    //   1242: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1245: invokevirtual 291	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1248: invokestatic 297	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   1251: invokespecial 300	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   1254: astore 15
    //   1256: aload 15
    //   1258: ldc_w 301
    //   1261: invokevirtual 305	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   1264: pop
    //   1265: aload 4
    //   1267: aload 15
    //   1269: invokevirtual 309	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   1272: iconst_0
    //   1273: ireturn
    //   1274: aload 4
    //   1276: invokestatic 312	com/alipay/android/mini/util/UIPropUtil:a	(Landroid/content/Context;)V
    //   1279: iconst_0
    //   1280: ireturn
    //   1281: aload 6
    //   1283: getfield 316	com/alipay/android/mini/window/IUIForm:v	Lorg/json/JSONArray;
    //   1286: ifnull -1115 -> 171
    //   1289: aload 6
    //   1291: getfield 316	com/alipay/android/mini/window/IUIForm:v	Lorg/json/JSONArray;
    //   1294: invokevirtual 321	org/json/JSONArray:length	()I
    //   1297: istore 9
    //   1299: iload 9
    //   1301: anewarray 323	com/alipay/android/mini/uielement/ElementAction
    //   1304: astore 10
    //   1306: iload 9
    //   1308: anewarray 128	java/lang/String
    //   1311: astore 11
    //   1313: iconst_0
    //   1314: istore 12
    //   1316: iload 12
    //   1318: iload 9
    //   1320: if_icmpge +63 -> 1383
    //   1323: aload 6
    //   1325: getfield 316	com/alipay/android/mini/window/IUIForm:v	Lorg/json/JSONArray;
    //   1328: iload 12
    //   1330: invokevirtual 327	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   1333: astore 13
    //   1335: aload 13
    //   1337: ifnull +40 -> 1377
    //   1340: aload 13
    //   1342: ldc_w 329
    //   1345: invokevirtual 333	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   1348: ifeq +29 -> 1377
    //   1351: aload 11
    //   1353: iload 12
    //   1355: aload 13
    //   1357: ldc_w 329
    //   1360: invokevirtual 336	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   1363: aastore
    //   1364: aload 10
    //   1366: iload 12
    //   1368: aload 13
    //   1370: ldc_w 338
    //   1373: invokestatic 341	com/alipay/android/mini/uielement/ElementAction:a	(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;
    //   1376: aastore
    //   1377: iinc 12 1
    //   1380: goto -64 -> 1316
    //   1383: aload 4
    //   1385: aload 10
    //   1387: aload 11
    //   1389: aload 6
    //   1391: invokestatic 344	com/alipay/android/mini/util/UIPropUtil:a	(Landroid/content/Context;[Lcom/alipay/android/mini/uielement/ElementAction;[Ljava/lang/String;Lcom/alipay/android/mini/window/IUIForm;)V
    //   1394: iconst_0
    //   1395: ireturn
    //   1396: astore 48
    //   1398: goto -1051 -> 347
    //   1401: iload 42
    //   1403: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   294	303	337	java/lang/Exception
    //   307	316	1396	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.MiniEventHandleHelper
 * JD-Core Version:    0.6.2
 */