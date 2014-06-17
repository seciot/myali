package com.alibaba.fastjson.serializer;

import java.awt.Color;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class ColorSerializer
  implements AutowiredObjectSerializer
{
  public static final ColorSerializer instance = new ColorSerializer();

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Color.class);
  }

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    char c = '{';
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Color localColor = (Color)paramObject1;
    if (localColor == null)
    {
      localSerializeWriter.writeNull();
      return;
    }
    if (localSerializeWriter.isEnabled(SerializerFeature.WriteClassName))
    {
      localSerializeWriter.write(c);
      localSerializeWriter.writeFieldName("@type");
      localSerializeWriter.writeString(Color.class.getName());
      c = ',';
    }
    localSerializeWriter.writeFieldValue(c, "r", localColor.getRed());
    localSerializeWriter.writeFieldValue(',', "g", localColor.getGreen());
    localSerializeWriter.writeFieldValue(',', "b", localColor.getBlue());
    if (localColor.getAlpha() > 0)
      localSerializeWriter.writeFieldValue(',', "alpha", localColor.getAlpha());
    localSerializeWriter.write('}');
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.ColorSerializer
 * JD-Core Version:    0.6.2
 */