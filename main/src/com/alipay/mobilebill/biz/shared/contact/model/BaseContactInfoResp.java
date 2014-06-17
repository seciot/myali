package com.alipay.mobilebill.biz.shared.contact.model;

import com.alipay.mobile.framework.service.ext.BizResult;
import java.util.HashMap;
import java.util.Map;

public class BaseContactInfoResp extends ContactTemplate
{
  public String contactType;
  public Map<String, String> extInfo = new HashMap();
  public String myHeadImg;
  public String oppositeDesc;
  public String oppositeName;
  public BizResult result;

  public String getContactType()
  {
    return this.contactType;
  }

  public Map<String, String> getExtInfo()
  {
    return this.extInfo;
  }

  public String getMyHeadImg()
  {
    return this.myHeadImg;
  }

  public String getOppositeDesc()
  {
    return this.oppositeDesc;
  }

  public String getOppositeName()
  {
    return this.oppositeName;
  }

  public BizResult getResult()
  {
    return this.result;
  }

  public void setContactType(String paramString)
  {
    this.contactType = paramString;
  }

  public void setExtInfo(Map<String, String> paramMap)
  {
    this.extInfo = paramMap;
  }

  public void setMyHeadImg(String paramString)
  {
    this.myHeadImg = paramString;
  }

  public void setOppositeDesc(String paramString)
  {
    this.oppositeDesc = paramString;
  }

  public void setOppositeName(String paramString)
  {
    this.oppositeName = paramString;
  }

  public void setResult(BizResult paramBizResult)
  {
    this.result = paramBizResult;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.BaseContactInfoResp
 * JD-Core Version:    0.6.2
 */