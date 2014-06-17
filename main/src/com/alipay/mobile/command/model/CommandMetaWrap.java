package com.alipay.mobile.command.model;

import com.alipay.mobile.command.api.model.CommandMeta;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.CommandUtil.ExtFileBasePathEnum;
import java.io.File;
import java.io.Serializable;

public class CommandMetaWrap
  implements Serializable
{
  private static final long serialVersionUID = -3274114883852825228L;
  private CommandMeta commandMeta;
  private File self;

  public CommandMetaWrap(CommandMeta paramCommandMeta)
  {
    this.commandMeta = paramCommandMeta;
  }

  public File file()
  {
    return new File(CommandUtil.getDownLoadFilePath(CommandUtil.ExtFileBasePathEnum.CMD) + File.separatorChar + this.commandMeta.getUuid() + ".apk");
  }

  public String getJarContent()
  {
    return (String)CommandUtil.specifyProperty(this.commandMeta.getJarContent(), "");
  }

  public String getJarName()
  {
    return (String)CommandUtil.specifyProperty(this.commandMeta.getJarName(), "");
  }

  public String getMd5()
  {
    return (String)CommandUtil.specifyProperty(this.commandMeta.getMd5(), "");
  }

  public String getName()
  {
    return (String)CommandUtil.specifyProperty(this.commandMeta.getName(), "");
  }

  public File getSelf()
  {
    return this.self;
  }

  public String getSignature()
  {
    return (String)CommandUtil.specifyProperty(this.commandMeta.getSignature(), "");
  }

  public String getUuid()
  {
    return (String)CommandUtil.specifyProperty(this.commandMeta.getUuid(), "");
  }

  public String toString()
  {
    if (this.commandMeta == null)
      return "";
    return this.commandMeta.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.CommandMetaWrap
 * JD-Core Version:    0.6.2
 */