package com.alipay.mobile.look.biz.rpc;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class ResourceBindToBizRequest extends BaseRpcRequest
  implements Serializable
{
  private static final long serialVersionUID = 175204658075362046L;
  public String bizNo = null;
  public String bizType = null;
  public Map<String, String> extraDatas = new HashMap();
  public MobileFileResource mobileFileResource = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.look.biz.rpc.ResourceBindToBizRequest
 * JD-Core Version:    0.6.2
 */