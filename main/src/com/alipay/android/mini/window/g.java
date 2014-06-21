package com.alipay.android.mini.window;

import com.alipay.android.mini.uielement.IUIElement;
import com.alipay.android.mini.uielement.UISimplePassword;
import java.util.Iterator;
import java.util.List;

final class g
  implements Runnable
{
  g(AbstractUIForm paramAbstractUIForm)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.a.getInstance().iterator();
    while (localIterator.hasNext())
    {
      IUIElement localIUIElement = (IUIElement)localIterator.next();
      if ((localIUIElement instanceof UISimplePassword))
      {
        UISimplePassword localUISimplePassword = (UISimplePassword)localIUIElement;
        if (localUISimplePassword.E())
          localUISimplePassword.h();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.g
 * JD-Core Version:    0.6.2
 */