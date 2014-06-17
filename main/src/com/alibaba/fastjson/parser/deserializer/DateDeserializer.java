package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

public class DateDeserializer extends AbstractDateDeserializer
  implements ObjectDeserializer
{
  public static final DateDeserializer instance = new DateDeserializer();

  protected <T> T cast(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject1, Object paramObject2)
  {
    if (paramObject2 == null)
      paramObject2 = null;
    while ((paramObject2 instanceof Date))
      return paramObject2;
    if ((paramObject2 instanceof Number))
      return new Date(((Number)paramObject2).longValue());
    if ((paramObject2 instanceof String))
    {
      String str = (String)paramObject2;
      if (str.length() == 0)
        return null;
      JSONScanner localJSONScanner = new JSONScanner(str);
      if (localJSONScanner.scanISO8601DateIfMatch())
        return localJSONScanner.getCalendar().getTime();
      DateFormat localDateFormat = paramDefaultJSONParser.getDateFormat();
      try
      {
        Date localDate = localDateFormat.parse(str);
        return localDate;
      }
      catch (ParseException localParseException)
      {
        return new Date(Long.parseLong(str));
      }
    }
    throw new JSONException("parse error");
  }

  public int getFastMatchToken()
  {
    return 2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.DateDeserializer
 * JD-Core Version:    0.6.2
 */