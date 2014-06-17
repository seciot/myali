package com.alipay.mobilesecurity.core.model.account.device;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.io.Serializable;

public class DeviceInfo extends ToString
  implements Serializable
{
  public String deviceName;
  public String tid;
  public String useTime;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.device.DeviceInfo
 * JD-Core Version:    0.6.2
 */