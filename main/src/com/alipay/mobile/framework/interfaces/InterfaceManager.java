package com.alipay.mobile.framework.interfaces;

import java.util.HashMap;
import java.util.Map;

public class InterfaceManager
{
  private Map<String, RouterInterface> a = new HashMap();

  public <T> T findInterfaceByName(String paramString, Class<T> paramClass)
  {
    if ((paramString == null) || (paramClass == null))
      return null;
    if (this.a.get(paramString) == null)
      return null;
    if (paramClass.isAssignableFrom(((RouterInterface)this.a.get(paramString)).getClass()))
      return this.a.get(paramString);
    return null;
  }

  public boolean registerInterface(InterfaceDescription paramInterfaceDescription, RouterInterface paramRouterInterface)
  {
    if (this.a.containsKey(paramInterfaceDescription.getClassName()))
      return false;
    this.a.put(paramInterfaceDescription.getClassName(), paramRouterInterface);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.interfaces.InterfaceManager
 * JD-Core Version:    0.6.2
 */