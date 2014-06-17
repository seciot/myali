package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseRespVO;
import com.alipay.mobileprod.core.model.puc.domain.ChargeInst;
import java.io.Serializable;
import java.util.List;

public class QueryChargeBillByRemindResp extends BaseRespVO
  implements Serializable
{
  public String agreementUrl;
  public String billKey;
  public List<ChargeInst> chargeInstList;
  public String city;
  public String groupId;
  public String instId;
  public String instName;
  public String ownerName;
  public String province;
  public String subBizType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByRemindResp
 * JD-Core Version:    0.6.2
 */