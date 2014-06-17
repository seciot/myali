package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;
import java.io.Serializable;

public class RemoveUserFromHistoryRecordReq extends BaseReqVO
  implements Serializable
{
  public String blackCardNo;
  public String blackUserId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.RemoveUserFromHistoryRecordReq
 * JD-Core Version:    0.6.2
 */