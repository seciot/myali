package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.model.OfficialAccountInfo;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public class OfficialAccountResult extends PublicResult
{
  public String buttonName;
  public String buttonUrl;
  public String forceFollowSuccess;
  public OfficialAccountInfo officialAccount;
  public String toast;

  public String getForceFollowSuccess()
  {
    return this.forceFollowSuccess;
  }

  public OfficialAccountInfo getOfficialAccount()
  {
    return this.officialAccount;
  }

  public String getToast()
  {
    return this.toast;
  }

  public void setForceFollowSuccess(String paramString)
  {
    this.forceFollowSuccess = paramString;
  }

  public void setOfficialAccount(OfficialAccountInfo paramOfficialAccountInfo)
  {
    this.officialAccount = paramOfficialAccountInfo;
  }

  public void setToast(String paramString)
  {
    this.toast = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.OfficialAccountResult
 * JD-Core Version:    0.6.2
 */