package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.Map;

public class FundTransferOutResult extends KabaoCommonResult
  implements Serializable
{
  public String canTransferTimes;
  public Map<String, String> extInfosMap;
  public String hiddenedMobile;
  public String mobile;
  public String tairKey;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundTransferOutResult
 * JD-Core Version:    0.6.2
 */