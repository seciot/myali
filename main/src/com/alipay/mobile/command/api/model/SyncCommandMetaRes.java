package com.alipay.mobile.command.api.model;

import java.io.Serializable;
import java.util.List;

public class SyncCommandMetaRes
  implements Serializable
{
  private static final long serialVersionUID = -5284382919900869743L;
  private List<CommandMeta> commandList;
  private List<String> inValidCommandUUID;

  public List<CommandMeta> getCommandList()
  {
    return this.commandList;
  }

  public List<String> getInValidCommandUUID()
  {
    return this.inValidCommandUUID;
  }

  public void setCommandList(List<CommandMeta> paramList)
  {
    this.commandList = paramList;
  }

  public void setInValidCommandUUID(List<String> paramList)
  {
    this.inValidCommandUUID = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.SyncCommandMetaRes
 * JD-Core Version:    0.6.2
 */