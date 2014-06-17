package com.alipay.mobile.android.main.publichome.dbhelper;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.alipay.mobile.android.main.publichome.dao.impl.FollowAccountInfoModel;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.publiccore.client.model.OperateProperties;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.StreamCorruptedException;
import java.sql.SQLException;

public class PublicHomeBaseHelper extends OrmLiteSqliteOpenHelper
{
  public static final String DATABASE_NAME = "publicHome.db";
  private static final int DATABASE_VERSION = 1;
  private static final boolean DEBUG = false;
  private static final String NEW_FOLLOW_ACCOUNT_INFO_TABLE = "followaccountinfomodel";
  private static final String OLD_FOLLOW_ACCOUNT_INFO_DATABASE = "alipayclient.db";
  private static final String OLD_FOLLOW_ACCOUNT_INFO_TABLE = "followaccountinfo";
  private static final int PUBLIC_HOME_DEDICATED_DATABASE_VERSION = 1;
  private static final String TAG = "PublicHomeBaseHelper";
  private Dao<FollowAccountInfoModel, Integer> followAccountInfoDao = null;
  private final Context mContext;
  private final String[] mFollowAccountTableStructureArray;

  public PublicHomeBaseHelper(Context paramContext)
  {
    super(paramContext, "publicHome.db", null, 1);
    this.mContext = paramContext;
    this.mFollowAccountTableStructureArray = new String[] { "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,msgNoteType,topOperateTime,localDelete,operateProperties", "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,topOperateTime,localDelete,operateProperties", "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,localDelete,operateProperties", "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,localDelete,operateProperties" };
  }

  private static void copyOperationType(Cursor paramCursor, ContentValues paramContentValues, int paramInt)
  {
    if (paramInt == -1);
    while (true)
    {
      return;
      try
      {
        byte[] arrayOfByte = paramCursor.getBlob(paramInt);
        Object localObject = null;
        if (arrayOfByte != null)
        {
          ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(arrayOfByte);
          localObject = new ObjectInputStream(localByteArrayInputStream).readObject();
          localByteArrayInputStream.close();
        }
        if ((localObject != null) && ((localObject instanceof OperateProperties)))
        {
          paramContentValues.put("defaultOrder", ((OperateProperties)localObject).getDefaultOrder());
          paramContentValues.put("deleteType", ((OperateProperties)localObject).getDeleteType());
          paramContentValues.put("topType", ((OperateProperties)localObject).getTopType());
          return;
        }
      }
      catch (StreamCorruptedException localStreamCorruptedException)
      {
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
      }
      catch (IOException localIOException)
      {
      }
    }
  }

  private static boolean duplicateColumn(Cursor paramCursor, String[] paramArrayOfString, ContentValues paramContentValues, Object paramObject)
  {
    if ((paramCursor == null) || (paramContentValues == null) || (paramArrayOfString == null) || (paramObject == null))
    {
      bool = false;
      return bool;
    }
    boolean bool = true;
    int i = paramArrayOfString.length;
    int j = 0;
    label32: String str;
    int k;
    if (j < i)
    {
      str = paramArrayOfString[j];
      k = paramCursor.getColumnIndex(str);
      if (-1 != k)
        break label174;
      if (!(paramObject instanceof String))
        break label87;
      paramContentValues.put(str, (String)paramObject);
      bool = false;
    }
    label174: 
    while (true)
    {
      j++;
      break label32;
      break;
      label87: if ((paramObject instanceof Boolean))
      {
        paramContentValues.put(str, Boolean.valueOf(((Boolean)paramObject).booleanValue()));
        bool = false;
      }
      else if ((paramObject instanceof Long))
      {
        paramContentValues.put(str, Long.valueOf(((Long)paramObject).longValue()));
        bool = false;
      }
      else
      {
        new StringBuilder("特殊类型的默认值不被支持, type:").append(paramObject.getClass().getName()).toString();
        bool = false;
        continue;
        if (StringUtils.equals("operateProperties", str))
          copyOperationType(paramCursor, paramContentValues, k);
        else if ((StringUtils.equals("unReadMsgCount", str)) || (StringUtils.equals("forceTopOrder", str)))
          paramContentValues.put(str, Integer.valueOf(paramCursor.getInt(k)));
        else if ((StringUtils.equals("gmtFollowTime", str)) || (StringUtils.equals("latestMsgTime", str)) || (StringUtils.equals("topOperateTime", str)))
          paramContentValues.put(str, Long.valueOf(paramCursor.getLong(k)));
        else if ((StringUtils.equals("top", str)) || (StringUtils.equals("localDelete", str)) || (StringUtils.equals("cancelDefaultTop", str)))
          paramContentValues.put(str, Integer.valueOf(paramCursor.getInt(k)));
        else
          paramContentValues.put(str, paramCursor.getString(k));
      }
    }
  }

