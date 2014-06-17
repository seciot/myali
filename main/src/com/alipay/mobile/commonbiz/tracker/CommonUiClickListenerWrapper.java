package com.alipay.mobile.commonbiz.tracker;

import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.common.logagent.ListenerInvocationHandler;
import com.alipay.mobile.common.promotion.intercept.IPromotionInterceptorManager;
import com.alipay.mobile.commonui.widget.APViewEventHelper.ClickListenerWrapper;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class CommonUiClickListenerWrapper
  implements APViewEventHelper.ClickListenerWrapper
{
  public View.OnClickListener wrap(View.OnClickListener paramOnClickListener)
  {
    Object localObject = (View.OnClickListener)new ListenerInvocationHandler(paramOnClickListener).getProxy(View.OnClickListener.class);
    IPromotionInterceptorManager localIPromotionInterceptorManager = (IPromotionInterceptorManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(IPromotionInterceptorManager.class.getName());
    if (localIPromotionInterceptorManager != null)
    {
      View.OnClickListener localOnClickListener = localIPromotionInterceptorManager.getOnClickListenerProxy((View.OnClickListener)localObject);
      if (localOnClickListener != null)
        localObject = localOnClickListener;
    }
    return localObject;
  }

  public AdapterView.OnItemClickListener wrap(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    return (AdapterView.OnItemClickListener)new ListenerInvocationHandler(paramOnItemClickListener).getProxy(AdapterView.OnItemClickListener.class);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.tracker.CommonUiClickListenerWrapper
 * JD-Core Version:    0.6.2
 */