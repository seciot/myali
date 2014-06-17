package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

public class CharsetDeserializer
  implements ObjectDeserializer
{
  public static final CharsetDeserializer instance = new CharsetDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    Object localObject = paramDefaultJSONParser.parse();
    if (localObject == null)
      return null;
    return Charset.forName((String)localObject);
  }

  public int getFastMatchToken()
  {
    return 4;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.CharsetDeserializer
 * JD-Core Version:    0.6.2
 */