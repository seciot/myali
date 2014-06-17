package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class URLSerializer
  implements ObjectSerializer
{
  public static final URLSerializer instance = new URLSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    if (paramObject1 == null)
    {
      paramJSONSerializer.writeNull();
      return;
    }
    paramJSONSerializer.write(paramObject1.toString());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.URLSerializer
 * JD-Core Version:    0.6.2
 */