package com.alipay.mobileprod.biz.pub;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileprod.biz.pub.dto.AddMobileAccountReq;
import com.alipay.mobileprod.biz.pub.dto.AddMobileAccountRes;

public abstract interface MobilePublicService
{
  @OperationType("alipay.public.support.addMobileAccount")
  public abstract AddMobileAccountRes addMobileAccount(AddMobileAccountReq paramAddMobileAccountReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.pub.MobilePublicService
 * JD-Core Version:    0.6.2
 */