package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.awt.Color;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class ColorDeserializer
  implements AutowiredObjectDeserializer
{
  public static final ColorDeserializer instance = new ColorDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    int i = 0;
    JSONScanner localJSONScanner = (JSONScanner)paramDefaultJSONParser.getLexer();
    if ((localJSONScanner.token() != 12) && (localJSONScanner.token() != 16))
      throw new JSONException("syntax error");
    localJSONScanner.nextToken();
    int j = 0;
    int k = 0;
    int m = 0;
    String str;
    label173: label183: label232: 
    while (true)
    {
      if (localJSONScanner.token() == 13)
      {
        localJSONScanner.nextToken();
        return new Color(m, k, j, i);
      }
      int n;
      if (localJSONScanner.token() == 4)
      {
        str = localJSONScanner.stringVal();
        localJSONScanner.nextTokenWithColon(2);
        if (localJSONScanner.token() != 2)
          break label173;
        n = localJSONScanner.intValue();
        localJSONScanner.nextToken();
        if (!str.equalsIgnoreCase("r"))
          break label183;
        m = n;
      }
      while (true)
      {
        if (localJSONScanner.token() != 16)
          break label232;
        localJSONScanner.nextToken(4);
        break;
        throw new JSONException("syntax error");
        throw new JSONException("syntax error");
        if (str.equalsIgnoreCase("g"))
        {
          k = n;
        }
        else if (str.equalsIgnoreCase("b"))
        {
          j = n;
        }
        else
        {
          if (!str.equalsIgnoreCase("alpha"))
            break label234;
          i = n;
        }
      }
    }
    label234: throw new JSONException("syntax error, " + str);
  }

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Color.class);
  }

  public int getFastMatchToken()
  {
    return 12;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ColorDeserializer
 * JD-Core Version:    0.6.2
 */