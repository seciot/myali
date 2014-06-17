package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class FundQuickOpenInputCardNoReq extends ToString
  implements Serializable
{
  public String cardNo;
  public String cardType;
  public String instId;
  public String tairKey;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundQuickOpenInputCardNoReq
 * JD-Core Version:    0.6.2
 */