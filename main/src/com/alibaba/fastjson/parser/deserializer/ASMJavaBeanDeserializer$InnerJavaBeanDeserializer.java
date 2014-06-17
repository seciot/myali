package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import java.lang.reflect.Type;
import java.util.Map;

public final class ASMJavaBeanDeserializer$InnerJavaBeanDeserializer extends JavaBeanDeserializer
{
  private ASMJavaBeanDeserializer$InnerJavaBeanDeserializer(ParserConfig paramParserConfig, Class<?> paramClass)
  {
    super(paramClass, localClass);
  }

  public final FieldDeserializer createFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    return this.this$0.createFieldDeserializer(paramParserConfig, paramClass, paramFieldInfo);
  }

  public final boolean parseField(DefaultJSONParser paramDefaultJSONParser, String paramString, Object paramObject, Type paramType, Map<String, Object> paramMap)
  {
    return this.this$0.parseField(paramDefaultJSONParser, paramString, paramObject, paramType, paramMap);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ASMJavaBeanDeserializer.InnerJavaBeanDeserializer
 * JD-Core Version:    0.6.2
 */