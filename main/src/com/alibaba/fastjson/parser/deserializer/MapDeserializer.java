package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.util.AntiCollisionHashMap;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class MapDeserializer
  implements ObjectDeserializer
{
  public static final MapDeserializer instance = new MapDeserializer();

  protected Map<Object, Object> createMap(Type paramType)
  {
    if (paramType == Properties.class)
      return new Properties();
    if (paramType == Hashtable.class)
      return new Hashtable();
    if (paramType == IdentityHashMap.class)
      return new IdentityHashMap();
    if ((paramType == SortedMap.class) || (paramType == TreeMap.class))
      return new TreeMap();
    if ((paramType == ConcurrentMap.class) || (paramType == ConcurrentHashMap.class))
      return new ConcurrentHashMap();
    if (paramType == Map.class)
      return new AntiCollisionHashMap();
    if (paramType == HashMap.class)
      return new HashMap();
    if (paramType == LinkedHashMap.class)
      return new LinkedHashMap();
    if ((paramType instanceof ParameterizedType))
      return createMap(((ParameterizedType)paramType).getRawType());
    if ((paramType instanceof Class))
    {
      Class localClass = (Class)paramType;
      if (localClass.isInterface())
        throw new JSONException("unsupport type " + paramType);
      try
      {
        Map localMap = (Map)localClass.newInstance();
        return localMap;
      }
      catch (Exception localException)
      {
        throw new JSONException("unsupport type " + paramType, localException);
      }
    }
    throw new JSONException("unsupport type " + paramType);
  }

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    JSONLexer localJSONLexer = paramDefaultJSONParser.getLexer();
    if (localJSONLexer.token() == 8)
    {
      localJSONLexer.nextToken(16);
      return null;
    }
    Map localMap = createMap(paramType);
    ParseContext localParseContext = paramDefaultJSONParser.getContext();
    try
    {
      paramDefaultJSONParser.setContext(localParseContext, localMap, paramObject);
      if (localJSONLexer.token() == 13)
      {
        localJSONLexer.nextToken(16);
        return localMap;
      }
      Object localObject2 = deserialze(paramDefaultJSONParser, paramType, paramObject, localMap);
      return localObject2;
    }
    finally
    {
      paramDefaultJSONParser.setContext(localParseContext);
    }
  }

  protected Object deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject, Map paramMap)
  {
    if ((paramType instanceof ParameterizedType))
    {
      ParameterizedType localParameterizedType = (ParameterizedType)paramType;
      Type localType1 = localParameterizedType.getActualTypeArguments()[0];
      Type localType2 = localParameterizedType.getActualTypeArguments()[1];
      if (String.class == localType1)
        return DefaultObjectDeserializer.instance.parseMap(paramDefaultJSONParser, paramMap, localType2, paramObject);
      return DefaultObjectDeserializer.instance.parseMap(paramDefaultJSONParser, paramMap, localType1, localType2, paramObject);
    }
    return paramDefaultJSONParser.parseObject(paramMap, paramObject);
  }

  public int getFastMatchToken()
  {
    return 12;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.MapDeserializer
 * JD-Core Version:    0.6.2
 */