package com.alipay.android.mini.window;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.alipay.android.app.R.id;
import com.alipay.android.mini.uielement.BaseElement;
import java.util.Map;

final class af
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private boolean b = false;

  af(UIFormWindow paramUIFormWindow)
  {
  }

  public final void onGlobalLayout()
  {
    int i = 1;
    Map localMap1 = this.a.r;
    int[] arrayOfInt1 = new int[i];
    arrayOfInt1[0] = R.id.x;
    localMap1.put("mini_guide_img", arrayOfInt1);
    Map localMap2 = this.a.r;
    int[] arrayOfInt2 = new int[i];
    arrayOfInt2[0] = R.id.w;
    localMap2.put("mini_guide_btn", arrayOfInt2);
    if (!this.b)
    {
      this.b = i;
      boolean bool = UIFormWindow.a(this.a).a("info");
      if (this.a.h.getResources().getConfiguration().orientation != i)
        break label158;
      if ((!this.a.d) || (bool) || (i == 0))
        break label163;
      UIFormWindow.a(this.a).a(this.a.h, "info", this.a.a.b());
    }
    label158: label163: BaseElement localBaseElement;
    do
    {
      return;
      i = 0;
      break;
      localBaseElement = this.a.a.b();
    }
    while (localBaseElement == null);
    localBaseElement.g();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.af
 * JD-Core Version:    0.6.2
 */