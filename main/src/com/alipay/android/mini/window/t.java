package com.alipay.android.mini.window;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class t
  implements View.OnClickListener
{
  t(MiniWebActivity paramMiniWebActivity)
  {
  }

  public final void onClick(View paramView)
  {
    MiniWebActivity.b(this.a).goBack();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.t
 * JD-Core Version:    0.6.2
 */