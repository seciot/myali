package com.alibaba.fastjson.serializer;

import java.awt.Rectangle;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class RectangleSerializer
  implements AutowiredObjectSerializer
{
  public static final RectangleSerializer instance = new RectangleSerializer();

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Rectangle.class);
  }

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    char c = '{';
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Rectangle localRectangle = (Rectangle)paramObject1;
    if (localRectangle == null)
    {
      localSerializeWriter.writeNull();
      return;
    }
    if (localSerializeWriter.isEnabled(SerializerFeature.WriteClassName))
    {
      localSerializeWriter.write(c);
      localSerializeWriter.writeFieldName("@type");
      localSerializeWriter.writeString(Rectangle.class.getName());
      c = ',';
    }
    localSerializeWriter.writeFieldValue(c, "x", localRectangle.getX());
    localSerializeWriter.writeFieldValue(',', "y", localRectangle.getY());
    localSerializeWriter.writeFieldValue(',', "width", localRectangle.getWidth());
    localSerializeWriter.writeFieldValue(',', "height", localRectangle.getHeight());
    localSerializeWriter.write('}');
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.RectangleSerializer
 * JD-Core Version:    0.6.2
 */