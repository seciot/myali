package com.alipay.mobilebill.biz.shared.contact.model;

import java.util.List;
import java.util.Map;

public class BillModel
{
  public List<PropetyDataModel> data;
  public Map<String, String> extInfo;
  public String title;

  public List<PropetyDataModel> getData()
  {
    return this.data;
  }

  public Map<String, String> getExtInfo()
  {
    return this.extInfo;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setData(List<PropetyDataModel> paramList)
  {
    this.data = paramList;
  }

  public void setExtInfo(Map<String, String> paramMap)
  {
    this.extInfo = paramMap;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.BillModel
 * JD-Core Version:    0.6.2
 */