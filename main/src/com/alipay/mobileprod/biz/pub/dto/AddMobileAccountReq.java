package com.alipay.mobileprod.biz.pub.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class AddMobileAccountReq extends BaseReqVO
{
  public String agreementId;
  public String followerId;
  public String instId;
  public String mobile;
  public String publicId;

  public String getAgreementId()
  {
    return this.agreementId;
  }

  public String getFollowerId()
  {
    return this.followerId;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public String getMobile()
  {
    return this.mobile;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
  }

  public void setFollowerId(String paramString)
  {
    this.followerId = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.pub.dto.AddMobileAccountReq
 * JD-Core Version:    0.6.2
 */