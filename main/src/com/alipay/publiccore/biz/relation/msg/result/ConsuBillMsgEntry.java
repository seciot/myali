package com.alipay.publiccore.biz.relation.msg.result;

import java.util.List;
import java.util.Map;

public class ConsuBillMsgEntry extends BaseMsgEntry
{
  public String actionParam = null;
  public String actionType = null;
  public List<MsgNameValuePair> data;
  public Map<String, String> extInfo;
  public String title;

  public String getActionParam()
  {
    return this.actionParam;
  }

  public String getActionType()
  {
    return this.actionType;
  }

  public List<MsgNameValuePair> getData()
  {
    return this.data;
  }

  public Map<String, String> getExtInfo()
  {
    return this.extInfo;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setActionParam(String paramString)
  {
    this.actionParam = paramString;
  }

  public void setActionType(String paramString)
  {
    this.actionType = paramString;
  }

  public void setData(List<MsgNameValuePair> paramList)
  {
    this.data = paramList;
  }

  public void setExtInfo(Map<String, String> paramMap)
  {
    this.extInfo = paramMap;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.ConsuBillMsgEntry
 * JD-Core Version:    0.6.2
 */