  private SQLiteDatabase getAlipayClientDB()
  {
    if (this.mContext == null)
      return null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.mContext.openOrCreateDatabase("alipayclient.db", 0, null);
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
    }
    return null;
  }

  private int getApplicationVersionCode()
  {
    int i = -1;
    PackageManager localPackageManager;
    if (this.mContext != null)
      localPackageManager = this.mContext.getPackageManager();
    try
    {
      i = localPackageManager.getPackageInfo(this.mContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      new StringBuilder("不能找到包名：").append(this.mContext.getPackageName()).append("对应的包信息").toString();
    }
    return i;
  }

  private boolean tableExisted(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    if ((paramSQLiteDatabase == null) || (paramString == null))
      throw new IllegalArgumentException("Invalid parameters for tableExisted()  db:" + paramSQLiteDatabase + " tableName:" + paramString);
    Cursor localCursor = paramSQLiteDatabase.rawQuery("select DISTINCT tbl_name from sqlite_master where tbl_name = '" + paramString + "'", null);
    boolean bool = false;
    if (localCursor != null)
    {
      int i = localCursor.getCount();
      bool = false;
      if (i > 0)
        bool = true;
      localCursor.close();
    }
    return bool;
  }

  // ERROR //
  private boolean updateDatabase(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +7 -> 8
    //   4: aload_2
    //   5: ifnonnull +5 -> 10
    //   8: iconst_0
    //   9: ireturn
    //   10: iload 4
    //   12: iconst_1
    //   13: if_icmpne +342 -> 355
    //   16: aload_0
    //   17: invokespecial 285	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:getAlipayClientDB	()Landroid/database/sqlite/SQLiteDatabase;
    //   20: astore 5
    //   22: aload 5
    //   24: ifnull -16 -> 8
    //   27: aload_0
    //   28: getfield 55	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:mFollowAccountTableStructureArray	[Ljava/lang/String;
    //   31: arraylength
    //   32: istore 6
    //   34: iconst_0
    //   35: istore 7
    //   37: aconst_null
    //   38: astore 8
    //   40: aconst_null
    //   41: astore 9
    //   43: iload 7
    //   45: iload 6
    //   47: if_icmpge +51 -> 98
    //   50: aload_0
    //   51: getfield 55	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:mFollowAccountTableStructureArray	[Ljava/lang/String;
    //   54: iload 7
    //   56: aaload
    //   57: astore 8
    //   59: aload 5
    //   61: new 146	java/lang/StringBuilder
    //   64: dup
    //   65: ldc_w 287
    //   68: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   71: aload 8
    //   73: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc_w 289
    //   79: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: iconst_0
    //   86: anewarray 45	java/lang/String
    //   89: invokevirtual 273	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   92: astore 21
    //   94: aload 21
    //   96: astore 9
    //   98: aload 9
    //   100: ifnull +242 -> 342
    //   103: new 99	android/content/ContentValues
    //   106: dup
    //   107: invokespecial 291	android/content/ContentValues:<init>	()V
    //   110: astore 10
    //   112: aload 8
    //   114: ldc_w 293
    //   117: invokevirtual 297	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   120: astore 11
    //   122: aload 9
    //   124: invokeinterface 300 1 0
    //   129: ifeq +206 -> 335
    //   132: aload 10
    //   134: invokevirtual 303	android/content/ContentValues:clear	()V
    //   137: aload 9
    //   139: aload 11
    //   141: aload 10
    //   143: ldc_w 305
    //   146: invokestatic 307	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:duplicateColumn	(Landroid/database/Cursor;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Object;)Z
    //   149: pop
    //   150: aload 10
    //   152: ldc 207
    //   154: invokevirtual 311	android/content/ContentValues:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   157: ifnonnull +14 -> 171
    //   160: aload 10
    //   162: ldc 207
    //   164: iconst_1
    //   165: invokestatic 129	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   168: invokevirtual 132	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   171: aload 10
    //   173: ldc 201
    //   175: invokevirtual 311	android/content/ContentValues:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   178: ifnonnull +16 -> 194
    //   181: aload 10
    //   183: ldc 201
    //   185: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   188: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   191: invokevirtual 144	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   194: aload 10
    //   196: ldc_w 318
    //   199: invokevirtual 311	android/content/ContentValues:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   202: ifnonnull +14 -> 216
    //   205: aload 10
    //   207: ldc_w 318
    //   210: ldc_w 320
    //   213: invokevirtual 103	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   216: aload 10
    //   218: ldc_w 322
    //   221: invokestatic 328	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   224: aload 10
    //   226: ldc_w 322
    //   229: invokevirtual 332	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   232: invokestatic 338	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:encrypt	(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    //   235: invokevirtual 103	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   238: aload 10
    //   240: ldc_w 340
    //   243: invokestatic 328	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   246: aload 10
    //   248: ldc_w 340
    //   251: invokevirtual 332	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   254: invokestatic 338	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:encrypt	(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    //   257: invokevirtual 103	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   260: aload 10
    //   262: ldc_w 342
    //   265: invokestatic 328	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   268: aload 10
    //   270: ldc_w 342
    //   273: invokevirtual 332	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   276: invokestatic 338	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:encrypt	(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    //   279: invokevirtual 103	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   282: aload_1
    //   283: ldc 17
    //   285: aconst_null
    //   286: aload 10
    //   288: invokevirtual 346	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   291: pop2
    //   292: goto -170 -> 122
    //   295: astore 16
    //   297: goto -175 -> 122
    //   300: astore 19
    //   302: new 146	java/lang/StringBuilder
    //   305: dup
    //   306: ldc_w 348
    //   309: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   312: iload 7
    //   314: iconst_1
    //   315: iadd
    //   316: invokevirtual 351	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   319: ldc_w 353
    //   322: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   328: pop
    //   329: iinc 7 1
    //   332: goto -292 -> 40
    //   335: aload 9
    //   337: invokeinterface 277 1 0
    //   342: aload 5
    //   344: ldc_w 355
    //   347: invokevirtual 358	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   350: aload 5
    //   352: invokevirtual 359	android/database/sqlite/SQLiteDatabase:close	()V
    //   355: iconst_1
    //   356: ireturn
    //   357: astore 13
    //   359: goto -4 -> 355
    //   362: astore 12
    //   364: goto -14 -> 350
    //   367: astore 15
    //   369: goto -87 -> 282
    //
    // Exception table:
    //   from	to	target	type
    //   282	292	295	java/lang/Exception
    //   50	94	300	java/lang/Exception
    //   350	355	357	java/lang/Exception
    //   342	350	362	android/database/SQLException
    //   216	282	367	java/lang/Exception
  }

  public void close()
  {
    super.close();
    this.followAccountInfoDao = null;
  }

  public void createNewTable(Class<?> paramClass)
  {
    try
    {
      TableUtils.createTableIfNotExists(this.connectionSource, paramClass);
      return;
    }
    catch (SQLException localSQLException)
    {
      new StringBuilder("为Class:").append(paramClass).append("创建新表失败").toString();
    }
  }

  public Dao<FollowAccountInfoModel, Integer> getFollowAccountInfoDao()
  {
    if (this.followAccountInfoDao == null)
      this.followAccountInfoDao = getDao(FollowAccountInfoModel.class);
    return this.followAccountInfoDao;
  }

  // ERROR //
  public void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource)
  {
    // Byte code:
    //   0: invokestatic 328	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   3: invokevirtual 392	com/alipay/mobile/framework/AlipayApplication:getApplicationContext	()Landroid/content/Context;
    //   6: invokestatic 397	com/alipay/mobile/common/utils/CacheSet:getInstance	(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;
    //   9: ldc_w 399
    //   12: iconst_0
    //   13: invokevirtual 403	com/alipay/mobile/common/utils/CacheSet:getBoolean	(Ljava/lang/String;Z)Z
    //   16: ifne +128 -> 144
    //   19: invokestatic 328	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   22: invokevirtual 392	com/alipay/mobile/framework/AlipayApplication:getApplicationContext	()Landroid/content/Context;
    //   25: invokestatic 397	com/alipay/mobile/common/utils/CacheSet:getInstance	(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;
    //   28: ldc_w 399
    //   31: iconst_1
    //   32: invokevirtual 407	com/alipay/mobile/common/utils/CacheSet:putBoolean	(Ljava/lang/String;Z)V
    //   35: aload_0
    //   36: invokespecial 285	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:getAlipayClientDB	()Landroid/database/sqlite/SQLiteDatabase;
    //   39: astore 5
    //   41: aload 5
    //   43: ifnull +133 -> 176
    //   46: aload_0
    //   47: aload 5
    //   49: ldc 23
    //   51: invokespecial 409	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:tableExisted	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    //   54: istore 17
    //   56: iload 17
    //   58: istore 6
    //   60: aload 5
    //   62: invokevirtual 359	android/database/sqlite/SQLiteDatabase:close	()V
    //   65: aload_0
    //   66: aload_1
    //   67: ldc 17
    //   69: invokespecial 409	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:tableExisted	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    //   72: istore 14
    //   74: iload 14
    //   76: istore 8
    //   78: aload_2
    //   79: ldc_w 382
    //   82: invokestatic 374	com/j256/ormlite/table/TableUtils:createTableIfNotExists	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    //   85: pop
    //   86: new 146	java/lang/StringBuilder
    //   89: dup
    //   90: ldc_w 411
    //   93: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   96: iload 8
    //   98: invokevirtual 414	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   101: ldc_w 416
    //   104: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: iload 6
    //   109: invokevirtual 414	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   112: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: pop
    //   116: iload 8
    //   118: ifne +17 -> 135
    //   121: iload 6
    //   123: ifeq +12 -> 135
    //   126: aload_0
    //   127: aload_1
    //   128: aload_2
    //   129: iconst_0
    //   130: iconst_1
    //   131: invokespecial 418	com/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper:updateDatabase	(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)Z
    //   134: pop
    //   135: return
    //   136: astore 15
    //   138: iconst_0
    //   139: istore 6
    //   141: goto -81 -> 60
    //   144: aload_2
    //   145: ldc_w 382
    //   148: invokestatic 374	com/j256/ormlite/table/TableUtils:createTableIfNotExists	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    //   151: pop
    //   152: return
    //   153: astore_3
    //   154: return
    //   155: astore 16
    //   157: goto -92 -> 65
    //   160: astore 11
    //   162: return
    //   163: astore 9
    //   165: goto -79 -> 86
    //   168: astore 7
    //   170: iconst_0
    //   171: istore 8
    //   173: goto -95 -> 78
    //   176: iconst_0
    //   177: istore 6
    //   179: goto -114 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   46	56	136	java/lang/IllegalArgumentException
    //   144	152	153	java/lang/Exception
    //   60	65	155	java/lang/Exception
    //   126	135	160	java/lang/Exception
    //   78	86	163	java/lang/Exception
    //   65	74	168	java/lang/IllegalArgumentException
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    updateDatabase(paramSQLiteDatabase, paramConnectionSource, paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.dbhelper.PublicHomeBaseHelper
 * JD-Core Version:    0.6.2
 */