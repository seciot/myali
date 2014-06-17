package com.alipay.kabaoprod.biz.financial.bankcard.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class CardCountAndMarkDetailResult extends KabaoCommonResult
{
  public int cardCount;
  public boolean isMark;

  public int getCardCount()
  {
    return this.cardCount;
  }

  public boolean isMark()
  {
    return this.isMark;
  }

  public void setCardCount(int paramInt)
  {
    this.cardCount = paramInt;
  }

  public void setMark(boolean paramBoolean)
  {
    this.isMark = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.result.CardCountAndMarkDetailResult
 * JD-Core Version:    0.6.2
 */