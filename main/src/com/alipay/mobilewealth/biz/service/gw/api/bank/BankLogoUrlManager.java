package com.alipay.mobilewealth.biz.service.gw.api.bank;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.bank.BankLogoUrlQueryReq;
import com.alipay.mobilewealth.biz.service.gw.result.bank.BankLogoUrlQueryResult;

public abstract interface BankLogoUrlManager
{
  @OperationType("alipay.wealth.bank.queryBankLogoUrl")
  @CheckLogin
  public abstract BankLogoUrlQueryResult queryBankLogoUrl(BankLogoUrlQueryReq paramBankLogoUrlQueryReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.bank.BankLogoUrlManager
 * JD-Core Version:    0.6.2
 */