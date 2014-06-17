package com.alipay.mobile.base.rpc.impl;

import android.content.Context;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.RpcInterceptor;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class CtuInterceptor
  implements RpcInterceptor
{
  private Context a;

  public CtuInterceptor(Context paramContext)
  {
    this.a = paramContext;
  }

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
    if (paramThreadLocal1.get() == null)
      paramThreadLocal1.set(new HashMap());
    RpcDeviceInfo localRpcDeviceInfo = new RpcDeviceInfo();
    DeviceInfo localDeviceInfo = DeviceInfo.getInstance();
    localRpcDeviceInfo.a = localDeviceInfo.getCellInfo();
    localRpcDeviceInfo.g = localDeviceInfo.getImei();
    localRpcDeviceInfo.f = localDeviceInfo.getImsi();
    localRpcDeviceInfo.d = localDeviceInfo.getmScreenHeight();
    localRpcDeviceInfo.c = localDeviceInfo.getmScreenWidth();
    localRpcDeviceInfo.b = "android";
    localRpcDeviceInfo.e = localDeviceInfo.getUserAgent();
    localRpcDeviceInfo.j = String.valueOf(localDeviceInfo.ismRooted());
    String str1 = ((PayHelperServcie)((MicroApplicationContext)this.a).getExtServiceByInterface(PayHelperServcie.class.getName())).getPaySysInfo();
    if (str1 != null)
      localRpcDeviceInfo.k = str1;
    localRpcDeviceInfo.h = localDeviceInfo.getMacAddress();
    localRpcDeviceInfo.i = localDeviceInfo.getSSID();
    String str2 = localDeviceInfo.getLatitude();
    if (str2 != null)
      localRpcDeviceInfo.l = str2;
    String str3 = localDeviceInfo.getLongitude();
    if (str3 != null)
      localRpcDeviceInfo.m = str3;
    ((Map)paramThreadLocal1.get()).put("updateDeviceInfo", localRpcDeviceInfo);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.rpc.impl.CtuInterceptor
 * JD-Core Version:    0.6.2
 */