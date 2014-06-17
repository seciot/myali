package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;
import java.util.Calendar;
import java.util.Date;

public class CalendarDeserializer
  implements ObjectDeserializer
{
  public static final CalendarDeserializer instance = new CalendarDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    Date localDate = (Date)DateDeserializer.instance.deserialze(paramDefaultJSONParser, paramType, paramObject);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(localDate);
    return localCalendar;
  }

  public int getFastMatchToken()
  {
    return 2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.CalendarDeserializer
 * JD-Core Version:    0.6.2
 */