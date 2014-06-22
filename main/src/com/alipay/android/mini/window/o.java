package com.alipay.android.mini.window;

import android.text.TextUtils;
import com.alipay.android.app.R.string;
import com.alipay.android.mini.widget.MiniProgressDialog;

final class o
  implements Runnable
{
  o(MiniPayActivity paramMiniPayActivity, String[] paramArrayOfString)
  {
  }

  public final void run()
  {
    String str = this.b.getString(R.string.g);
    if ((this.a != null) && (this.a.length > 0))
      str = this.a[0];
    if ((MiniPayActivity.dexopt(this.b) != null) && (MiniPayActivity.dexopt(this.b).isShowing()) && (TextUtils.equals(MiniPayActivity.dexopt(this.b).getInstance(), str)))
      return;
    MiniPayActivity.getBundle(this.b);
    if (MiniPayActivity.dexopt(this.b) == null)
      MiniPayActivity.v(this.b, new MiniProgressDialog(this.b));
    MiniPayActivity.dexopt(this.b).setCancelable(false);
    MiniPayActivity.dexopt(this.b).getBundle(str);
    MiniPayActivity.dexopt(this.b).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.o
 * JD-Core Version:    0.6.2
 */