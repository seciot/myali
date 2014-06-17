package com.alipay.kabaoprod.biz.mwallet.pass.manager;

import com.alipay.kabaoprod.biz.mwallet.pass.result.PassAddResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface ThirdEvoucherCreateManager
{
  @OperationType("alipay.kabao.pass.addAlipass")
  @CheckLogin
  public abstract PassInfoResult addAlipass(String paramString);

  @OperationType("alipay.kabao.pass.asynCreateAlipass")
  public abstract PassAddResult asynCreateAlipass(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.manager.ThirdEvoucherCreateManager
 * JD-Core Version:    0.6.2
 */