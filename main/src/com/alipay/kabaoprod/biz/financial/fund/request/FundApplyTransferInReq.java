package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class FundApplyTransferInReq extends ToString
  implements Serializable
{
  public String amount;
  public String fundCode;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundApplyTransferInReq
 * JD-Core Version:    0.6.2
 */