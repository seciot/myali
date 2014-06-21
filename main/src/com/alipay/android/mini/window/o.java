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
    if ((MiniPayActivity.b(this.b) != null) && (MiniPayActivity.b(this.b).isShowing()) && (TextUtils.equals(MiniPayActivity.b(this.b).a(), str)))
      return;
    MiniPayActivity.getBundle(this.b);
    if (MiniPayActivity.b(this.b) == null)
      MiniPayActivity.a(this.b, new MiniProgressDialog(this.b));
    MiniPayActivity.b(this.b).setCancelable(false);
    MiniPayActivity.b(this.b).getBundle(str);
    MiniPayActivity.b(this.b).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.o
 * JD-Core Version:    0.6.2
 */