package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.awt.Font;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class FontDeserializer
  implements AutowiredObjectDeserializer
{
  public static final FontDeserializer instance = new FontDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    String str1 = null;
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
    String str2;
    label269: 
    while (true)
    {
      if (localJSONScanner.token() == 13)
      {
        localJSONScanner.nextToken();
        return new Font(str1, i, j);
      }
      if (localJSONScanner.token() == 4)
      {
        str2 = localJSONScanner.stringVal();
        localJSONScanner.nextTokenWithColon(2);
        if (!str2.equalsIgnoreCase("name"))
          break label193;
        if (localJSONScanner.token() != 4)
          break label183;
        str1 = localJSONScanner.stringVal();
        localJSONScanner.nextToken();
      }
      while (true)
      {
        if (localJSONScanner.token() != 16)
          break label269;
        localJSONScanner.nextToken(4);
        break;
        throw new JSONException("syntax error");
        label183: throw new JSONException("syntax error");
        label193: if (str2.equalsIgnoreCase("style"))
        {
          if (localJSONScanner.token() == 2)
          {
            i = localJSONScanner.intValue();
            localJSONScanner.nextToken();
          }
          else
          {
            throw new JSONException("syntax error");
          }
        }
        else
        {
          if (!str2.equalsIgnoreCase("size"))
            break label281;
          if (localJSONScanner.token() != 2)
            break label271;
          j = localJSONScanner.intValue();
          localJSONScanner.nextToken();
        }
      }
    }
    label271: throw new JSONException("syntax error");
    label281: throw new JSONException("syntax error, " + str2);
  }

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Font.class);
  }

  public int getFastMatchToken()
  {
    return 12;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.FontDeserializer
 * JD-Core Version:    0.6.2
 */