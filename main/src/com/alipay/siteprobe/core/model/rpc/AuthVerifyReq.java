package com.alipay.siteprobe.core.model.rpc;

import com.alipay.siteprobe.common.util.ToString;
import java.io.Serializable;

public class AuthVerifyReq extends ToString
  implements Serializable
{
  public String input;
  public String wifiParams;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.siteprobe.core.model.rpc.AuthVerifyReq
 * JD-Core Version:    0.6.2
 */