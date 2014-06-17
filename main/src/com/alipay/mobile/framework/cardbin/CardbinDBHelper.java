package com.alipay.mobile.framework.cardbin;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;

public class CardbinDBHelper extends OrmLiteSqliteOpenHelper
{
  public static final String DATABASE_NAME = "cardbin.db";
  private static final String a = CardbinDBHelper.class.getName();

  public CardbinDBHelper(Context paramContext)
  {
    super(paramContext, "cardbin.db", null, 3);
  }

  public void close()
  {
    super.close();
  }

  public Dao<Cardbin, Integer> getCardbinDao()
  {
    try
    {
      Dao localDao = getDao(Cardbin.class);
      return localDao;
    }
    catch (SQLException localSQLException)
    {
      localSQLException.printStackTrace();
    }
    return null;
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource)
  {
    try
    {
      TableUtils.createTable(this.connectionSource, Cardbin.class);
      return;
    }
    catch (Exception localException)
    {
      localException.fillInStackTrace();
    }
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    if (paramInt2 != paramInt1);
    try
    {
      TableUtils.dropTable(paramConnectionSource, Cardbin.class, true);
      onCreate(paramSQLiteDatabase, paramConnectionSource);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.cardbin.CardbinDBHelper
 * JD-Core Version:    0.6.2
 */