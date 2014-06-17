package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;

public class FundApplyTransferToBalanceResult extends KabaoCommonResult
  implements Serializable
{
  public String canTransferOutAmount;
  public String passwordType;
  public String quotaContent;
  public String totalAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferToBalanceResult
 * JD-Core Version:    0.6.2
 */