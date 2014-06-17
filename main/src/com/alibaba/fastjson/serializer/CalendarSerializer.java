package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.util.Calendar;

public class CalendarSerializer
  implements ObjectSerializer
{
  public static final CalendarSerializer instance = new CalendarSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    paramJSONSerializer.write(((Calendar)paramObject1).getTime());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.CalendarSerializer
 * JD-Core Version:    0.6.2
 */