package com.alibaba.fastjson.parser;

public class ParseContext
{
  private final Object fieldName;
  private Object object;
  private final ParseContext parent;

  public ParseContext(ParseContext paramParseContext, Object paramObject1, Object paramObject2)
  {
    this.parent = paramParseContext;
    this.object = paramObject1;
    this.fieldName = paramObject2;
  }

  public Object getFieldName()
  {
    return this.fieldName;
  }

  public Object getObject()
  {
    return this.object;
  }

  public ParseContext getParentContext()
  {
    return this.parent;
  }

  public String getPath()
  {
    if (this.parent == null)
      return "$";
    if ((this.fieldName instanceof Integer))
      return this.parent.getPath() + "[" + this.fieldName + "]";
    return this.parent.getPath() + "." + this.fieldName;
  }

  public void setObject(Object paramObject)
  {
    this.object = paramObject;
  }

  public String toString()
  {
    return getPath();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.ParseContext
 * JD-Core Version:    0.6.2
 */