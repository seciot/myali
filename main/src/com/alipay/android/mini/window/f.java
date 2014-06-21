package com.alipay.android.mini.window;

import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.util.UIPropUtil;

final class f
  implements Runnable
{
  f(AbstractUIForm paramAbstractUIForm)
  {
  }

  public final void run()
  {
    BaseElement localBaseElement = this.a.a.stop();
    if ((localBaseElement != null) && (localBaseElement.z() != null))
      UIPropUtil.b(localBaseElement.z());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.f
 * JD-Core Version:    0.6.2
 */