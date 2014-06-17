package com.alipay.publiccore.core.model.account;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class ButtonObjectList extends ToString
  implements Serializable
{
  public List<ButtonObject> buttonObjects;

  public List<ButtonObject> getButtonObjects()
  {
    return this.buttonObjects;
  }

  public void setButtonObjects(List<ButtonObject> paramList)
  {
    this.buttonObjects = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.core.model.account.ButtonObjectList
 * JD-Core Version:    0.6.2
 */