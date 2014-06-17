package com.alipay.android.mini.window;

import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.uielement.IUIElement;
import java.util.Iterator;
import java.util.List;

final class d
  implements Runnable
{
  d(AbstractUIForm paramAbstractUIForm)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.a.a().iterator();
    while (localIterator.hasNext())
    {
      IUIElement localIUIElement = (IUIElement)localIterator.next();
      if ((localIUIElement instanceof BaseElement))
        ((BaseElement)localIUIElement).h();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.d
 * JD-Core Version:    0.6.2
 */