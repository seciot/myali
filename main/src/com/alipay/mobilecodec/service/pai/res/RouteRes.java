package com.alipay.mobilecodec.service.pai.res;

public class RouteRes
{
  public String memo;
  public int resultCode;
  public String routeInfos;
  public boolean success;

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultCode()
  {
    return this.resultCode;
  }

  public String getRouteInfos()
  {
    return this.routeInfos;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setResultCode(int paramInt)
  {
    this.resultCode = paramInt;
  }

  public void setRouteInfos(String paramString)
  {
    this.routeInfos = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilecodec.service.pai.res.RouteRes
 * JD-Core Version:    0.6.2
 */