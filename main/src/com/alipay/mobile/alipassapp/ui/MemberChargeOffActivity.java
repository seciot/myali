package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class MemberChargeOffActivity extends BaseActivity
{
  private static final String a = MemberChargeOffActivity.class.getSimpleName();
  private static Handler b = new Handler();
  private Context c;
  private boolean d = false;
  private final int e = 2001;
  private CreateDynamicCodeService f;
  private au g;
  private View h;
  private AlipassPayBridgeService i;
  private Handler j = new ex(this);
  private Handler k = new fc(this);

  // ERROR //
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 84	com/alipay/mobile/framework/app/ui/BaseActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: aload_0
    //   7: putfield 75	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:c	Landroid/content/Context;
    //   10: aload_0
    //   11: invokestatic 90	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   14: invokevirtual 94	com/alipay/mobile/framework/AlipayApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   17: ldc 96
    //   19: invokevirtual 99	java/lang/Class:getName	()Ljava/lang/String;
    //   22: invokeinterface 105 2 0
    //   27: checkcast 96	com/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService
    //   30: putfield 68	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:f	Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    //   33: aload_0
    //   34: getfield 68	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:f	Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    //   37: aload_0
    //   38: aload_0
    //   39: getfield 53	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:j	Landroid/os/Handler;
    //   42: iconst_2
    //   43: invokevirtual 109	com/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService:init	(Landroid/content/Context;Landroid/os/Handler;I)V
    //   46: aload_0
    //   47: getfield 72	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:i	Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    //   50: ifnonnull +26 -> 76
    //   53: aload_0
    //   54: invokestatic 90	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   57: invokevirtual 94	com/alipay/mobile/framework/AlipayApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   60: ldc 111
    //   62: invokevirtual 99	java/lang/Class:getName	()Ljava/lang/String;
    //   65: invokeinterface 105 2 0
    //   70: checkcast 111	com/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService
    //   73: putfield 72	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:i	Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    //   76: aload_0
    //   77: invokevirtual 115	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:getIntent	()Landroid/content/Intent;
    //   80: astore_2
    //   81: aload_2
    //   82: ldc 117
    //   84: invokevirtual 123	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   87: checkcast 125	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString
    //   90: astore_3
    //   91: aload_2
    //   92: ldc 127
    //   94: invokevirtual 131	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   97: astore 4
    //   99: aload_3
    //   100: invokevirtual 134	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getFormat	()Ljava/lang/String;
    //   103: astore 5
    //   105: aload_3
    //   106: invokevirtual 137	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getMessage	()Ljava/lang/String;
    //   109: astore 6
    //   111: aload_3
    //   112: invokevirtual 140	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getAltText	()Ljava/lang/String;
    //   115: astore 7
    //   117: aload_3
    //   118: invokevirtual 143	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getMessageEncoding	()Ljava/lang/String;
    //   121: astore 8
    //   123: aload_0
    //   124: getfield 68	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:f	Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    //   127: aload 4
    //   129: invokevirtual 147	com/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService:setPassId	(Ljava/lang/String;)V
    //   132: aload 5
    //   134: ldc 149
    //   136: invokestatic 155	com/alipay/mobile/common/utils/StringUtils:equals	(Ljava/lang/String;Ljava/lang/String;)Z
    //   139: ifeq +96 -> 235
    //   142: aload_0
    //   143: getstatic 160	com/alipay/mobile/alipassapp/R$layout:sub_member_operation_barcode	I
    //   146: invokevirtual 164	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:setContentView	(I)V
    //   149: aload_0
    //   150: getstatic 169	com/alipay/mobile/alipassapp/R$id:member_barcode_altText	I
    //   153: invokevirtual 173	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:findViewById	(I)Landroid/view/View;
    //   156: checkcast 175	com/alipay/mobile/commonui/widget/APTextView
    //   159: astore 26
    //   161: aload_3
    //   162: invokevirtual 140	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getAltText	()Ljava/lang/String;
    //   165: invokestatic 179	com/alipay/mobile/common/utils/StringUtils:isBlank	(Ljava/lang/String;)Z
    //   168: ifeq +55 -> 223
    //   171: aload 26
    //   173: bipush 8
    //   175: invokevirtual 182	com/alipay/mobile/commonui/widget/APTextView:setVisibility	(I)V
    //   178: aload_0
    //   179: getstatic 185	com/alipay/mobile/alipassapp/R$id:member_barcode	I
    //   182: invokevirtual 173	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:findViewById	(I)Landroid/view/View;
    //   185: checkcast 187	com/alipay/mobile/commonui/widget/APImageView
    //   188: astore 27
    //   190: aload 6
    //   192: invokestatic 190	com/alipay/mobile/common/utils/StringUtils:isNotBlank	(Ljava/lang/String;)Z
    //   195: ifeq +27 -> 222
    //   198: new 192	java/lang/Thread
    //   201: dup
    //   202: new 194	com/alipay/mobile/alipassapp/ui/ey
    //   205: dup
    //   206: aload_0
    //   207: aload 6
    //   209: aload 27
    //   211: aload 7
    //   213: invokespecial 197	com/alipay/mobile/alipassapp/ui/ey:<init>	(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;Ljava/lang/String;)V
    //   216: invokespecial 200	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   219: invokevirtual 203	java/lang/Thread:start	()V
    //   222: return
    //   223: aload 26
    //   225: aload_3
    //   226: invokevirtual 140	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getAltText	()Ljava/lang/String;
    //   229: invokevirtual 207	com/alipay/mobile/commonui/widget/APTextView:setText	(Ljava/lang/CharSequence;)V
    //   232: goto -54 -> 178
    //   235: aload 5
    //   237: ldc 209
    //   239: invokestatic 155	com/alipay/mobile/common/utils/StringUtils:equals	(Ljava/lang/String;Ljava/lang/String;)Z
    //   242: ifeq +108 -> 350
    //   245: aload_0
    //   246: getstatic 212	com/alipay/mobile/alipassapp/R$layout:sub_member_operation_qrcode	I
    //   249: invokevirtual 164	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:setContentView	(I)V
    //   252: aload_0
    //   253: getstatic 215	com/alipay/mobile/alipassapp/R$id:member_qrcode_altText	I
    //   256: invokevirtual 173	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:findViewById	(I)Landroid/view/View;
    //   259: checkcast 175	com/alipay/mobile/commonui/widget/APTextView
    //   262: astore 23
    //   264: aload_3
    //   265: invokevirtual 140	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getAltText	()Ljava/lang/String;
    //   268: invokestatic 179	com/alipay/mobile/common/utils/StringUtils:isBlank	(Ljava/lang/String;)Z
    //   271: ifeq +67 -> 338
    //   274: aload 23
    //   276: bipush 8
    //   278: invokevirtual 182	com/alipay/mobile/commonui/widget/APTextView:setVisibility	(I)V
    //   281: aload_0
    //   282: getstatic 218	com/alipay/mobile/alipassapp/R$id:member_qrcode	I
    //   285: invokevirtual 173	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:findViewById	(I)Landroid/view/View;
    //   288: checkcast 187	com/alipay/mobile/commonui/widget/APImageView
    //   291: astore 24
    //   293: aload 8
    //   295: invokestatic 179	com/alipay/mobile/common/utils/StringUtils:isBlank	(Ljava/lang/String;)Z
    //   298: ifeq +467 -> 765
    //   301: ldc 220
    //   303: astore 25
    //   305: aload 6
    //   307: invokestatic 190	com/alipay/mobile/common/utils/StringUtils:isNotBlank	(Ljava/lang/String;)Z
    //   310: ifeq -88 -> 222
    //   313: new 192	java/lang/Thread
    //   316: dup
    //   317: new 222	com/alipay/mobile/alipassapp/ui/fa
    //   320: dup
    //   321: aload_0
    //   322: aload 6
    //   324: aload 25
    //   326: aload 24
    //   328: invokespecial 225	com/alipay/mobile/alipassapp/ui/fa:<init>	(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;)V
    //   331: invokespecial 200	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   334: invokevirtual 203	java/lang/Thread:start	()V
    //   337: return
    //   338: aload 23
    //   340: aload_3
    //   341: invokevirtual 140	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getAltText	()Ljava/lang/String;
    //   344: invokevirtual 207	com/alipay/mobile/commonui/widget/APTextView:setText	(Ljava/lang/CharSequence;)V
    //   347: goto -66 -> 281
    //   350: aload 5
    //   352: ldc 227
    //   354: invokestatic 155	com/alipay/mobile/common/utils/StringUtils:equals	(Ljava/lang/String;Ljava/lang/String;)Z
    //   357: ifeq +210 -> 567
    //   360: getstatic 34	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:a	Ljava/lang/String;
    //   363: pop
    //   364: new 229	java/lang/StringBuilder
    //   367: dup
    //   368: ldc 231
    //   370: invokespecial 233	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   373: aload 6
    //   375: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   378: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   381: pop
    //   382: aload 6
    //   384: invokestatic 190	com/alipay/mobile/common/utils/StringUtils:isNotBlank	(Ljava/lang/String;)Z
    //   387: ifeq -165 -> 222
    //   390: aload 6
    //   392: invokevirtual 246	java/lang/String:length	()I
    //   395: istore 18
    //   397: iload 18
    //   399: bipush 16
    //   401: if_icmpgt +113 -> 514
    //   404: iconst_1
    //   405: istore 19
    //   407: iload 19
    //   409: ifeq +87 -> 496
    //   412: aload_0
    //   413: getfield 44	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:d	Z
    //   416: ifne +51 -> 467
    //   419: new 248	android/os/Bundle
    //   422: dup
    //   423: invokespecial 249	android/os/Bundle:<init>	()V
    //   426: astore 20
    //   428: aload 20
    //   430: ldc 251
    //   432: ldc 253
    //   434: invokevirtual 257	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   437: aload 20
    //   439: ldc_w 259
    //   442: aload 6
    //   444: invokevirtual 257	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   447: aload_0
    //   448: getfield 263	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:mApp	Lcom/alipay/mobile/framework/app/ActivityApplication;
    //   451: invokevirtual 266	com/alipay/mobile/framework/app/ActivityApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   454: ldc_w 268
    //   457: ldc_w 270
    //   460: aload 20
    //   462: invokeinterface 274 4 0
    //   467: aload_0
    //   468: iconst_1
    //   469: putfield 44	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:d	Z
    //   472: aload_0
    //   473: getfield 58	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:k	Landroid/os/Handler;
    //   476: sipush 2001
    //   479: invokevirtual 277	android/os/Handler:removeMessages	(I)V
    //   482: aload_0
    //   483: getfield 58	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:k	Landroid/os/Handler;
    //   486: sipush 2001
    //   489: ldc2_w 278
    //   492: invokevirtual 283	android/os/Handler:sendEmptyMessageDelayed	(IJ)Z
    //   495: pop
    //   496: aload_0
    //   497: invokevirtual 286	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:finish	()V
    //   500: return
    //   501: astore 13
    //   503: getstatic 34	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:a	Ljava/lang/String;
    //   506: pop
    //   507: aload 13
    //   509: invokevirtual 287	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   512: pop
    //   513: return
    //   514: iconst_0
    //   515: istore 19
    //   517: iload 18
    //   519: bipush 16
    //   521: if_icmple -114 -> 407
    //   524: iconst_0
    //   525: istore 19
    //   527: iload 18
    //   529: bipush 32
    //   531: if_icmpgt -124 -> 407
    //   534: ldc_w 289
    //   537: iconst_2
    //   538: invokestatic 295	java/util/regex/Pattern:compile	(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    //   541: aload 6
    //   543: invokevirtual 298	java/lang/String:trim	()Ljava/lang/String;
    //   546: invokevirtual 302	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   549: invokevirtual 308	java/util/regex/Matcher:find	()Z
    //   552: istore 19
    //   554: goto -147 -> 407
    //   557: astore 21
    //   559: aload 21
    //   561: invokevirtual 311	com/alipay/mobile/framework/app/AppLoadException:printStackTrace	()V
    //   564: goto -97 -> 467
    //   567: aload 5
    //   569: ldc_w 313
    //   572: invokestatic 155	com/alipay/mobile/common/utils/StringUtils:equals	(Ljava/lang/String;Ljava/lang/String;)Z
    //   575: ifeq +79 -> 654
    //   578: aload_0
    //   579: aload_0
    //   580: invokestatic 319	android/view/LayoutInflater:from	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   583: getstatic 212	com/alipay/mobile/alipassapp/R$layout:sub_member_operation_qrcode	I
    //   586: aconst_null
    //   587: invokevirtual 323	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;)Landroid/view/View;
    //   590: putfield 61	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:h	Landroid/view/View;
    //   593: aload_0
    //   594: getfield 61	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:h	Landroid/view/View;
    //   597: invokestatic 329	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   600: invokevirtual 333	java/util/UUID:getLeastSignificantBits	()J
    //   603: invokestatic 339	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   606: invokevirtual 345	android/view/View:setTag	(Ljava/lang/Object;)V
    //   609: aload_0
    //   610: aload_0
    //   611: getfield 61	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:h	Landroid/view/View;
    //   614: invokevirtual 348	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:setContentView	(Landroid/view/View;)V
    //   617: aload_0
    //   618: getfield 68	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:f	Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    //   621: aload_0
    //   622: getfield 61	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:h	Landroid/view/View;
    //   625: invokevirtual 352	android/view/View:getTag	()Ljava/lang/Object;
    //   628: invokevirtual 355	com/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService:startGetDynamicCode	(Ljava/lang/Object;)V
    //   631: aload_0
    //   632: getfield 68	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:f	Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    //   635: aload_3
    //   636: invokevirtual 134	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getFormat	()Ljava/lang/String;
    //   639: aload_0
    //   640: getfield 61	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:h	Landroid/view/View;
    //   643: invokevirtual 352	android/view/View:getTag	()Ljava/lang/Object;
    //   646: aload_3
    //   647: invokevirtual 143	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString:getMessageEncoding	()Ljava/lang/String;
    //   650: invokevirtual 359	com/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService:update	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    //   653: return
    //   654: aload 5
    //   656: ldc_w 361
    //   659: invokestatic 155	com/alipay/mobile/common/utils/StringUtils:equals	(Ljava/lang/String;Ljava/lang/String;)Z
    //   662: ifeq +75 -> 737
    //   665: new 248	android/os/Bundle
    //   668: dup
    //   669: invokespecial 249	android/os/Bundle:<init>	()V
    //   672: astore 9
    //   674: aload 9
    //   676: ldc 251
    //   678: ldc 253
    //   680: invokevirtual 257	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   683: aload 9
    //   685: ldc_w 363
    //   688: iconst_1
    //   689: invokevirtual 367	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   692: aload 9
    //   694: ldc_w 369
    //   697: aload 4
    //   699: invokevirtual 257	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   702: aload_0
    //   703: getfield 263	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:mApp	Lcom/alipay/mobile/framework/app/ActivityApplication;
    //   706: invokevirtual 266	com/alipay/mobile/framework/app/ActivityApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   709: ldc_w 371
    //   712: ldc_w 270
    //   715: aload 9
    //   717: invokeinterface 274 4 0
    //   722: aload_0
    //   723: invokevirtual 286	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:finish	()V
    //   726: return
    //   727: astore 10
    //   729: aload 10
    //   731: invokevirtual 311	com/alipay/mobile/framework/app/AppLoadException:printStackTrace	()V
    //   734: goto -12 -> 722
    //   737: getstatic 34	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:a	Ljava/lang/String;
    //   740: pop
    //   741: new 229	java/lang/StringBuilder
    //   744: dup
    //   745: ldc_w 373
    //   748: invokespecial 233	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   751: aload 5
    //   753: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   756: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   759: pop
    //   760: aload_0
    //   761: invokevirtual 286	com/alipay/mobile/alipassapp/ui/MemberChargeOffActivity:finish	()V
    //   764: return
    //   765: aload 8
    //   767: astore 25
    //   769: goto -464 -> 305
    //
    // Exception table:
    //   from	to	target	type
    //   360	397	501	java/lang/Exception
    //   412	447	501	java/lang/Exception
    //   447	467	501	java/lang/Exception
    //   467	496	501	java/lang/Exception
    //   496	500	501	java/lang/Exception
    //   534	554	501	java/lang/Exception
    //   559	564	501	java/lang/Exception
    //   447	467	557	com/alipay/mobile/framework/app/AppLoadException
    //   702	722	727	com/alipay/mobile/framework/app/AppLoadException
  }

  protected void onDestroy()
  {
    this.f.onDestroy();
    this.i.closePayBridge();
    super.onDestroy();
  }

  protected void onPause()
  {
    this.f.onPause();
    super.onPause();
  }

  protected void onResume()
  {
    this.f.onResume();
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.MemberChargeOffActivity
 * JD-Core Version:    0.6.2
 */