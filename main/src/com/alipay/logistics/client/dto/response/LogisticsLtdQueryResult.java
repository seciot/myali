package com.alipay.logistics.client.dto.response;

import com.alipay.logistics.client.dto.module.LogisticsLtd;
import java.util.List;

public class LogisticsLtdQueryResult
{
  public String resultCode;
  private String resultDesc;
  public List<LogisticsLtd> resultObject;
  public Boolean success = Boolean.valueOf(false);

  public String getResultCode()
  {
    return this.resultCode;
  }

  public String getResultDesc()
  {
    return this.resultDesc;
  }

  public List<LogisticsLtd> getResultObject()
  {
    return this.resultObject;
  }

  public Boolean getSuccess()
  {
    return this.success;
  }

  public void setResultCode(String paramString)
  {
    this.resultCode = paramString;
  }

  public void setResultDesc(String paramString)
  {
    this.resultDesc = paramString;
  }

  public void setResultObject(List<LogisticsLtd> paramList)
  {
    this.resultObject = paramList;
  }

  public void setSuccess(Boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.response.LogisticsLtdQueryResult
 * JD-Core Version:    0.6.2
 */