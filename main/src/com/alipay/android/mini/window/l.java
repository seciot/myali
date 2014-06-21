package com.alipay.android.mini.window;

import android.text.TextUtils;
import com.alipay.android.app.R.string;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.widget.SystemDefaultDialog;

final class l
  implements Runnable
{
  l(MiniPayActivity paramMiniPayActivity, String paramString1, ActionType[] paramArrayOfActionType1, ActionType[] paramArrayOfActionType2, String paramString2, String paramString3, String paramString4)
  {
  }

  public final void run()
  {
    MiniPayActivity.getBundle(this.g);
    if (TextUtils.isEmpty(this.a))
      this.g.getString(R.string.HostClassLoader);
    if (this.b != null);
    for (m localm = new m(this); ; localm = null)
    {
      if (this.c != null);
      for (n localn = new n(this); ; localn = null)
      {
        SystemDefaultDialog.a(this.g, this.d, this.e, localm, this.f, localn);
        return;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.l
 * JD-Core Version:    0.6.2
 */