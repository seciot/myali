package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.util.Map;

public class BizItem extends ToString
{
  public String bizItemCode;
  public String bizItemName;
  public Map<String, String> bizItemProp;
  public String bizItemValue;
  public int index = 100;

  public String getBizItemCode()
  {
    return this.bizItemCode;
  }

  public String getBizItemName()
  {
    return this.bizItemName;
  }

  public Map<String, String> getBizItemProp()
  {
    return this.bizItemProp;
  }

  public String getBizItemValue()
  {
    return this.bizItemValue;
  }

  public int getIndex()
  {
    return this.index;
  }

  public void setBizItemCode(String paramString)
  {
    this.bizItemCode = paramString;
  }

  public void setBizItemName(String paramString)
  {
    this.bizItemName = paramString;
  }

  public void setBizItemProp(Map<String, String> paramMap)
  {
    this.bizItemProp = paramMap;
  }

  public void setBizItemValue(String paramString)
  {
    this.bizItemValue = paramString;
  }

  public void setIndex(int paramInt)
  {
    this.index = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.BizItem
 * JD-Core Version:    0.6.2
 */