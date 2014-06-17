package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.FundShareInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.Map;

public class FundShareInfoResult extends KabaoCommonResult
{
  public Map<String, String> extraInfo;
  public FundShareInfo fundShareInfo;

  public Map<String, String> getExtraInfo()
  {
    return this.extraInfo;
  }

  public FundShareInfo getFundShareInfo()
  {
    return this.fundShareInfo;
  }

  public void setExtraInfo(Map<String, String> paramMap)
  {
    this.extraInfo = paramMap;
  }

  public void setFundShareInfo(FundShareInfo paramFundShareInfo)
  {
    this.fundShareInfo = paramFundShareInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundShareInfoResult
 * JD-Core Version:    0.6.2
 */