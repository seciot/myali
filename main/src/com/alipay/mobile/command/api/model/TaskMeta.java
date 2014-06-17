package com.alipay.mobile.command.api.model;

import java.io.Serializable;
import java.util.List;

public class TaskMeta
  implements Serializable
{
  private static final long serialVersionUID = 3550543465851600166L;
  private List<String> commandDependency;
  private List<String> cronExpress;
  private String md5;
  private String name;
  private String scriptContent;
  private String scriptName;
  private String signature;
  private String uuid;

  public List<String> getCommandDependency()
  {
    return this.commandDependency;
  }

  public List<String> getCronExpress()
  {
    return this.cronExpress;
  }

  public String getMd5()
  {
    return this.md5;
  }

  public String getName()
  {
    return this.name;
  }

  public String getScriptContent()
  {
    return this.scriptContent;
  }

  public String getScriptName()
  {
    return this.scriptName;
  }

  public String getSignature()
  {
    return this.signature;
  }

  public String getUuid()
  {
    return this.uuid;
  }

  public void setCommandDependency(List<String> paramList)
  {
    this.commandDependency = paramList;
  }

  public void setCronExpress(List<String> paramList)
  {
    this.cronExpress = paramList;
  }

  public void setMd5(String paramString)
  {
    this.md5 = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setScriptContent(String paramString)
  {
    this.scriptContent = paramString;
  }

  public void setScriptName(String paramString)
  {
    this.scriptName = paramString;
  }

  public void setSignature(String paramString)
  {
    this.signature = paramString;
  }

  public void setUuid(String paramString)
  {
    this.uuid = paramString;
  }

  public String toString()
  {
    return "TaskMeta [uuid=" + this.uuid + ", name=" + this.name + ", cronExpress=" + this.cronExpress + ", scriptName=" + this.scriptName + ", commandDependency=" + this.commandDependency + ", md5=" + this.md5 + ", signature=" + this.signature + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.TaskMeta
 * JD-Core Version:    0.6.2
 */