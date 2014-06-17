package com.alipay.android.app.display.windows;

import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.sys.IDispose;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class WindowElements
  implements IDispose
{
  private Map a = new HashMap();
  private List b = new ArrayList();

  public final IUIElement a(String paramString)
  {
    if (this.a.containsKey(paramString))
      return (IUIElement)this.a.get(paramString);
    return null;
  }

  public final Set a()
  {
    return this.a.keySet();
  }

  public final void a(String paramString, IUIElement paramIUIElement)
  {
    int i = -1;
    try
    {
      if (this.a.containsKey(paramString))
      {
        IUIElement localIUIElement = (IUIElement)this.a.remove(paramString);
        int j = this.b.indexOf(localIUIElement);
        this.b.remove(localIUIElement);
        i = j;
      }
      if (i > 0)
        this.b.add(i, paramIUIElement);
      while (true)
      {
        this.a.put(paramString, paramIUIElement);
        return;
        this.b.add(paramIUIElement);
      }
    }
    finally
    {
    }
  }

  public final IUIElement[] b()
  {
    IUIElement[] arrayOfIUIElement = new IUIElement[this.b.size()];
    return (IUIElement[])this.b.toArray(arrayOfIUIElement);
  }

  public final void dispose()
  {
    this.a.clear();
    this.b.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.WindowElements
 * JD-Core Version:    0.6.2
 */