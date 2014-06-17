package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Calendar;

public abstract class AbstractDateDeserializer
  implements ObjectDeserializer
{
  protected abstract <T> T cast(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject1, Object paramObject2);

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    JSONScanner localJSONScanner1 = (JSONScanner)paramDefaultJSONParser.getLexer();
    Object localObject;
    if (localJSONScanner1.token() == 2)
    {
      Long localLong = Long.valueOf(localJSONScanner1.longValue());
      localJSONScanner1.nextToken(16);
      localObject = localLong;
    }
    while (true)
    {
      return cast(paramDefaultJSONParser, paramType, paramObject, localObject);
      String str;
      if (localJSONScanner1.token() == 4)
      {
        str = localJSONScanner1.stringVal();
        localJSONScanner1.nextToken(16);
        if (localJSONScanner1.isEnabled(Feature.AllowISO8601DateFormat))
        {
          JSONScanner localJSONScanner2 = new JSONScanner(str);
          if (localJSONScanner2.scanISO8601DateIfMatch())
            localObject = localJSONScanner2.getCalendar().getTime();
        }
      }
      else if (localJSONScanner1.token() == 8)
      {
        localJSONScanner1.nextToken();
        localObject = null;
      }
      else if (localJSONScanner1.token() == 12)
      {
        localJSONScanner1.nextToken();
        if (localJSONScanner1.token() == 4)
        {
          if ("@type".equals(localJSONScanner1.stringVal()))
          {
            localJSONScanner1.nextToken();
            paramDefaultJSONParser.accept(17);
            Class localClass = TypeUtils.loadClass(localJSONScanner1.stringVal());
            if (localClass != null)
              paramType = localClass;
            paramDefaultJSONParser.accept(4);
            paramDefaultJSONParser.accept(16);
          }
          localJSONScanner1.nextTokenWithColon(2);
          if (localJSONScanner1.token() == 2)
          {
            long l = localJSONScanner1.longValue();
            localJSONScanner1.nextToken();
            localObject = Long.valueOf(l);
            paramDefaultJSONParser.accept(13);
          }
        }
        else
        {
          throw new JSONException("syntax error");
          throw new JSONException("syntax error : " + localJSONScanner1.tokenName());
        }
      }
      else if (paramDefaultJSONParser.getResolveStatus() == 2)
      {
        paramDefaultJSONParser.setResolveStatus(0);
        paramDefaultJSONParser.accept(16);
        if (localJSONScanner1.token() == 4)
        {
          if (!"val".equals(localJSONScanner1.stringVal()))
            throw new JSONException("syntax error");
          localJSONScanner1.nextToken();
          paramDefaultJSONParser.accept(17);
          localObject = paramDefaultJSONParser.parse();
          paramDefaultJSONParser.accept(13);
        }
        else
        {
          throw new JSONException("syntax error");
        }
      }
      else
      {
        localObject = paramDefaultJSONParser.parse();
        continue;
        localObject = str;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.AbstractDateDeserializer
 * JD-Core Version:    0.6.2
 */