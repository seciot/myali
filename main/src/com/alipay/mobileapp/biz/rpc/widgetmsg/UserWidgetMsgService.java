package com.alipay.mobileapp.biz.rpc.widgetmsg;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.biz.rpc.widgetmsg.model.UserWidgetResult;
import java.util.List;

public abstract interface UserWidgetMsgService
{
  @OperationType("alipay.client.ackAndGetWidgetMsgs")
  public abstract UserWidgetResult ackAndGetWidgetMsgs(List<String> paramList);

  @OperationType("alipay.client.getWidgetMsgs")
  public abstract UserWidgetResult getWidgetMsgs();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.widgetmsg.UserWidgetMsgService
 * JD-Core Version:    0.6.2
 */