package com.alipay.kabaoprod.biz.financial.account.api;

import com.alipay.kabaoprod.biz.financial.account.result.AccountQrCodeInfoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface QrCodeManager
{
  @OperationType("alipay.kabao.asset.account.qrcode.query.datail")
  @CheckLogin
  public abstract AccountQrCodeInfoResult getAccountQrCodeInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.api.QrCodeManager
 * JD-Core Version:    0.6.2
 */