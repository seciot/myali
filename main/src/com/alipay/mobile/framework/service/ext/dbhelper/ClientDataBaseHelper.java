package com.alipay.mobile.framework.service.ext.dbhelper;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.security.Des;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoSecurity;
import com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel;
import com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.gesture.util.GesutreContainUtil;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.stmt.Where;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.util.Iterator;
import java.util.List;

public class ClientDataBaseHelper extends OrmLiteSqliteOpenHelper
{
  public static final String DATABASE_NAME = "alipayclient.db";
  public static final String SCREATEKEY = "userInfo";
  private Dao<UserInfo, Integer> a = null;
  private Dao<DeviceInfoSecurity, Integer> b = null;
  private Dao<SecurityLevel, Integer> c = null;
  private Dao<TaoBaoUserInfo, Integer> d = null;

  public ClientDataBaseHelper(Context paramContext)
  {
    super(paramContext, "alipayclient.db", null, 8);
  }

  private void a()
  {
    try
    {
      Dao localDao = getTaoBaoUserInfoDao();
      List localList = localDao.queryForAll();
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          TaoBaoUserInfo localTaoBaoUserInfo = (TaoBaoUserInfo)localIterator.next();
          UpdateBuilder localUpdateBuilder = localDao.updateBuilder();
          if (localTaoBaoUserInfo.getUserId() != null)
            localUpdateBuilder.updateColumnValue("userId", Des.encrypt(localTaoBaoUserInfo.getUserId(), "userInfo"));
          if (localTaoBaoUserInfo.getTaoBaoUserId() != null)
            localUpdateBuilder.updateColumnValue("taoBaoUserId", Des.encrypt(localTaoBaoUserInfo.getTaoBaoUserId(), "userInfo"));
          localUpdateBuilder.where().eq("taoBaoUserId", localTaoBaoUserInfo.getTaoBaoUserId());
          localUpdateBuilder.update();
        }
      }
    }
    catch (android.database.SQLException localSQLException1)
    {
      localSQLException1.printStackTrace();
      return;
    }
    catch (java.sql.SQLException localSQLException)
    {
      localSQLException.printStackTrace();
    }
  }

  private void b()
  {
    try
    {
      Dao localDao = getUserDataDao();
      List localList = localDao.queryForAll();
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          UserInfo localUserInfo = (UserInfo)localIterator.next();
          UpdateBuilder localUpdateBuilder = localDao.updateBuilder();
          if (localUserInfo.getUserId() != null)
            localUpdateBuilder.updateColumnValue("userId", Des.encrypt(localUserInfo.getUserId(), "userInfo"));
          if (localUserInfo.getUserName() != null)
            localUpdateBuilder.updateColumnValue("userName", Des.encrypt(localUserInfo.getUserName(), "userInfo"));
          if (localUserInfo.getLogonId() != null)
            localUpdateBuilder.updateColumnValue("logonId", Des.encrypt(localUserInfo.getLogonId(), "userInfo"));
          if (localUserInfo.getMobileNumber() != null)
            localUpdateBuilder.updateColumnValue("mobileNumber", Des.encrypt(localUserInfo.getMobileNumber(), "userInfo"));
          if (localUserInfo.getUserAvatar() != null)
            localUpdateBuilder.updateColumnValue("userAvatar", Des.encrypt(localUserInfo.getUserAvatar(), "userInfo"));
          localUpdateBuilder.where().eq("userId", localUserInfo.getUserId());
          localUpdateBuilder.update();
        }
      }
    }
    catch (android.database.SQLException localSQLException1)
    {
      localSQLException1.printStackTrace();
      return;
    }
    catch (java.sql.SQLException localSQLException)
    {
      localSQLException.printStackTrace();
    }
  }

  private void c()
  {
    try
    {
      Dao localDao = getUserDataDao();
      List localList = localDao.queryForAll();
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          UserInfo localUserInfo = (UserInfo)localIterator.next();
          UpdateBuilder localUpdateBuilder = localDao.updateBuilder();
          if (localUserInfo.getGestureSkipStr() == null)
            localUpdateBuilder.updateColumnValue("gestureSkipStr", Des.encrypt(localUserInfo.isGestureSkip(), GesutreContainUtil.get8BytesStr(localUserInfo.getUserId())));
          if (localUserInfo.getGestureErrorNum() != null)
            localUpdateBuilder.updateColumnValue("gestureErrorNum", Des.encrypt(localUserInfo.getGestureErrorNum(), GesutreContainUtil.get8BytesStr(localUserInfo.getUserId())));
          localUpdateBuilder.where().eq("userId", localUserInfo.getUserId());
          localUpdateBuilder.update();
        }
      }
    }
    catch (android.database.SQLException localSQLException1)
    {
      localSQLException1.printStackTrace();
      return;
    }
    catch (java.sql.SQLException localSQLException)
    {
      localSQLException.printStackTrace();
    }
  }

  public void close()
  {
    super.close();
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = null;
  }

  public void createNewTable(Class<?> paramClass)
  {
    try
    {
      TableUtils.createTableIfNotExists(this.connectionSource, paramClass);
      return;
    }
    catch (java.sql.SQLException localSQLException)
    {
      LogCatLog.e(ClientDataBaseHelper.class.getName(), "创建新表失败", localSQLException);
    }
  }

  public Dao<DeviceInfoSecurity, Integer> getDeviceInfoSecurityDataDao()
  {
    if (this.b == null)
      this.b = getDao(DeviceInfoSecurity.class);
    return this.b;
  }

  public Dao<SecurityLevel, Integer> getSecurityLevelDao()
  {
    if (this.c == null)
      this.c = getDao(SecurityLevel.class);
    return this.c;
  }

  public Dao<TaoBaoUserInfo, Integer> getTaoBaoUserInfoDao()
  {
    if (this.d == null)
      this.d = getDao(TaoBaoUserInfo.class);
    return this.d;
  }

  public Dao<UserInfo, Integer> getUserDataDao()
  {
    if (this.a == null)
      this.a = getDao(UserInfo.class);
    return this.a;
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource)
  {
    try
    {
      LogCatLog.i(ClientDataBaseHelper.class.getName(), "onCreate");
      TableUtils.createTableIfNotExists(this.connectionSource, UserInfo.class);
      TableUtils.createTableIfNotExists(this.connectionSource, DeviceInfoSecurity.class);
      TableUtils.createTableIfNotExists(this.connectionSource, SecurityLevel.class);
      TableUtils.createTableIfNotExists(this.connectionSource, TaoBaoUserInfo.class);
      return;
    }
    catch (Exception localException)
    {
      LogCatLog.e(ClientDataBaseHelper.class.getName(), "创建数据库失败", localException);
      LogCatLog.printStackTraceAndMore(localException);
    }
  }

  // ERROR //
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: iload_3
    //   4: bipush 8
    //   6: if_icmpeq +556 -> 562
    //   9: iload 4
    //   11: bipush 8
    //   13: if_icmpne +549 -> 562
    //   16: iload_3
    //   17: iconst_2
    //   18: if_icmpge +19 -> 37
    //   21: ldc 2
    //   23: invokevirtual 187	java/lang/Class:getName	()Ljava/lang/String;
    //   26: ldc 224
    //   28: invokestatic 226	com/alipay/mobile/common/logging/LogCatLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   31: aload_1
    //   32: ldc 228
    //   34: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   37: iload_3
    //   38: iconst_5
    //   39: if_icmpge +342 -> 381
    //   42: ldc 236
    //   44: ldc 238
    //   46: invokestatic 214	com/alipay/mobile/common/logging/LogCatLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: aload_1
    //   50: ldc 240
    //   52: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   55: aload_1
    //   56: ldc 242
    //   58: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   61: ldc 236
    //   63: ldc 244
    //   65: invokestatic 214	com/alipay/mobile/common/logging/LogCatLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   68: aload_1
    //   69: ldc 246
    //   71: iconst_0
    //   72: anewarray 248	java/lang/String
    //   75: invokevirtual 252	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   78: astore 13
    //   80: aload 13
    //   82: astore 8
    //   84: aconst_null
    //   85: astore 5
    //   87: aload 8
    //   89: ifnull +264 -> 353
    //   92: aload 8
    //   94: invokeinterface 257 1 0
    //   99: pop
    //   100: aload 8
    //   102: invokeinterface 260 1 0
    //   107: istore 15
    //   109: aconst_null
    //   110: astore 5
    //   112: iload 15
    //   114: ifne +239 -> 353
    //   117: new 262	android/content/ContentValues
    //   120: dup
    //   121: invokespecial 263	android/content/ContentValues:<init>	()V
    //   124: astore 16
    //   126: aload 16
    //   128: ldc_w 265
    //   131: aload 8
    //   133: iconst_0
    //   134: invokeinterface 269 2 0
    //   139: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   142: aload 16
    //   144: ldc_w 274
    //   147: aload 8
    //   149: iconst_1
    //   150: invokeinterface 269 2 0
    //   155: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   158: aload 16
    //   160: ldc_w 276
    //   163: aload 8
    //   165: iconst_2
    //   166: invokeinterface 269 2 0
    //   171: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: aload 16
    //   176: ldc_w 278
    //   179: aload 8
    //   181: iconst_3
    //   182: invokeinterface 282 2 0
    //   187: invokestatic 288	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   190: invokevirtual 291	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   193: aload 16
    //   195: ldc_w 293
    //   198: aload 8
    //   200: iconst_4
    //   201: invokeinterface 269 2 0
    //   206: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload 16
    //   211: ldc_w 295
    //   214: aload 8
    //   216: iconst_5
    //   217: invokeinterface 269 2 0
    //   222: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   225: aload 16
    //   227: ldc_w 297
    //   230: ldc_w 299
    //   233: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   236: aload 16
    //   238: ldc_w 301
    //   241: aload 8
    //   243: bipush 6
    //   245: invokeinterface 269 2 0
    //   250: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   253: aload 16
    //   255: ldc_w 303
    //   258: aload 8
    //   260: bipush 7
    //   262: invokeinterface 269 2 0
    //   267: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   270: aload 16
    //   272: ldc_w 305
    //   275: iconst_1
    //   276: invokestatic 310	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   279: invokevirtual 313	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   282: aload 16
    //   284: ldc_w 315
    //   287: invokestatic 321	java/lang/System:currentTimeMillis	()J
    //   290: invokestatic 288	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   293: invokevirtual 291	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   296: aload 16
    //   298: ldc_w 323
    //   301: aload 8
    //   303: bipush 9
    //   305: invokeinterface 327 2 0
    //   310: invokestatic 332	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   313: invokevirtual 335	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   316: aload 16
    //   318: ldc 76
    //   320: aload 8
    //   322: bipush 10
    //   324: invokeinterface 269 2 0
    //   329: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   332: aload 16
    //   334: ldc_w 293
    //   337: aload 8
    //   339: bipush 11
    //   341: invokeinterface 269 2 0
    //   346: invokevirtual 272	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   349: aload 16
    //   351: astore 5
    //   353: aload 8
    //   355: ifnull +10 -> 365
    //   358: aload 8
    //   360: invokeinterface 336 1 0
    //   365: aload 5
    //   367: ifnull +14 -> 381
    //   370: aload_1
    //   371: ldc_w 338
    //   374: aconst_null
    //   375: aload 5
    //   377: invokevirtual 342	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   380: pop2
    //   381: iload_3
    //   382: bipush 7
    //   384: if_icmpge +36 -> 420
    //   387: aload_1
    //   388: ldc_w 344
    //   391: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   394: aload_1
    //   395: ldc_w 346
    //   398: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   401: iload_3
    //   402: iconst_5
    //   403: if_icmplt +17 -> 420
    //   406: aload_1
    //   407: ldc_w 348
    //   410: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   413: aload_1
    //   414: ldc_w 350
    //   417: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   420: iload_3
    //   421: bipush 8
    //   423: if_icmpge +21 -> 444
    //   426: aload_1
    //   427: ldc_w 352
    //   430: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   433: aload_1
    //   434: ldc_w 354
    //   437: invokevirtual 234	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   440: aload_0
    //   441: invokespecial 356	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:c	()V
    //   444: iload_3
    //   445: iconst_3
    //   446: if_icmpge +22 -> 468
    //   449: ldc 2
    //   451: invokevirtual 187	java/lang/Class:getName	()Ljava/lang/String;
    //   454: ldc_w 358
    //   457: invokestatic 226	com/alipay/mobile/common/logging/LogCatLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   460: aload_0
    //   461: invokespecial 360	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:b	()V
    //   464: aload_0
    //   465: invokespecial 362	com/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper:a	()V
    //   468: iload_3
    //   469: iconst_4
    //   470: if_icmpge +11 -> 481
    //   473: ldc 236
    //   475: ldc_w 364
    //   478: invokestatic 214	com/alipay/mobile/common/logging/LogCatLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   481: return
    //   482: astore 9
    //   484: aconst_null
    //   485: astore 8
    //   487: ldc 236
    //   489: ldc_w 366
    //   492: aload 9
    //   494: invokestatic 195	com/alipay/mobile/common/logging/LogCatLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   497: aload 8
    //   499: ifnull -134 -> 365
    //   502: aload 8
    //   504: invokeinterface 336 1 0
    //   509: goto -144 -> 365
    //   512: astore 7
    //   514: aconst_null
    //   515: astore 8
    //   517: aload 8
    //   519: ifnull +10 -> 529
    //   522: aload 8
    //   524: invokeinterface 336 1 0
    //   529: aload 7
    //   531: athrow
    //   532: astore 10
    //   534: ldc 236
    //   536: ldc_w 368
    //   539: aload 10
    //   541: invokestatic 195	com/alipay/mobile/common/logging/LogCatLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   544: goto -163 -> 381
    //   547: astore 6
    //   549: ldc 236
    //   551: ldc_w 370
    //   554: aload 6
    //   556: invokestatic 195	com/alipay/mobile/common/logging/LogCatLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   559: goto -158 -> 401
    //   562: ldc 2
    //   564: invokevirtual 187	java/lang/Class:getName	()Ljava/lang/String;
    //   567: new 144	java/lang/StringBuilder
    //   570: dup
    //   571: ldc_w 372
    //   574: invokespecial 374	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   577: iload_3
    //   578: invokevirtual 377	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   581: ldc_w 379
    //   584: invokevirtual 382	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   587: iload 4
    //   589: invokevirtual 377	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   592: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   595: invokestatic 226	com/alipay/mobile/common/logging/LogCatLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   598: return
    //   599: astore 7
    //   601: goto -84 -> 517
    //   604: astore 9
    //   606: aconst_null
    //   607: astore 5
    //   609: goto -122 -> 487
    //   612: astore 9
    //   614: aload 16
    //   616: astore 5
    //   618: goto -131 -> 487
    //
    // Exception table:
    //   from	to	target	type
    //   68	80	482	java/lang/Exception
    //   68	80	512	finally
    //   370	381	532	java/lang/Exception
    //   394	401	547	java/lang/Exception
    //   92	109	599	finally
    //   117	126	599	finally
    //   126	349	599	finally
    //   487	497	599	finally
    //   92	109	604	java/lang/Exception
    //   117	126	604	java/lang/Exception
    //   126	349	612	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.dbhelper.ClientDataBaseHelper
 * JD-Core Version:    0.6.2
 */