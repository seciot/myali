package com.alipay.mobile.common.transport.spdy.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;

class Platform$JettyNpnProvider
  implements InvocationHandler
{
  private final List a;
  private boolean b;
  private String c;

  public Platform$JettyNpnProvider(List paramList)
  {
    this.a = paramList;
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    String str = paramMethod.getName();
    Class localClass = paramMethod.getReturnType();
    if (paramArrayOfObject == null)
      paramArrayOfObject = Util.EMPTY_STRING_ARRAY;
    if ((str.equals("supports")) && (Boolean.TYPE == localClass))
      return Boolean.valueOf(true);
    if ((str.equals("unsupported")) && (Void.TYPE == localClass))
    {
      this.b = true;
      return null;
    }
    if ((str.equals("protocols")) && (paramArrayOfObject.length == 0))
      return this.a;
    if ((str.equals("selectProtocol")) && (String.class == localClass) && (paramArrayOfObject.length == 1) && ((paramArrayOfObject[0] == null) || ((paramArrayOfObject[0] instanceof List))))
    {
      this.c = ((String)this.a.get(0));
      return this.c;
    }
    if ((str.equals("protocolSelected")) && (paramArrayOfObject.length == 1))
    {
      this.c = ((String)paramArrayOfObject[0]);
      return null;
    }
    return paramMethod.invoke(this, paramArrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Platform.JettyNpnProvider
 * JD-Core Version:    0.6.2
 */