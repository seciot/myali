package com.alipay.publiccore.client.message;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class ConsuBillMsgEntry extends BaseMsgEntry
  implements Serializable
{
  public String actionParam = null;
  public String actionType = null;
  public List<MsgNameValuePair> data;
  public Map<String, String> extInfo;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.message.ConsuBillMsgEntry
 * JD-Core Version:    0.6.2
 */