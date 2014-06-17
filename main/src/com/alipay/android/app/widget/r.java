package com.alipay.android.app.widget;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;
import android.widget.ScrollView;
import java.lang.ref.WeakReference;

final class r
  implements Runnable
{
  r(ResizeLayout paramResizeLayout)
  {
  }

  public final void run()
  {
    if ((ResizeLayout.access$000(this.a) == null) || (ResizeLayout.access$000(this.a).get() == null));
    View localView;
    do
    {
      return;
      localView = ((Activity)this.a.getContext()).getCurrentFocus();
    }
    while ((localView == null) || (!(localView instanceof EditText)));
    ResizeLayout.access$100(this.a, (ScrollView)ResizeLayout.access$000(this.a).get(), (EditText)localView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.r
 * JD-Core Version:    0.6.2
 */