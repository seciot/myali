package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.alipay.mobile.ui.R.string;

class APCheckCodeHorizontalView$TimerHanlder extends Handler
{
  private APCheckCodeHorizontalView$TimerHanlder(APCheckCodeHorizontalView paramAPCheckCodeHorizontalView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      int i = ((Integer)paramMessage.obj).intValue();
      if (i < 10);
      for (String str = "  " + i; ; str = i)
      {
        APCheckCodeHorizontalView.access$600(this.this$0).setText(APCheckCodeHorizontalView.access$500(this.this$0).replace("$s$", str));
        return;
      }
    case 2:
    }
    APCheckCodeHorizontalView.access$302(this.this$0, true);
    this.this$0.updateSendButtonEnableStatus();
    APCheckCodeHorizontalView.access$600(this.this$0).setText(this.this$0.getContext().getText(R.string.resendCheckCode));
    APCheckCodeHorizontalView.access$700(this.this$0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView.TimerHanlder
 * JD-Core Version:    0.6.2
 */