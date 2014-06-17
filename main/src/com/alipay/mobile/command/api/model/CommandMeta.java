package com.alipay.mobile.command.api.model;

import java.io.Serializable;

public class CommandMeta
  implements Serializable
{
  private static final long serialVersionUID = -4236052325311933510L;
  private String jarContent;
  private String jarName;
  private String md5;
  private String name;
  private String signature;
  private String uuid;

  public String getJarContent()
  {
    return this.jarContent;
  }

  public String getJarName()
  {
    return this.jarName;
  }

  public String getMd5()
  {
    return this.md5;
  }

  public String getName()
  {
    return this.name;
  }

  public String getSignature()
  {
    return this.signature;
  }

  public String getUuid()
  {
    return this.uuid;
  }

  public void setJarContent(String paramString)
  {
    this.jarContent = paramString;
  }

  public void setJarName(String paramString)
  {
    this.jarName = paramString;
  }

  public void setMd5(String paramString)
  {
    this.md5 = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
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
    return "CommandMeta [uuid=" + this.uuid + ", name=" + this.name + ", jarName=" + this.jarName + ", md5=" + this.md5 + ", signature=" + this.signature + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.CommandMeta
 * JD-Core Version:    0.6.2
 */