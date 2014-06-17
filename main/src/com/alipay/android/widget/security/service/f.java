package com.alipay.android.widget.security.service;

import android.app.Activity;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobilesecurity.biz.gw.service.bind.TaobaoBindingFacade;
import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoBindingQueryReq;
import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoBindingQueryRes;
import java.lang.ref.WeakReference;

final class f
  implements Runnable
{
  f(TaobaoBindingServiceImpl paramTaobaoBindingServiceImpl, String paramString)
  {
  }

  public final void run()
  {
    TaobaoBindingFacade localTaobaoBindingFacade = (TaobaoBindingFacade)TaobaoBindingServiceImpl.access$000(this.b).getRpcProxy(TaobaoBindingFacade.class);
    TaobaoBindingQueryReq localTaobaoBindingQueryReq = new TaobaoBindingQueryReq();
    localTaobaoBindingQueryReq.setMobile(this.a);
    TaobaoBindingQueryRes localTaobaoBindingQueryRes = localTaobaoBindingFacade.queryTaobaoBindingByMobile(localTaobaoBindingQueryReq);
    if (localTaobaoBindingQueryRes == null);
    Activity localActivity;
    do
    {
      WeakReference localWeakReference;
      do
      {
        return;
        localWeakReference = TaobaoBindingServiceImpl.access$100(this.b).getTopActivity();
      }
      while (localWeakReference == null);
      localActivity = (Activity)localWeakReference.get();
    }
    while (localActivity == null);
    localActivity.runOnUiThread(new g(this, localTaobaoBindingQueryRes));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.f
 * JD-Core Version:    0.6.2
 */