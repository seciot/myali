package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseRespVO;
import com.alipay.mobileprod.core.model.puc.domain.ChargeInst;
import java.io.Serializable;
import java.util.List;

public class QueryChargeBillByHistoryBillKeyResp extends BaseRespVO
  implements Serializable
{
  public String address;
  public String agreementUrl;
  public String billKey;
  public boolean billKeyCanSubscriber;
  public String cacheKey;
  public ChargeInst chargeInst;
  public List<ChargeInst> chargeInstList;
  public String city;
  public boolean instCanSubscriber;
  public String instName;
  public String ownerName;
  public String province;
  public String tip;
  public List<InstBillOrderVO> utilityBillList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByHistoryBillKeyResp
 * JD-Core Version:    0.6.2
 */