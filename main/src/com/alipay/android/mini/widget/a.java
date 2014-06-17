package com.alipay.android.mini.widget;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;

final class a
  implements Runnable
{
  a(CustomScrollView paramCustomScrollView)
  {
  }

  public final void run()
  {
    View localView = ((Activity)this.a.getContext()).getCurrentFocus();
    if ((localView != null) && ((localView instanceof EditText)))
      CustomScrollView.access$000(this.a, (EditText)localView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.a
 * JD-Core Version:    0.6.2
 */