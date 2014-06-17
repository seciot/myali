package com.alipay.android.mini.window;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class u
  implements View.OnClickListener
{
  u(MiniWebActivity paramMiniWebActivity)
  {
  }

  public final void onClick(View paramView)
  {
    MiniWebActivity.b(this.a).goForward();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.u
 * JD-Core Version:    0.6.2
 */