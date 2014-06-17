package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.util.regex.Pattern;

public class PatternSerializer
  implements ObjectSerializer
{
  public static final PatternSerializer instance = new PatternSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    if (paramObject1 == null)
    {
      paramJSONSerializer.writeNull();
      return;
    }
    paramJSONSerializer.write(((Pattern)paramObject1).pattern());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.PatternSerializer
 * JD-Core Version:    0.6.2
 */