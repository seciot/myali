package com.alipay.mobile.commonui.widget;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

class APCheckCodeVerticalView$2 extends TimerTask
{
  APCheckCodeVerticalView$2(APCheckCodeVerticalView paramAPCheckCodeVerticalView)
  {
  }

  public void run()
  {
    APCheckCodeVerticalView.access$810(this.this$0);
    Message localMessage = APCheckCodeVerticalView.access$900(this.this$0).obtainMessage();
    if (APCheckCodeVerticalView.access$800(this.this$0) > 0)
    {
      localMessage.what = 1;
      localMessage.obj = Integer.valueOf(APCheckCodeVerticalView.access$800(this.this$0));
    }
    while (true)
    {
      APCheckCodeVerticalView.access$900(this.this$0).sendMessage(localMessage);
      return;
      localMessage.what = 2;
      cancel();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeVerticalView.2
 * JD-Core Version:    0.6.2
 */