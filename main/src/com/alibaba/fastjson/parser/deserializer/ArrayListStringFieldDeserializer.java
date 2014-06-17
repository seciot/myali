package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public class ArrayListStringFieldDeserializer extends FieldDeserializer
{
  public ArrayListStringFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    super(paramClass, paramFieldInfo);
  }

  public int getFastMatchToken()
  {
    return 14;
  }

  public void parseField(DefaultJSONParser paramDefaultJSONParser, Object paramObject, Type paramType, Map<String, Object> paramMap)
  {
    JSONLexer localJSONLexer = paramDefaultJSONParser.getLexer();
    Object localObject;
    if (localJSONLexer.token() == 8)
    {
      localJSONLexer.nextToken(16);
      localObject = null;
    }
    while (paramObject == null)
    {
      paramMap.put(this.fieldInfo.getName(), localObject);
      return;
      localObject = new ArrayList();
      ArrayListStringDeserializer.parseArray(paramDefaultJSONParser, (Collection)localObject);
    }
    setValue(paramObject, localObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ArrayListStringFieldDeserializer
 * JD-Core Version:    0.6.2
 */