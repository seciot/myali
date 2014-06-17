package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.DeserializeBeanInfo;
import com.alibaba.fastjson.util.FieldInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ASMDeserializerFactory$Context
{
  private final DeserializeBeanInfo beanInfo;
  private String className;
  private Class<?> clazz;
  private List<FieldInfo> fieldInfoList;
  private int variantIndex = 5;
  private Map<String, Integer> variants = new HashMap();

  public ASMDeserializerFactory$Context(String paramString, ParserConfig paramParserConfig, DeserializeBeanInfo paramDeserializeBeanInfo, int paramInt)
  {
    this.className = paramString;
    this.clazz = paramDeserializeBeanInfo.getClazz();
    this.variantIndex = paramInt;
    this.beanInfo = paramDeserializeBeanInfo;
    this.fieldInfoList = new ArrayList(paramDeserializeBeanInfo.getFieldList());
  }

  public boolean contains(String paramString)
  {
    return this.variants.get(paramString) != null;
  }

  public DeserializeBeanInfo getBeanInfo()
  {
    return this.beanInfo;
  }

  public String getClassName()
  {
    return this.className;
  }

  public Class<?> getClazz()
  {
    return this.clazz;
  }

  public List<FieldInfo> getFieldInfoList()
  {
    return this.fieldInfoList;
  }

  public int getVariantCount()
  {
    return this.variantIndex;
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
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context
 * JD-Core Version:    0.6.2
 */