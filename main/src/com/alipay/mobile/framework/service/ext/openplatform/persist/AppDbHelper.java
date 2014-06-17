package com.alipay.mobile.framework.service.ext.openplatform.persist;

import android.database.sqlite.SQLiteDatabase;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.alipay.mobile.framework.service.ext.openplatform.domain.FastLoginAppEntity;
import com.alipay.mobile.framework.service.ext.openplatform.domain.MyAppEntity;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;

public class AppDbHelper extends OrmLiteSqliteOpenHelper
{
  private static final String DATABASE_NAME = "open_platform_apps.db";
  private static final int DATABASE_VERSION = 5;
  private static final String TAG = "AppDbHelper";
  private static AppDbHelper instance;
  private Dao<AppEntity, Integer> appEntityDao;
  private Dao<FastLoginAppEntity, Integer> fastLoginAppEntityDao;
  private Dao<MyAppEntity, Integer> myAppEntityDao;

  public AppDbHelper()
  {
    super(AlipayApplication.getInstance(), "open_platform_apps.db", null, 5);
  }

  public static AppDbHelper getDbHelper()
  {
    if (instance == null)
      instance = new AppDbHelper();
    return instance;
  }

  public void close()
  {
    super.close();
    instance = null;
    this.appEntityDao = null;
  }

  public Dao<AppEntity, Integer> getAppEntityDao()
  {
    if (this.appEntityDao == null)
      this.appEntityDao = getDao(AppEntity.class);
    return this.appEntityDao;
  }

  public Dao<FastLoginAppEntity, Integer> getFastLoginAppEntityDao()
  {
    if (this.fastLoginAppEntityDao == null)
      this.fastLoginAppEntityDao = getDao(FastLoginAppEntity.class);
    return this.fastLoginAppEntityDao;
  }

  public Dao<MyAppEntity, Integer> getMyAppEntityDao()
  {
    if (this.myAppEntityDao == null)
      this.myAppEntityDao = getDao(MyAppEntity.class);
    return this.myAppEntityDao;
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource)
  {
    try
    {
      TableUtils.createTable(paramConnectionSource, AppEntity.class);
      TableUtils.createTable(paramConnectionSource, MyAppEntity.class);
      TableUtils.createTable(paramConnectionSource, FastLoginAppEntity.class);
      return;
    }
    catch (SQLException localSQLException)
    {
      AppDbHelper.class.getName();
      new StringBuilder("Can't create database").append(localSQLException).toString();
      throw new RuntimeException(localSQLException);
    }
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    if (paramInt1 <= 4);
    try
    {
      paramSQLiteDatabase.execSQL("DROP TABLE AppEntity;");
    }
    catch (Exception localException4)
    {
      try
      {
        paramSQLiteDatabase.execSQL("DROP TABLE MyAppEntity;");
      }
      catch (Exception localException4)
      {
        try
        {
          paramSQLiteDatabase.execSQL("DROP TABLE FastLoginAppEntity;");
        }
        catch (Exception localException4)
        {
          try
          {
            paramSQLiteDatabase.execSQL("DROP TABLE HomeAppEntity;");
          }
          catch (Exception localException4)
          {
            try
            {
              while (true)
              {
                TableUtils.createTable(paramConnectionSource, AppEntity.class);
                TableUtils.createTable(paramConnectionSource, MyAppEntity.class);
                TableUtils.createTable(paramConnectionSource, FastLoginAppEntity.class);
                new StringBuilder("upgrade db from version ").append(paramInt1).append(" to version ").append(paramInt2).append(" success").toString();
                return;
                localException1 = localException1;
                new StringBuilder("drop db table AppEntity ErrorOldVersion =").append(paramInt1).toString();
                continue;
                localException2 = localException2;
                new StringBuilder("drop db table MyAppEntity ErrorOldVersion =").append(paramInt1).toString();
                continue;
                localException3 = localException3;
                new StringBuilder("drop db table FastLoginAppEntity ErrorOldVersion =").append(paramInt1).toString();
                continue;
                localException4 = localException4;
                new StringBuilder("drop db table HomeAppEntity ErrorOldVersion =").append(paramInt1).toString();
              }
            }
            catch (SQLException localSQLException)
            {
              AppDbHelper.class.getName();
              new StringBuilder("Can't create database").append(localSQLException).toString();
              throw new RuntimeException(localSQLException);
            }
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.AppDbHelper
 * JD-Core Version:    0.6.2
 */