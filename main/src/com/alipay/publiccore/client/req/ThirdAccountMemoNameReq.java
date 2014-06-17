package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class ThirdAccountMemoNameReq extends ToString
{
  public String agreementId;
  public String memoName;

  public String getAgreementId()
  {
    return this.agreementId;
  }

  public String getMemoName()
  {
    return this.memoName;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
  }

  public void setMemoName(String paramString)
  {
    this.memoName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.ThirdAccountMemoNameReq
 * JD-Core Version:    0.6.2
 */