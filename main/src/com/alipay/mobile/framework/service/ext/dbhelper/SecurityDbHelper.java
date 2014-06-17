package com.alipay.mobile.framework.service.ext.dbhelper;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.util.LruCache;
import android.text.TextUtils;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel;
import com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.dao.SecurityLevelDao;
import com.alipay.mobile.framework.service.ext.security.dao.TaoBaoUserInfoDao;
import com.alipay.mobile.framework.service.ext.security.dao.UserInfoCache;
import com.alipay.mobile.framework.service.ext.security.dao.UserInfoDao;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import com.j256.ormlite.dao.Dao;
import java.util.HashMap;

public class SecurityDbHelper
{
  static SecurityDbHelper b;
  final String a = "SecurityDbHelper";
  ClientDataBaseHelper c;
  LruCache<String, Boolean> d = new LruCache(2);

  public static SecurityDbHelper getInstance(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new SecurityDbHelper();
      SecurityDbHelper localSecurityDbHelper = b;
      return localSecurityDbHelper;
    }
    finally
    {
    }
  }

  // ERROR //
  public boolean addDeviceInfo(com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoSecurity paramDeviceInfoSecurity)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   6: invokevirtual 49	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getDeviceInfoSecurityDataDao	()Lcom/j256/ormlite/dao/Dao;
    //   9: astore 7
    //   11: new 51	com/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao
    //   14: dup
    //   15: invokespecial 52	com/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao:<init>	()V
    //   18: aload 7
    //   20: aload_1
    //   21: invokevirtual 55	com/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao:addDeviceInfo	(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;)V
    //   24: aload_0
    //   25: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   28: iconst_1
    //   29: istore 5
    //   31: aload_0
    //   32: monitorexit
    //   33: iload 5
    //   35: ireturn
    //   36: astore 6
    //   38: aload 6
    //   40: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   43: aload_0
    //   44: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   47: iconst_0
    //   48: istore 5
    //   50: goto -19 -> 31
    //   53: astore 4
    //   55: aload 4
    //   57: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   60: aload_0
    //   61: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   64: goto -17 -> 47
    //   67: astore_3
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_3
    //   71: athrow
    //   72: astore_2
    //   73: aload_0
    //   74: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   77: aload_2
    //   78: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	24	36	android/database/SQLException
    //   2	24	53	java/sql/SQLException
    //   24	28	67	finally
    //   43	47	67	finally
    //   60	64	67	finally
    //   73	79	67	finally
    //   2	24	72	finally
    //   38	43	72	finally
    //   55	60	72	finally
  }

  public void addSecurityLevel(SecurityLevel paramSecurityLevel)
  {
    try
    {
      Dao localDao = getHelper().getSecurityLevelDao();
      new SecurityLevelDao().addSecurityLevel(localDao, paramSecurityLevel);
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.e("SecurityDbHelper", localSQLException.getMessage());
        close();
      }
    }
    finally
    {
      close();
    }
  }

  public void addTaobaoUserInfo(TaoBaoUserInfo paramTaoBaoUserInfo)
  {
    try
    {
      Dao localDao = getHelper().getTaoBaoUserInfoDao();
      new TaoBaoUserInfoDao().addTaoBaoUserInfo(localDao, paramTaoBaoUserInfo);
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.printStackTraceAndMore(localSQLException);
        close();
      }
    }
    finally
    {
      close();
    }
  }

  public boolean addUserInfo(UserInfo paramUserInfo)
  {
    try
    {
      Dao localDao = getHelper().getUserDataDao();
      new UserInfoDao().addUserInfo(localDao, paramUserInfo);
      LogCatLog.d("SecurityDbHelper", "增加用户信息成功");
      bool = true;
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.printStackTraceAndMore(localSQLException);
        close();
        boolean bool = false;
      }
    }
    finally
    {
      close();
    }
  }

  // ERROR //
  public boolean cleanLocalAccount(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 19
    //   4: ldc 115
    //   6: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   9: aload_0
    //   10: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   13: invokevirtual 101	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getUserDataDao	()Lcom/j256/ormlite/dao/Dao;
    //   16: astore 7
    //   18: new 103	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao
    //   21: dup
    //   22: invokespecial 104	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:<init>	()V
    //   25: aload 7
    //   27: aload_1
    //   28: invokevirtual 118	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:cleanLocalAccount	(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z
    //   31: istore 5
    //   33: ldc 19
    //   35: new 120	java/lang/StringBuilder
    //   38: dup
    //   39: ldc 122
    //   41: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_1
    //   45: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: ldc 131
    //   50: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: iload 5
    //   55: invokevirtual 134	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   58: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: aload_0
    //   65: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   68: aload_0
    //   69: monitorexit
    //   70: iload 5
    //   72: ireturn
    //   73: astore 6
    //   75: aload 6
    //   77: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   80: aload_0
    //   81: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   84: iconst_0
    //   85: istore 5
    //   87: goto -19 -> 68
    //   90: astore 4
    //   92: aload 4
    //   94: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   97: aload_0
    //   98: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   101: goto -17 -> 84
    //   104: astore_2
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_2
    //   108: athrow
    //   109: astore_3
    //   110: aload_0
    //   111: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   114: aload_3
    //   115: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   9	64	73	android/database/SQLException
    //   9	64	90	java/sql/SQLException
    //   2	9	104	finally
    //   64	68	104	finally
    //   80	84	104	finally
    //   97	101	104	finally
    //   110	116	104	finally
    //   9	64	109	finally
    //   75	80	109	finally
    //   92	97	109	finally
  }

  protected void close()
  {
    try
    {
      OpenHelperManager.releaseHelper();
      this.c = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void deleteSecurityLevel(String paramString)
  {
    try
    {
      Dao localDao = getHelper().getSecurityLevelDao();
      new SecurityLevelDao().deleteSecurityLevel(localDao, paramString);
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.e("SecurityDbHelper", localSQLException.getMessage());
        close();
      }
    }
    finally
    {
      close();
    }
  }

  public void deleteTaobaoUserInfo(String paramString)
  {
    try
    {
      Dao localDao = getHelper().getTaoBaoUserInfoDao();
      new TaoBaoUserInfoDao().deleteTaobaoUserInfo(localDao, paramString);
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.printStackTraceAndMore(localSQLException);
        close();
      }
    }
    finally
    {
      close();
    }
  }

  public void deleteTaobaoUserInfoByUserId(String paramString)
  {
    try
    {
      Dao localDao = getHelper().getTaoBaoUserInfoDao();
      new TaoBaoUserInfoDao().deleteTaobaoUserInfoByUserId(localDao, paramString);
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.printStackTraceAndMore(localSQLException);
        close();
      }
    }
    finally
    {
      close();
    }
  }

  // ERROR //
  public com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoSecurity findDeviceInfoSecurity()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   6: invokevirtual 49	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getDeviceInfoSecurityDataDao	()Lcom/j256/ormlite/dao/Dao;
    //   9: astore 8
    //   11: new 51	com/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao
    //   14: dup
    //   15: invokespecial 52	com/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao:<init>	()V
    //   18: aload 8
    //   20: invokevirtual 159	com/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao:findDeviceInfoSecurity	(Lcom/j256/ormlite/dao/Dao;)Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;
    //   23: astore 9
    //   25: aload 9
    //   27: astore 4
    //   29: ldc 19
    //   31: ldc 161
    //   33: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   36: aload_0
    //   37: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   40: aload_0
    //   41: monitorexit
    //   42: aload 4
    //   44: areturn
    //   45: astore 6
    //   47: aconst_null
    //   48: astore 4
    //   50: aload 6
    //   52: astore 7
    //   54: aload 7
    //   56: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   59: aload_0
    //   60: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   63: goto -23 -> 40
    //   66: astore_2
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_2
    //   70: athrow
    //   71: astore_3
    //   72: aconst_null
    //   73: astore 4
    //   75: aload_3
    //   76: astore 5
    //   78: aload 5
    //   80: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   83: aload_0
    //   84: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   87: goto -47 -> 40
    //   90: astore_1
    //   91: aload_0
    //   92: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   95: aload_1
    //   96: athrow
    //   97: astore 5
    //   99: goto -21 -> 78
    //   102: astore 7
    //   104: goto -50 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   2	25	45	android/database/SQLException
    //   36	40	66	finally
    //   59	63	66	finally
    //   83	87	66	finally
    //   91	97	66	finally
    //   2	25	71	java/sql/SQLException
    //   2	25	90	finally
    //   29	36	90	finally
    //   54	59	90	finally
    //   78	83	90	finally
    //   29	36	97	java/sql/SQLException
    //   29	36	102	android/database/SQLException
  }

  public SecurityLevel findSecurityLevel(String paramString)
  {
    try
    {
      Dao localDao = getHelper().getSecurityLevelDao();
      SecurityLevel localSecurityLevel2 = new SecurityLevelDao().findSecurityLevel(localDao, paramString);
      localSecurityLevel1 = localSecurityLevel2;
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.e("SecurityDbHelper", localSQLException.getMessage());
        close();
        SecurityLevel localSecurityLevel1 = null;
      }
    }
    finally
    {
      close();
    }
  }

  // ERROR //
  public UserInfo findUserInfo(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 174	com/alipay/mobile/framework/service/ext/security/dao/UserInfoCache:userInfoMap	Ljava/util/HashMap;
    //   5: astore_3
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_3
    //   10: ifnull +36 -> 46
    //   13: getstatic 174	com/alipay/mobile/framework/service/ext/security/dao/UserInfoCache:userInfoMap	Ljava/util/HashMap;
    //   16: aload_1
    //   17: invokevirtual 180	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   20: checkcast 182	com/alipay/mobile/framework/service/ext/security/bean/UserInfo
    //   23: astore 5
    //   25: aload 5
    //   27: ifnull +15 -> 42
    //   30: ldc 19
    //   32: ldc 184
    //   34: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aload_0
    //   38: monitorexit
    //   39: aload 5
    //   41: areturn
    //   42: aload 5
    //   44: astore 4
    //   46: ldc 19
    //   48: ldc 186
    //   50: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   53: aload_0
    //   54: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   57: invokevirtual 101	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getUserDataDao	()Lcom/j256/ormlite/dao/Dao;
    //   60: astore 11
    //   62: new 103	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao
    //   65: dup
    //   66: invokespecial 104	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:<init>	()V
    //   69: aload 11
    //   71: aload_1
    //   72: invokevirtual 189	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:findUserInfo	(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   75: astore 12
    //   77: aload 12
    //   79: astore 5
    //   81: getstatic 174	com/alipay/mobile/framework/service/ext/security/dao/UserInfoCache:userInfoMap	Ljava/util/HashMap;
    //   84: ifnonnull +13 -> 97
    //   87: new 176	java/util/HashMap
    //   90: dup
    //   91: invokespecial 190	java/util/HashMap:<init>	()V
    //   94: putstatic 174	com/alipay/mobile/framework/service/ext/security/dao/UserInfoCache:userInfoMap	Ljava/util/HashMap;
    //   97: aload 5
    //   99: ifnull +13 -> 112
    //   102: getstatic 174	com/alipay/mobile/framework/service/ext/security/dao/UserInfoCache:userInfoMap	Ljava/util/HashMap;
    //   105: aload_1
    //   106: aload 5
    //   108: invokevirtual 194	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   111: pop
    //   112: aload_0
    //   113: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   116: goto -79 -> 37
    //   119: astore_2
    //   120: aload_0
    //   121: monitorexit
    //   122: aload_2
    //   123: athrow
    //   124: astore 9
    //   126: aload 4
    //   128: astore 5
    //   130: aload 9
    //   132: astore 10
    //   134: aload 10
    //   136: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   139: aload_0
    //   140: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   143: goto -106 -> 37
    //   146: astore 7
    //   148: aload 4
    //   150: astore 5
    //   152: aload 7
    //   154: astore 8
    //   156: aload 8
    //   158: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   161: aload_0
    //   162: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   165: goto -128 -> 37
    //   168: astore 6
    //   170: aload_0
    //   171: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   174: aload 6
    //   176: athrow
    //   177: astore 8
    //   179: goto -23 -> 156
    //   182: astore 10
    //   184: goto -50 -> 134
    //
    // Exception table:
    //   from	to	target	type
    //   2	6	119	finally
    //   13	25	119	finally
    //   30	37	119	finally
    //   112	116	119	finally
    //   139	143	119	finally
    //   161	165	119	finally
    //   170	177	119	finally
    //   46	77	124	android/database/SQLException
    //   46	77	146	java/sql/SQLException
    //   46	77	168	finally
    //   81	97	168	finally
    //   102	112	168	finally
    //   134	139	168	finally
    //   156	161	168	finally
    //   81	97	177	java/sql/SQLException
    //   102	112	177	java/sql/SQLException
    //   81	97	182	android/database/SQLException
    //   102	112	182	android/database/SQLException
  }

  public UserInfo findUserInfoByLoginId(String paramString)
  {
    try
    {
      LogCatLog.d("SecurityDbHelper", "查询出本地用户详细信息");
      Dao localDao = getHelper().getUserDataDao();
      UserInfo localUserInfo2 = new UserInfoDao().findUserInfoByLoginId(localDao, paramString);
      localUserInfo1 = localUserInfo2;
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.printStackTraceAndMore(localSQLException);
        close();
        UserInfo localUserInfo1 = null;
      }
    }
    finally
    {
      close();
    }
  }

  public UserInfo findUserInfoBySql(String paramString1, String paramString2)
  {
    try
    {
      UserInfo localUserInfo;
      if ((!TextUtils.isEmpty(paramString1)) && (UserInfoCache.userInfoMap != null))
      {
        localUserInfo = (UserInfo)UserInfoCache.userInfoMap.get(paramString1);
        if (localUserInfo != null)
          LogCatLog.d("SecurityDbHelper", "从缓存获取用户信息");
      }
      while (true)
      {
        return localUserInfo;
        SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(AlipayApplication.getInstance().getDatabasePath("alipayclient.db"), null);
        localUserInfo = new UserInfoDao().findUserInfoBySql(localSQLiteDatabase, paramString1, paramString2);
        if (UserInfoCache.userInfoMap == null)
          UserInfoCache.userInfoMap = new HashMap();
        if (localUserInfo != null)
          UserInfoCache.userInfoMap.put(paramString1, localUserInfo);
      }
    }
    finally
    {
    }
  }

  public ClientDataBaseHelper getHelper()
  {
    if (this.c == null);
    try
    {
      if (this.c == null)
        this.c = ((ClientDataBaseHelper)OpenHelperManager.getHelper(AlipayApplication.getInstance(), ClientDataBaseHelper.class));
      return this.c;
    }
    finally
    {
    }
  }

  public Boolean getSecurityLevelCache(String paramString)
  {
    try
    {
      localBoolean = (Boolean)this.d.get(paramString);
      return localBoolean;
    }
    catch (Exception localException)
    {
      while (true)
      {
        LogCatLog.e("SecurityDbHelper", localException.getMessage());
        Boolean localBoolean = null;
      }
    }
    finally
    {
    }
  }

  public void putSecurityLevelCache(String paramString, Boolean paramBoolean)
  {
    try
    {
      this.d.put(paramString, paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        LogCatLog.e("SecurityDbHelper", localException.getMessage());
    }
    finally
    {
    }
  }

  public TaoBaoUserInfo queryTaoBaoUserByLoginId(String paramString)
  {
    try
    {
      Dao localDao = getHelper().getTaoBaoUserInfoDao();
      TaoBaoUserInfo localTaoBaoUserInfo2 = new TaoBaoUserInfoDao().findTaobaoUserInfo(localDao, paramString);
      localTaoBaoUserInfo1 = localTaoBaoUserInfo2;
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.printStackTraceAndMore(localSQLException);
        close();
        TaoBaoUserInfo localTaoBaoUserInfo1 = null;
      }
    }
    finally
    {
      close();
    }
  }

  // ERROR //
  public java.util.List<TaoBaoUserInfo> queryTaobaoUserList()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 249	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 250	java/util/ArrayList:<init>	()V
    //   9: astore_1
    //   10: aload_0
    //   11: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   14: invokevirtual 89	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getTaoBaoUserInfoDao	()Lcom/j256/ormlite/dao/Dao;
    //   17: astore 6
    //   19: new 91	com/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao
    //   22: dup
    //   23: invokespecial 92	com/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao:<init>	()V
    //   26: aload 6
    //   28: invokevirtual 253	com/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao:queryTaobaoUserList	(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;
    //   31: astore 7
    //   33: aload 7
    //   35: astore_1
    //   36: aload_0
    //   37: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: areturn
    //   44: astore 5
    //   46: aload 5
    //   48: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   51: aload_0
    //   52: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   55: goto -15 -> 40
    //   58: astore_3
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_3
    //   62: athrow
    //   63: astore 4
    //   65: aload 4
    //   67: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   70: aload_0
    //   71: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   74: goto -34 -> 40
    //   77: astore_2
    //   78: aload_0
    //   79: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   82: aload_2
    //   83: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   10	33	44	android/database/SQLException
    //   2	10	58	finally
    //   36	40	58	finally
    //   51	55	58	finally
    //   70	74	58	finally
    //   78	84	58	finally
    //   10	33	63	java/sql/SQLException
    //   10	33	77	finally
    //   46	51	77	finally
    //   65	70	77	finally
  }

  // ERROR //
  public java.util.List<UserInfo> queryUserInfoList()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 249	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 250	java/util/ArrayList:<init>	()V
    //   9: astore_1
    //   10: ldc 19
    //   12: ldc_w 256
    //   15: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   18: aload_0
    //   19: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   22: invokevirtual 101	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getUserDataDao	()Lcom/j256/ormlite/dao/Dao;
    //   25: astore 6
    //   27: new 103	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao
    //   30: dup
    //   31: invokespecial 104	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:<init>	()V
    //   34: aload 6
    //   36: invokevirtual 258	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:queryUserInfoList	(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;
    //   39: astore 7
    //   41: aload 7
    //   43: astore_1
    //   44: aload_0
    //   45: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: areturn
    //   52: astore 5
    //   54: aload 5
    //   56: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   59: aload_0
    //   60: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   63: goto -15 -> 48
    //   66: astore_3
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_3
    //   70: athrow
    //   71: astore 4
    //   73: aload 4
    //   75: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   78: aload_0
    //   79: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   82: goto -34 -> 48
    //   85: astore_2
    //   86: aload_0
    //   87: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   90: aload_2
    //   91: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   10	41	52	android/database/SQLException
    //   2	10	66	finally
    //   44	48	66	finally
    //   59	63	66	finally
    //   78	82	66	finally
    //   86	92	66	finally
    //   10	41	71	java/sql/SQLException
    //   10	41	85	finally
    //   54	59	85	finally
    //   73	78	85	finally
  }

  public void updateSecurityLevelRefresh(String paramString1, Boolean paramBoolean, String paramString2)
  {
    if ((paramString1 != null) && (paramBoolean != null));
    try
    {
      this.d.put("refreshCache", paramBoolean);
      Dao localDao = getHelper().getSecurityLevelDao();
      new SecurityLevelDao().updateSecurityLevelRefresh(localDao, paramString1, paramBoolean, paramString2);
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.e("SecurityDbHelper", localSQLException.getMessage());
        close();
      }
    }
    finally
    {
      close();
    }
  }

  // ERROR //
  public boolean updateUserAutoLoginFlag(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   6: invokevirtual 101	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getUserDataDao	()Lcom/j256/ormlite/dao/Dao;
    //   9: astore 6
    //   11: new 103	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao
    //   14: dup
    //   15: invokespecial 104	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:<init>	()V
    //   18: aload 6
    //   20: aload_1
    //   21: invokevirtual 268	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:updateUserAutoLoginFlag	(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z
    //   24: istore 5
    //   26: iload 5
    //   28: ifeq +20 -> 48
    //   31: ldc 19
    //   33: ldc_w 270
    //   36: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: aload_0
    //   40: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   43: aload_0
    //   44: monitorexit
    //   45: iload 5
    //   47: ireturn
    //   48: ldc 19
    //   50: ldc_w 272
    //   53: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: goto -17 -> 39
    //   59: astore 4
    //   61: aload 4
    //   63: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   66: aload_0
    //   67: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   70: iconst_0
    //   71: istore 5
    //   73: goto -30 -> 43
    //   76: astore_2
    //   77: aload_0
    //   78: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   81: aload_2
    //   82: athrow
    //   83: astore_3
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_3
    //   87: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	java/lang/Exception
    //   31	39	59	java/lang/Exception
    //   48	56	59	java/lang/Exception
    //   2	26	76	finally
    //   31	39	76	finally
    //   48	56	76	finally
    //   61	66	76	finally
    //   39	43	83	finally
    //   66	70	83	finally
    //   77	83	83	finally
  }

  // ERROR //
  public boolean updateUserAutoLoginFlagByLogonId(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 43	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:getHelper	()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    //   6: invokevirtual 101	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:getUserDataDao	()Lcom/j256/ormlite/dao/Dao;
    //   9: astore 6
    //   11: new 103	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao
    //   14: dup
    //   15: invokespecial 104	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:<init>	()V
    //   18: aload 6
    //   20: aload_1
    //   21: invokevirtual 275	com/alipay/mobile/framework/service/ext/security/dao/UserInfoDao:updateUserAutoLoginFlagByLogonId	(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z
    //   24: istore 5
    //   26: iload 5
    //   28: ifeq +20 -> 48
    //   31: ldc 19
    //   33: ldc_w 270
    //   36: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: aload_0
    //   40: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   43: aload_0
    //   44: monitorexit
    //   45: iload 5
    //   47: ireturn
    //   48: ldc 19
    //   50: ldc_w 272
    //   53: invokestatic 111	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: goto -17 -> 39
    //   59: astore 4
    //   61: aload 4
    //   63: invokestatic 64	com/alipay/mobile/common/logging/LogCatLog:printStackTraceAndMore	(Ljava/lang/Throwable;)V
    //   66: aload_0
    //   67: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   70: iconst_0
    //   71: istore 5
    //   73: goto -30 -> 43
    //   76: astore_2
    //   77: aload_0
    //   78: invokevirtual 58	com/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper:close	()V
    //   81: aload_2
    //   82: athrow
    //   83: astore_3
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_3
    //   87: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	java/lang/Exception
    //   31	39	59	java/lang/Exception
    //   48	56	59	java/lang/Exception
    //   2	26	76	finally
    //   31	39	76	finally
    //   48	56	76	finally
    //   61	66	76	finally
    //   39	43	83	finally
    //   66	70	83	finally
    //   77	83	83	finally
  }

  public boolean updateUserGesture(UserInfo paramUserInfo)
  {
    try
    {
      Dao localDao = getHelper().getUserDataDao();
      new UserInfoDao().updateUserGesture(localDao, paramUserInfo);
      LogCatLog.d("SecurityDbHelper", "更新手势信息成功");
      bool = true;
    }
    catch (android.database.SQLException localSQLException1)
    {
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
      {
        LogCatLog.printStackTraceAndMore(localSQLException);
        close();
        boolean bool = false;
      }
    }
    finally
    {
      close();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper
 * JD-Core Version:    0.6.2
 */