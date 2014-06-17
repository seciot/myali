package com.alipay.mobilewealth.biz.service.gw.api.common;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.common.CloseTradeAndDelConsumeRecordReq;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;

public abstract interface FundTradeManager
{
  @OperationType("alipay.wealth.common.closeTradeAndDelConsumeRecord")
  @CheckLogin
  public abstract CommonResult closeTradeAndDelConsumeRecord(CloseTradeAndDelConsumeRecordReq paramCloseTradeAndDelConsumeRecordReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.common.FundTradeManager
 * JD-Core Version:    0.6.2
 */