package com.alipay.mobileprod.biz.transfer.vo;

import java.io.Serializable;
import java.util.Date;

public class TransferRecordVO
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public String amount;
  public String bankName;
  public String bankShortName;
  public String billNo;
  public String cardChannel;
  public String cardIndex;
  public String cardLastNo;
  public String cardNo;
  public boolean cardNoHidden;
  public Date createDate;
  public String extInfo;
  public String gmtPay;
  public String headImgpath;
  public boolean income;
  public boolean isShowRedDot;
  public String type;
  public String userAccount;
  public String userId;
  public String userName;

  public String getAmount()
  {
    return this.amount;
  }

  public String getBankName()
  {
    return this.bankName;
  }

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public String getBillNo()
  {
    return this.billNo;
  }

  public String getCardChannel()
  {
    return this.cardChannel;
  }

  public String getCardIndex()
  {
    return this.cardIndex;
  }

  public String getCardLastNo()
  {
    return this.cardLastNo;
  }

  public String getCardNo()
  {
    return this.cardNo;
  }

  public Date getCreateDate()
  {
    return this.createDate;
  }

  public String getGmtPay()
  {
    return this.gmtPay;
  }

  public String getHeadImgpath()
  {
    return this.headImgpath;
  }

  public String getType()
  {
    return this.type;
  }

  public String getUserAccount()
  {
    return this.userAccount;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public boolean isCardNoHidden()
  {
    return this.cardNoHidden;
  }

  public boolean isIncome()
  {
    return this.income;
  }

  public boolean isShowRedDot()
  {
    return this.isShowRedDot;
  }

  public void setAmount(String paramString)
  {
    this.amount = paramString;
  }

  public void setBankName(String paramString)
  {
    this.bankName = paramString;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }

  public void setBillNo(String paramString)
  {
    this.billNo = paramString;
  }

  public void setCardChannel(String paramString)
  {
    this.cardChannel = paramString;
  }

  public void setCardIndex(String paramString)
  {
    this.cardIndex = paramString;
  }

  public void setCardLastNo(String paramString)
  {
    this.cardLastNo = paramString;
  }

  public void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }

  public void setCardNoHidden(boolean paramBoolean)
  {
    this.cardNoHidden = paramBoolean;
  }

  public void setCreateDate(Date paramDate)
  {
    this.createDate = paramDate;
  }

  public void setGmtPay(String paramString)
  {
    this.gmtPay = paramString;
  }

  public void setHeadImgpath(String paramString)
  {
    this.headImgpath = paramString;
  }

  public void setIncome(boolean paramBoolean)
  {
    this.income = paramBoolean;
  }

  public void setShowRedDot(boolean paramBoolean)
  {
    this.isShowRedDot = paramBoolean;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }

  public void setUserAccount(String paramString)
  {
    this.userAccount = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.vo.TransferRecordVO
 * JD-Core Version:    0.6.2
 */