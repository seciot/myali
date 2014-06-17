package com.alipay.mobilesecurity.core.model.approve;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.io.Serializable;

public class ApproveRecord extends ToString
  implements Serializable
{
  public String address;
  public String approveDate;
  public String approveFrom;
  public String approveRecordText;
  public String id;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.approve.ApproveRecord
 * JD-Core Version:    0.6.2
 */