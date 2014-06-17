package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;

public class FundApplyQuickOpenResult extends KabaoCommonResult
  implements Serializable
{
  public String amount;
  public int errJumpIndex = 0;
  public String expressCacheKey;
  public String hiddenedMobile;
  public boolean needSmsCheck = false;
  public String profitDate;
  public String tairKey;
  public String tradeNo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundApplyQuickOpenResult
 * JD-Core Version:    0.6.2
 */