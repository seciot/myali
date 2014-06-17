package com.alipay.mobilesecurity.core.model.account.device;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.io.Serializable;
import java.util.List;

public class QueryAuthedDeviceRes extends MobileSecurityResult
  implements Serializable
{
  public List<DeviceInfo> terminalInfoList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceRes
 * JD-Core Version:    0.6.2
 */