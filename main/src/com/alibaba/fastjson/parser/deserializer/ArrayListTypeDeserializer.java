package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;

public class ArrayListTypeDeserializer
  implements ObjectDeserializer
{
  private Type itemType;
  private Class<?> rawClass;

  public ArrayListTypeDeserializer(Class<?> paramClass, Type paramType)
  {
    this.rawClass = paramClass;
    this.itemType = paramType;
  }

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    if (paramDefaultJSONParser.getLexer().token() == 8)
    {
      paramDefaultJSONParser.getLexer().nextToken();
      return null;
    }
    Object localObject;
    if (this.rawClass.isAssignableFrom(LinkedHashSet.class))
      localObject = new LinkedHashSet();
    while (true)
    {
      paramDefaultJSONParser.parseArray(this.itemType, (Collection)localObject, paramObject);
      return localObject;
      if (this.rawClass.isAssignableFrom(HashSet.class))
        localObject = new HashSet();
      else
        localObject = new ArrayList();
    }
  }

  public int getFastMatchToken()
  {
    return 14;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ArrayListTypeDeserializer
 * JD-Core Version:    0.6.2
 */