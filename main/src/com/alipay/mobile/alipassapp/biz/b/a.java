package com.alipay.mobile.alipassapp.biz.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.alipay.mobile.alipassapp.biz.bean.AlipassDetailCache;
import com.alipay.mobile.alipassapp.biz.bean.AlipassListCache;
import com.alipay.mobile.alipassapp.biz.bean.AlipassListStatus;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOffline;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOfflineV2;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;

public class a extends OrmLiteSqliteOpenHelper
{
  private static final String a = a.class.getName();
  private Dao<AlipassListCache, Integer> b = null;
  private Dao<AlipassDetailCache, Integer> c = null;
  private Dao<AlipassListStatus, Integer> d = null;
  private Dao<AlipassOffline, Integer> e = null;
  private Dao<AlipassOfflineV2, Integer> f = null;
  private com.alipay.mobile.alipassapp.biz.Bundle.AppBundle g;
  private Context h;

  public a(Context paramContext, com.alipay.mobile.alipassapp.biz.BootstrapClassloader.a parama)
  {
    super(paramContext, "alipayclient_alipass.db", null, 5);
    this.h = paramContext;
    this.g = parama;
  }

  public final Dao<AlipassListCache, Integer> a()
  {
    if (this.b == null)
      this.b = getDao(AlipassListCache.class);
    return this.b;
  }

  public final Dao<AlipassDetailCache, Integer> b()
  {
    if (this.c == null)
      this.c = getDao(AlipassDetailCache.class);
    return this.c;
  }

  public final Dao<AlipassListStatus, Integer> c()
  {
    if (this.d == null)
      this.d = getDao(AlipassListStatus.class);
    return this.d;
  }

  public void close()
  {
    super.close();
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = null;
  }

  public final Dao<AlipassOffline, Integer> d()
  {
    if (this.e == null)
      this.e = getDao(AlipassOffline.class);
    return this.e;
  }

