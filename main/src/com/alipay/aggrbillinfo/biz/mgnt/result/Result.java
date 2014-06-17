package com.alipay.aggrbillinfo.biz.mgnt.result;

public class Result
{
  public String errorCode;
  public String errorMsg;
  public String memo;
  public int resultStatus;

  public String getErrorCode()
  {
    return this.errorCode;
  }

  public String getErrorMsg()
  {
    return this.errorMsg;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public void setErrorCode(String paramString)
  {
    this.errorCode = paramString;
  }

  public void setErrorMsg(String paramString)
  {
    this.errorMsg = paramString;
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
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.result.Result
 * JD-Core Version:    0.6.2
 */