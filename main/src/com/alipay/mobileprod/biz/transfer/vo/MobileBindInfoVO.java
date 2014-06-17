package com.alipay.mobileprod.biz.transfer.vo;

public class MobileBindInfoVO
{
  public boolean active;
  public String headUrl;
  public String limitAmount;
  public String showedId;
  public String sign;
  public String userId;
  public String userName;

  public String getShowedId()
  {
    return this.showedId;
  }

  public String getSign()
  {
    return this.sign;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public void setShowedId(String paramString)
  {
    this.showedId = paramString;
  }

  public void setSign(String paramString)
  {
    this.sign = paramString;
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
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.vo.MobileBindInfoVO
 * JD-Core Version:    0.6.2
 */