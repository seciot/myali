package com.alipay.mobilewealth.biz.service.gw.request.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FundApplyTransferInReq extends ToString
  implements Serializable
{
  public String amount;
  public String fundCode;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.mfund.FundApplyTransferInReq
 * JD-Core Version:    0.6.2
 */