package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;
import java.util.Map;

public final class MapResolveFieldDeserializer extends FieldDeserializer
{
  private final String key;
  private final Map map;

  public MapResolveFieldDeserializer(Map paramMap, String paramString)
  {
    super(null, null);
    this.key = paramString;
    this.map = paramMap;
  }

  public final int getFastMatchToken()
  {
    return 0;
  }

  public final void parseField(DefaultJSONParser paramDefaultJSONParser, Object paramObject, Type paramType, Map<String, Object> paramMap)
  {
  }

  public final void setValue(Object paramObject1, Object paramObject2)
  {
    this.map.put(this.key, paramObject2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.MapResolveFieldDeserializer
 * JD-Core Version:    0.6.2
 */