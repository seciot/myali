package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.util.Map;

public class BankCard extends ToString
{
  public String agreementNo;
  public String applyTime;
  public String cardIndexNo;
  public String cardNoLast4;
  public String cardType;
  public boolean enableApplyFP = false;
  public boolean enableDelete = false;
  public Map<String, String> extraInfo;
  public boolean hasBill;
  public String holderName;
  public String instId;
  public String instLogUrl;
  public String instMark;
  public String instName;
  public boolean isOwner;
  public String signId;
  public String sourceChannel;

  public String getAgreementNo()
  {
    return this.agreementNo;
  }

  public String getApplyTime()
  {
    return this.applyTime;
  }

  public String getCardIndexNo()
  {
    return this.cardIndexNo;
  }

  public String getCardNoLast4()
  {
    return this.cardNoLast4;
  }

  public String getCardType()
  {
    return this.cardType;
  }

  public Map<String, String> getExtraInfo()
  {
    return this.extraInfo;
  }

  public String getHolderName()
  {
    return this.holderName;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public String getInstLogUrl()
  {
    return this.instLogUrl;
  }

  public String getInstMark()
  {
    return this.instMark;
  }

  public String getInstName()
  {
    return this.instName;
  }

  public String getSignId()
  {
    return this.signId;
  }

  public String getSourceChannel()
  {
    return this.sourceChannel;
  }

  public boolean isEnableApplyFP()
  {
    return this.enableApplyFP;
  }

  public boolean isEnableDelete()
  {
    return this.enableDelete;
  }

  public boolean isHasBill()
  {
    return this.hasBill;
  }

  public boolean isOwner()
  {
    return this.isOwner;
  }

  public void setAgreementNo(String paramString)
  {
    this.agreementNo = paramString;
  }

  public void setApplyTime(String paramString)
  {
    this.applyTime = paramString;
  }

  public void setCardIndexNo(String paramString)
  {
    this.cardIndexNo = paramString;
  }

  public void setCardNoLast4(String paramString)
  {
    this.cardNoLast4 = paramString;
  }

  public void setCardType(String paramString)
  {
    this.cardType = paramString;
  }

  public void setEnableApplyFP(boolean paramBoolean)
  {
    this.enableApplyFP = paramBoolean;
  }

  public void setEnableDelete(boolean paramBoolean)
  {
    this.enableDelete = paramBoolean;
  }

  public void setExtraInfo(Map<String, String> paramMap)
  {
    this.extraInfo = paramMap;
  }

  public void setHasBill(boolean paramBoolean)
  {
    this.hasBill = paramBoolean;
  }

  public void setHolderName(String paramString)
  {
    this.holderName = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }

  public void setInstLogUrl(String paramString)
  {
    this.instLogUrl = paramString;
  }

  public void setInstMark(String paramString)
  {
    this.instMark = paramString;
  }

  public void setInstName(String paramString)
  {
    this.instName = paramString;
  }

  public void setOwner(boolean paramBoolean)
  {
    this.isOwner = paramBoolean;
  }

  public void setSignId(String paramString)
  {
    this.signId = paramString;
  }

  public void setSourceChannel(String paramString)
  {
    this.sourceChannel = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.BankCard
 * JD-Core Version:    0.6.2
 */