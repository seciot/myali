package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseRespVO;
import java.io.Serializable;
import java.util.List;

public class QueryHistoryBillKeysResp extends BaseRespVO
  implements Serializable
{
  public List<HistoryBillKeyVO> billKeyList;
  public String city;
  public String province;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QueryHistoryBillKeysResp
 * JD-Core Version:    0.6.2
 */