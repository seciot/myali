package com.alipay.mobile.common.promotion.intercept;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class PromotionInterceptorManagerImpl$1 extends BroadcastReceiver
{
  PromotionInterceptorManagerImpl$1(PromotionInterceptorManagerImpl paramPromotionInterceptorManagerImpl)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.alipay.security.login"))
      this.this$0.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.PromotionInterceptorManagerImpl.1
 * JD-Core Version:    0.6.2
 */