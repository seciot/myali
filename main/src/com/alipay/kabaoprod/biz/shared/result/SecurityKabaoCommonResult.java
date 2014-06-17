package com.alipay.kabaoprod.biz.shared.result;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class SecurityKabaoCommonResult extends ToString
{
  public String resultCode;
  public String resultDesc;
  public String resultView;
  public boolean success = false;

  public String getResultCode()
  {
    return this.resultCode;
  }

  public String getResultDesc()
  {
    return this.resultDesc;
  }

  public String getResultView()
  {
    return this.resultView;
  }

  public boolean isSuccess()
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

  public void setResultView(String paramString)
  {
    this.resultView = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.shared.result.SecurityKabaoCommonResult
 * JD-Core Version:    0.6.2
 */