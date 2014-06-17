package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicIntegerArray;

public class AtomicIntegerArrayDeserializer
  implements ObjectDeserializer
{
  public static final AtomicIntegerArrayDeserializer instance = new AtomicIntegerArrayDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    if (paramDefaultJSONParser.getLexer().token() == 8)
    {
      paramDefaultJSONParser.getLexer().nextToken(16);
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    paramDefaultJSONParser.parseArray(localJSONArray);
    AtomicIntegerArray localAtomicIntegerArray = new AtomicIntegerArray(localJSONArray.size());
    for (int i = 0; i < localJSONArray.size(); i++)
      localAtomicIntegerArray.set(i, localJSONArray.getInteger(i).intValue());
    return localAtomicIntegerArray;
  }

  public int getFastMatchToken()
  {
    return 14;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.AtomicIntegerArrayDeserializer
 * JD-Core Version:    0.6.2
 */