  public final Dao<AlipassOfflineV2, Integer> e()
  {
    if (this.f == null)
      this.f = getDao(AlipassOfflineV2.class);
    return this.f;
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource)
  {
    try
    {
      TableUtils.createTable(this.connectionSource, AlipassListCache.class);
      TableUtils.createTable(this.connectionSource, AlipassDetailCache.class);
      TableUtils.createTable(this.connectionSource, AlipassListStatus.class);
      TableUtils.createTable(this.connectionSource, AlipassOffline.class);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 50	com/alipay/mobile/alipassapp/biz/b/a:h	Landroid/content/Context;
    //   4: ldc 94
    //   6: iconst_0
    //   7: invokevirtual 100	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   10: invokeinterface 106 1 0
    //   15: invokeinterface 111 1 0
    //   20: invokeinterface 115 1 0
    //   25: pop
    //   26: iload_3
    //   27: iconst_1
    //   28: if_icmpeq +15 -> 43
    //   31: iload 4
    //   33: iconst_4
    //   34: if_icmpeq +9 -> 43
    //   37: iload 4
    //   39: iconst_5
    //   40: if_icmpne +42 -> 82
    //   43: aload_2
    //   44: ldc 55
    //   46: iconst_1
    //   47: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   50: pop
    //   51: aload_2
    //   52: ldc 61
    //   54: iconst_1
    //   55: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   58: pop
    //   59: aload_2
    //   60: ldc 63
    //   62: iconst_1
    //   63: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   66: pop
    //   67: aload_2
    //   68: ldc 70
    //   70: iconst_1
    //   71: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   74: pop
    //   75: aload_0
    //   76: aload_1
    //   77: aload_2
    //   78: invokevirtual 121	com/alipay/mobile/alipassapp/biz/b/a:onCreate	(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    //   81: return
    //   82: iload_3
    //   83: iconst_2
    //   84: if_icmpne -3 -> 81
    //   87: iload 4
    //   89: iconst_3
    //   90: if_icmpne -9 -> 81
    //   93: aload_0
    //   94: getfield 52	com/alipay/mobile/alipassapp/biz/b/a:g	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   97: astore 11
    //   99: aload_0
    //   100: getfield 50	com/alipay/mobile/alipassapp/biz/b/a:h	Landroid/content/Context;
    //   103: astore 12
    //   105: aload 11
    //   107: ifnonnull +14 -> 121
    //   110: new 123	com/alipay/mobile/alipassapp/biz/a/a/a
    //   113: dup
    //   114: aload 12
    //   116: invokespecial 126	com/alipay/mobile/alipassapp/biz/a/a/a:<init>	(Landroid/content/Context;)V
    //   119: astore 11
    //   121: aload 11
    //   123: invokeinterface 131 1 0
    //   128: astore 34
    //   130: aload 34
    //   132: astore 14
    //   134: aload_2
    //   135: ldc 55
    //   137: iconst_1
    //   138: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   141: pop
    //   142: aload_2
    //   143: ldc 70
    //   145: iconst_1
    //   146: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   149: pop
    //   150: aload_2
    //   151: ldc 61
    //   153: iconst_1
    //   154: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   157: pop
    //   158: aload_2
    //   159: ldc 63
    //   161: iconst_1
    //   162: invokestatic 119	com/j256/ormlite/table/TableUtils:dropTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    //   165: pop
    //   166: aload_2
    //   167: ldc 55
    //   169: invokestatic 84	com/j256/ormlite/table/TableUtils:createTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    //   172: pop
    //   173: aload_2
    //   174: ldc 68
    //   176: invokestatic 84	com/j256/ormlite/table/TableUtils:createTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    //   179: pop
    //   180: aload_2
    //   181: ldc 61
    //   183: invokestatic 84	com/j256/ormlite/table/TableUtils:createTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    //   186: pop
    //   187: aload_2
    //   188: ldc 63
    //   190: invokestatic 84	com/j256/ormlite/table/TableUtils:createTable	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    //   193: pop
    //   194: new 133	java/util/ArrayList
    //   197: dup
    //   198: invokespecial 135	java/util/ArrayList:<init>	()V
    //   201: astore 16
    //   203: aload 14
    //   205: invokeinterface 141 1 0
    //   210: astore 17
    //   212: aload 17
    //   214: invokeinterface 146 1 0
    //   219: ifeq +125 -> 344
    //   222: aload 17
    //   224: invokeinterface 150 1 0
    //   229: checkcast 70	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2
    //   232: astore 21
    //   234: new 68	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline
    //   237: dup
    //   238: invokespecial 151	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:<init>	()V
    //   241: astore 22
    //   243: aload 22
    //   245: aload 21
    //   247: invokevirtual 154	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getBizType	()Ljava/lang/String;
    //   250: invokevirtual 158	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setBizType	(Ljava/lang/String;)V
    //   253: aload 22
    //   255: aload 21
    //   257: invokevirtual 161	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getPartnerId	()Ljava/lang/String;
    //   260: invokevirtual 164	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setPartnerId	(Ljava/lang/String;)V
    //   263: aload 22
    //   265: aload 21
    //   267: invokevirtual 167	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getPassBaseInfo	()Ljava/lang/String;
    //   270: invokevirtual 170	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setPassBaseInfo	(Ljava/lang/String;)V
    //   273: aload 22
    //   275: aload 21
    //   277: invokevirtual 173	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getRemotePassId	()Ljava/lang/String;
    //   280: invokevirtual 176	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setPassId	(Ljava/lang/String;)V
    //   283: aload 22
    //   285: aload 21
    //   287: invokevirtual 179	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getPassPath	()Ljava/lang/String;
    //   290: invokevirtual 182	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setPassPath	(Ljava/lang/String;)V
    //   293: aload 22
    //   295: aload 21
    //   297: invokevirtual 185	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getSerialNumber	()Ljava/lang/String;
    //   300: invokevirtual 188	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setSerialNumber	(Ljava/lang/String;)V
    //   303: aload 22
    //   305: aload 21
    //   307: invokevirtual 192	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getStatus	()I
    //   310: invokevirtual 196	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setStatus	(I)V
    //   313: aload 22
    //   315: aload 21
    //   317: invokevirtual 199	com/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2:getUserId	()Ljava/lang/String;
    //   320: invokevirtual 202	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setUserId	(Ljava/lang/String;)V
    //   323: aload 22
    //   325: invokestatic 208	java/lang/System:currentTimeMillis	()J
    //   328: invokevirtual 212	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setTimestamp	(J)V
    //   331: aload 16
    //   333: aload 22
    //   335: invokeinterface 216 2 0
    //   340: pop
    //   341: goto -129 -> 212
    //   344: aload 11
    //   346: aload 16
    //   348: invokeinterface 219 2 0
    //   353: return
    //   354: astore 20
    //   356: return
    //   357: astore 33
    //   359: aconst_null
    //   360: astore 14
    //   362: goto -228 -> 134
    //   365: astore 32
    //   367: aconst_null
    //   368: astore 14
    //   370: goto -236 -> 134
    //   373: astore 13
    //   375: aconst_null
    //   376: astore 14
    //   378: goto -244 -> 134
    //   381: astore 19
    //   383: return
    //   384: astore 18
    //   386: return
    //   387: astore 15
    //   389: goto -195 -> 194
    //   392: astore 6
    //   394: return
    //
    // Exception table:
    //   from	to	target	type
    //   344	353	354	java/lang/IllegalStateException
    //   121	130	357	android/database/SQLException
    //   121	130	365	java/sql/SQLException
    //   121	130	373	java/lang/IllegalStateException
    //   344	353	381	java/sql/SQLException
    //   344	353	384	android/database/SQLException
    //   134	194	387	java/lang/Exception
    //   43	81	392	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.b.a
 * JD-Core Version:    0.6.2
 */