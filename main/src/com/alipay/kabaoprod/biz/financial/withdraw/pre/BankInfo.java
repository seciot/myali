package com.alipay.kabaoprod.biz.financial.withdraw.pre;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class BankInfo
  implements Serializable
{
  public List<ArriveDateInfo> arriveDateList = new ArrayList();
  public String bankAccountNo;
  public String bankIcon;
  public String bankMark;
  public String bankName;
  public String cardNoLast4;
  public String cardWithdrawAmount;
  public String desc;
  public String type = "common";
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.withdraw.pre.BankInfo
 * JD-Core Version:    0.6.2
 */