package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.publiccore.core.model.account.MenuLayoutReq;
import com.alipay.publiccore.core.model.account.MenuLayoutResult;
import com.alipay.publiccore.core.model.account.UserAccountLayoutReq;
import com.alipay.publiccore.core.model.account.UserAccountLayoutResult;

public abstract interface UserAccountLayoutFacade
{
  @OperationType("alipay.publicplatform.account.getMenuInfo")
  public abstract MenuLayoutResult getMenuInfo(MenuLayoutReq paramMenuLayoutReq);

  @OperationType("alipay.publicplatform.account.getUserAccountLayout")
  public abstract UserAccountLayoutResult getUserAccountLayout(UserAccountLayoutReq paramUserAccountLayoutReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.UserAccountLayoutFacade
 * JD-Core Version:    0.6.2
 */