package com.alipay.mobile.common.promotion.intercept;

import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class PromotionActivityAdvice
  implements Advice
{
  private final String a = "PromotionActivityAdvice";
  private IPromotionInterceptorManager b = (IPromotionInterceptorManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(IPromotionInterceptorManager.class.getName());

  public void onCallAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public Pair<Boolean, Object> onCallAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public void onCallBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public void onExecutionAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    if (this.b == null);
    while ((!"void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)".equals(paramString)) && (!"void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)".equals(paramString)))
      return;
    if (!this.b.currentActivityHasInterceptor())
      this.b.setEnable(false);
    while (true)
    {
      this.b.setTriggerView(null);
      return;
      this.b.setEnable(true);
    }
  }

  public Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.PromotionActivityAdvice
 * JD-Core Version:    0.6.2
 */