package com.alipay.mobileapp.biz.rpc.widgetmsg.model;

import java.util.List;

public class UserWidgetResult
{
  private String code;
  private boolean success;
  private List<WidgetMsg> widgetMsgs;

  public String getCode()
  {
    return this.code;
  }

  public List<WidgetMsg> getWidgetMsgs()
  {
    return this.widgetMsgs;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }

  public void setWidgetMsgs(List<WidgetMsg> paramList)
  {
    this.widgetMsgs = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.widgetmsg.model.UserWidgetResult
 * JD-Core Version:    0.6.2
 */