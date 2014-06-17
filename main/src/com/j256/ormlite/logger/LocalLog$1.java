package com.j256.ormlite.logger;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

final class LocalLog$1 extends ThreadLocal<DateFormat>
{
  protected final DateFormat initialValue()
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.LocalLog.1
 * JD-Core Version:    0.6.2
 */