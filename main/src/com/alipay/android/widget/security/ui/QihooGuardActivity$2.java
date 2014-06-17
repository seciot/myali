package com.alipay.android.widget.security.ui;

import android.os.Handler;
import android.os.Message;

class QihooGuardActivity$2 extends Handler
{
  QihooGuardActivity$2(QihooGuardActivity paramQihooGuardActivity)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    while (true)
    {
      try
      {
        switch (paramMessage.what)
        {
        default:
          QihooGuardActivity.c(this.a);
          super.handleMessage(paramMessage);
          return;
        case 1:
          QihooGuardActivity.a(this.a);
          this.a.dismissProgressDialog();
          continue;
        case 2:
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      QihooGuardActivity.a(this.a);
      this.a.dismissProgressDialog();
      this.a.alert(null, "获取失败，是否重试", "重试", new QihooGuardActivity.2.1(this), "不了", new QihooGuardActivity.2.2(this));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.QihooGuardActivity.2
 * JD-Core Version:    0.6.2
 */