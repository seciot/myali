package com.alipay.publiccore.common.service.facade.model;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class PublicEventConsuBillMsgEntry extends PublicEventBaseMsgEntry
  implements Serializable
{
  public String actionParam = null;
  public String actionType = null;
  public List<PublicEventMsgNameValuePair> data;
  public Map<String, String> extInfo;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.PublicEventConsuBillMsgEntry
 * JD-Core Version:    0.6.2
 */