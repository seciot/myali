package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class FundApplyQuickOpenReq extends ToString
  implements Serializable
{
  public String cardHolderName;
  public String certNo;
  public String certType;
  public String expressCacheKey;
  public String mobile;
  public String tairKey;
  public String tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundApplyQuickOpenReq
 * JD-Core Version:    0.6.2
 */