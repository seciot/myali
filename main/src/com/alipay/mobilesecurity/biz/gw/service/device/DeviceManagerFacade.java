package com.alipay.mobilesecurity.biz.gw.service.device;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.account.device.DelAuthedDeviceReq;
import com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceReq;
import com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceRes;

public abstract interface DeviceManagerFacade
{
  @OperationType("alipay.mobile.security.device.delAuthedDevicesByIds")
  public abstract MobileSecurityResult delAuthedDevicesByIds(DelAuthedDeviceReq paramDelAuthedDeviceReq);

  @OperationType("alipay.mobile.security.device.queryAuthedDeviceList")
  public abstract QueryAuthedDeviceRes queryAuthedDeviceList(QueryAuthedDeviceReq paramQueryAuthedDeviceReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.device.DeviceManagerFacade
 * JD-Core Version:    0.6.2
 */