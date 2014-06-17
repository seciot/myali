package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;
import java.util.regex.Pattern;

public class PatternDeserializer
  implements ObjectDeserializer
{
  public static final PatternDeserializer instance = new PatternDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    Object localObject = paramDefaultJSONParser.parse();
    if (localObject == null)
      return null;
    return Pattern.compile((String)localObject);
  }

  public int getFastMatchToken()
  {
    return 4;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.PatternDeserializer
 * JD-Core Version:    0.6.2
 */