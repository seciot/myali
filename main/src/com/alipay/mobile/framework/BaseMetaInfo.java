package com.alipay.mobile.framework;

import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.interfaces.InterfaceDescription;
import com.alipay.mobile.framework.msg.BroadcastReceiverDescription;
import com.alipay.mobile.framework.service.ServiceDescription;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class BaseMetaInfo
{
  public List<ApplicationDescription> applications = new ArrayList();
  public List<BroadcastReceiverDescription> broadcastReceivers = new ArrayList();
  public String entry = null;
  public List<InterfaceDescription> interfaces = new ArrayList();
  public List<ServiceDescription> services = new ArrayList();

  public List<ApplicationDescription> getApplications()
  {
    return this.applications;
  }

  public List<BroadcastReceiverDescription> getBroadcastReceivers()
  {
    return this.broadcastReceivers;
  }

  public String getEntry()
  {
    return this.entry;
  }

  public List<ServiceDescription> getServices()
  {
    return this.services;
  }

  public void setApplications(List<ApplicationDescription> paramList)
  {
    this.applications = paramList;
  }

  public void setBroadcastReceivers(List<BroadcastReceiverDescription> paramList)
  {
    this.broadcastReceivers = paramList;
  }

  public void setClassLoader(ClassLoader paramClassLoader)
  {
    Iterator localIterator1 = this.applications.iterator();
    Iterator localIterator2;
    label29: Iterator localIterator3;
    label49: Iterator localIterator4;
    if (!localIterator1.hasNext())
    {
      localIterator2 = this.services.iterator();
      if (localIterator2.hasNext())
        break label97;
      localIterator3 = this.broadcastReceivers.iterator();
      if (localIterator3.hasNext())
        break label113;
      localIterator4 = this.interfaces.iterator();
    }
    while (true)
    {
      if (!localIterator4.hasNext())
      {
        return;
        ((MicroDescription)localIterator1.next()).setClassLoader(paramClassLoader);
        break;
        label97: ((MicroDescription)localIterator2.next()).setClassLoader(paramClassLoader);
        break label29;
        label113: ((MicroDescription)localIterator3.next()).setClassLoader(paramClassLoader);
        break label49;
      }
      ((MicroDescription)localIterator4.next()).setClassLoader(paramClassLoader);
    }
  }

  public void setEntry(String paramString)
  {
    this.entry = paramString;
  }

  public void setInterfaces(List<InterfaceDescription> paramList)
  {
    this.interfaces = paramList;
  }

  public void setServices(List<ServiceDescription> paramList)
  {
    this.services = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.BaseMetaInfo
 * JD-Core Version:    0.6.2
 */