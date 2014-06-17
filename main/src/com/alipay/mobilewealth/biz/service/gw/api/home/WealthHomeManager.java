package com.alipay.mobilewealth.biz.service.gw.api.home;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.home.WealthInfoReq;
import com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeResult;

public abstract interface WealthHomeManager
{
  @OperationType("alipay.wealth.home.queryWealthHomeInfo")
  @CheckLogin
  public abstract WealthHomeResult queryWealthHomeInfo(WealthInfoReq paramWealthInfoReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.home.WealthHomeManager
 * JD-Core Version:    0.6.2
 */