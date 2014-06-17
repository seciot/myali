package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.net.URI;

public class URISerializer
  implements ObjectSerializer
{
  public static final URISerializer instance = new URISerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    if (paramObject1 == null)
    {
      paramJSONSerializer.writeNull();
      return;
    }
    paramJSONSerializer.write(((URI)paramObject1).toString());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.URISerializer
 * JD-Core Version:    0.6.2
 */