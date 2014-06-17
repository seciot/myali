package com.alipay.mobile.framework.widgetmsg;

import android.os.Handler;
import android.text.TextUtils;
import com.alipay.mobileapp.biz.rpc.widgetmsg.UserWidgetMsgService;
import com.alipay.mobileapp.biz.rpc.widgetmsg.model.UserWidgetResult;
import java.util.List;

class WidgetMsgManager$1
  implements Runnable
{
  WidgetMsgManager$1(WidgetMsgManager paramWidgetMsgManager)
  {
  }

  public void run()
  {
    try
    {
      List localList = WidgetMsgManager.access$000(this.this$0);
      if ((localList != null) && (!localList.isEmpty()))
      {
        if (localList.size() <= 0)
          return;
        UserWidgetResult localUserWidgetResult = WidgetMsgManager.access$100(this.this$0).ackAndGetWidgetMsgs(localList);
        WidgetMsgManager.access$200();
        StringBuilder localStringBuilder = new StringBuilder("getWidgetMsgs");
        if (localUserWidgetResult != null);
        for (Object localObject = Boolean.valueOf(localUserWidgetResult.isSuccess()); ; localObject = "fail")
        {
          localStringBuilder.append(localObject).toString();
          if ((localUserWidgetResult == null) || (!localUserWidgetResult.isSuccess()) || (TextUtils.isEmpty(WidgetMsgManager.access$300(this.this$0))))
            break;
          this.this$0.doWidgetMsgRefresh(null);
          WidgetMsgManager.access$400(this.this$0).sendEmptyMessage(0);
          return;
        }
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.WidgetMsgManager.1
 * JD-Core Version:    0.6.2
 */