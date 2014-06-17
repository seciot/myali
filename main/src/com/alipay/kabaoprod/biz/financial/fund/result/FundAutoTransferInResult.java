package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.Map;

public class FundAutoTransferInResult extends KabaoCommonResult
  implements Serializable
{
  public Map<String, String> extraInfo;
  public String leftAmount;
  public String status;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundAutoTransferInResult
 * JD-Core Version:    0.6.2
 */