package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.FundInfo;
import com.alipay.kabaoprod.biz.financial.fund.model.FundUserInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.BaseBankCard;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class FundOpenInfoResult extends KabaoCommonResult
  implements Serializable
{
  public List<BaseBankCard> bankCards;
  public Map<String, String> extraInfo;
  public FundInfo fundInfo;
  public FundUserInfo fundUserInfo;
  public boolean hasFundAccount;
  public String jumpIndex;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundOpenInfoResult
 * JD-Core Version:    0.6.2
 */