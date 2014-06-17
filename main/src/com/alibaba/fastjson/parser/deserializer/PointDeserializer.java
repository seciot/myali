package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.awt.Point;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class PointDeserializer
  implements AutowiredObjectDeserializer
{
  public static final PointDeserializer instance = new PointDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    int i = 0;
    JSONScanner localJSONScanner = (JSONScanner)paramDefaultJSONParser.getLexer();
    if (localJSONScanner.token() == 8)
    {
      localJSONScanner.nextToken(16);
      return null;
    }
    if ((localJSONScanner.token() != 12) && (localJSONScanner.token() != 16))
      throw new JSONException("syntax error");
    localJSONScanner.nextToken();
    int j = 0;
    String str;
    label229: label244: 
    while (true)
    {
      if (localJSONScanner.token() == 13)
      {
        localJSONScanner.nextToken();
        return new Point(j, i);
      }
      int k;
      if (localJSONScanner.token() == 4)
      {
        str = localJSONScanner.stringVal();
        if ("@type".equals(str))
        {
          paramDefaultJSONParser.acceptType("java.awt.Point");
        }
        else
        {
          localJSONScanner.nextTokenWithColon(2);
          if (localJSONScanner.token() == 2)
          {
            k = localJSONScanner.intValue();
            localJSONScanner.nextToken();
            if (!str.equalsIgnoreCase("x"))
              break label229;
            j = k;
          }
        }
      }
      else
      {
        while (true)
        {
          if (localJSONScanner.token() != 16)
            break label244;
          localJSONScanner.nextToken(4);
          break;
          throw new JSONException("syntax error");
          throw new JSONException("syntax error : " + localJSONScanner.tokenName());
          if (!str.equalsIgnoreCase("y"))
            break label246;
          i = k;
        }
      }
    }
    label246: throw new JSONException("syntax error, " + str);
  }

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Point.class);
  }

  public int getFastMatchToken()
  {
    return 12;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.PointDeserializer
 * JD-Core Version:    0.6.2
 */