package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseReqVO;
import java.io.Serializable;
import java.util.List;

public class CreateOrderKeyReq extends BaseReqVO
  implements Serializable
{
  public String agentChannel;
  public String amount;
  public String billId;
  public String cacheKey;
  public List<CreateOrderKeyReqExtendInfo> extend;
  public String outOrderNo;
  public String promotion;
  public String subBizType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.CreateOrderKeyReq
 * JD-Core Version:    0.6.2
 */