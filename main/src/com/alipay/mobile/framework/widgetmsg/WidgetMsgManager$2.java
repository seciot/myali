package com.alipay.mobile.framework.widgetmsg;

import android.text.TextUtils;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgDao;
import com.alipay.mobile.framework.widgetmsg.model.JsonWidgetMsgs;
import java.sql.SQLException;

class WidgetMsgManager$2
  implements Runnable
{
  WidgetMsgManager$2(WidgetMsgManager paramWidgetMsgManager, String paramString)
  {
  }

  public void run()
  {
    try
    {
      JsonWidgetMsgs localJsonWidgetMsgs = WidgetMsgManager.access$500(this.this$0, this.val$msg);
      if ((!TextUtils.isEmpty(WidgetMsgManager.access$300(this.this$0))) && (localJsonWidgetMsgs != null))
      {
        WidgetMsgManager.access$600(this.this$0).mergeWidgetMsg(localJsonWidgetMsgs.getU(), localJsonWidgetMsgs.getP());
        LogCatLog.v(WidgetMsgManager.access$200(), "muserid = " + WidgetMsgManager.access$300(this.this$0) + "  u = " + localJsonWidgetMsgs.getU());
        if (WidgetMsgManager.access$300(this.this$0).equals(localJsonWidgetMsgs.getU()))
          this.this$0.doWidgetMsgRefresh(null);
      }
      return;
    }
    catch (SQLException localSQLException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.WidgetMsgManager.2
 * JD-Core Version:    0.6.2
 */