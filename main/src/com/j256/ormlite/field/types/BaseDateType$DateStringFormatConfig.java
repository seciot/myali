package com.j256.ormlite.field.types;

import java.text.DateFormat;

public class BaseDateType$DateStringFormatConfig
{
  final String dateFormatStr;
  private final ThreadLocal<DateFormat> threadLocal = new BaseDateType.DateStringFormatConfig.1(this);

  public BaseDateType$DateStringFormatConfig(String paramString)
  {
    this.dateFormatStr = paramString;
  }

  public DateFormat getDateFormat()
  {
    return (DateFormat)this.threadLocal.get();
  }

  public String toString()
  {
    return this.dateFormatStr;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.BaseDateType.DateStringFormatConfig
 * JD-Core Version:    0.6.2
 */