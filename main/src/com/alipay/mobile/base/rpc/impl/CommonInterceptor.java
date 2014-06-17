package com.alipay.mobile.base.rpc.impl;

import android.os.Bundle;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.ActionContext;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.RpcInterceptor;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

public class CommonInterceptor
  implements RpcInterceptor
{
  private static final ThreadLocal<Integer> a = new ThreadLocal();
  private static final ThreadLocal<AlipayLogAgent.ActionContext> b = new ThreadLocal();
  private PromotionRpcInterceptor c = new PromotionRpcInterceptor();

  private static void a(String paramString, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject)
  {
    OperationType localOperationType = (OperationType)paramMethod.getAnnotation(OperationType.class);
    if (localOperationType == null);
    for (String str = ""; ; str = localOperationType.value())
    {
      AlipayLogAgent.writeLog((AlipayLogAgent.ActionContext)b.get(), paramString + "_" + str, paramClass, paramMethod, paramArrayOfObject);
      return;
    }
  }

  public boolean exceptionHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, RpcException paramRpcException, Annotation paramAnnotation)
  {
    this.c.exceptionHandle(paramObject, paramThreadLocal, paramClass, paramMethod, paramArrayOfObject, paramRpcException, paramAnnotation);
    boolean bool = true;
    if (paramRpcException.getCode() == 2000)
    {
      if ((a.get() != null) && (((Integer)a.get()).intValue() > 1))
        bool = true;
    }
    else
      return bool;
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.getUserInfo() != null);
    for (String str1 = localAuthService.getUserInfo().getUserId(); ; str1 = null)
    {
      ThreadLocal localThreadLocal = a;
      if (a.get() == null);
      for (int i = 1; ; i = 1 + ((Integer)a.get()).intValue())
      {
        localThreadLocal.set(Integer.valueOf(i));
        if (((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).rpcAuth())
          break;
        a.set(Integer.valueOf(0));
        if (localAuthService.isLogin())
          break;
        throw new RpcException(Integer.valueOf(11), "login fail.");
      }
      if (localAuthService.getUserInfo() != null);
      for (String str2 = localAuthService.getUserInfo().getUserId(); ; str2 = null)
      {
        MicroApplicationContext localMicroApplicationContext;
        Bundle localBundle;
        if ((str1 != null) && (str2 != null) && (!str2.equals(str1)))
        {
          localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
          localBundle = new Bundle();
          localBundle.putString("actionType", "20000002");
        }
        try
        {
          localMicroApplicationContext.startApp(localMicroApplicationContext.findTopRunningApp().getAppId(), "20000001", localBundle);
          label292: throw new RpcException(Integer.valueOf(12), "change user.");
          try
          {
            paramThreadLocal.set(paramMethod.invoke(paramObject, paramArrayOfObject));
            return false;
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            throw new RpcException(Integer.valueOf(9), localIllegalArgumentException);
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            throw new RpcException(Integer.valueOf(9), localIllegalAccessException);
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            throw new RpcException(Integer.valueOf(9), localInvocationTargetException);
          }
        }
        catch (AppLoadException localAppLoadException)
        {
          break label292;
        }
      }
    }
  }

  public boolean postHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation)
  {
    this.c.postHandle(paramObject, paramThreadLocal, paramClass, paramMethod, paramArrayOfObject, paramAnnotation);
    a(AlipayLogAgent.ACTION_STATUS_RPC_RESPONSE, paramClass, paramMethod, paramArrayOfObject);
    return true;
  }

  public boolean preHandle(Object paramObject, ThreadLocal<Object> paramThreadLocal, Class<?> paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation, ThreadLocal<Map<String, Object>> paramThreadLocal1)
  {
    this.c.preHandle(paramObject, paramThreadLocal, paramClass, paramMethod, paramArrayOfObject, paramAnnotation, paramThreadLocal1);
    b.set(AlipayLogAgent.actionCtx);
    a(AlipayLogAgent.ACTION_STATUS_RPC_REQUEST, paramClass, paramMethod, paramArrayOfObject);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.rpc.impl.CommonInterceptor
 * JD-Core Version:    0.6.2
 */