package com.alipay.kabaoprod.biz.financial.account.request;

import com.alipay.kabaoprod.service.facade.request.CommonPageReq;

public class UserCouponListReq extends CommonPageReq
{
  public boolean needPaging = true;

  public boolean isNeedPaging()
  {
    return this.needPaging;
  }

  public void setNeedPaging(boolean paramBoolean)
  {
    this.needPaging = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.request.UserCouponListReq
 * JD-Core Version:    0.6.2
 */