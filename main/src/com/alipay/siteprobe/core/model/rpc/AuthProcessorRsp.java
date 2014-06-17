package com.alipay.siteprobe.core.model.rpc;

import java.io.Serializable;

public class AuthProcessorRsp extends RpcBaseResult
  implements Serializable
{
  public String failedMsg;
  public String gotoUrl;
  public String needUrl;
  public String otherAccessUrl;
  public String successMsg;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.siteprobe.core.model.rpc.AuthProcessorRsp
 * JD-Core Version:    0.6.2
 */