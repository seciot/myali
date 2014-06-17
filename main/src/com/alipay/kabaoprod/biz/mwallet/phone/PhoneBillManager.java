package com.alipay.kabaoprod.biz.mwallet.phone;

import com.alipay.kabaoprod.biz.mwallet.phone.result.PhoneBillQueryResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface PhoneBillManager
{
  @OperationType("alipay.kabao.phone.queryPhoneBills")
  @CheckLogin
  public abstract PhoneBillQueryResult getPhoneBills();

  @OperationType("alipay.kabao.phone.refreshMobileInfo")
  @CheckLogin
  public abstract PhoneBillQueryResult refreshMobileInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.phone.PhoneBillManager
 * JD-Core Version:    0.6.2
 */