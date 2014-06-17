package com.alipay.publiccore.client.model;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class OperateProperties extends ToString
  implements Serializable
{
  public static final String DELETE_TYPE_DISABLE = "disable";
  public static final String DELETE_TYPE_LOCAL = "local";
  public static final String DELETE_TYPE_REMOTE = "remote";
  public static final String TOP_TYPE_DEFAULT = "default";
  public static final String TOP_TYPE_FORCE = "force";
  private static final long serialVersionUID = 1L;
  private String defaultOrder;
  private String deleteType;
  private String topType;

  public String getDefaultOrder()
  {
    return this.defaultOrder;
  }

  public String getDeleteType()
  {
    return this.deleteType;
  }

  public String getTopType()
  {
    return this.topType;
  }

  public void setDefaultOrder(String paramString)
  {
    this.defaultOrder = paramString;
  }

  public void setDeleteType(String paramString)
  {
    this.deleteType = paramString;
  }

  public void setTopType(String paramString)
  {
    this.topType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.model.OperateProperties
 * JD-Core Version:    0.6.2
 */