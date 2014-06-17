package com.j256.ormlite.misc;

import java.sql.SQLException;

public class SqlExceptionUtil
{
  public static SQLException create(String paramString, Throwable paramThrowable)
  {
    SQLException localSQLException = new SQLException(paramString);
    localSQLException.initCause(paramThrowable);
    return localSQLException;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.misc.SqlExceptionUtil
 * JD-Core Version:    0.6.2
 */