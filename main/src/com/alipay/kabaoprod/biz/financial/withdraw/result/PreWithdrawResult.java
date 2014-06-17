package com.alipay.kabaoprod.biz.financial.withdraw.result;

import com.alipay.kabaoprod.biz.financial.withdraw.pre.BankInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PreWithdrawResult extends KabaoCommonResult
  implements Serializable
{
  public String availableAmount;
  public List<BankInfo> bankList = new ArrayList();
  public String memo;
  public String onceAvailableAmount;
  public String passwordType;
  public String userName;
  public String withdrawCount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.withdraw.result.PreWithdrawResult
 * JD-Core Version:    0.6.2
 */