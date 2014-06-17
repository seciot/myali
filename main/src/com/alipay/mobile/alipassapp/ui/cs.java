package com.alipay.mobile.alipassapp.ui;

import android.widget.Toast;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.common.widget.SimpleToast;

final class cs
  implements Runnable
{
  cs(AlipassRemindActivity paramAlipassRemindActivity)
  {
  }

  public final void run()
  {
    SimpleToast.makeToast(this.a, R.string.alipass_remind_save_fail, 0).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cs
 * JD-Core Version:    0.6.2
 */