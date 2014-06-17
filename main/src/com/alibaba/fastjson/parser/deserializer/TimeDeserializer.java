package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.lang.reflect.Type;
import java.sql.Time;
import java.util.Calendar;

public class TimeDeserializer
  implements ObjectDeserializer
{
  public static final TimeDeserializer instance = new TimeDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    JSONScanner localJSONScanner1 = (JSONScanner)paramDefaultJSONParser.getLexer();
    Object localObject;
    if (localJSONScanner1.token() == 16)
    {
      localJSONScanner1.nextToken(4);
      if (localJSONScanner1.token() != 4)
        throw new JSONException("syntax error");
      localJSONScanner1.nextTokenWithColon(2);
      if (localJSONScanner1.token() != 2)
        throw new JSONException("syntax error");
      long l2 = localJSONScanner1.longValue();
      localJSONScanner1.nextToken(13);
      if (localJSONScanner1.token() != 13)
        throw new JSONException("syntax error");
      localJSONScanner1.nextToken(16);
      localObject = new Time(l2);
    }
    do
    {
      return localObject;
      localObject = paramDefaultJSONParser.parse();
      if (localObject == null)
        return null;
    }
    while ((localObject instanceof Time));
    if ((localObject instanceof Number))
      return new Time(((Number)localObject).longValue());
    if ((localObject instanceof String))
    {
      String str = (String)localObject;
      if (str.length() == 0)
        return null;
      JSONScanner localJSONScanner2 = new JSONScanner(str);
      if (localJSONScanner2.scanISO8601DateIfMatch());
      for (long l1 = localJSONScanner2.getCalendar().getTimeInMillis(); ; l1 = Long.parseLong(str))
        return new Time(l1);
    }
    throw new JSONException("parse error");
  }

  public int getFastMatchToken()
  {
    return 2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.TimeDeserializer
 * JD-Core Version:    0.6.2
 */