package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class CharacterSerializer
  implements ObjectSerializer
{
  public static final CharacterSerializer instance = new CharacterSerializer();

  public void write(JSONSerializer paramJSONSerializer, Object paramObject1, Object paramObject2, Type paramType)
  {
    SerializeWriter localSerializeWriter = paramJSONSerializer.getWriter();
    Character localCharacter = (Character)paramObject1;
    if (localCharacter == null)
    {
      localSerializeWriter.writeString("");
      return;
    }
    if (localCharacter.charValue() == 0)
    {
      localSerializeWriter.writeString("");
      return;
    }
    localSerializeWriter.writeString(localCharacter.toString());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.CharacterSerializer
 * JD-Core Version:    0.6.2
 */