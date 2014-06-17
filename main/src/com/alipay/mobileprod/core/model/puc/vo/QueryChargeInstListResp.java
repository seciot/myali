package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseRespVO;
import com.alipay.mobileprod.core.model.puc.domain.ChargeInst;
import java.io.Serializable;
import java.util.List;

public class QueryChargeInstListResp extends BaseRespVO
  implements Serializable
{
  public String agreementUrl;
  public List<ChargeInst> chargeInstList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QueryChargeInstListResp
 * JD-Core Version:    0.6.2
 */