package com.alipay.kabaoprod.biz.mwallet.card.result;

import com.alipay.kabaoprod.biz.mwallet.card.model.CardPreviewModel;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.List;

public class CardPreviewResult extends KabaoCommonResult
  implements Serializable
{
  public List<CardPreviewModel> cardPreviewList;
  public boolean isShowFollow;
  public String officialAccountId;
  public String officialAccountName;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.card.result.CardPreviewResult
 * JD-Core Version:    0.6.2
 */