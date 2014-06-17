package com.alipay.mobile.commonui.widget;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

class APCheckCodeHorizontalView$2 extends TimerTask
{
  APCheckCodeHorizontalView$2(APCheckCodeHorizontalView paramAPCheckCodeHorizontalView)
  {
  }

  public void run()
  {
    APCheckCodeHorizontalView.access$810(this.this$0);
    Message localMessage = APCheckCodeHorizontalView.access$900(this.this$0).obtainMessage();
    if (APCheckCodeHorizontalView.access$800(this.this$0) > 0)
    {
      localMessage.what = 1;
      localMessage.obj = Integer.valueOf(APCheckCodeHorizontalView.access$800(this.this$0));
    }
    while (true)
    {
      APCheckCodeHorizontalView.access$900(this.this$0).sendMessage(localMessage);
      return;
      localMessage.what = 2;
      cancel();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView.2
 * JD-Core Version:    0.6.2
 */