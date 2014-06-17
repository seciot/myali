package com.alipay.mobile.framework.widgetmsg.model;

import com.alipay.mobileapp.biz.rpc.widgetmsg.model.WidgetMsg;
import java.util.List;

public class JsonWidgetMsgs
{
  private long a;
  private String b;
  private List<WidgetMsg> c;

  public List<WidgetMsg> getP()
  {
    return this.c;
  }

  public String getU()
  {
    return this.b;
  }

  public long getV()
  {
    return this.a;
  }

  public void setP(List<WidgetMsg> paramList)
  {
    this.c = paramList;
  }

  public void setU(String paramString)
  {
    this.b = paramString;
  }

  public void setV(long paramLong)
  {
    this.a = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.model.JsonWidgetMsgs
 * JD-Core Version:    0.6.2
 */