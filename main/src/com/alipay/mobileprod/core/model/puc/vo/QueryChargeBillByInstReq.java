package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseReqVO;
import java.io.Serializable;

public class QueryChargeBillByInstReq extends BaseReqVO
  implements Serializable
{
  public String billKey;
  public String instId;
  public String subBizType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByInstReq
 * JD-Core Version:    0.6.2
 */