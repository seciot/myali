package com.alipay.mobilebill.core.model.verify.account;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class QueryVerifyAccountListRes
{
  public int day;
  public Map<String, Object> extInfos = new HashMap();
  public List<CategoryItemModel> inContents;
  public int month;
  public List<CategoryItemModel> outContents;
  public boolean realtimeEbill = false;
  public int resultCode;
  public String resultMsg;
  public boolean supportRealtimeEbill;
  public String totalConsumption;
  public String totalIncome;
  public String uniqueIdentify;
  public String userId;
  public int year;

  public int getDay()
  {
    return this.day;
  }

  public Map<String, Object> getExtInfos()
  {
    return this.extInfos;
  }

  public List<CategoryItemModel> getInContents()
  {
    return this.inContents;
  }

  public int getMonth()
  {
    return this.month;
  }

  public List<CategoryItemModel> getOutContents()
  {
    return this.outContents;
  }

  public int getResultCode()
  {
    return this.resultCode;
  }

  public String getResultMsg()
  {
    return this.resultMsg;
  }

  public String getTotalConsumption()
  {
    return this.totalConsumption;
  }

  public String getTotalIncome()
  {
    return this.totalIncome;
  }

  public String getUniqueIdentify()
  {
    return this.uniqueIdentify;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public int getYear()
  {
    return this.year;
  }

  public boolean isRealtimeEbill()
  {
    return this.realtimeEbill;
  }

  public boolean isSupportRealtimeEbill()
  {
    return this.supportRealtimeEbill;
  }

  public void setDay(int paramInt)
  {
    this.day = paramInt;
  }

  public void setExtInfos(Map<String, Object> paramMap)
  {
    this.extInfos = paramMap;
  }

  public void setInContents(List<CategoryItemModel> paramList)
  {
    this.inContents = paramList;
  }

  public void setMonth(int paramInt)
  {
    this.month = paramInt;
  }

  public void setOutContents(List<CategoryItemModel> paramList)
  {
    this.outContents = paramList;
  }

  public void setRealtimeEbill(boolean paramBoolean)
  {
    this.realtimeEbill = paramBoolean;
  }

  public void setResultCode(int paramInt)
  {
    this.resultCode = paramInt;
  }

  public void setResultMsg(String paramString)
  {
    this.resultMsg = paramString;
  }

  public void setSupportRealtimeEbill(boolean paramBoolean)
  {
    this.supportRealtimeEbill = paramBoolean;
  }

  public void setTotalConsumption(String paramString)
  {
    this.totalConsumption = paramString;
  }

  public void setTotalIncome(String paramString)
  {
    this.totalIncome = paramString;
  }

  public void setUniqueIdentify(String paramString)
  {
    this.uniqueIdentify = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void setYear(int paramInt)
  {
    this.year = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.core.model.verify.account.QueryVerifyAccountListRes
 * JD-Core Version:    0.6.2
 */