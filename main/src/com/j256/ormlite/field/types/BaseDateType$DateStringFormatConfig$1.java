package com.j256.ormlite.field.types;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

class BaseDateType$DateStringFormatConfig$1 extends ThreadLocal<DateFormat>
{
  BaseDateType$DateStringFormatConfig$1(BaseDateType.DateStringFormatConfig paramDateStringFormatConfig)
  {
  }

  protected DateFormat initialValue()
  {
    return new SimpleDateFormat(this.this$0.dateFormatStr);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.BaseDateType.DateStringFormatConfig.1
 * JD-Core Version:    0.6.2
 */