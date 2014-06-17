package com.alibaba.fastjson.serializer;

import java.awt.Point;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Set;

public class PointSerializer
  implements AutowiredObjectSerializer
{
  public static final PointSerializer instance = new PointSerializer();

  public Set<Type> getAutowiredFor()
  {
    return Collections.singleton(Point.class);
  }

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    char c = '{';
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Point localPoint = (Point)paramObject1;
    if (localPoint == null)
    {
      localSerializeWriter.writeNull();
      return;
    }
    if (localSerializeWriter.isEnabled(SerializerFeature.WriteClassName))
    {
      localSerializeWriter.write(c);
      localSerializeWriter.writeFieldName("@type");
      localSerializeWriter.writeString(Point.class.getName());
      c = ',';
    }
    localSerializeWriter.writeFieldValue(c, "x", localPoint.getX());
    localSerializeWriter.writeFieldValue(',', "y", localPoint.getY());
    localSerializeWriter.write('}');
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.PointSerializer
 * JD-Core Version:    0.6.2
 */