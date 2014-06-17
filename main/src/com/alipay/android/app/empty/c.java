package com.alipay.android.app.empty;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.alipay.android.app.encrypt.Des;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;

final class c extends SQLiteOpenHelper
{
  public c(Context paramContext)
  {
    super(paramContext, "window_template.db", null, 1);
  }

  private void b(String paramString, WindowTemplate paramWindowTemplate)
  {
    try
    {
      if ((!TextUtils.isEmpty(paramString)) && (paramWindowTemplate != null))
      {
        boolean bool = TextUtils.isEmpty(paramWindowTemplate.b);
        if (!bool)
          break label30;
      }
      while (true)
      {
        return;
        label30: Context localContext = GlobalContext.a().b();
        String str = Des.a(paramWindowTemplate.b, DeviceInfo.d(localContext));
        SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = paramString;
        arrayOfObject[1] = Integer.valueOf(paramWindowTemplate.a);
        arrayOfObject[2] = str;
        localSQLiteDatabase.execSQL("insert into window_template (name, version, template) values (?, ?, ?)", arrayOfObject);
      }
    }
    finally
    {
    }
  }

  private void c(String paramString, WindowTemplate paramWindowTemplate)
  {
    if (paramWindowTemplate != null);
    try
    {
      boolean bool = TextUtils.isEmpty(paramWindowTemplate.b);
      if (bool);
      while (true)
      {
        return;
        Context localContext = GlobalContext.a().b();
        String str = Des.a(paramWindowTemplate.b, DeviceInfo.d(localContext));
        SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = Integer.valueOf(paramWindowTemplate.a);
        arrayOfObject[1] = str;
        arrayOfObject[2] = paramString;
        localSQLiteDatabase.execSQL("update window_template set version = ?, template = ? where name = ?", arrayOfObject);
      }
    }
    finally
    {
    }
  }

  public final String a(String paramString, int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = getReadableDatabase();
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[1] = String.valueOf(paramInt);
    Cursor localCursor = localSQLiteDatabase.rawQuery("select template from window_template where name = ? and version = ?", arrayOfString);
    if (localCursor.moveToFirst());
    for (String str = localCursor.getString(0); ; str = null)
    {
      localCursor.close();
      if (TextUtils.isEmpty(str))
        return null;
      return Des.b(str, DeviceInfo.d(GlobalContext.a().b()));
    }
  }

  public final void a(String paramString, WindowTemplate paramWindowTemplate)
  {
    Cursor localCursor = getReadableDatabase().rawQuery("select count(*) from window_template where name = ?", new String[] { paramString });
    if (localCursor.moveToFirst());
    for (int i = localCursor.getInt(0); ; i = 0)
    {
      localCursor.close();
      int j = 0;
      if (i > 0)
        j = 1;
      if (j != 0)
      {
        c(paramString, paramWindowTemplate);
        return;
      }
      b(paramString, paramWindowTemplate);
      return;
    }
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists window_template (name text primary key, version integer, template text);");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("drop table if exists window_template");
    paramSQLiteDatabase.execSQL("create table if not exists window_template (name text primary key, version integer, template text);");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.empty.c
 * JD-Core Version:    0.6.2
 */