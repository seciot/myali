package com.alipay.mobileprod.biz.contact.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileprod.biz.contact.dto.ContactMatchRequest;
import com.alipay.mobileprod.biz.contact.dto.ContactMatchResponse;

public abstract interface MobileContactMatchService
{
  @OperationType("alipay.mobile.contact.queryBinding")
  public abstract ContactMatchResponse queryBindingInfo(ContactMatchRequest paramContactMatchRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.facade.MobileContactMatchService
 * JD-Core Version:    0.6.2
 */