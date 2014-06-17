package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class FundValidSMSReq extends ToString
  implements Serializable
{
  public String fillType;
  public String mobile;
  public String tairKey;
  public String validCode;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundValidSMSReq
 * JD-Core Version:    0.6.2
 */