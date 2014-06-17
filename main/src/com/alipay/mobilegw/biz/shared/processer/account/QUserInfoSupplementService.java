package com.alipay.mobilegw.biz.shared.processer.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.common.service.facade.account.supplement.model.QUserInfoSupplementReq;
import com.alipay.mobileapp.common.service.facade.account.supplement.model.QUserInfoSupplementRes;

public abstract interface QUserInfoSupplementService
{
  @OperationType("alipay.user.account.quserInfoSupplement")
  public abstract QUserInfoSupplementRes supplementQUserInfo(QUserInfoSupplementReq paramQUserInfoSupplementReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.account.QUserInfoSupplementService
 * JD-Core Version:    0.6.2
 */