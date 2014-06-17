package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class FundApplyTransferOutReq extends ToString
  implements Serializable
{
  public String fundCode;
  public String transferType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundApplyTransferOutReq
 * JD-Core Version:    0.6.2
 */