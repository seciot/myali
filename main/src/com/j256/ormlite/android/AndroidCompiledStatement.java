package com.j256.ormlite.android;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseResults;
import java.util.ArrayList;
import java.util.List;

public class AndroidCompiledStatement
  implements CompiledStatement
{
  private static Logger a = LoggerFactory.getLogger(AndroidCompiledStatement.class);
  private static final String[] e = new String[0];
  private final String b;
  private final SQLiteDatabase c;
  private final StatementBuilder.StatementType d;
  private Cursor f;
  private List<Object> g;
  private Integer h;

  public AndroidCompiledStatement(String paramString, SQLiteDatabase paramSQLiteDatabase, StatementBuilder.StatementType paramStatementType)
  {
    this.b = paramString;
    this.c = paramSQLiteDatabase;
    this.d = paramStatementType;
  }

  // ERROR //
  private int a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	com/j256/ormlite/android/AndroidCompiledStatement:c	Landroid/database/sqlite/SQLiteDatabase;
    //   4: astore 4
    //   6: aload_0
    //   7: getfield 52	com/j256/ormlite/android/AndroidCompiledStatement:g	Ljava/util/List;
    //   10: ifnonnull +71 -> 81
    //   13: getstatic 37	com/j256/ormlite/android/AndroidCompiledStatement:e	[Ljava/lang/String;
    //   16: astore 6
    //   18: aload 4
    //   20: aload_2
    //   21: aload 6
    //   23: invokevirtual 58	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   26: aload_0
    //   27: getfield 45	com/j256/ormlite/android/AndroidCompiledStatement:c	Landroid/database/sqlite/SQLiteDatabase;
    //   30: ldc 60
    //   32: invokevirtual 64	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   35: astore 12
    //   37: aload 12
    //   39: astore 8
    //   41: aload 8
    //   43: invokevirtual 70	android/database/sqlite/SQLiteStatement:simpleQueryForLong	()J
    //   46: lstore 14
    //   48: lload 14
    //   50: l2i
    //   51: istore 11
    //   53: aload 8
    //   55: ifnull +8 -> 63
    //   58: aload 8
    //   60: invokevirtual 73	android/database/sqlite/SQLiteStatement:close	()V
    //   63: getstatic 33	com/j256/ormlite/android/AndroidCompiledStatement:a	Lcom/j256/ormlite/logger/Logger;
    //   66: ldc 75
    //   68: aload_1
    //   69: iload 11
    //   71: invokestatic 81	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   74: aload_2
    //   75: invokevirtual 87	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   78: iload 11
    //   80: ireturn
    //   81: aload_0
    //   82: getfield 52	com/j256/ormlite/android/AndroidCompiledStatement:g	Ljava/util/List;
    //   85: aload_0
    //   86: getfield 52	com/j256/ormlite/android/AndroidCompiledStatement:g	Ljava/util/List;
    //   89: invokeinterface 93 1 0
    //   94: anewarray 4	java/lang/Object
    //   97: invokeinterface 97 2 0
    //   102: astore 5
    //   104: aload 5
    //   106: astore 6
    //   108: goto -90 -> 18
    //   111: astore_3
    //   112: new 99	java/lang/StringBuilder
    //   115: dup
    //   116: ldc 101
    //   118: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   121: aload_1
    //   122: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: ldc 110
    //   127: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload_2
    //   131: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: aload_3
    //   138: invokestatic 120	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   141: athrow
    //   142: astore 10
    //   144: aconst_null
    //   145: astore 8
    //   147: iconst_1
    //   148: istore 11
    //   150: aload 8
    //   152: ifnull -89 -> 63
    //   155: aload 8
    //   157: invokevirtual 73	android/database/sqlite/SQLiteStatement:close	()V
    //   160: goto -97 -> 63
    //   163: astore 7
    //   165: aconst_null
    //   166: astore 8
    //   168: aload 7
    //   170: astore 9
    //   172: aload 8
    //   174: ifnull +8 -> 182
    //   177: aload 8
    //   179: invokevirtual 73	android/database/sqlite/SQLiteStatement:close	()V
    //   182: aload 9
    //   184: athrow
    //   185: astore 9
    //   187: goto -15 -> 172
    //   190: astore 13
    //   192: goto -45 -> 147
    //
    // Exception table:
    //   from	to	target	type
    //   0	18	111	android/database/SQLException
    //   18	26	111	android/database/SQLException
    //   81	104	111	android/database/SQLException
    //   26	37	142	android/database/SQLException
    //   26	37	163	finally
    //   41	48	185	finally
    //   41	48	190	android/database/SQLException
  }

  private void a()
  {
    if (this.f != null)
      throw new java.sql.SQLException("Query already run. Cannot add argument values.");
  }

  public void close()
  {
    if (this.f != null);
    try
    {
      this.f.close();
      return;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Problems closing Android cursor", localSQLException);
    }
  }

  public int getColumnCount()
  {
    return getCursor().getColumnCount();
  }

  public String getColumnName(int paramInt)
  {
    return getCursor().getColumnName(paramInt);
  }

  public Cursor getCursor()
  {
    String str;
    if (this.f == null)
      str = null;
    try
    {
      Integer localInteger = this.h;
      str = null;
      SQLiteDatabase localSQLiteDatabase;
      if (localInteger == null)
      {
        str = this.b;
        localSQLiteDatabase = this.c;
        if (this.g != null)
          break label113;
      }
      label113: for (String[] arrayOfString = e; ; arrayOfString = (String[])this.g.toArray(new String[this.g.size()]))
      {
        this.f = localSQLiteDatabase.rawQuery(str, arrayOfString);
        this.f.moveToFirst();
        a.trace("{}: started rawQuery cursor for: {}", this, str);
        return this.f;
        str = this.b + " " + this.h;
        break;
      }
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Problems executing Android query: " + str, localSQLException);
    }
  }

  public int runExecute()
  {
    if (!this.d.isOkForExecute())
      throw new IllegalArgumentException("Cannot call execute on a " + this.d + " statement");
    return a("runExecute", this.b);
  }

  public DatabaseResults runQuery(ObjectCache paramObjectCache)
  {
    if (!this.d.isOkForQuery())
      throw new IllegalArgumentException("Cannot call query on a " + this.d + " statement");
    return new AndroidDatabaseResults(getCursor(), paramObjectCache);
  }

  public int runUpdate()
  {
    if (!this.d.isOkForUpdate())
      throw new IllegalArgumentException("Cannot call update on a " + this.d + " statement");
    if (this.h == null);
    for (String str = this.b; ; str = this.b + " " + this.h)
      return a("runUpdate", str);
  }

  public void setMaxRows(int paramInt)
  {
    a();
    this.h = Integer.valueOf(paramInt);
  }

  public void setObject(int paramInt, Object paramObject, SqlType paramSqlType)
  {
    a();
    if (this.g == null)
      this.g = new ArrayList();
    if (paramObject == null)
    {
      this.g.add(paramInt, null);
      return;
    }
    switch (AndroidCompiledStatement.1.$SwitchMap$com$j256$ormlite$field$SqlType[paramSqlType.ordinal()])
    {
    default:
      throw new java.sql.SQLException("Unknown sql argument type: " + paramSqlType);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      this.g.add(paramInt, paramObject.toString());
      return;
    case 12:
    case 13:
      this.g.add(paramInt, paramObject);
      return;
    case 14:
    case 15:
    }
    throw new java.sql.SQLException("Invalid Android type: " + paramSqlType);
  }

  public void setQueryTimeout(long paramLong)
  {
  }

  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.AndroidCompiledStatement
 * JD-Core Version:    0.6.2
 */