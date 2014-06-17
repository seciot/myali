package com.alipay.mobilesecurity.core.model.approve;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;
import java.io.Serializable;

public class PrepareApproveReq extends ToString
  implements Serializable
{
  public String approveId;
  public String approveType;
  public String partnerId;
  public String targetId;
  public String targetType;
  public Tid tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.approve.PrepareApproveReq
 * JD-Core Version:    0.6.2
 */