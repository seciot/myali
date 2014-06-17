package com.alipay.mobilesecurity.core.model.account.device;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;
import java.io.Serializable;

public class QueryAuthedDeviceReq extends ToString
  implements Serializable
{
  public String logonId;
  public Tid tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceReq
 * JD-Core Version:    0.6.2
 */