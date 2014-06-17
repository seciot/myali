package com.alipay.mobile.base.rpc.impl;

import android.os.Bundle;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.RpcInterceptor;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Map;

public class LoginInterceptor
  implements RpcInterceptor
{
  public boolean exceptionHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, RpcException paramRpcException, Annotation paramAnnotation)
  {
    return true;
  }

  public boolean postHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation)
  {
    return true;
  }

  public boolean preHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation, ThreadLocal<Map<String, Object>> paramThreadLocal1)
  {
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (!localAuthService.isLogin())
    {
      new StringBuilder("start login:").append(System.currentTimeMillis()).toString();
      Bundle localBundle = new Bundle();
      if (paramAnnotation.annotationType() == CheckLogin.class)
        localBundle.putBoolean("allowBack", ((CheckLogin)paramAnnotation).allowBack());
      ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).auth();
      new StringBuilder("finish login:").append(System.currentTimeMillis()).toString();
      if (!localAuthService.isLogin())
        throw new RpcException(Integer.valueOf(11), "login fail.");
    }
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.rpc.impl.LoginInterceptor
 * JD-Core Version:    0.6.2
 */