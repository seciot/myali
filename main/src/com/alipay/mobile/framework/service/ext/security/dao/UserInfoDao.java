package com.alipay.mobile.framework.service.ext.security.dao;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.security.Des;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.gesture.util.GesutreContainUtil;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.Dao.CreateOrUpdateStatus;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class UserInfoDao
{
  final String a = UserInfoDao.class.getName();

  private void a(UserInfo paramUserInfo)
  {
    if (paramUserInfo == null)
      LogCatLog.d(this.a, "decryptUserInfo userInfo is null");
    String str1;
    String str7;
    do
    {
      return;
      str1 = paramUserInfo.getUserId();
      if (str1 != null)
        paramUserInfo.setUserId(Des.decrypt(str1, "userInfo"));
      String str2 = paramUserInfo.getUserName();
      if (str2 != null)
        paramUserInfo.setUserName(Des.decrypt(str2, "userInfo"));
      String str3 = paramUserInfo.getLogonId();
      if (str3 != null)
        paramUserInfo.setLogonId(Des.decrypt(str3, "userInfo"));
      String str4 = paramUserInfo.getMobileNumber();
      if (str4 != null)
        paramUserInfo.setMobileNumber(Des.decrypt(str4, "userInfo"));
      String str5 = paramUserInfo.getUserAvatar();
      if (str5 != null)
        paramUserInfo.setUserAvatar(Des.decrypt(str5, "userInfo"));
      String str6 = paramUserInfo.getGestureErrorNum();
      if (str6 != null)
        paramUserInfo.setGestureErrorNum(Des.decrypt(str6, GesutreContainUtil.get8BytesStr(str1)));
      str7 = paramUserInfo.getGestureSkipStr();
    }
    while (str7 == null);
    paramUserInfo.setGestureSkipStr(Des.decrypt(str7, GesutreContainUtil.get8BytesStr(str1)));
  }

  public void addUserInfo(Dao<UserInfo, Integer> paramDao, UserInfo paramUserInfo)
  {
    UserInfo localUserInfo = (UserInfo)paramUserInfo.clone();
    if (localUserInfo.getUserId() != null)
      localUserInfo.setUserId(Des.encrypt(localUserInfo.getUserId(), "userInfo"));
    if (localUserInfo.getUserName() != null)
      localUserInfo.setUserName(Des.encrypt(localUserInfo.getUserName(), "userInfo"));
    if (localUserInfo.getLogonId() != null)
      localUserInfo.setLogonId(Des.encrypt(localUserInfo.getLogonId(), "userInfo"));
    if (localUserInfo.getMobileNumber() != null)
      localUserInfo.setMobileNumber(Des.encrypt(localUserInfo.getMobileNumber(), "userInfo"));
    if (localUserInfo.getUserAvatar() != null)
      localUserInfo.setUserAvatar(Des.encrypt(localUserInfo.getUserAvatar(), "userInfo"));
    if (localUserInfo.getGestureErrorNum() != null)
      localUserInfo.setGestureErrorNum(Des.encrypt(localUserInfo.getGestureErrorNum(), GesutreContainUtil.get8BytesStr(localUserInfo.getUserId())));
    if (localUserInfo.getGestureSkipStr() != null)
      localUserInfo.setGestureSkipStr(Des.encrypt(localUserInfo.getGestureSkipStr(), GesutreContainUtil.get8BytesStr(localUserInfo.getUserId())));
    Dao.CreateOrUpdateStatus localCreateOrUpdateStatus = paramDao.createOrUpdate(localUserInfo);
    if ((localCreateOrUpdateStatus != null) && (localCreateOrUpdateStatus.getNumLinesChanged() > 0))
    {
      LogCatLog.d("UserInfoDao", "添加或者更新用户信息成功，清除用户缓存数据");
      UserInfoCache.userInfoMap = null;
      return;
    }
    LogCatLog.d("UserInfoDao", "添加或者更新用户信息失败");
  }

  public boolean cleanLocalAccount(Dao<UserInfo, Integer> paramDao, String paramString)
  {
    DeleteBuilder localDeleteBuilder = paramDao.deleteBuilder();
    if (paramString != null)
      localDeleteBuilder.where().eq("userId", Des.encrypt(paramString, "userInfo"));
    if (localDeleteBuilder.delete() > 0)
    {
      UserInfoCache.userInfoMap = null;
      return true;
    }
    return false;
  }

  // ERROR //
  public UserInfo findUserInfo(Dao<UserInfo, Integer> paramDao, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 18	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:a	Ljava/lang/String;
    //   4: ldc 148
    //   6: invokestatic 27	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   9: new 150	java/util/HashMap
    //   12: dup
    //   13: invokespecial 151	java/util/HashMap:<init>	()V
    //   16: astore_3
    //   17: aload_3
    //   18: ldc 133
    //   20: aload_2
    //   21: ldc 34
    //   23: invokestatic 95	com/alipay/mobile/common/security/Des:encrypt	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   26: invokeinterface 157 3 0
    //   31: pop
    //   32: aload_1
    //   33: aload_3
    //   34: invokeinterface 161 2 0
    //   39: astore 8
    //   41: aload 8
    //   43: ifnull +65 -> 108
    //   46: aload 8
    //   48: invokeinterface 166 1 0
    //   53: ifle +55 -> 108
    //   56: aload 8
    //   58: iconst_m1
    //   59: aload 8
    //   61: invokeinterface 166 1 0
    //   66: iadd
    //   67: invokeinterface 170 2 0
    //   72: checkcast 29	com/alipay/mobile/framework/service/ext/security/bean/UserInfo
    //   75: astore 5
    //   77: aload_0
    //   78: aload 5
    //   80: invokespecial 172	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:a	(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    //   83: aload 5
    //   85: areturn
    //   86: astore 4
    //   88: aconst_null
    //   89: astore 5
    //   91: aload 4
    //   93: astore 6
    //   95: aload 6
    //   97: invokestatic 176	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   100: aload 5
    //   102: areturn
    //   103: astore 6
    //   105: goto -10 -> 95
    //   108: aconst_null
    //   109: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   9	41	86	java/lang/Exception
    //   46	77	86	java/lang/Exception
    //   77	83	103	java/lang/Exception
  }

  public UserInfo findUserInfoByLoginId(Dao<UserInfo, Integer> paramDao, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("logonId", Des.encrypt(paramString, "userInfo"));
    List localList = paramDao.queryForFieldValues(localHashMap);
    UserInfo localUserInfo = null;
    if (localList != null)
    {
      int i = localList.size();
      localUserInfo = null;
      if (i > 0)
        localUserInfo = (UserInfo)localList.get(-1 + localList.size());
    }
    a(localUserInfo);
    return localUserInfo;
  }

  // ERROR //
  public UserInfo findUserInfoBySql(android.database.sqlite.SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokestatic 187	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifne +789 -> 793
    //   7: aload_2
    //   8: invokestatic 187	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   11: ifeq +782 -> 793
    //   14: ldc 189
    //   16: astore 9
    //   18: iconst_1
    //   19: anewarray 191	java/lang/String
    //   22: astore 10
    //   24: aload 10
    //   26: iconst_0
    //   27: aload_3
    //   28: ldc 34
    //   30: invokestatic 95	com/alipay/mobile/common/security/Des:encrypt	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   33: aastore
    //   34: aload_1
    //   35: ldc 34
    //   37: aconst_null
    //   38: aload 9
    //   40: aload 10
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokevirtual 197	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 11
    //   50: aload 11
    //   52: astore 5
    //   54: aload 5
    //   56: ifnull +986 -> 1042
    //   59: aload 5
    //   61: invokeinterface 202 1 0
    //   66: iconst_1
    //   67: if_icmpne +975 -> 1042
    //   70: aload 5
    //   72: invokeinterface 206 1 0
    //   77: ifeq +965 -> 1042
    //   80: new 29	com/alipay/mobile/framework/service/ext/security/bean/UserInfo
    //   83: dup
    //   84: invokespecial 207	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:<init>	()V
    //   87: astore 13
    //   89: aload 5
    //   91: ldc 209
    //   93: invokeinterface 213 2 0
    //   98: istore 15
    //   100: iload 15
    //   102: iconst_m1
    //   103: if_icmpeq +25 -> 128
    //   106: aload 5
    //   108: iload 15
    //   110: invokeinterface 217 2 0
    //   115: ifle +862 -> 977
    //   118: iconst_1
    //   119: istore 16
    //   121: aload 13
    //   123: iload 16
    //   125: invokevirtual 221	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setAutoLogin	(Z)V
    //   128: aload 5
    //   130: ldc 223
    //   132: invokeinterface 213 2 0
    //   137: istore 17
    //   139: iload 17
    //   141: iconst_m1
    //   142: if_icmpeq +25 -> 167
    //   145: aload 5
    //   147: iload 17
    //   149: invokeinterface 217 2 0
    //   154: ifle +829 -> 983
    //   157: iconst_1
    //   158: istore 18
    //   160: aload 13
    //   162: iload 18
    //   164: invokevirtual 226	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setBindCard	(Z)V
    //   167: aload 5
    //   169: ldc 228
    //   171: invokeinterface 213 2 0
    //   176: istore 19
    //   178: iload 19
    //   180: iconst_m1
    //   181: if_icmpeq +17 -> 198
    //   184: aload 13
    //   186: aload 5
    //   188: iload 19
    //   190: invokeinterface 232 2 0
    //   195: invokevirtual 235	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setExtern_token	(Ljava/lang/String;)V
    //   198: aload 5
    //   200: ldc 237
    //   202: invokeinterface 213 2 0
    //   207: istore 20
    //   209: iload 20
    //   211: iconst_m1
    //   212: if_icmpeq +17 -> 229
    //   215: aload 13
    //   217: aload 5
    //   219: iload 20
    //   221: invokeinterface 232 2 0
    //   226: invokevirtual 240	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setGesturePwd	(Ljava/lang/String;)V
    //   229: aload 5
    //   231: ldc 242
    //   233: invokeinterface 213 2 0
    //   238: istore 21
    //   240: iload 21
    //   242: iconst_m1
    //   243: if_icmpeq +25 -> 268
    //   246: aload 5
    //   248: iload 21
    //   250: invokeinterface 217 2 0
    //   255: ifle +734 -> 989
    //   258: iconst_1
    //   259: istore 22
    //   261: aload 13
    //   263: iload 22
    //   265: invokevirtual 245	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setGestureSkip	(Z)V
    //   268: aload 5
    //   270: ldc 247
    //   272: invokeinterface 213 2 0
    //   277: istore 23
    //   279: iload 23
    //   281: iconst_m1
    //   282: if_icmpeq +17 -> 299
    //   285: aload 13
    //   287: aload 5
    //   289: iload 23
    //   291: invokeinterface 232 2 0
    //   296: invokevirtual 250	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setIsCertified	(Ljava/lang/String;)V
    //   299: aload 5
    //   301: ldc 252
    //   303: invokeinterface 213 2 0
    //   308: istore 24
    //   310: iload 24
    //   312: iconst_m1
    //   313: if_icmpeq +17 -> 330
    //   316: aload 13
    //   318: aload 5
    //   320: iload 24
    //   322: invokeinterface 232 2 0
    //   327: invokevirtual 255	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setLoginTime	(Ljava/lang/String;)V
    //   330: aload 5
    //   332: ldc_w 257
    //   335: invokeinterface 213 2 0
    //   340: istore 25
    //   342: iload 25
    //   344: iconst_m1
    //   345: if_icmpeq +17 -> 362
    //   348: aload 13
    //   350: aload 5
    //   352: iload 25
    //   354: invokeinterface 232 2 0
    //   359: invokevirtual 260	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setLoginToken	(Ljava/lang/String;)V
    //   362: aload 5
    //   364: ldc 179
    //   366: invokeinterface 213 2 0
    //   371: istore 26
    //   373: iload 26
    //   375: iconst_m1
    //   376: if_icmpeq +17 -> 393
    //   379: aload 13
    //   381: aload 5
    //   383: iload 26
    //   385: invokeinterface 232 2 0
    //   390: invokevirtual 56	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setLogonId	(Ljava/lang/String;)V
    //   393: aload 5
    //   395: ldc_w 262
    //   398: invokeinterface 213 2 0
    //   403: istore 27
    //   405: iload 27
    //   407: iconst_m1
    //   408: if_icmpeq +17 -> 425
    //   411: aload 13
    //   413: aload 5
    //   415: iload 27
    //   417: invokeinterface 232 2 0
    //   422: invokevirtual 62	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setMobileNumber	(Ljava/lang/String;)V
    //   425: aload 5
    //   427: ldc_w 264
    //   430: invokeinterface 213 2 0
    //   435: istore 28
    //   437: iload 28
    //   439: iconst_m1
    //   440: if_icmpeq +25 -> 465
    //   443: aload 5
    //   445: iload 28
    //   447: invokeinterface 217 2 0
    //   452: ifle +543 -> 995
    //   455: iconst_1
    //   456: istore 29
    //   458: aload 13
    //   460: iload 29
    //   462: invokevirtual 267	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setNoPayPwd	(Z)V
    //   465: aload 5
    //   467: ldc_w 269
    //   470: invokeinterface 213 2 0
    //   475: istore 30
    //   477: iload 30
    //   479: iconst_m1
    //   480: if_icmpeq +17 -> 497
    //   483: aload 13
    //   485: aload 5
    //   487: iload 30
    //   489: invokeinterface 232 2 0
    //   494: invokevirtual 272	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setRealNamed	(Ljava/lang/String;)V
    //   497: aload 5
    //   499: ldc_w 274
    //   502: invokeinterface 213 2 0
    //   507: istore 31
    //   509: iload 31
    //   511: iconst_m1
    //   512: if_icmpeq +17 -> 529
    //   515: aload 13
    //   517: aload 5
    //   519: iload 31
    //   521: invokeinterface 232 2 0
    //   526: invokevirtual 277	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setSessionId	(Ljava/lang/String;)V
    //   529: aload 5
    //   531: ldc_w 279
    //   534: invokeinterface 213 2 0
    //   539: istore 32
    //   541: iload 32
    //   543: iconst_m1
    //   544: if_icmpeq +17 -> 561
    //   547: aload 13
    //   549: aload 5
    //   551: iload 32
    //   553: invokeinterface 232 2 0
    //   558: invokevirtual 282	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setTaobaoSid	(Ljava/lang/String;)V
    //   561: aload 5
    //   563: ldc_w 284
    //   566: invokeinterface 213 2 0
    //   571: istore 33
    //   573: iload 33
    //   575: iconst_m1
    //   576: if_icmpeq +17 -> 593
    //   579: aload 13
    //   581: aload 5
    //   583: iload 33
    //   585: invokeinterface 232 2 0
    //   590: invokevirtual 68	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setUserAvatar	(Ljava/lang/String;)V
    //   593: aload 5
    //   595: ldc 133
    //   597: invokeinterface 213 2 0
    //   602: istore 34
    //   604: iload 34
    //   606: iconst_m1
    //   607: if_icmpeq +17 -> 624
    //   610: aload 13
    //   612: aload 5
    //   614: iload 34
    //   616: invokeinterface 232 2 0
    //   621: invokevirtual 44	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setUserId	(Ljava/lang/String;)V
    //   624: aload 5
    //   626: ldc_w 286
    //   629: invokeinterface 213 2 0
    //   634: istore 35
    //   636: iload 35
    //   638: iconst_m1
    //   639: if_icmpeq +17 -> 656
    //   642: aload 13
    //   644: aload 5
    //   646: iload 35
    //   648: invokeinterface 232 2 0
    //   653: invokevirtual 50	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setUserName	(Ljava/lang/String;)V
    //   656: aload 5
    //   658: ldc_w 288
    //   661: invokeinterface 213 2 0
    //   666: istore 36
    //   668: iload 36
    //   670: iconst_m1
    //   671: if_icmpeq +25 -> 696
    //   674: aload 5
    //   676: iload 36
    //   678: invokeinterface 217 2 0
    //   683: ifle +318 -> 1001
    //   686: iconst_1
    //   687: istore 37
    //   689: aload 13
    //   691: iload 37
    //   693: invokevirtual 291	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setWirelessUser	(Z)V
    //   696: aload 5
    //   698: ldc_w 293
    //   701: invokeinterface 213 2 0
    //   706: istore 38
    //   708: iload 38
    //   710: iconst_m1
    //   711: if_icmpeq +17 -> 728
    //   714: aload 13
    //   716: aload 5
    //   718: iload 38
    //   720: invokeinterface 232 2 0
    //   725: invokevirtual 80	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setGestureErrorNum	(Ljava/lang/String;)V
    //   728: aload 5
    //   730: ldc_w 295
    //   733: invokeinterface 213 2 0
    //   738: istore 39
    //   740: iload 39
    //   742: iconst_m1
    //   743: if_icmpeq +17 -> 760
    //   746: aload 13
    //   748: aload 5
    //   750: iload 39
    //   752: invokeinterface 232 2 0
    //   757: invokevirtual 86	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setGestureSkipStr	(Ljava/lang/String;)V
    //   760: aload 13
    //   762: astore 8
    //   764: aload_0
    //   765: aload 8
    //   767: invokespecial 172	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:a	(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    //   770: aload 5
    //   772: ifnull +10 -> 782
    //   775: aload 5
    //   777: invokeinterface 298 1 0
    //   782: aload_1
    //   783: ifnull +7 -> 790
    //   786: aload_1
    //   787: invokevirtual 299	android/database/sqlite/SQLiteDatabase:close	()V
    //   790: aload 8
    //   792: areturn
    //   793: aload_2
    //   794: invokestatic 187	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   797: ifne +94 -> 891
    //   800: aload_3
    //   801: invokestatic 187	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   804: ifeq +87 -> 891
    //   807: ldc_w 301
    //   810: astore 9
    //   812: iconst_1
    //   813: anewarray 191	java/lang/String
    //   816: astore 10
    //   818: aload 10
    //   820: iconst_0
    //   821: aload_2
    //   822: ldc 34
    //   824: invokestatic 95	com/alipay/mobile/common/security/Des:encrypt	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   827: aastore
    //   828: goto -794 -> 34
    //   831: astore 6
    //   833: aload 6
    //   835: astore 7
    //   837: aconst_null
    //   838: astore 5
    //   840: aconst_null
    //   841: astore 8
    //   843: aload_0
    //   844: getfield 18	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:a	Ljava/lang/String;
    //   847: new 303	java/lang/StringBuilder
    //   850: dup
    //   851: ldc_w 305
    //   854: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   857: aload 7
    //   859: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   862: invokevirtual 314	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   865: invokestatic 317	com/alipay/mobile/common/logging/LogCatLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   868: aload 5
    //   870: ifnull +10 -> 880
    //   873: aload 5
    //   875: invokeinterface 298 1 0
    //   880: aload_1
    //   881: ifnull -91 -> 790
    //   884: aload_1
    //   885: invokevirtual 299	android/database/sqlite/SQLiteDatabase:close	()V
    //   888: aload 8
    //   890: areturn
    //   891: aload_2
    //   892: invokestatic 187	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   895: ifne +72 -> 967
    //   898: aload_3
    //   899: invokestatic 187	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   902: ifne +65 -> 967
    //   905: ldc_w 319
    //   908: astore 9
    //   910: iconst_2
    //   911: anewarray 191	java/lang/String
    //   914: astore 10
    //   916: aload 10
    //   918: iconst_0
    //   919: aload_2
    //   920: ldc 34
    //   922: invokestatic 95	com/alipay/mobile/common/security/Des:encrypt	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   925: aastore
    //   926: aload 10
    //   928: iconst_1
    //   929: aload_3
    //   930: ldc 34
    //   932: invokestatic 95	com/alipay/mobile/common/security/Des:encrypt	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   935: aastore
    //   936: goto -902 -> 34
    //   939: astore 4
    //   941: aconst_null
    //   942: astore 5
    //   944: aload 5
    //   946: ifnull +10 -> 956
    //   949: aload 5
    //   951: invokeinterface 298 1 0
    //   956: aload_1
    //   957: ifnull +7 -> 964
    //   960: aload_1
    //   961: invokevirtual 299	android/database/sqlite/SQLiteDatabase:close	()V
    //   964: aload 4
    //   966: athrow
    //   967: aload_1
    //   968: ifnull +7 -> 975
    //   971: aload_1
    //   972: invokevirtual 299	android/database/sqlite/SQLiteDatabase:close	()V
    //   975: aconst_null
    //   976: areturn
    //   977: iconst_0
    //   978: istore 16
    //   980: goto -859 -> 121
    //   983: iconst_0
    //   984: istore 18
    //   986: goto -826 -> 160
    //   989: iconst_0
    //   990: istore 22
    //   992: goto -731 -> 261
    //   995: iconst_0
    //   996: istore 29
    //   998: goto -540 -> 458
    //   1001: iconst_0
    //   1002: istore 37
    //   1004: goto -315 -> 689
    //   1007: astore 4
    //   1009: goto -65 -> 944
    //   1012: astore 12
    //   1014: aload 12
    //   1016: astore 7
    //   1018: aconst_null
    //   1019: astore 8
    //   1021: goto -178 -> 843
    //   1024: astore 14
    //   1026: aload 13
    //   1028: astore 8
    //   1030: aload 14
    //   1032: astore 7
    //   1034: goto -191 -> 843
    //   1037: astore 7
    //   1039: goto -196 -> 843
    //   1042: aconst_null
    //   1043: astore 8
    //   1045: goto -281 -> 764
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	831	java/lang/Exception
    //   18	34	831	java/lang/Exception
    //   34	50	831	java/lang/Exception
    //   793	807	831	java/lang/Exception
    //   812	828	831	java/lang/Exception
    //   891	905	831	java/lang/Exception
    //   910	936	831	java/lang/Exception
    //   0	14	939	finally
    //   18	34	939	finally
    //   34	50	939	finally
    //   793	807	939	finally
    //   812	828	939	finally
    //   891	905	939	finally
    //   910	936	939	finally
    //   59	89	1007	finally
    //   89	100	1007	finally
    //   106	118	1007	finally
    //   121	128	1007	finally
    //   128	139	1007	finally
    //   145	157	1007	finally
    //   160	167	1007	finally
    //   167	178	1007	finally
    //   184	198	1007	finally
    //   198	209	1007	finally
    //   215	229	1007	finally
    //   229	240	1007	finally
    //   246	258	1007	finally
    //   261	268	1007	finally
    //   268	279	1007	finally
    //   285	299	1007	finally
    //   299	310	1007	finally
    //   316	330	1007	finally
    //   330	342	1007	finally
    //   348	362	1007	finally
    //   362	373	1007	finally
    //   379	393	1007	finally
    //   393	405	1007	finally
    //   411	425	1007	finally
    //   425	437	1007	finally
    //   443	455	1007	finally
    //   458	465	1007	finally
    //   465	477	1007	finally
    //   483	497	1007	finally
    //   497	509	1007	finally
    //   515	529	1007	finally
    //   529	541	1007	finally
    //   547	561	1007	finally
    //   561	573	1007	finally
    //   579	593	1007	finally
    //   593	604	1007	finally
    //   610	624	1007	finally
    //   624	636	1007	finally
    //   642	656	1007	finally
    //   656	668	1007	finally
    //   674	686	1007	finally
    //   689	696	1007	finally
    //   696	708	1007	finally
    //   714	728	1007	finally
    //   728	740	1007	finally
    //   746	760	1007	finally
    //   764	770	1007	finally
    //   843	868	1007	finally
    //   59	89	1012	java/lang/Exception
    //   89	100	1024	java/lang/Exception
    //   106	118	1024	java/lang/Exception
    //   121	128	1024	java/lang/Exception
    //   128	139	1024	java/lang/Exception
    //   145	157	1024	java/lang/Exception
    //   160	167	1024	java/lang/Exception
    //   167	178	1024	java/lang/Exception
    //   184	198	1024	java/lang/Exception
    //   198	209	1024	java/lang/Exception
    //   215	229	1024	java/lang/Exception
    //   229	240	1024	java/lang/Exception
    //   246	258	1024	java/lang/Exception
    //   261	268	1024	java/lang/Exception
    //   268	279	1024	java/lang/Exception
    //   285	299	1024	java/lang/Exception
    //   299	310	1024	java/lang/Exception
    //   316	330	1024	java/lang/Exception
    //   330	342	1024	java/lang/Exception
    //   348	362	1024	java/lang/Exception
    //   362	373	1024	java/lang/Exception
    //   379	393	1024	java/lang/Exception
    //   393	405	1024	java/lang/Exception
    //   411	425	1024	java/lang/Exception
    //   425	437	1024	java/lang/Exception
    //   443	455	1024	java/lang/Exception
    //   458	465	1024	java/lang/Exception
    //   465	477	1024	java/lang/Exception
    //   483	497	1024	java/lang/Exception
    //   497	509	1024	java/lang/Exception
    //   515	529	1024	java/lang/Exception
    //   529	541	1024	java/lang/Exception
    //   547	561	1024	java/lang/Exception
    //   561	573	1024	java/lang/Exception
    //   579	593	1024	java/lang/Exception
    //   593	604	1024	java/lang/Exception
    //   610	624	1024	java/lang/Exception
    //   624	636	1024	java/lang/Exception
    //   642	656	1024	java/lang/Exception
    //   656	668	1024	java/lang/Exception
    //   674	686	1024	java/lang/Exception
    //   689	696	1024	java/lang/Exception
    //   696	708	1024	java/lang/Exception
    //   714	728	1024	java/lang/Exception
    //   728	740	1024	java/lang/Exception
    //   746	760	1024	java/lang/Exception
    //   764	770	1037	java/lang/Exception
  }

  public List<UserInfo> queryUserInfoList(Dao<UserInfo, Integer> paramDao)
  {
    QueryBuilder localQueryBuilder = paramDao.queryBuilder();
    localQueryBuilder.orderBy("loginTime", false);
    List localList = localQueryBuilder.query();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      a((UserInfo)localIterator.next());
    return localList;
  }

  public boolean updateUserAutoLoginFlag(Dao<UserInfo, Integer> paramDao, String paramString)
  {
    try
    {
      UpdateBuilder localUpdateBuilder = paramDao.updateBuilder();
      localUpdateBuilder.updateColumnValue("autoLogin", Boolean.valueOf(false));
      if ((paramString != null) && (!"".equals(paramString)))
        localUpdateBuilder.where().eq("userId", Des.encrypt(paramString, "userInfo"));
      int i = localUpdateBuilder.update();
      boolean bool = false;
      if (i > 0)
      {
        UserInfoCache.userInfoMap = null;
        bool = true;
      }
      return bool;
    }
    catch (SQLException localSQLException)
    {
      LogCatLog.printStackTraceAndMore(localSQLException);
    }
    return false;
  }

  public boolean updateUserAutoLoginFlagByLogonId(Dao<UserInfo, Integer> paramDao, String paramString)
  {
    try
    {
      UpdateBuilder localUpdateBuilder = paramDao.updateBuilder();
      localUpdateBuilder.updateColumnValue("autoLogin", Boolean.valueOf(false));
      if ((paramString != null) && (!"".equals(paramString)))
        localUpdateBuilder.where().eq("logonId", Des.encrypt(paramString, "userInfo"));
      int i = localUpdateBuilder.update();
      boolean bool = false;
      if (i > 0)
      {
        UserInfoCache.userInfoMap = null;
        bool = true;
      }
      return bool;
    }
    catch (SQLException localSQLException)
    {
      LogCatLog.printStackTraceAndMore(localSQLException);
    }
    return false;
  }

  public void updateUserGesture(Dao<UserInfo, Integer> paramDao, UserInfo paramUserInfo)
  {
    UpdateBuilder localUpdateBuilder = paramDao.updateBuilder();
    localUpdateBuilder.updateColumnValue("gesturePwd", paramUserInfo.getGesturePwd());
    localUpdateBuilder.updateColumnValue("autoLogin", Boolean.valueOf(paramUserInfo.isAutoLogin()));
    localUpdateBuilder.updateColumnValue("gestureErrorNum", Des.encrypt(paramUserInfo.getGestureErrorNum(), GesutreContainUtil.get8BytesStr(Des.encrypt(paramUserInfo.getUserId(), "userInfo"))));
    localUpdateBuilder.updateColumnValue("gestureSkipStr", Des.encrypt(paramUserInfo.getGestureSkipStr(), GesutreContainUtil.get8BytesStr(Des.encrypt(paramUserInfo.getUserId(), "userInfo"))));
    localUpdateBuilder.where().eq("logonId", Des.encrypt(paramUserInfo.getLogonId(), "userInfo"));
    int i = localUpdateBuilder.update();
    LogCatLog.d("UserInfoDao", "更新手势的用户数为 : " + i);
    if (i > 0)
    {
      LogCatLog.d("UserInfoDao", "更新用户手势信息成功");
      UserInfoCache.userInfoMap = null;
      return;
    }
    LogCatLog.d("UserInfoDao", "没有更新用户手势信息");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.dao.UserInfoDao
 * JD-Core Version:    0.6.2
 */