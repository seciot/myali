package com.alipay.mobile.common.promotion.intercept;

import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class PromotionStartActivityAdvice
  implements Advice
{
  private final String a = "PromotionStartActivityAdvice";

  private static IPromotionInterceptor a(Object[] paramArrayOfObject)
  {
    return ((IPromotionInterceptorManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(IPromotionInterceptorManager.class.getName())).match(paramArrayOfObject, "jump");
  }

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
  }

  public Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    new StringBuilder().append(paramString).append(" onExecutionAround").toString();
    IPromotionInterceptor localIPromotionInterceptor;
    if (("void com.alipay.mobile.framework.app.ui.BaseActivity.finish()".equals(paramString)) || ("void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()".equals(paramString)))
      localIPromotionInterceptor = a(new Object[] { "", "", "", "" });
    for (int i = 1; localIPromotionInterceptor != null; i = 0)
    {
      localIPromotionInterceptor.preExec();
      if ((!localIPromotionInterceptor.isSwallow()) || (i != 0))
        break;
      return new Pair(Boolean.valueOf(true), null);
      localIPromotionInterceptor = a(paramArrayOfObject);
    }
    return null;
  }

  public void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.PromotionStartActivityAdvice
 * JD-Core Version:    0.6.2
 */