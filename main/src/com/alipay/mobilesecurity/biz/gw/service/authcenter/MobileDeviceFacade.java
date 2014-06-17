package com.alipay.mobilesecurity.biz.gw.service.authcenter;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.core.model.authcenter.GetIndexAndServerTimeReq;
import com.alipay.mobilesecurity.core.model.authcenter.GetIndexAndServerTimeRes;
import com.alipay.mobilesecurity.core.model.authcenter.GetIndexReq;
import com.alipay.mobilesecurity.core.model.authcenter.GetIndexRes;
import com.alipay.mobilesecurity.core.model.authcenter.TidApplyReq;
import com.alipay.mobilesecurity.core.model.authcenter.TidApplyRes;
import com.alipay.mobilesecurity.core.model.mobiletoken.InitDeviceRes;
import com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenReq;

public abstract interface MobileDeviceFacade
{
  @OperationType("alipay.mobile.security.tid.applyTid")
  public abstract TidApplyRes applyTid(TidApplyReq paramTidApplyReq);

  @OperationType("alipay.mobile.security.index.getIndex")
  public abstract GetIndexRes getIndex(GetIndexReq paramGetIndexReq);

  @OperationType("alipay.mobile.security.logic.getIndexAndServerTime")
  public abstract GetIndexAndServerTimeRes getIndexAndServerTime(GetIndexAndServerTimeReq paramGetIndexAndServerTimeReq);

  @OperationType("alipay.mobile.security.apply.initDevice")
  public abstract InitDeviceRes initDevice(MobileTokenReq paramMobileTokenReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.authcenter.MobileDeviceFacade
 * JD-Core Version:    0.6.2
 */