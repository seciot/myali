package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class ASMJavaBeanDeserializer
  implements ObjectDeserializer
{
  protected ASMJavaBeanDeserializer.InnerJavaBeanDeserializer serializer;

  public ASMJavaBeanDeserializer(ParserConfig paramParserConfig, Class<?> paramClass)
  {
    this.serializer = new ASMJavaBeanDeserializer.InnerJavaBeanDeserializer(this, paramParserConfig, paramClass, null);
    this.serializer.getFieldDeserializerMap();
  }

  public FieldDeserializer createFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    return paramParserConfig.createFieldDeserializer(paramParserConfig, paramClass, paramFieldInfo);
  }

  public Object createInstance(DefaultJSONParser paramDefaultJSONParser)
  {
    return this.serializer.createInstance(paramDefaultJSONParser, this.serializer.getClazz());
  }

  public abstract Object createInstance(DefaultJSONParser paramDefaultJSONParser, Type paramType);

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    return this.serializer.deserialze(paramDefaultJSONParser, paramType, paramObject);
  }

  public int getFastMatchToken()
  {
    return this.serializer.getFastMatchToken();
  }

  public FieldDeserializer getFieldDeserializer(String paramString)
  {
    return (FieldDeserializer)this.serializer.getFieldDeserializerMap().get(paramString);
  }

  public Type getFieldType(String paramString)
  {
    return ((FieldDeserializer)this.serializer.getFieldDeserializerMap().get(paramString)).getFieldType();
  }

  public ASMJavaBeanDeserializer.InnerJavaBeanDeserializer getInnterSerializer()
  {
    return this.serializer;
  }

  public boolean parseField(DefaultJSONParser paramDefaultJSONParser, String paramString, Object paramObject, Type paramType, Map<String, Object> paramMap)
  {
    JSONScanner localJSONScanner = (JSONScanner)paramDefaultJSONParser.getLexer();
    Map localMap = this.serializer.getFieldDeserializerMap();
    FieldDeserializer localFieldDeserializer = (FieldDeserializer)localMap.get(paramString);
    if (localFieldDeserializer == null)
    {
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((String)localEntry.getKey()).equalsIgnoreCase(paramString))
          localFieldDeserializer = (FieldDeserializer)localEntry.getValue();
      }
    }
    if (localFieldDeserializer == null)
    {
      if (!paramDefaultJSONParser.isEnabled(Feature.IgnoreNotMatch))
        throw new JSONException("setter not found, class " + this.serializer.getClass() + ", property " + paramString);
      localJSONScanner.nextTokenWithColon();
      paramDefaultJSONParser.parse();
      return false;
    }
    localJSONScanner.nextTokenWithColon(localFieldDeserializer.getFastMatchToken());
    localFieldDeserializer.parseField(paramDefaultJSONParser, paramObject, paramType, paramMap);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ASMJavaBeanDeserializer
 * JD-Core Version:    0.6.2
 */