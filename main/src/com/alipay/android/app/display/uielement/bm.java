package com.alipay.android.app.display.uielement;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import com.alipay.android.app.R.color;

final class bm
  implements View.OnTouchListener
{
  bm(UILink paramUILink, Resources paramResources)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 1:
    default:
      UILink.getBundle(this.b).setTextColor(this.a.getColor(R.color.DefaultThreadFactory));
    case 0:
    case 2:
    }
    while (true)
    {
      return false;
      UILink.getBundle(this.b).setTextColor(this.a.getColor(R.color.Bundleable));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bm
 * JD-Core Version:    0.6.2
 */