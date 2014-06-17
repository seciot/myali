package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.net.InetAddress;

public class InetAddressSerializer
  implements ObjectSerializer
{
  public static InetAddressSerializer instance = new InetAddressSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    if (paramObject1 == null)
    {
      paramJSONSerializer.writeNull();
      return;
    }
    paramJSONSerializer.write(((InetAddress)paramObject1).getHostAddress());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.InetAddressSerializer
 * JD-Core Version:    0.6.2
 */