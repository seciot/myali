package com.alipay.mobilewealth.biz.service.gw.api.home;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.home.WealthInfoReq;
import com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeInfoResult;

public abstract interface WealthHomeInfoManager
{
  @OperationType("alipay.wealth.home.queryWealthHomeInfoV0320")
  @CheckLogin
  public abstract WealthHomeInfoResult queryWealthHomeInfoV0320(WealthInfoReq paramWealthInfoReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.home.WealthHomeInfoManager
 * JD-Core Version:    0.6.2
 */