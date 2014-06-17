package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseReqVO;
import java.io.Serializable;
import java.util.List;

public class QueryChargeBillReq extends BaseReqVO
  implements Serializable
{
  public String billDate;
  public String billKey;
  public List<QueryChargeBillReqExtendInfo> extend;
  public String groupId;
  public String instId;
  public String ownerName;
  public String password;
  public String payAmount;
  public String subBizType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillReq
 * JD-Core Version:    0.6.2
 */