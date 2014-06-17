package com.alipay.mobile.security.authcenter.service;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.alibaba.fastjson.JSON;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.framework.service.ext.security.LoginCallBack;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;
import com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.domain.TaobaoSsoLoginToken;
import com.alipay.mobile.framework.service.ext.security.domain.WapLoginToken;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilegw.biz.shared.processer.login.TaobaoTokenParam;
import com.alipay.mobilegw.biz.shared.processer.login.UserLoginReq;
import com.alipay.mobilesecurity.core.model.Tid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class LoginServiceImpl extends LoginService
{
  final String a = "LoginServiceImpl";
  AtomicBoolean b = new AtomicBoolean(false);
  private Handler c = new Handler(Looper.getMainLooper());

  // ERROR //
  private UserLoginResultBiz a(UserLoginResultBiz paramUserLoginResultBiz, UserLoginReq paramUserLoginReq, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 46	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:c	()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    //   4: invokevirtual 52	com/alipay/mobile/framework/service/ext/security/AccountService:getCurrentLoginUserId	()Ljava/lang/String;
    //   7: astore 4
    //   9: aload_0
    //   10: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   13: ldc 58
    //   15: invokevirtual 63	java/lang/Class:getName	()Ljava/lang/String;
    //   18: invokeinterface 69 2 0
    //   23: checkcast 58	com/alipay/mobile/framework/service/common/RpcService
    //   26: ldc 71
    //   28: invokevirtual 75	com/alipay/mobile/framework/service/common/RpcService:getRpcProxy	(Ljava/lang/Class;)Ljava/lang/Object;
    //   31: checkcast 71	com/alipay/mobilegw/biz/shared/processer/login/UserLoginService
    //   34: astore 5
    //   36: aload 5
    //   38: aload_2
    //   39: invokeinterface 79 2 0
    //   44: astore 7
    //   46: aload 7
    //   48: ifnull +420 -> 468
    //   51: aload_0
    //   52: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   55: invokeinterface 83 1 0
    //   60: invokestatic 89	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getInstance	(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;
    //   63: astore 9
    //   65: aload 7
    //   67: invokevirtual 95	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getResultStatus	()I
    //   70: istore 10
    //   72: sipush 1000
    //   75: iload 10
    //   77: if_icmpne +811 -> 888
    //   80: aload_0
    //   81: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   84: invokeinterface 83 1 0
    //   89: invokestatic 100	android/support/v4/content/LocalBroadcastManager:getInstance	(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    //   92: astore 44
    //   94: new 102	android/content/Intent
    //   97: dup
    //   98: ldc 104
    //   100: invokespecial 107	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   103: astore 45
    //   105: aload 45
    //   107: ldc 109
    //   109: aload 7
    //   111: invokevirtual 113	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   114: pop
    //   115: aload 44
    //   117: aload 45
    //   119: invokevirtual 117	android/support/v4/content/LocalBroadcastManager:sendBroadcast	(Landroid/content/Intent;)Z
    //   122: pop
    //   123: ldc 119
    //   125: aload_2
    //   126: invokevirtual 124	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginType	()Ljava/lang/String;
    //   129: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   132: ifeq +343 -> 475
    //   135: new 132	com/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo
    //   138: dup
    //   139: invokespecial 133	com/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo:<init>	()V
    //   142: astore 15
    //   144: aload 15
    //   146: aload_2
    //   147: invokevirtual 136	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginId	()Ljava/lang/String;
    //   150: invokevirtual 139	com/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo:setTaoBaoUserId	(Ljava/lang/String;)V
    //   153: aload 15
    //   155: aload 7
    //   157: invokevirtual 142	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserId	()Ljava/lang/String;
    //   160: invokevirtual 145	com/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo:setUserId	(Ljava/lang/String;)V
    //   163: aload 15
    //   165: aload_0
    //   166: invokevirtual 148	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getTime	()Ljava/lang/String;
    //   169: invokevirtual 151	com/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo:setLoginTime	(Ljava/lang/String;)V
    //   172: aload 9
    //   174: aload 15
    //   176: invokestatic 154	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:a	(Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    //   179: aload 7
    //   181: invokevirtual 155	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginId	()Ljava/lang/String;
    //   184: astore 16
    //   186: aload 16
    //   188: astore 17
    //   190: aload_1
    //   191: aload 7
    //   193: invokevirtual 158	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getBarcodePayToken	()Ljava/lang/String;
    //   196: invokevirtual 163	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setBarcodePayToken	(Ljava/lang/String;)V
    //   199: aload_1
    //   200: aload 7
    //   202: invokevirtual 166	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getCurrentProductVersion	()Ljava/lang/String;
    //   205: invokevirtual 169	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setCurrentProductVersion	(Ljava/lang/String;)V
    //   208: aload_1
    //   209: aload 7
    //   211: invokevirtual 172	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getDownloadURL	()Ljava/lang/String;
    //   214: invokevirtual 175	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setDownloadURL	(Ljava/lang/String;)V
    //   217: aload_1
    //   218: aload 7
    //   220: invokevirtual 178	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getExistNewVersion	()Ljava/lang/String;
    //   223: invokevirtual 181	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setExistNewVersion	(Ljava/lang/String;)V
    //   226: aload_1
    //   227: aload 7
    //   229: invokevirtual 184	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getExtern_token	()Ljava/lang/String;
    //   232: invokevirtual 187	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setExtern_token	(Ljava/lang/String;)V
    //   235: aload_1
    //   236: aload 7
    //   238: invokevirtual 190	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getIsCertified	()Ljava/lang/String;
    //   241: invokevirtual 193	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setIsCertified	(Ljava/lang/String;)V
    //   244: aload_1
    //   245: aload 7
    //   247: invokevirtual 196	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginCheckCodeImg	()Ljava/lang/String;
    //   250: invokevirtual 199	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginCheckCodeImg	(Ljava/lang/String;)V
    //   253: aload_1
    //   254: aload 7
    //   256: invokevirtual 202	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginCheckCodeUrl	()Ljava/lang/String;
    //   259: invokevirtual 205	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginCheckCodeUrl	(Ljava/lang/String;)V
    //   262: aload_1
    //   263: iconst_1
    //   264: invokevirtual 208	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginFlag	(Z)V
    //   267: aload_1
    //   268: aload 7
    //   270: invokevirtual 155	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginId	()Ljava/lang/String;
    //   273: invokevirtual 211	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginId	(Ljava/lang/String;)V
    //   276: aload_1
    //   277: aload 7
    //   279: invokevirtual 214	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginServerTime	()Ljava/lang/String;
    //   282: invokevirtual 217	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginServerTime	(Ljava/lang/String;)V
    //   285: aload_1
    //   286: aload 7
    //   288: invokevirtual 220	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginToken	()Ljava/lang/String;
    //   291: invokevirtual 223	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginToken	(Ljava/lang/String;)V
    //   294: aload_1
    //   295: aload 7
    //   297: invokevirtual 226	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getMemo	()Ljava/lang/String;
    //   300: invokevirtual 229	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setMemo	(Ljava/lang/String;)V
    //   303: aload_1
    //   304: aload 7
    //   306: invokevirtual 232	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getMobileNo	()Ljava/lang/String;
    //   309: invokevirtual 235	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setMobileNo	(Ljava/lang/String;)V
    //   312: aload_1
    //   313: aload 7
    //   315: invokevirtual 95	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getResultStatus	()I
    //   318: invokevirtual 239	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setResultStatus	(I)V
    //   321: aload_1
    //   322: aload 7
    //   324: invokevirtual 242	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getTaobaoSid	()Ljava/lang/String;
    //   327: invokevirtual 245	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setTaobaoSid	(Ljava/lang/String;)V
    //   330: aload_1
    //   331: aload 7
    //   333: invokevirtual 248	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getTbCheckCodeId	()Ljava/lang/String;
    //   336: invokevirtual 251	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setTbCheckCodeId	(Ljava/lang/String;)V
    //   339: aload_1
    //   340: aload 7
    //   342: invokevirtual 254	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getTbCheckCodeUrl	()Ljava/lang/String;
    //   345: invokevirtual 257	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setTbCheckCodeUrl	(Ljava/lang/String;)V
    //   348: aload_1
    //   349: aload 7
    //   351: invokevirtual 142	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserId	()Ljava/lang/String;
    //   354: invokevirtual 258	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setUserId	(Ljava/lang/String;)V
    //   357: aload_1
    //   358: aload 7
    //   360: invokevirtual 261	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserName	()Ljava/lang/String;
    //   363: invokevirtual 264	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setUserName	(Ljava/lang/String;)V
    //   366: aload_1
    //   367: aload 7
    //   369: invokevirtual 267	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getSessionId	()Ljava/lang/String;
    //   372: invokevirtual 270	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setSessionId	(Ljava/lang/String;)V
    //   375: aload 7
    //   377: invokevirtual 274	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getExtResAttrs	()Ljava/util/Map;
    //   380: astore 42
    //   382: aload 42
    //   384: ifnull +32 -> 416
    //   387: aload 42
    //   389: ldc_w 276
    //   392: invokeinterface 282 2 0
    //   397: checkcast 126	java/lang/String
    //   400: astore 43
    //   402: aload 43
    //   404: invokestatic 288	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   407: ifne +9 -> 416
    //   410: aload_1
    //   411: aload 43
    //   413: invokevirtual 291	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setSecurityPolicyRes	(Ljava/lang/String;)V
    //   416: aload_1
    //   417: invokevirtual 294	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:getSecurityPolicyRes	()Ljava/lang/String;
    //   420: astore 19
    //   422: iload_3
    //   423: ifeq +82 -> 505
    //   426: aload 19
    //   428: invokestatic 288	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   431: istore 20
    //   433: iload 20
    //   435: ifne +70 -> 505
    //   438: aload 19
    //   440: ldc_w 296
    //   443: invokestatic 302	com/alibaba/fastjson/JSON:parseObject	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   446: checkcast 296	com/alipay/mobileapp/core/model/login/SecurityPolicyRes
    //   449: astore 40
    //   451: aload 40
    //   453: ifnull +52 -> 505
    //   456: aload 40
    //   458: invokevirtual 306	com/alipay/mobileapp/core/model/login/SecurityPolicyRes:isNeedH5	()Z
    //   461: istore 41
    //   463: iload 41
    //   465: ifeq +40 -> 505
    //   468: aload_1
    //   469: areturn
    //   470: astore 6
    //   472: aload 6
    //   474: athrow
    //   475: aload_2
    //   476: invokevirtual 136	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginId	()Ljava/lang/String;
    //   479: astore 17
    //   481: goto -291 -> 190
    //   484: astore 38
    //   486: new 308	java/lang/StringBuilder
    //   489: dup
    //   490: invokespecial 309	java/lang/StringBuilder:<init>	()V
    //   493: aload 38
    //   495: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   498: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   504: pop
    //   505: aload_0
    //   506: aload 7
    //   508: invokespecial 322	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:a	(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;)Z
    //   511: pop
    //   512: aload 7
    //   514: invokevirtual 155	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginId	()Ljava/lang/String;
    //   517: astore 22
    //   519: aload 7
    //   521: invokevirtual 142	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserId	()Ljava/lang/String;
    //   524: astore 23
    //   526: aload_0
    //   527: invokespecial 46	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:c	()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    //   530: aload 22
    //   532: invokevirtual 325	com/alipay/mobile/framework/service/ext/security/AccountService:setCurrentLoginLogonId	(Ljava/lang/String;)V
    //   535: aload_0
    //   536: invokespecial 46	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:c	()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    //   539: ldc_w 327
    //   542: invokevirtual 330	com/alipay/mobile/framework/service/ext/security/AccountService:setCurrentLoginState	(Ljava/lang/String;)V
    //   545: aload_0
    //   546: invokespecial 46	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:c	()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    //   549: aload 23
    //   551: invokevirtual 333	com/alipay/mobile/framework/service/ext/security/AccountService:setCurrentLoginUserId	(Ljava/lang/String;)V
    //   554: aload_1
    //   555: ifnull +143 -> 698
    //   558: sipush 1000
    //   561: aload_1
    //   562: invokevirtual 334	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:getResultStatus	()I
    //   565: if_icmpne +133 -> 698
    //   568: ldc_w 336
    //   571: aload_2
    //   572: invokevirtual 339	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginWthPwd	()Ljava/lang/String;
    //   575: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   578: istore 27
    //   580: aload_0
    //   581: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   584: invokeinterface 83 1 0
    //   589: invokestatic 100	android/support/v4/content/LocalBroadcastManager:getInstance	(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    //   592: astore 29
    //   594: new 102	android/content/Intent
    //   597: dup
    //   598: ldc_w 341
    //   601: invokespecial 107	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   604: astore 30
    //   606: aload 30
    //   608: ldc_w 343
    //   611: aload_1
    //   612: invokevirtual 344	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:getLoginId	()Ljava/lang/String;
    //   615: invokevirtual 347	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   618: pop
    //   619: aload_1
    //   620: invokevirtual 348	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:getUserId	()Ljava/lang/String;
    //   623: astore 32
    //   625: aload 30
    //   627: ldc_w 350
    //   630: aload 32
    //   632: invokevirtual 347	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   635: pop
    //   636: aload 30
    //   638: ldc_w 352
    //   641: iload 27
    //   643: invokevirtual 355	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   646: pop
    //   647: aload 32
    //   649: ifnull +442 -> 1091
    //   652: aload 32
    //   654: aload 4
    //   656: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   659: ifne +442 -> 1101
    //   662: goto +429 -> 1091
    //   665: aload 30
    //   667: ldc_w 357
    //   670: iload 35
    //   672: invokevirtual 355	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   675: pop
    //   676: iload 35
    //   678: putstatic 363	com/alipay/mobile/login/constants/LastLoginStatus:ISSWITCHACCOUNT	Z
    //   681: iload 27
    //   683: putstatic 366	com/alipay/mobile/login/constants/LastLoginStatus:ISWITHPWD	Z
    //   686: aload 29
    //   688: aload 30
    //   690: invokevirtual 117	android/support/v4/content/LocalBroadcastManager:sendBroadcast	(Landroid/content/Intent;)Z
    //   693: pop
    //   694: iconst_1
    //   695: putstatic 371	com/alipay/mobile/framework/service/ext/security/AuthService:LOGIN_REALSTATE	Z
    //   698: aload 17
    //   700: ifnull +68 -> 768
    //   703: aload 17
    //   705: ldc_w 373
    //   708: invokevirtual 376	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   711: ifeq +119 -> 830
    //   714: aload 17
    //   716: ldc_w 373
    //   719: invokevirtual 380	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   722: istore 26
    //   724: iload 26
    //   726: iconst_3
    //   727: if_icmplt +61 -> 788
    //   730: new 308	java/lang/StringBuilder
    //   733: dup
    //   734: invokespecial 309	java/lang/StringBuilder:<init>	()V
    //   737: aload 17
    //   739: iconst_0
    //   740: iconst_3
    //   741: invokevirtual 384	java/lang/String:substring	(II)Ljava/lang/String;
    //   744: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   747: ldc_w 386
    //   750: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   753: aload 17
    //   755: iload 26
    //   757: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   760: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   763: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   766: astore 17
    //   768: aload_0
    //   769: getfield 31	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:c	Landroid/os/Handler;
    //   772: new 391	com/alipay/mobile/security/authcenter/service/e
    //   775: dup
    //   776: aload_0
    //   777: aload 17
    //   779: invokespecial 394	com/alipay/mobile/security/authcenter/service/e:<init>	(Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;Ljava/lang/String;)V
    //   782: invokevirtual 398	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   785: pop
    //   786: aload_1
    //   787: areturn
    //   788: new 308	java/lang/StringBuilder
    //   791: dup
    //   792: invokespecial 309	java/lang/StringBuilder:<init>	()V
    //   795: aload 17
    //   797: iconst_0
    //   798: iload 26
    //   800: invokevirtual 384	java/lang/String:substring	(II)Ljava/lang/String;
    //   803: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   806: ldc_w 386
    //   809: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   812: aload 17
    //   814: iload 26
    //   816: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   819: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   822: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   825: astore 17
    //   827: goto -59 -> 768
    //   830: aload 17
    //   832: ldc_w 400
    //   835: invokevirtual 404	java/lang/String:matches	(Ljava/lang/String;)Z
    //   838: ifeq -70 -> 768
    //   841: new 308	java/lang/StringBuilder
    //   844: dup
    //   845: invokespecial 309	java/lang/StringBuilder:<init>	()V
    //   848: aload 17
    //   850: iconst_0
    //   851: iconst_3
    //   852: invokevirtual 384	java/lang/String:substring	(II)Ljava/lang/String;
    //   855: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   858: ldc_w 406
    //   861: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   864: aload 17
    //   866: bipush 252
    //   868: aload 17
    //   870: invokevirtual 409	java/lang/String:length	()I
    //   873: iadd
    //   874: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   877: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   880: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   883: astore 17
    //   885: goto -117 -> 768
    //   888: new 308	java/lang/StringBuilder
    //   891: dup
    //   892: ldc_w 411
    //   895: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   898: aload 7
    //   900: invokevirtual 95	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getResultStatus	()I
    //   903: invokevirtual 415	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   906: ldc_w 417
    //   909: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   912: aload 7
    //   914: invokevirtual 226	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getMemo	()Ljava/lang/String;
    //   917: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   920: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   923: pop
    //   924: aload_1
    //   925: aload 7
    //   927: invokevirtual 226	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getMemo	()Ljava/lang/String;
    //   930: invokevirtual 229	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setMemo	(Ljava/lang/String;)V
    //   933: aload_1
    //   934: aload 7
    //   936: invokevirtual 95	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getResultStatus	()I
    //   939: invokevirtual 239	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setResultStatus	(I)V
    //   942: aload_2
    //   943: invokevirtual 420	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginPassword	()Ljava/lang/String;
    //   946: ifnull +91 -> 1037
    //   949: ldc_w 422
    //   952: aload_2
    //   953: invokevirtual 420	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginPassword	()Ljava/lang/String;
    //   956: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   959: ifne +78 -> 1037
    //   962: aload_1
    //   963: aload 7
    //   965: invokevirtual 95	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getResultStatus	()I
    //   968: invokevirtual 239	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setResultStatus	(I)V
    //   971: aload_1
    //   972: aload 7
    //   974: invokevirtual 226	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getMemo	()Ljava/lang/String;
    //   977: invokevirtual 229	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setMemo	(Ljava/lang/String;)V
    //   980: aload_1
    //   981: aload 7
    //   983: invokevirtual 196	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginCheckCodeImg	()Ljava/lang/String;
    //   986: invokevirtual 199	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginCheckCodeImg	(Ljava/lang/String;)V
    //   989: aload_1
    //   990: aload 7
    //   992: invokevirtual 202	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginCheckCodeUrl	()Ljava/lang/String;
    //   995: invokevirtual 205	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginCheckCodeUrl	(Ljava/lang/String;)V
    //   998: aload_1
    //   999: aload 7
    //   1001: invokevirtual 254	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getTbCheckCodeUrl	()Ljava/lang/String;
    //   1004: invokevirtual 257	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setTbCheckCodeUrl	(Ljava/lang/String;)V
    //   1007: aload_1
    //   1008: aload 7
    //   1010: invokevirtual 248	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getTbCheckCodeId	()Ljava/lang/String;
    //   1013: invokevirtual 251	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setTbCheckCodeId	(Ljava/lang/String;)V
    //   1016: aload_1
    //   1017: aload 7
    //   1019: invokevirtual 155	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginId	()Ljava/lang/String;
    //   1022: invokevirtual 211	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:setLoginId	(Ljava/lang/String;)V
    //   1025: aload_0
    //   1026: invokespecial 46	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:c	()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    //   1029: ldc_w 424
    //   1032: invokevirtual 330	com/alipay/mobile/framework/service/ext/security/AccountService:setCurrentLoginState	(Ljava/lang/String;)V
    //   1035: aload_1
    //   1036: areturn
    //   1037: new 308	java/lang/StringBuilder
    //   1040: dup
    //   1041: ldc_w 426
    //   1044: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1047: aload_2
    //   1048: invokevirtual 136	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginId	()Ljava/lang/String;
    //   1051: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1054: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1057: pop
    //   1058: aload 9
    //   1060: aload_2
    //   1061: invokevirtual 136	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginId	()Ljava/lang/String;
    //   1064: invokevirtual 429	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:updateUserAutoLoginFlagByLogonId	(Ljava/lang/String;)Z
    //   1067: pop
    //   1068: goto -43 -> 1025
    //   1071: astore 28
    //   1073: goto -379 -> 694
    //   1076: astore 24
    //   1078: goto -524 -> 554
    //   1081: astore 18
    //   1083: goto -667 -> 416
    //   1086: astore 14
    //   1088: goto -965 -> 123
    //   1091: iconst_1
    //   1092: istore 35
    //   1094: goto -429 -> 665
    //   1097: astore 8
    //   1099: aload_1
    //   1100: areturn
    //   1101: iconst_0
    //   1102: istore 35
    //   1104: goto -439 -> 665
    //
    // Exception table:
    //   from	to	target	type
    //   36	46	470	com/alipay/mobile/common/rpc/RpcException
    //   438	451	484	java/lang/Exception
    //   456	463	484	java/lang/Exception
    //   580	647	1071	java/lang/Exception
    //   652	662	1071	java/lang/Exception
    //   665	694	1071	java/lang/Exception
    //   526	554	1076	java/lang/Exception
    //   190	382	1081	java/lang/Exception
    //   387	416	1081	java/lang/Exception
    //   80	123	1086	java/lang/Exception
    //   51	72	1097	java/lang/Exception
    //   123	186	1097	java/lang/Exception
    //   416	422	1097	java/lang/Exception
    //   426	433	1097	java/lang/Exception
    //   475	481	1097	java/lang/Exception
    //   486	505	1097	java/lang/Exception
    //   505	526	1097	java/lang/Exception
    //   558	580	1097	java/lang/Exception
    //   694	698	1097	java/lang/Exception
    //   703	724	1097	java/lang/Exception
    //   730	768	1097	java/lang/Exception
    //   768	786	1097	java/lang/Exception
    //   788	827	1097	java/lang/Exception
    //   830	885	1097	java/lang/Exception
    //   888	1025	1097	java/lang/Exception
    //   1025	1035	1097	java/lang/Exception
    //   1037	1068	1097	java/lang/Exception
  }

  private static String a()
  {
    return ((PayHelperServcie)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(PayHelperServcie.class.getName())).getPaySysInfo();
  }

  private static void a(SecurityDbHelper paramSecurityDbHelper, TaoBaoUserInfo paramTaoBaoUserInfo)
  {
    while (true)
    {
      try
      {
        List localList = paramSecurityDbHelper.queryTaobaoUserList();
        if ((localList == null) || (localList.isEmpty()))
        {
          paramSecurityDbHelper.addTaobaoUserInfo(paramTaoBaoUserInfo);
          return;
        }
        Iterator localIterator = localList.iterator();
        if (localIterator.hasNext())
        {
          TaoBaoUserInfo localTaoBaoUserInfo = (TaoBaoUserInfo)localIterator.next();
          if (!StringUtils.equals(localTaoBaoUserInfo.getTaoBaoUserId(), paramTaoBaoUserInfo.getTaoBaoUserId()))
            continue;
          if (!StringUtils.isBlank(localTaoBaoUserInfo.getUserId()))
            break label115;
          paramSecurityDbHelper.deleteTaobaoUserInfo(localTaoBaoUserInfo.getTaoBaoUserId());
          paramSecurityDbHelper.addTaobaoUserInfo(paramTaoBaoUserInfo);
          return;
          if (i != 0)
            continue;
          paramSecurityDbHelper.addTaobaoUserInfo(paramTaoBaoUserInfo);
          return;
        }
        i = 0;
        continue;
        return;
      }
      catch (Throwable localThrowable)
      {
        return;
      }
      label115: int i = 1;
    }
  }

  // ERROR //
  private boolean a(com.alipay.mobilegw.biz.shared.processer.login.UserLoginResult paramUserLoginResult)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   4: ldc 48
    //   6: invokevirtual 63	java/lang/Class:getName	()Ljava/lang/String;
    //   9: invokeinterface 440 2 0
    //   14: checkcast 48	com/alipay/mobile/framework/service/ext/security/AccountService
    //   17: aload_1
    //   18: invokevirtual 142	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserId	()Ljava/lang/String;
    //   21: invokevirtual 489	com/alipay/mobile/framework/service/ext/security/AccountService:queryAccountDetailInfoByUserId	(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   24: astore 7
    //   26: aload 7
    //   28: astore_3
    //   29: aload_3
    //   30: ifnonnull +250 -> 280
    //   33: new 491	com/alipay/mobile/framework/service/ext/security/bean/UserInfo
    //   36: dup
    //   37: invokespecial 492	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:<init>	()V
    //   40: astore 4
    //   42: new 308	java/lang/StringBuilder
    //   45: dup
    //   46: ldc_w 494
    //   49: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: aload_1
    //   53: invokevirtual 142	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserId	()Ljava/lang/String;
    //   56: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: pop
    //   63: aload 4
    //   65: aload_1
    //   66: invokevirtual 155	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginId	()Ljava/lang/String;
    //   69: invokevirtual 497	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setLogonId	(Ljava/lang/String;)V
    //   72: aload 4
    //   74: aload_1
    //   75: invokevirtual 142	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserId	()Ljava/lang/String;
    //   78: invokevirtual 498	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setUserId	(Ljava/lang/String;)V
    //   81: aload 4
    //   83: aload_1
    //   84: invokevirtual 261	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getUserName	()Ljava/lang/String;
    //   87: invokevirtual 499	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setUserName	(Ljava/lang/String;)V
    //   90: aload 4
    //   92: aload_1
    //   93: invokevirtual 232	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getMobileNo	()Ljava/lang/String;
    //   96: invokevirtual 502	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setMobileNumber	(Ljava/lang/String;)V
    //   99: aload 4
    //   101: aload_1
    //   102: invokevirtual 190	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getIsCertified	()Ljava/lang/String;
    //   105: invokevirtual 503	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setIsCertified	(Ljava/lang/String;)V
    //   108: aload 4
    //   110: aload_1
    //   111: invokevirtual 506	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:isWirelessUser	()Z
    //   114: invokevirtual 509	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setWirelessUser	(Z)V
    //   117: aload 4
    //   119: aload_1
    //   120: invokevirtual 512	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:isBindCard	()Z
    //   123: invokevirtual 515	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setBindCard	(Z)V
    //   126: aload_1
    //   127: invokevirtual 274	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getExtResAttrs	()Ljava/util/Map;
    //   130: astore 10
    //   132: aload 10
    //   134: ifnull +21 -> 155
    //   137: aload 4
    //   139: aload 10
    //   141: ldc_w 517
    //   144: invokeinterface 282 2 0
    //   149: checkcast 126	java/lang/String
    //   152: invokevirtual 520	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setRealNamed	(Ljava/lang/String;)V
    //   155: aload_1
    //   156: invokevirtual 523	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getHeadImg	()Ljava/lang/String;
    //   159: astore 11
    //   161: aload 11
    //   163: invokestatic 288	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   166: ifne +10 -> 176
    //   169: aload 4
    //   171: aload 11
    //   173: invokevirtual 526	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setUserAvatar	(Ljava/lang/String;)V
    //   176: aload 4
    //   178: aload_1
    //   179: invokevirtual 214	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginServerTime	()Ljava/lang/String;
    //   182: invokevirtual 527	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setLoginTime	(Ljava/lang/String;)V
    //   185: aload 4
    //   187: aload_1
    //   188: invokevirtual 242	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getTaobaoSid	()Ljava/lang/String;
    //   191: invokevirtual 528	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setTaobaoSid	(Ljava/lang/String;)V
    //   194: aload 4
    //   196: aload_1
    //   197: invokevirtual 184	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getExtern_token	()Ljava/lang/String;
    //   200: invokevirtual 529	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setExtern_token	(Ljava/lang/String;)V
    //   203: aload 4
    //   205: aload_1
    //   206: invokevirtual 220	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getLoginToken	()Ljava/lang/String;
    //   209: invokevirtual 530	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setLoginToken	(Ljava/lang/String;)V
    //   212: aload 4
    //   214: aload_1
    //   215: invokevirtual 267	com/alipay/mobilegw/biz/shared/processer/login/UserLoginResult:getSessionId	()Ljava/lang/String;
    //   218: invokevirtual 531	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setSessionId	(Ljava/lang/String;)V
    //   221: aload_0
    //   222: invokespecial 534	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:d	()Z
    //   225: ifeq +9 -> 234
    //   228: aload 4
    //   230: iconst_1
    //   231: invokevirtual 537	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setAutoLogin	(Z)V
    //   234: aload_0
    //   235: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   238: invokeinterface 83 1 0
    //   243: invokestatic 89	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getInstance	(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;
    //   246: aload 4
    //   248: invokevirtual 541	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:addUserInfo	(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    //   251: pop
    //   252: iconst_1
    //   253: ireturn
    //   254: astore_2
    //   255: aconst_null
    //   256: astore_3
    //   257: aload_3
    //   258: astore 4
    //   260: goto -26 -> 234
    //   263: astore 5
    //   265: iconst_0
    //   266: ireturn
    //   267: astore 12
    //   269: goto -12 -> 257
    //   272: astore 8
    //   274: aload 4
    //   276: astore_3
    //   277: goto -20 -> 257
    //   280: aload_3
    //   281: astore 4
    //   283: goto -241 -> 42
    //
    // Exception table:
    //   from	to	target	type
    //   0	26	254	java/lang/Exception
    //   234	252	263	java/lang/Exception
    //   33	42	267	java/lang/Exception
    //   42	132	272	java/lang/Exception
    //   137	155	272	java/lang/Exception
    //   155	176	272	java/lang/Exception
    //   176	234	272	java/lang/Exception
  }

  private UserLoginReq b()
  {
    UserLoginReq localUserLoginReq = new UserLoginReq();
    localUserLoginReq.setUserAgent(DeviceInfo.getInstance().getUserAgent());
    Tid localTid = new TidGetter(getMicroApplicationContext()).getClientTid();
    localUserLoginReq.setWalletTid(localTid.getTid());
    localUserLoginReq.setWalletClientKey(localTid.getClientKey());
    localUserLoginReq.setClientId(DeviceInfo.getInstance().getClientId());
    localUserLoginReq.setProductId(AppInfo.getInstance().getProductID());
    localUserLoginReq.setProductVersion(AppInfo.getInstance().getmProductVersion());
    localUserLoginReq.setScreenHigh(DeviceInfo.getInstance().getmScreenHeight());
    localUserLoginReq.setScreenWidth(DeviceInfo.getInstance().getmScreenWidth());
    localUserLoginReq.setChannels(AppInfo.getInstance().getmChannels());
    localUserLoginReq.setOsVersion(DeviceInfo.getInstance().getOsVersion());
    MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
    if ((localMspDeviceInfoBean != null) && (localMspDeviceInfoBean.getTid() != null))
    {
      localUserLoginReq.setMspTid(localMspDeviceInfoBean.getTid());
      localUserLoginReq.setMspClientKey(localMspDeviceInfoBean.getMspkey());
      localUserLoginReq.setMspImei(localMspDeviceInfoBean.getImei());
      localUserLoginReq.setMspImsi(localMspDeviceInfoBean.getImsi());
      localUserLoginReq.setVimei(localMspDeviceInfoBean.getVimei());
      localUserLoginReq.setVimsi(localMspDeviceInfoBean.getVimsi());
      new StringBuilder("从移动快捷获取tid=").append(null).toString();
    }
    localUserLoginReq.setSourceId(((SchemeService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName())).getLastTagId());
    LocationInfo localLocationInfo = ((LocationInfoService)getMicroApplicationContext().getExtServiceByInterface(LocationInfoService.class.getName())).getCacheLocationInfo();
    if (localLocationInfo != null)
    {
      localUserLoginReq.setMac(localLocationInfo.getMac());
      localUserLoginReq.setCellId(localLocationInfo.getCellId());
      localUserLoginReq.setLocation(localLocationInfo.getLatitude() + "," + localLocationInfo.getLongitude() + "," + localLocationInfo.getAccuracy());
    }
    return localUserLoginReq;
  }

  private AccountService c()
  {
    return (AccountService)getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName());
  }

  private boolean d()
  {
    try
    {
      DeviceInfoBean localDeviceInfoBean = ((DeviceService)getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryDeviceInfo();
      if (localDeviceInfoBean == null)
        break label40;
      if (localDeviceInfoBean.getWalletTid() != null)
        return true;
    }
    catch (Exception localException)
    {
      return false;
    }
    return false;
    label40: return false;
  }

  private static void e()
  {
    DeviceServiceImpl localDeviceServiceImpl = (DeviceServiceImpl)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName());
    String str = localDeviceServiceImpl.queryDeviceInfo().getWalletTid();
    new StringBuilder("walletTid=").append(str).toString();
    if ((str == null) || ("".equals(str.trim())))
      localDeviceServiceImpl.genTid(DeviceInfo.getInstance().getmClientKey());
  }

  public void autoLogin(LoginCallBack paramLoginCallBack)
  {
    String str = c().getCurrentLoginLogonId();
    if ((str == null) || ("".equals(str)))
    {
      paramLoginCallBack.AutoLoginResult(null);
      return;
    }
    try
    {
      UserLoginResultBiz localUserLoginResultBiz2 = login(str, null, null, null, null);
      localUserLoginResultBiz1 = localUserLoginResultBiz2;
      paramLoginCallBack.AutoLoginResult(localUserLoginResultBiz1);
      return;
    }
    catch (RpcException localRpcException)
    {
      throw localRpcException;
    }
    catch (Exception localException)
    {
      while (true)
      {
        new StringBuilder().append(localException.getStackTrace()).toString();
        UserLoginResultBiz localUserLoginResultBiz1 = null;
      }
    }
  }

  public String getTime()
  {
    return new SimpleDateFormat("MMddHHmmssSSS", Locale.getDefault()).format(new Date());
  }

  // ERROR //
  public UserLoginResultBiz login(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    // Byte code:
    //   0: invokestatic 779	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:e	()V
    //   3: new 160	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz
    //   6: dup
    //   7: invokespecial 780	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:<init>	()V
    //   10: astore 6
    //   12: aload_0
    //   13: invokespecial 782	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:b	()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;
    //   16: astore 7
    //   18: aload 7
    //   20: aload_1
    //   21: invokevirtual 783	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginId	(Ljava/lang/String;)V
    //   24: aload_3
    //   25: ifnull +16 -> 41
    //   28: ldc_w 422
    //   31: aload_3
    //   32: invokevirtual 728	java/lang/String:trim	()Ljava/lang/String;
    //   35: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   38: ifeq +305 -> 343
    //   41: aload 7
    //   43: ldc_w 788
    //   46: invokevirtual 791	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginType	(Ljava/lang/String;)V
    //   49: aload 7
    //   51: ldc_w 793
    //   54: invokevirtual 796	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginWthPwd	(Ljava/lang/String;)V
    //   57: aload_0
    //   58: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   61: ldc_w 798
    //   64: invokevirtual 63	java/lang/Class:getName	()Ljava/lang/String;
    //   67: invokeinterface 440 2 0
    //   72: checkcast 798	com/alipay/mobile/framework/service/ext/security/RSAService
    //   75: astore 8
    //   77: aload_2
    //   78: ifnull +33 -> 111
    //   81: ldc_w 422
    //   84: aload_2
    //   85: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   88: ifne +23 -> 111
    //   91: aload 7
    //   93: aload 8
    //   95: aload_2
    //   96: iconst_0
    //   97: invokevirtual 802	com/alipay/mobile/framework/service/ext/security/RSAService:RSAEncrypt	(Ljava/lang/String;Z)Ljava/lang/String;
    //   100: invokevirtual 805	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginPassword	(Ljava/lang/String;)V
    //   103: aload 7
    //   105: ldc_w 336
    //   108: invokevirtual 796	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginWthPwd	(Ljava/lang/String;)V
    //   111: aload_3
    //   112: invokestatic 288	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: ifne +24 -> 139
    //   118: ldc_w 807
    //   121: aload_3
    //   122: invokevirtual 728	java/lang/String:trim	()Ljava/lang/String;
    //   125: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   128: ifeq +11 -> 139
    //   131: aload 7
    //   133: ldc_w 809
    //   136: invokevirtual 796	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginWthPwd	(Ljava/lang/String;)V
    //   139: aload 4
    //   141: ifnull +26 -> 167
    //   144: ldc 119
    //   146: aload_3
    //   147: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   150: ifeq +249 -> 399
    //   153: aload 7
    //   155: aload 4
    //   157: invokevirtual 812	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setTbCheckCode	(Ljava/lang/String;)V
    //   160: aload 7
    //   162: aload 5
    //   164: invokevirtual 813	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setTbCheckCodeId	(Ljava/lang/String;)V
    //   167: aload 7
    //   169: invokevirtual 339	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginWthPwd	()Ljava/lang/String;
    //   172: ifnull +102 -> 274
    //   175: aload 7
    //   177: invokevirtual 339	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginWthPwd	()Ljava/lang/String;
    //   180: ldc_w 336
    //   183: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   186: ifne +17 -> 203
    //   189: aload 7
    //   191: invokevirtual 339	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginWthPwd	()Ljava/lang/String;
    //   194: ldc_w 809
    //   197: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   200: ifeq +74 -> 274
    //   203: invokestatic 433	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   206: invokestatic 819	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils:init	(Landroid/content/Context;)V
    //   209: new 821	com/taobao/securityjni/SecurityCheck
    //   212: dup
    //   213: invokestatic 433	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   216: invokespecial 824	com/taobao/securityjni/SecurityCheck:<init>	(Landroid/content/ContextWrapper;)V
    //   219: astore 14
    //   221: new 308	java/lang/StringBuilder
    //   224: dup
    //   225: invokespecial 309	java/lang/StringBuilder:<init>	()V
    //   228: invokestatic 830	java/lang/System:currentTimeMillis	()J
    //   231: invokevirtual 833	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   234: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: iconst_3
    //   238: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   241: invokestatic 839	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   244: aload 8
    //   246: invokevirtual 842	com/alipay/mobile/framework/service/ext/security/RSAService:getSafeRSATS	()J
    //   249: ladd
    //   250: invokestatic 846	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   253: astore 15
    //   255: aload 7
    //   257: aload 14
    //   259: aload 15
    //   261: invokevirtual 850	com/taobao/securityjni/SecurityCheck:getCheckSignature	(Ljava/lang/String;)Ljava/lang/String;
    //   264: invokevirtual 853	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setClientDigest	(Ljava/lang/String;)V
    //   267: aload 7
    //   269: aload 15
    //   271: invokevirtual 856	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setSecTS	(Ljava/lang/String;)V
    //   274: new 858	java/util/HashMap
    //   277: dup
    //   278: invokespecial 859	java/util/HashMap:<init>	()V
    //   281: astore 9
    //   283: aload 9
    //   285: ldc_w 861
    //   288: invokestatic 548	com/alipay/mobile/common/info/DeviceInfo:getInstance	()Lcom/alipay/mobile/common/info/DeviceInfo;
    //   291: invokevirtual 864	com/alipay/mobile/common/info/DeviceInfo:getmMobileModel	()Ljava/lang/String;
    //   294: invokeinterface 868 3 0
    //   299: pop
    //   300: invokestatic 870	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:a	()Ljava/lang/String;
    //   303: astore 11
    //   305: aload 11
    //   307: invokestatic 288	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   310: ifne +23 -> 333
    //   313: aload 9
    //   315: ldc_w 872
    //   318: aload 11
    //   320: invokeinterface 868 3 0
    //   325: pop
    //   326: aload 7
    //   328: aload 9
    //   330: invokevirtual 876	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setExternParams	(Ljava/util/Map;)V
    //   333: aload_0
    //   334: aload 6
    //   336: aload 7
    //   338: iconst_0
    //   339: invokespecial 878	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:a	(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    //   342: areturn
    //   343: ldc_w 807
    //   346: aload_3
    //   347: invokevirtual 728	java/lang/String:trim	()Ljava/lang/String;
    //   350: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   353: ifeq +14 -> 367
    //   356: aload 7
    //   358: ldc_w 788
    //   361: invokevirtual 791	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginType	(Ljava/lang/String;)V
    //   364: goto -315 -> 49
    //   367: new 308	java/lang/StringBuilder
    //   370: dup
    //   371: ldc_w 880
    //   374: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   377: aload_3
    //   378: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   384: pop
    //   385: aload 7
    //   387: aload_3
    //   388: invokevirtual 791	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginType	(Ljava/lang/String;)V
    //   391: goto -342 -> 49
    //   394: astore 16
    //   396: aload 16
    //   398: athrow
    //   399: aload 7
    //   401: aload 4
    //   403: invokevirtual 883	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginCheckCode	(Ljava/lang/String;)V
    //   406: goto -239 -> 167
    //   409: astore 13
    //   411: aload 13
    //   413: invokevirtual 886	java/lang/Exception:printStackTrace	()V
    //   416: goto -142 -> 274
    //
    // Exception table:
    //   from	to	target	type
    //   91	103	394	java/lang/RuntimeException
    //   203	274	409	java/lang/Exception
  }

  // ERROR //
  public UserLoginResultBiz loginWithPWD(com.alipay.mobile.framework.service.ext.security.bean.LoginInputParam paramLoginInputParam)
  {
    // Byte code:
    //   0: invokestatic 779	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:e	()V
    //   3: new 160	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz
    //   6: dup
    //   7: invokespecial 780	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:<init>	()V
    //   10: astore_2
    //   11: aload_0
    //   12: invokespecial 782	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:b	()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_1
    //   18: getfield 892	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:logonId	Ljava/lang/String;
    //   21: invokevirtual 783	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginId	(Ljava/lang/String;)V
    //   24: aload_1
    //   25: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   28: ifnull +19 -> 47
    //   31: ldc_w 422
    //   34: aload_1
    //   35: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   38: invokevirtual 728	java/lang/String:trim	()Ljava/lang/String;
    //   41: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   44: ifeq +350 -> 394
    //   47: aload_3
    //   48: ldc_w 788
    //   51: invokevirtual 791	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginType	(Ljava/lang/String;)V
    //   54: aload_0
    //   55: invokevirtual 56	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   58: ldc_w 798
    //   61: invokevirtual 63	java/lang/Class:getName	()Ljava/lang/String;
    //   64: invokeinterface 440 2 0
    //   69: checkcast 798	com/alipay/mobile/framework/service/ext/security/RSAService
    //   72: astore 4
    //   74: aload_1
    //   75: getfield 898	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:pwd	Ljava/lang/String;
    //   78: ifnull +30 -> 108
    //   81: ldc_w 422
    //   84: aload_1
    //   85: getfield 898	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:pwd	Ljava/lang/String;
    //   88: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   91: ifne +17 -> 108
    //   94: aload_3
    //   95: aload 4
    //   97: aload_1
    //   98: getfield 898	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:pwd	Ljava/lang/String;
    //   101: iconst_0
    //   102: invokevirtual 802	com/alipay/mobile/framework/service/ext/security/RSAService:RSAEncrypt	(Ljava/lang/String;Z)Ljava/lang/String;
    //   105: invokevirtual 805	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginPassword	(Ljava/lang/String;)V
    //   108: aload_3
    //   109: ldc_w 336
    //   112: invokevirtual 796	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginWthPwd	(Ljava/lang/String;)V
    //   115: aload_1
    //   116: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   119: invokestatic 288	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   122: ifne +26 -> 148
    //   125: ldc_w 807
    //   128: aload_1
    //   129: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   132: invokevirtual 728	java/lang/String:trim	()Ljava/lang/String;
    //   135: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   138: ifeq +10 -> 148
    //   141: aload_3
    //   142: ldc_w 809
    //   145: invokevirtual 796	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginWthPwd	(Ljava/lang/String;)V
    //   148: aload_1
    //   149: getfield 901	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:checkcode	Ljava/lang/String;
    //   152: ifnull +31 -> 183
    //   155: ldc 119
    //   157: aload_1
    //   158: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   161: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   164: ifeq +293 -> 457
    //   167: aload_3
    //   168: aload_1
    //   169: getfield 901	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:checkcode	Ljava/lang/String;
    //   172: invokevirtual 812	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setTbCheckCode	(Ljava/lang/String;)V
    //   175: aload_3
    //   176: aload_1
    //   177: getfield 904	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:checkCodeId	Ljava/lang/String;
    //   180: invokevirtual 813	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setTbCheckCodeId	(Ljava/lang/String;)V
    //   183: aload_3
    //   184: invokevirtual 339	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginWthPwd	()Ljava/lang/String;
    //   187: ifnull +98 -> 285
    //   190: aload_3
    //   191: invokevirtual 339	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginWthPwd	()Ljava/lang/String;
    //   194: ldc_w 336
    //   197: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   200: ifne +16 -> 216
    //   203: aload_3
    //   204: invokevirtual 339	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:getLoginWthPwd	()Ljava/lang/String;
    //   207: ldc_w 809
    //   210: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   213: ifeq +72 -> 285
    //   216: invokestatic 433	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   219: invokestatic 819	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils:init	(Landroid/content/Context;)V
    //   222: new 821	com/taobao/securityjni/SecurityCheck
    //   225: dup
    //   226: invokestatic 433	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   229: invokespecial 824	com/taobao/securityjni/SecurityCheck:<init>	(Landroid/content/ContextWrapper;)V
    //   232: astore 12
    //   234: new 308	java/lang/StringBuilder
    //   237: dup
    //   238: invokespecial 309	java/lang/StringBuilder:<init>	()V
    //   241: invokestatic 830	java/lang/System:currentTimeMillis	()J
    //   244: invokevirtual 833	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   247: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: iconst_3
    //   251: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   254: invokestatic 839	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   257: aload 4
    //   259: invokevirtual 842	com/alipay/mobile/framework/service/ext/security/RSAService:getSafeRSATS	()J
    //   262: ladd
    //   263: invokestatic 846	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   266: astore 13
    //   268: aload_3
    //   269: aload 12
    //   271: aload 13
    //   273: invokevirtual 850	com/taobao/securityjni/SecurityCheck:getCheckSignature	(Ljava/lang/String;)Ljava/lang/String;
    //   276: invokevirtual 853	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setClientDigest	(Ljava/lang/String;)V
    //   279: aload_3
    //   280: aload 13
    //   282: invokevirtual 856	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setSecTS	(Ljava/lang/String;)V
    //   285: new 858	java/util/HashMap
    //   288: dup
    //   289: invokespecial 859	java/util/HashMap:<init>	()V
    //   292: astore 5
    //   294: new 906	com/alipay/mobileapp/core/model/login/SecurityPolicyParam
    //   297: dup
    //   298: invokespecial 907	com/alipay/mobileapp/core/model/login/SecurityPolicyParam:<init>	()V
    //   301: astore 6
    //   303: aload 6
    //   305: aload_1
    //   306: getfield 910	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:checkSafe	Z
    //   309: invokevirtual 913	com/alipay/mobileapp/core/model/login/SecurityPolicyParam:setNeedCheck	(Z)V
    //   312: aload 6
    //   314: aload_1
    //   315: getfield 916	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:securityId	Ljava/lang/String;
    //   318: invokevirtual 919	com/alipay/mobileapp/core/model/login/SecurityPolicyParam:setSecurityId	(Ljava/lang/String;)V
    //   321: aload 5
    //   323: ldc_w 921
    //   326: aload 6
    //   328: invokestatic 925	com/alibaba/fastjson/JSON:toJSONString	(Ljava/lang/Object;)Ljava/lang/String;
    //   331: invokeinterface 868 3 0
    //   336: pop
    //   337: invokestatic 870	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:a	()Ljava/lang/String;
    //   340: astore 8
    //   342: aload 8
    //   344: invokestatic 288	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   347: ifne +16 -> 363
    //   350: aload 5
    //   352: ldc_w 872
    //   355: aload 8
    //   357: invokeinterface 868 3 0
    //   362: pop
    //   363: aload 5
    //   365: ldc_w 861
    //   368: invokestatic 548	com/alipay/mobile/common/info/DeviceInfo:getInstance	()Lcom/alipay/mobile/common/info/DeviceInfo;
    //   371: invokevirtual 864	com/alipay/mobile/common/info/DeviceInfo:getmMobileModel	()Ljava/lang/String;
    //   374: invokeinterface 868 3 0
    //   379: pop
    //   380: aload_3
    //   381: aload 5
    //   383: invokevirtual 876	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setExternParams	(Ljava/util/Map;)V
    //   386: aload_0
    //   387: aload_2
    //   388: aload_3
    //   389: iconst_1
    //   390: invokespecial 878	com/alipay/mobile/security/authcenter/service/LoginServiceImpl:a	(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    //   393: areturn
    //   394: ldc_w 807
    //   397: aload_1
    //   398: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   401: invokevirtual 728	java/lang/String:trim	()Ljava/lang/String;
    //   404: invokevirtual 786	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   407: ifeq +13 -> 420
    //   410: aload_3
    //   411: ldc_w 788
    //   414: invokevirtual 791	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginType	(Ljava/lang/String;)V
    //   417: goto -363 -> 54
    //   420: new 308	java/lang/StringBuilder
    //   423: dup
    //   424: ldc_w 927
    //   427: invokespecial 412	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   430: aload_1
    //   431: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   434: invokevirtual 316	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 319	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: pop
    //   441: aload_3
    //   442: aload_1
    //   443: getfield 895	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:loginType	Ljava/lang/String;
    //   446: invokevirtual 791	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginType	(Ljava/lang/String;)V
    //   449: goto -395 -> 54
    //   452: astore 14
    //   454: aload 14
    //   456: athrow
    //   457: aload_3
    //   458: aload_1
    //   459: getfield 901	com/alipay/mobile/framework/service/ext/security/bean/LoginInputParam:checkcode	Ljava/lang/String;
    //   462: invokevirtual 883	com/alipay/mobilegw/biz/shared/processer/login/UserLoginReq:setLoginCheckCode	(Ljava/lang/String;)V
    //   465: goto -282 -> 183
    //   468: astore 11
    //   470: aload 11
    //   472: invokevirtual 886	java/lang/Exception:printStackTrace	()V
    //   475: goto -190 -> 285
    //
    // Exception table:
    //   from	to	target	type
    //   94	108	452	java/lang/RuntimeException
    //   216	285	468	java/lang/Exception
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public UserLoginResultBiz taobaoSsoTokenLogin(TaobaoSsoLoginToken paramTaobaoSsoLoginToken)
  {
    new StringBuilder("token登录服务开始,请求参数:").append(paramTaobaoSsoLoginToken).toString();
    if ((paramTaobaoSsoLoginToken == null) || (StringUtils.isBlank(paramTaobaoSsoLoginToken.getSsoToken())))
      return null;
    e();
    UserLoginResultBiz localUserLoginResultBiz1 = new UserLoginResultBiz();
    UserLoginReq localUserLoginReq = b();
    localUserLoginReq.setLoginId(paramTaobaoSsoLoginToken.getNickName());
    localUserLoginReq.setSourceId(paramTaobaoSsoLoginToken.getSsoChannelId());
    localUserLoginReq.setLoginType("taobao");
    localUserLoginReq.setLoginWthPwd("withtoken");
    TaobaoTokenParam localTaobaoTokenParam = new TaobaoTokenParam();
    localTaobaoTokenParam.setSsoToken(paramTaobaoSsoLoginToken.getSsoToken());
    localTaobaoTokenParam.setDeviceId(paramTaobaoSsoLoginToken.getTaobaoDeviceId());
    localTaobaoTokenParam.setTimeStamp(paramTaobaoSsoLoginToken.getTimeStamp());
    localTaobaoTokenParam.setTokenSign(paramTaobaoSsoLoginToken.getSecSign());
    if (paramTaobaoSsoLoginToken.isAutoImport());
    for (String str = "ssoByTaoSync"; ; str = "ssoByTaoAndroid")
    {
      localTaobaoTokenParam.setLoginSource(str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("withtoken", JSON.toJSONString(localTaobaoTokenParam));
      localUserLoginReq.setExternParams(localHashMap);
      UserLoginResultBiz localUserLoginResultBiz2 = a(localUserLoginResultBiz1, localUserLoginReq, false);
      new StringBuilder("token登录完成，登录结果:").append(localUserLoginResultBiz2).toString();
      return localUserLoginResultBiz2;
    }
  }

  public UserLoginResultBiz wapTokenLogin(WapLoginToken paramWapLoginToken)
  {
    new StringBuilder("wap token登录服务开始,请求参数:").append(paramWapLoginToken).toString();
    if ((paramWapLoginToken == null) || (StringUtils.isBlank(paramWapLoginToken.getInnerToken())))
      return null;
    e();
    UserLoginResultBiz localUserLoginResultBiz1 = new UserLoginResultBiz();
    UserLoginReq localUserLoginReq = b();
    localUserLoginReq.setLoginWthPwd("withinnertoken");
    HashMap localHashMap = new HashMap();
    localHashMap.put("withinnertoken", JSON.toJSONString(paramWapLoginToken));
    localUserLoginReq.setExternParams(localHashMap);
    UserLoginResultBiz localUserLoginResultBiz2 = a(localUserLoginResultBiz1, localUserLoginReq, false);
    new StringBuilder("token登录完成，登录结果:").append(localUserLoginResultBiz2).toString();
    return localUserLoginResultBiz2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.LoginServiceImpl
 * JD-Core Version:    0.6.2
 */