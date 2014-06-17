package com.alipay.publiccore.client.result;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public class OfficialAccountLinkResult extends PublicResult
{
  private String errMsg;
  private boolean isSuccess;
  private String officialAccountId;
  private String resultLink;

  public String getErrMsg()
  {
    return this.errMsg;
  }

  public String getOfficialAccountId()
  {
    return this.officialAccountId;
  }

  public String getResultLink()
  {
    return this.resultLink;
  }

  public boolean isSuccess()
  {
    return this.isSuccess;
  }

  public void setErrMsg(String paramString)
  {
    this.errMsg = paramString;
  }

  public void setOfficialAccountId(String paramString)
  {
    this.officialAccountId = paramString;
  }

  public void setResultLink(String paramString)
  {
    this.resultLink = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.isSuccess = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.OfficialAccountLinkResult
 * JD-Core Version:    0.6.2
 */