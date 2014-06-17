package com.alipay.mobilesecurity.core.model.approve;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;
import java.io.Serializable;
import java.util.Map;

public class CancelApproveReq extends ToString
  implements Serializable
{
  public String approveId;
  public String approveType;
  public Map<String, String> mobileOperationEnvironment;
  public Tid tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.approve.CancelApproveReq
 * JD-Core Version:    0.6.2
 */