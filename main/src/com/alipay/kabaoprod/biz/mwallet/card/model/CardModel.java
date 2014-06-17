package com.alipay.kabaoprod.biz.mwallet.card.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class CardModel extends ToString
  implements Serializable
{
  public String backgroundColor;
  public String cardType;
  public String logo;
  public String logoText;
  public String partnerId;
  public String secondLogoText;
  public String tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.card.model.CardModel
 * JD-Core Version:    0.6.2
 */