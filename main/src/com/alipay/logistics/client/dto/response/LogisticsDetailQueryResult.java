package com.alipay.logistics.client.dto.response;

import com.alipay.logistics.client.dto.module.LogisticsDetail;
import java.util.List;

public class LogisticsDetailQueryResult
{
  public String resultCode;
  public String resultMsg;
  public List<LogisticsDetail> resultObject;
  public Boolean success = Boolean.valueOf(false);

  public String getResultCode()
  {
    return this.resultCode;
  }

  public String getResultMsg()
  {
    return this.resultMsg;
  }

  public List<LogisticsDetail> getResultObject()
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

  public void setResultMsg(String paramString)
  {
    this.resultMsg = paramString;
  }

  public void setResultObject(List<LogisticsDetail> paramList)
  {
    this.resultObject = paramList;
  }

  public void setSuccess(Boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.response.LogisticsDetailQueryResult
 * JD-Core Version:    0.6.2
 */