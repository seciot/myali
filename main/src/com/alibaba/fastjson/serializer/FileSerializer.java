package com.alibaba.fastjson.serializer;

import java.io.File;
import java.lang.reflect.Type;

public class FileSerializer
  implements ObjectSerializer
{
  public static FileSerializer instance = new FileSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    if (paramObject1 == null)
    {
      localSerializeWriter.writeNull();
      return;
    }
    paramJSONSerializer.write(((File)paramObject1).getPath());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.FileSerializer
 * JD-Core Version:    0.6.2
 */