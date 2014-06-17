package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.awt.Rectangle;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class RectangleDeserializer
  implements AutowiredObjectDeserializer
{
  public static final RectangleDeserializer instance = new RectangleDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    int i = 0;
    JSONScanner localJSONScanner = (JSONScanner)paramDefaultJSONParser.getLexer();
    if (localJSONScanner.token() == 8)
    {
      localJSONScanner.nextToken();
      return null;
    }
    if ((localJSONScanner.token() != 12) && (localJSONScanner.token() != 16))
      throw new JSONException("syntax error");
    localJSONScanner.nextToken();
    int j = 0;
    int k = 0;
    int m = 0;
    String str;
    label190: label200: label249: 
    while (true)
    {
      if (localJSONScanner.token() == 13)
      {
        localJSONScanner.nextToken();
        return new Rectangle(m, k, j, i);
      }
      int n;
      if (localJSONScanner.token() == 4)
      {
        str = localJSONScanner.stringVal();
        localJSONScanner.nextTokenWithColon(2);
        if (localJSONScanner.token() != 2)
          break label190;
        n = localJSONScanner.intValue();
        localJSONScanner.nextToken();
        if (!str.equalsIgnoreCase("x"))
          break label200;
        m = n;
      }
      while (true)
      {
        if (localJSONScanner.token() != 16)
          break label249;
        localJSONScanner.nextToken(4);
        break;
        throw new JSONException("syntax error");
        throw new JSONException("syntax error");
        if (str.equalsIgnoreCase("y"))
        {
          k = n;
        }
        else if (str.equalsIgnoreCase("width"))
        {
          j = n;
        }
        else
        {
          if (!str.equalsIgnoreCase("height"))
            break label251;
          i = n;
        }
      }
    }
    label251: throw new JSONException("syntax error, " + str);
  }

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Rectangle.class);
  }

  public int getFastMatchToken()
  {
    return 12;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.RectangleDeserializer
 * JD-Core Version:    0.6.2
 */