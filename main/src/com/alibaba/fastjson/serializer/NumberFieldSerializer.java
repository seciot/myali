package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.util.FieldInfo;

class NumberFieldSerializer extends FieldSerializer
{
  public NumberFieldSerializer(FieldInfo paramFieldInfo)
  {
    super(paramFieldInfo);
  }

  public void writeProperty(JSONSerializer paramJSONSerializer, Object paramObject)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    writePrefix(paramJSONSerializer);
    if (paramObject == null)
    {
      if (localSerializeWriter.isEnabled(SerializerFeature.WriteNullNumberAsZero))
      {
        localSerializeWriter.write('0');
        return;
      }
      localSerializeWriter.writeNull();
      return;
    }
    localSerializeWriter.append(paramObject.toString());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.NumberFieldSerializer
 * JD-Core Version:    0.6.2
 */