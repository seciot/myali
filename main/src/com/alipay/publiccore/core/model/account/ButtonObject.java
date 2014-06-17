package com.alipay.publiccore.core.model.account;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class ButtonObject extends ToString
  implements Serializable
{
  public String actionParam;
  public String actionType;
  public String authType;
  public String clientPlatform;
  public String envMode;
  public String maxVersion;
  public String minVersion;
  public String msgShowType;
  public String name;
  public List<ButtonObject> subButton;

  public String getActionParam()
  {
    return this.actionParam;
  }

  public String getActionType()
  {
    return this.actionType;
  }

  public String getName()
  {
    return this.name;
  }

  public List<ButtonObject> getSubButton()
  {
    return this.subButton;
  }

  public void setActionParam(String paramString)
  {
    this.actionParam = paramString;
  }

  public void setActionType(String paramString)
  {
    this.actionType = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setSubButton(List<ButtonObject> paramList)
  {
    this.subButton = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.core.model.account.ButtonObject
 * JD-Core Version:    0.6.2
 */