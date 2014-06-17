package com.alipay.kabaoprod.biz.financial.bankcard.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.ElementInfo;
import java.io.Serializable;
import java.util.List;

public class InputElementResult extends KabaoCommonResult
  implements Serializable
{
  public String alipayProcotolUrl;
  public String bankLogo;
  public String bankName;
  public String bankProcotolUrl;
  public String cardHolderName;
  public String cardNoLast4;
  public String cardType;
  public String certNo;
  public boolean certified = false;
  public List<ElementInfo> checkItemList;
  public String expressCacheKey;
  public String instId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.result.InputElementResult
 * JD-Core Version:    0.6.2
 */