package com.alipay.mobilesecurity.core.model.account.device;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.io.Serializable;
import java.util.List;

public class DelAuthedDeviceReq extends ToString
  implements Serializable
{
  public String logonId;
  public List<String> tids;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.device.DelAuthedDeviceReq
 * JD-Core Version:    0.6.2
 */