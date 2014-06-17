package com.alipay.mobile.framework.service.ext.logagent;

import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import java.util.ArrayList;
import java.util.List;

public class AgentLogInfo
{
  private BehaviourIdEnum a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private List<String> l = new ArrayList();

  public void addExtendParam(String paramString)
  {
    this.l.add(paramString);
  }

  public String getAppID()
  {
    return this.d;
  }

  public String getAppVersion()
  {
    return this.e;
  }

  public BehaviourIdEnum getBehaviourIdEnum()
  {
    return this.a;
  }

  public String getBehaviourPro()
  {
    return this.j;
  }

  public String getBehaviourStatus()
  {
    return this.b;
  }

  public List<String> getExtendParams()
  {
    return this.l;
  }

  public String getLogPro()
  {
    return this.k;
  }

  public String getRefViewID()
  {
    return this.g;
  }

  public String getSeed()
  {
    return this.h;
  }

  public String getStatusMessage()
  {
    return this.c;
  }

  public String getUrl()
  {
    return this.i;
  }

  public String getViewID()
  {
    return this.f;
  }

  public void setAppID(String paramString)
  {
    this.d = paramString;
  }

  public void setAppVersion(String paramString)
  {
    this.e = paramString;
  }

  public void setBehaviourIdEnum(BehaviourIdEnum paramBehaviourIdEnum)
  {
    this.a = paramBehaviourIdEnum;
  }

  public void setBehaviourPro(String paramString)
  {
    this.j = paramString;
  }

  public void setBehaviourStatus(String paramString)
  {
    this.b = paramString;
  }

  public void setExtendParams(List<String> paramList)
  {
    this.l = paramList;
  }

  public void setLogPro(String paramString)
  {
    this.k = paramString;
  }

  public void setRefViewID(String paramString)
  {
    this.g = paramString;
  }

  public void setSeed(String paramString)
  {
    this.h = paramString;
  }

  public void setStatusMessage(String paramString)
  {
    this.c = paramString;
  }

  public void setUrl(String paramString)
  {
    this.i = paramString;
  }

  public void setViewID(String paramString)
  {
    this.f = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.logagent.AgentLogInfo
 * JD-Core Version:    0.6.2
 */