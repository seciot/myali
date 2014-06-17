package com.alipay.mobileprod.core.model;

public class BaseRespVO
{
  public String memo;
  public int resultStatus = 101;

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.BaseRespVO
 * JD-Core Version:    0.6.2
 */