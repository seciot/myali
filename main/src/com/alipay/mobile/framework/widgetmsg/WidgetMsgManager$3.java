package com.alipay.mobile.framework.widgetmsg;

import android.text.TextUtils;
import com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgDao;

class WidgetMsgManager$3
  implements Runnable
{
  WidgetMsgManager$3(WidgetMsgManager paramWidgetMsgManager, String paramString)
  {
  }

  public void run()
  {
    try
    {
      if (!TextUtils.isEmpty(WidgetMsgManager.access$300(this.this$0)))
      {
        WidgetMsgManager.access$600(this.this$0).dropWidgetMsg(WidgetMsgManager.access$300(this.this$0), this.val$widgetId);
        this.this$0.doWidgetMsgRefresh(null);
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.WidgetMsgManager.3
 * JD-Core Version:    0.6.2
 */