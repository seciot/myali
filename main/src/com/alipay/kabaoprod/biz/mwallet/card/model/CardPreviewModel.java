package com.alipay.kabaoprod.biz.mwallet.card.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class CardPreviewModel extends ToString
  implements Serializable
{
  public String backgroundColor;
  public String backgroundPng;
  public String cardName;
  public String cardType;
  public List<String> commonPrivilegeList;
  public String merchantName;
  public String tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.card.model.CardPreviewModel
 * JD-Core Version:    0.6.2
 */