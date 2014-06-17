package com.alipay.mobileprod.biz.recharge.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class QueryEcardReq extends BaseReqVO
{
  public String appId;
  public String mobile;
  public String sceneCode;

  public String getMobile()
  {
    return this.mobile;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.dto.QueryEcardReq
 * JD-Core Version:    0.6.2
 */