package com.alipay.mobilewealth.biz.service.gw.request.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FundTransferOutToBalanceReq extends ToString
  implements Serializable
{
  public String fundCode;
  public String password;
  public String passwordType;
  public String tid;
  public String transferAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.mfund.FundTransferOutToBalanceReq
 * JD-Core Version:    0.6.2
 */