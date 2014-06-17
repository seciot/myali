package com.alipay.mobilewealth.biz.service.gw.request.bank;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class BankCardBalanceReq extends ToString
  implements Serializable
{
  public String password;
  public String passwordType;
  public String signId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.bank.BankCardBalanceReq
 * JD-Core Version:    0.6.2
 */