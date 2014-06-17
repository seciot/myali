package com.alipay.mobile.command.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ResourceMeta
  implements Serializable
{
  private static final long serialVersionUID = -356336590679903159L;
  private List<ResourceItem> items = new ArrayList();
  private String productVersion;

  public List<ResourceItem> getItems()
  {
    return this.items;
  }

  public String getProductVersion()
  {
    return this.productVersion;
  }

  public boolean incluedLoadFile(String paramString)
  {
    Iterator localIterator = this.items.iterator();
    while (localIterator.hasNext())
      if (((ResourceItem)localIterator.next()).getResourceName().equals(paramString))
        return true;
    return false;
  }

  public void setItems(List<ResourceItem> paramList)
  {
    this.items = paramList;
  }

  public void setProductVersion(String paramString)
  {
    this.productVersion = paramString;
  }

  public String toString()
  {
    return "ResourceMeta [productVersion=" + this.productVersion + ", items=" + this.items + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.ResourceMeta
 * JD-Core Version:    0.6.2
 */