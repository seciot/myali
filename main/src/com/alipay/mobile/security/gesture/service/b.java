package com.alipay.mobile.security.gesture.service;

import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class b
  implements Advice
{
  b(GestureServiceImpl paramGestureServiceImpl)
  {
  }

  public final void onCallAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final Pair<Boolean, Object> onCallAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public final void onCallBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final void onExecutionAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public final void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    AccountService localAccountService = (AccountService)this.a.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName());
    if (localAccountService == null);
    UserInfo localUserInfo;
    do
    {
      return;
      localUserInfo = localAccountService.getUserInfoBySql(null, null);
    }
    while ((localUserInfo == null) || (GestureServiceImpl.access$000(this.a, localUserInfo)));
    localUserInfo.setAutoLogin(false);
    localAccountService.addUserInfo(localUserInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.service.b
 * JD-Core Version:    0.6.2
 */