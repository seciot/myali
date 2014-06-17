package com.alipay.mobilesecurity.core.model.approve;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.io.Serializable;
import java.util.List;

public class QueryApproveRecordRes extends MobileSecurityResult
  implements Serializable
{
  public String maxId;
  public List<ApproveRecord> recordList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.approve.QueryApproveRecordRes
 * JD-Core Version:    0.6.2
 */