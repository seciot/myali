package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;

public class BooleanDeserializer
  implements ObjectDeserializer
{
  public static final BooleanDeserializer instance = new BooleanDeserializer();

  public static <T> T deserialze(DefaultJSONParser paramDefaultJSONParser)
  {
    JSONLexer localJSONLexer = paramDefaultJSONParser.getLexer();
    if (localJSONLexer.token() == 6)
    {
      localJSONLexer.nextToken(16);
      return Boolean.TRUE;
    }
    if (localJSONLexer.token() == 7)
    {
      localJSONLexer.nextToken(16);
      return Boolean.FALSE;
    }
    if (localJSONLexer.token() == 2)
    {
      int i = localJSONLexer.intValue();
      localJSONLexer.nextToken(16);
      if (i == 1)
        return Boolean.TRUE;
      return Boolean.FALSE;
    }
    Object localObject = paramDefaultJSONParser.parse();
    if (localObject == null)
      return null;
    return TypeUtils.castToBoolean(localObject);
  }

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    return deserialze(paramDefaultJSONParser);
  }

  public int getFastMatchToken()
  {
    return 6;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.BooleanDeserializer
 * JD-Core Version:    0.6.2
 */