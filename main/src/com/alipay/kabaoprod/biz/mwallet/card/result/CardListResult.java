package com.alipay.kabaoprod.biz.mwallet.card.result;

import com.alipay.kabaoprod.biz.mwallet.card.model.CardModel;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.List;

public class CardListResult extends KabaoCommonResult
  implements Serializable
{
  public List<CardModel> cardList;
  public int hasMore = 0;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.card.result.CardListResult
 * JD-Core Version:    0.6.2
 */