package com.alipay.kabaoprod.biz.financial.withdraw.request;

import java.io.Serializable;

public class WithdrawReq
  implements Serializable
{
  public String amount;
  public String arrivedDateType;
  public String bankAccountNo;
  public String bankMark;
  public String fillType;
  public boolean needResendRandomCode;
  public String passwordType;
  public String payPassword;
  public String randomCode;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.withdraw.request.WithdrawReq
 * JD-Core Version:    0.6.2
 */