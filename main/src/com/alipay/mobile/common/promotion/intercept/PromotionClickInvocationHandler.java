package com.alipay.mobile.common.promotion.intercept;

import android.view.View;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class PromotionClickInvocationHandler
  implements InvocationHandler
{
  private final String a = "PromotionClickInvocationHandler";
  private Object b = null;

  public PromotionClickInvocationHandler(Object paramObject)
  {
    this.b = paramObject;
  }

  public <T> T getProxy(Class<T> paramClass)
  {
    if (this.b == null)
      return null;
    return Proxy.newProxyInstance(this.b.getClass().getClassLoader(), new Class[] { paramClass }, this);
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    IPromotionInterceptorManager localIPromotionInterceptorManager = (IPromotionInterceptorManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(IPromotionInterceptorManager.class.getName());
    IPromotionInterceptor localIPromotionInterceptor2;
    if ((localIPromotionInterceptorManager != null) && (paramArrayOfObject != null) && (paramArrayOfObject.length == 1) && ((paramArrayOfObject[0] instanceof View)))
    {
      View localView = (View)paramArrayOfObject[0];
      if ((localIPromotionInterceptorManager.isEnable()) && (localIPromotionInterceptorManager.currentActivityHasInterceptor()))
      {
        localIPromotionInterceptor2 = localIPromotionInterceptorManager.match(new Object[] { localView }, "viewTrigger");
        if (localIPromotionInterceptor2 != null)
          localIPromotionInterceptorManager.setTriggerView(localView);
      }
    }
    for (IPromotionInterceptor localIPromotionInterceptor1 = localIPromotionInterceptor2; ; localIPromotionInterceptor1 = null)
    {
      if (localIPromotionInterceptor1 == null)
        localIPromotionInterceptorManager.setTriggerView(null);
      if ((localIPromotionInterceptor1 == null) || (!localIPromotionInterceptor1.isSwallow()))
        try
        {
          Object localObject = paramMethod.invoke(this.b, paramArrayOfObject);
          return localObject;
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          Throwable localThrowable = localInvocationTargetException.getCause();
          if (localThrowable != null)
            throw localThrowable;
          throw localInvocationTargetException;
        }
      return null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.PromotionClickInvocationHandler
 * JD-Core Version:    0.6.2
 */