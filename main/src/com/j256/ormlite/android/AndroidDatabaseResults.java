package com.j256.ormlite.android;

import android.database.Cursor;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.support.DatabaseResults;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class AndroidDatabaseResults
  implements DatabaseResults
{
  private static final DatabaseType e = new SqliteAndroidDatabaseType();
  private final Cursor a;
  private final String[] b;
  private final Map<String, Integer> c;
  private final ObjectCache d;

  public AndroidDatabaseResults(Cursor paramCursor, ObjectCache paramObjectCache)
  {
    this.a = paramCursor;
    this.b = paramCursor.getColumnNames();
    if (this.b.length >= 8)
    {
      this.c = new HashMap();
      for (int i = 0; i < this.b.length; i++)
        this.c.put(this.b[i], Integer.valueOf(i));
    }
    this.c = null;
    this.d = paramObjectCache;
  }

  @Deprecated
  public AndroidDatabaseResults(Cursor paramCursor, boolean paramBoolean, ObjectCache paramObjectCache)
  {
    this(paramCursor, paramObjectCache);
  }

  private int a(String paramString)
  {
    if (this.c == null)
    {
      for (int i = 0; i < this.b.length; i++)
        if (this.b[i].equals(paramString))
          return i;
      return -1;
    }
    Integer localInteger = (Integer)this.c.get(paramString);
    if (localInteger == null)
      return -1;
    return localInteger.intValue();
  }

  public int findColumn(String paramString)
  {
    int i = a(paramString);
    if (i >= 0);
    do
    {
      return i;
      StringBuilder localStringBuilder = new StringBuilder(4 + paramString.length());
      e.appendEscapedEntityName(localStringBuilder, paramString);
      i = a(localStringBuilder.toString());
    }
    while (i >= 0);
    String[] arrayOfString = this.a.getColumnNames();
    throw new SQLException("Unknown field '" + paramString + "' from the Android sqlite cursor, not in:" + Arrays.toString(arrayOfString));
  }

  public boolean first()
  {
    return this.a.moveToFirst();
  }

  public BigDecimal getBigDecimal(int paramInt)
  {
    throw new SQLException("Android does not support BigDecimal type.  Use BIG_DECIMAL or BIG_DECIMAL_STRING types");
  }

  public InputStream getBlobStream(int paramInt)
  {
    return new ByteArrayInputStream(this.a.getBlob(paramInt));
  }

  public boolean getBoolean(int paramInt)
  {
    return (!this.a.isNull(paramInt)) && (this.a.getShort(paramInt) != 0);
  }

  public byte getByte(int paramInt)
  {
    return (byte)getShort(paramInt);
  }

  public byte[] getBytes(int paramInt)
  {
    return this.a.getBlob(paramInt);
  }

  public char getChar(int paramInt)
  {
    String str = this.a.getString(paramInt);
    if ((str == null) || (str.length() == 0))
      return '\000';
    if (str.length() == 1)
      return str.charAt(0);
    throw new SQLException("More than 1 character stored in database column: " + paramInt);
  }

  public int getColumnCount()
  {
    return this.a.getColumnCount();
  }

  public double getDouble(int paramInt)
  {
    return this.a.getDouble(paramInt);
  }

  public float getFloat(int paramInt)
  {
    return this.a.getFloat(paramInt);
  }

  public int getInt(int paramInt)
  {
    return this.a.getInt(paramInt);
  }

  public long getLong(int paramInt)
  {
    return this.a.getLong(paramInt);
  }

  public ObjectCache getObjectCache()
  {
    return this.d;
  }

  public Cursor getRawCursor()
  {
    return this.a;
  }

  public short getShort(int paramInt)
  {
    return this.a.getShort(paramInt);
  }

  public String getString(int paramInt)
  {
    return this.a.getString(paramInt);
  }

  public Timestamp getTimestamp(int paramInt)
  {
    throw new SQLException("Android does not support timestamp.  Use JAVA_DATE_LONG or JAVA_DATE_STRING types");
  }

  public boolean moveRelative(int paramInt)
  {
    return this.a.move(paramInt);
  }

  public boolean next()
  {
    return this.a.moveToNext();
  }

  public boolean previous()
  {
    return this.a.moveToPrevious();
  }

  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }

  public boolean wasNull(int paramInt)
  {
    return this.a.isNull(paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.AndroidDatabaseResults
 * JD-Core Version:    0.6.2
 */