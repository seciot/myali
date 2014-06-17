package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseRespVO;
import java.io.Serializable;
import java.util.List;

public class QueryChargeBillResp extends BaseRespVO
  implements Serializable
{
  public String address;
  public String billKey;
  public boolean billKeyCanSubscriber;
  public String cacheKey;
  public boolean instCanSubscriber;
  public String instName;
  public String ownerName;
  public String tip;
  public List<InstBillOrderVO> utilityBillList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillResp
 * JD-Core Version:    0.6.2
 */