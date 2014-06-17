package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.CommonProcotol;
import com.alipay.kabaoprod.core.model.model.ElementInfo;
import java.io.Serializable;
import java.util.List;

public class FundQuickOpenInputCardNoResult extends KabaoCommonResult
  implements Serializable
{
  public String bankLogo;
  public String bankName;
  public String cardHolderName;
  public String cardNoLast4;
  public String cardType;
  public String certNo;
  public boolean certified = false;
  public List<ElementInfo> checkItemList;
  public String expressCacheKey;
  public String instId;
  public List<CommonProcotol> procotols;
  public String tairKey;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundQuickOpenInputCardNoResult
 * JD-Core Version:    0.6.2
 */