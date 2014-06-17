package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;

public class DefaultJSONParser$ResolveTask
{
  private final ParseContext context;
  private FieldDeserializer fieldDeserializer;
  private ParseContext ownerContext;
  private final String referenceValue;

  public DefaultJSONParser$ResolveTask(ParseContext paramParseContext, String paramString)
  {
    this.context = paramParseContext;
    this.referenceValue = paramString;
  }

  public ParseContext getContext()
  {
    return this.context;
  }

  public FieldDeserializer getFieldDeserializer()
  {
    return this.fieldDeserializer;
  }

  public ParseContext getOwnerContext()
  {
    return this.ownerContext;
  }

  public String getReferenceValue()
  {
    return this.referenceValue;
  }

  public void setFieldDeserializer(FieldDeserializer paramFieldDeserializer)
  {
    this.fieldDeserializer = paramFieldDeserializer;
  }

  public void setOwnerContext(ParseContext paramParseContext)
  {
    this.ownerContext = paramParseContext;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask
 * JD-Core Version:    0.6.2
 */