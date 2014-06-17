package com.alipay.mobileapp.common.service.facade.about;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface UserProposalFacade
{
  @OperationType("alipay.client.saveUserProposalInfo")
  public abstract UserProposalRes saveUserProposalInfo(UserProposalReq paramUserProposalReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.about.UserProposalFacade
 * JD-Core Version:    0.6.2
 */