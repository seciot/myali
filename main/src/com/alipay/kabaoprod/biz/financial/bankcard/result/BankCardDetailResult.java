package com.alipay.kabaoprod.biz.financial.bankcard.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.BankCard;
import com.alipay.kabaoprod.core.model.model.BizItem;
import java.util.List;

public class BankCardDetailResult extends KabaoCommonResult
{
  public List<BizItem> bankBizItems;
  public BankCard bankCard;
  public boolean hasSimplePassword = false;
  public List<BizItem> remindSetItems;
  public List<BizItem> selfBizItems;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.result.BankCardDetailResult
 * JD-Core Version:    0.6.2
 */