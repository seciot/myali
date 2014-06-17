package com.alibaba.fastjson.serializer;

import java.util.HashMap;
import java.util.Map;

class ASMSerializerFactory$Context
{
  private final String className;
  private int variantIndex = 8;
  private Map<String, Integer> variants = new HashMap();

  public ASMSerializerFactory$Context(String paramString)
  {
    this.className = paramString;
  }

  public int fieldName()
  {
    return 5;
  }

  public String getClassName()
  {
    return this.className;
  }

  public int getVariantCount()
  {
    return this.variantIndex;
  }

  public int obj()
  {
    return 2;
  }

  public int original()
  {
    return 6;
  }

  public int paramFieldName()
  {
    return 3;
  }

  public int paramFieldType()
  {
    return 4;
  }

  public int processValue()
  {
    return 7;
  }

  public int serializer()
  {
    return 1;
  }

  public int var(String paramString)
  {
    if ((Integer)this.variants.get(paramString) == null)
    {
      Map localMap = this.variants;
      int i = this.variantIndex;
      this.variantIndex = (i + 1);
      localMap.put(paramString, Integer.valueOf(i));
    }
    return ((Integer)this.variants.get(paramString)).intValue();
  }

  public int var(String paramString, int paramInt)
  {
    if ((Integer)this.variants.get(paramString) == null)
    {
      this.variants.put(paramString, Integer.valueOf(this.variantIndex));
      this.variantIndex = (paramInt + this.variantIndex);
    }
    return ((Integer)this.variants.get(paramString)).intValue();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.ASMSerializerFactory.Context
 * JD-Core Version:    0.6.2
 */