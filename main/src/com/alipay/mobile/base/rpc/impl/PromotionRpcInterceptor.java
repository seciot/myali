package com.alipay.mobile.base.rpc.impl;

import com.alipay.mobile.common.promotion.intercept.IPromotionInterceptorManager;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.RpcInterceptor;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.annotation.OperationType;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Map;

public class PromotionRpcInterceptor
  implements RpcInterceptor
{
  private IPromotionInterceptorManager a = (IPromotionInterceptorManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(IPromotionInterceptorManager.class.getName());

  public boolean exceptionHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, RpcException paramRpcException, Annotation paramAnnotation)
  {
    return true;
  }

  public boolean postHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation)
  {
    if (paramAnnotation.annotationType() != OperationType.class);
    String str;
    Object localObject;
    do
    {
      do
      {
        return true;
        str = ((OperationType)paramAnnotation).value();
        localObject = paramThreadLocal.get();
      }
      while ((StringUtils.isEmpty(str)) || (this.a == null));
      this.a.removeInterceptorWithRpc(str);
    }
    while ((localObject == null) || (!this.a.addInterceptorWithRpc(str, localObject)));
    this.a.setEnable(true);
    return true;
  }

  public boolean preHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation, ThreadLocal<Map<String, Object>> paramThreadLocal1)
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.rpc.impl.PromotionRpcInterceptor
 * JD-Core Version:    0.6.2
 */