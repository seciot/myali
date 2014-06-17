package com.alipay.mobile.framework.widgetmsg.dao;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;

public class WidgetMsgDBHelper extends OrmLiteSqliteOpenHelper
{
  private static final String a = WidgetMsgDBHelper.class.getName();
  private Dao<WidgetMsgTable, Integer> b = null;

  public WidgetMsgDBHelper(Context paramContext)
  {
    super(paramContext, "WidgetMsg.db", null, 3);
  }

  public void close()
  {
    super.close();
  }

  public Dao<WidgetMsgTable, Integer> getWidgetMsgDao()
  {
    if (this.b == null);
    try
    {
      this.b = getDao(WidgetMsgTable.class);
      return this.b;
    }
    catch (SQLException localSQLException)
    {
      while (true)
        localSQLException.printStackTrace();
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource)
  {
    try
    {
      TableUtils.createTable(this.connectionSource, WidgetMsgTable.class);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    if (paramInt2 != paramInt1);
    try
    {
      TableUtils.dropTable(paramConnectionSource, WidgetMsgTable.class, true);
      onCreate(paramSQLiteDatabase, paramConnectionSource);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgDBHelper
 * JD-Core Version:    0.6.2
 */