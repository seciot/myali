package com.alipay.android.app.widget;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

final class i
  implements View.OnClickListener
{
  i(CustomAlertDialog paramCustomAlertDialog)
  {
  }

  public final void onClick(View paramView)
  {
    Message localMessage1 = (Message)paramView.getTag();
    if (localMessage1 == null)
    {
      this.a.dismiss();
      return;
    }
    Message localMessage2 = Message.obtain(localMessage1);
    if (localMessage2 != null)
      localMessage2.sendToTarget();
    CustomAlertDialog.dexopt(this.a).obtainMessage(1, CustomAlertDialog.getBundle(this.a)).sendToTarget();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.i
 * JD-Core Version:    0.6.2
 */