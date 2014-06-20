package com.alipay.android.app.pay;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.alipay.android.app.display.uielement.UILayoutPopup;
import com.alipay.android.app.display.windows.UIWindow;

final class i
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private boolean c = false;

  i(MainActivity paramMainActivity, UIWindow paramUIWindow)
  {
  }

  public final void onGlobalLayout()
  {
    if ((!this.c) && (MainActivity.b(this.b) != null))
    {
      MainActivity.b(this.b).getBundleName();
      MainActivity.b(this.b).b();
      this.c = true;
      MainActivity.a(this.b, this.a.d());
      if (MainActivity.c(this.b) != null)
        MainActivity.c(this.b).a(this.b, MainActivity.d(this.b));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.i
 * JD-Core Version:    0.6.2
 */