package com.alipay.siteprobe.core.model.rpc;

import com.alipay.siteprobe.common.util.ToString;
import java.io.Serializable;

public class RpcBaseResult extends ToString
  implements Serializable
{
  public String resultCode = "";
  public String resultMsg = "";
  public boolean success = true;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.siteprobe.core.model.rpc.RpcBaseResult
 * JD-Core Version:    0.6.2
 */