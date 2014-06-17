package com.alipay.mobile.framework.service.ext.openplatform;

public class AppStoreException extends Exception
{
  public static final int REQUEST_ERROR = 0;
  public static final int RESPONSE_ERROR = 1;
  private static final long serialVersionUID = 1000011223400L;
  private String memo;
  private int resultStatus;

  public AppStoreException(int paramInt, String paramString)
  {
    this.resultStatus = paramInt;
    this.memo = paramString;
  }

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
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.AppStoreException
 * JD-Core Version:    0.6.2
 */