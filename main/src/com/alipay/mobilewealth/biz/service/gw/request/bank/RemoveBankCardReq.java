package com.alipay.mobilewealth.biz.service.gw.request.bank;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class RemoveBankCardReq extends ToString
  implements Serializable
{
  public String cardIndexNo;
  public String cardType;
  public String instId;
  public String password;
  public String passwordType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.bank.RemoveBankCardReq
 * JD-Core Version:    0.6.2
 */