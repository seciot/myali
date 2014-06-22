package com.alipay.android.mini.window;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class v
  implements View.OnClickListener
{
  v(MiniWebActivity paramMiniWebActivity)
  {
  }

  public final void onClick(View paramView)
  {
    MiniWebActivity.dexopt(this.a).reload();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.v
 * JD-Core Version:    0.6.2
 */