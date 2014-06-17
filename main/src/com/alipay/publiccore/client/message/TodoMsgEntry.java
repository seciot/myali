package com.alipay.publiccore.client.message;

import java.io.Serializable;

public class TodoMsgEntry extends BaseMsgEntry
  implements Serializable
{
  public String actionParam = null;
  public String actionType = null;
  public String businessArgs;
  public String businessId;
  public String businessType;
  public String description = null;
  public String gmtCreateTime;
  public String gmtModifiedTime;
  public boolean iconCount;
  public String image = null;
  public String priority;
  public String publicId = null;
  public String remindScene;
  public String remindSceneCode;
  public String title = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.message.TodoMsgEntry
 * JD-Core Version:    0.6.2
 */