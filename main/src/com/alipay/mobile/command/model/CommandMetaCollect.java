package com.alipay.mobile.command.model;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class CommandMetaCollect
  implements Serializable
{
  private static final long serialVersionUID = 5701728744669529080L;
  private Map<String, CommandMetaWrap> commandWrapMap = new HashMap();

  public boolean containsCommandFileName(String paramString)
  {
    Iterator localIterator = this.commandWrapMap.values().iterator();
    while (localIterator.hasNext())
      if (((CommandMetaWrap)localIterator.next()).getUuid().equals(paramString.replaceAll(".apk", "")))
        return true;
    return false;
  }

  public Map<String, CommandMetaWrap> getCommandWrapMap()
  {
    return this.commandWrapMap;
  }

  public void setCommandWrapMap(Map<String, CommandMetaWrap> paramMap)
  {
    this.commandWrapMap = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.CommandMetaCollect
 * JD-Core Version:    0.6.2
 */