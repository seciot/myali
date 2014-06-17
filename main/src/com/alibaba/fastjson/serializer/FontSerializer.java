package com.alibaba.fastjson.serializer;

import java.awt.Font;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class FontSerializer
  implements AutowiredObjectSerializer
{
  public static final FontSerializer instance = new FontSerializer();

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Font.class);
  }

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    char c = '{';
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Font localFont = (Font)paramObject1;
    if (localFont == null)
    {
      localSerializeWriter.writeNull();
      return;
    }
    if (localSerializeWriter.isEnabled(SerializerFeature.WriteClassName))
    {
      localSerializeWriter.write(c);
      localSerializeWriter.writeFieldName("@type");
      localSerializeWriter.writeString(Font.class.getName());
      c = ',';
    }
    localSerializeWriter.writeFieldValue(c, "name", localFont.getName());
    localSerializeWriter.writeFieldValue(',', "style", localFont.getStyle());
    localSerializeWriter.writeFieldValue(',', "size", localFont.getSize());
    localSerializeWriter.write('}');
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.FontSerializer
 * JD-Core Version:    0.6.2
 */