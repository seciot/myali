package com.alipay.android.app.display.uielement;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.script.IDocumentScriptable;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.app.util.LogUtils;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseAttrScriptable
  implements IDocumentScriptable, IDispose
{
  private static Handler a;
  private Map b = new HashMap();

  protected String a(String paramString)
  {
    try
    {
      if (this.b.containsKey(paramString))
      {
        String str = (String)this.b.get(paramString);
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  protected void a(Handler paramHandler)
  {
  }

  protected abstract void a(Handler paramHandler, int paramInt);

  protected void a(Handler paramHandler, String paramString)
  {
  }

  protected void a(Handler paramHandler, String paramString1, String paramString2)
  {
    a(paramString1, paramString2);
  }

  protected void a(Handler paramHandler, boolean paramBoolean)
  {
  }

  protected void a(EventType paramEventType, String paramString)
  {
  }

  protected final void a(String paramString, Object paramObject)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if (bool);
      while (true)
      {
        return;
        if (this.b.containsKey(paramString))
          this.b.remove(paramString);
        if ((paramObject != null) && (!TextUtils.isEmpty(paramObject.toString())))
          this.b.put(paramString, paramObject);
      }
    }
    finally
    {
    }
  }

  protected void a(String paramString1, String paramString2)
  {
    boolean bool = this instanceof IUIElement;
    ElementStyle localElementStyle = null;
    if (bool)
      localElementStyle = ((IUIElement)this).o();
    if (localElementStyle == null);
    do
    {
      return;
      if ("text-decoration".equals(paramString1))
      {
        localElementStyle.e(paramString2);
        a(a_());
        return;
      }
      if ("text-color".equals(paramString1))
      {
        localElementStyle.a(paramString2);
        a(a_());
        return;
      }
      if ("font-size".equals(paramString1))
      {
        localElementStyle.b(paramString2);
        a(a_());
        return;
      }
      if ("font-weight".equals(paramString1))
      {
        localElementStyle.c(paramString2);
        a(a_());
        return;
      }
    }
    while (!"font-style".equals(paramString1));
    localElementStyle.d(paramString2);
    a(a_());
  }

  protected final Handler a_()
  {
    try
    {
      if (a == null)
        a = new Handler(Looper.getMainLooper());
      Handler localHandler = a;
      return localHandler;
    }
    finally
    {
    }
  }

  public final String attr(String paramString)
  {
    String str;
    if ("visible".equalsIgnoreCase(paramString))
      if (b() == 0)
        str = "true";
    while (true)
    {
      if (TextUtils.isEmpty(str))
        str = null;
      return str;
      str = "false";
      continue;
      if ("checked".equalsIgnoreCase(paramString))
      {
        if (c())
          str = "true";
        else
          str = "false";
      }
      else if ("value".equalsIgnoreCase(paramString))
        str = e();
      else if ("text".equalsIgnoreCase(paramString))
        str = d();
      else if ("focus".equalsIgnoreCase(paramString))
      {
        if (f())
          str = "true";
        else
          str = "false";
      }
      else if ("enable".equalsIgnoreCase(paramString))
      {
        if (g())
          str = "true";
        else
          str = "false";
      }
      else
        str = a(paramString);
    }
  }

  public final void attr(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2));
    do
    {
      return;
      boolean bool1 = this instanceof IUIElement;
      String str = null;
      if (bool1)
        str = ((IUIElement)this).n();
      new StringBuilder("lua excute attr:").append(str).append("--").append(paramString1).append("--").append(paramString2).toString();
      LogUtils.g();
    }
    while (TextUtils.isEmpty(paramString1));
    a(paramString1, paramString2);
    if ("visible".equalsIgnoreCase(paramString1))
    {
      if ("true".equals(paramString2));
      for (int i = 0; ; i = 8)
      {
        a(a_(), i);
        return;
      }
    }
    if ("checked".equalsIgnoreCase(paramString1))
    {
      boolean bool4 = "true".equals(paramString2);
      a(a_(), bool4);
      return;
    }
    if ("value".equalsIgnoreCase(paramString1))
    {
      b(a_(), paramString2);
      return;
    }
    if ("text".equalsIgnoreCase(paramString1))
    {
      a(a_(), paramString2);
      return;
    }
    if ("focus".equalsIgnoreCase(paramString1))
    {
      boolean bool3 = "true".equals(paramString2);
      b(a_(), bool3);
      return;
    }
    if ("enable".equalsIgnoreCase(paramString1))
    {
      boolean bool2 = "true".equals(paramString2);
      c(a_(), bool2);
      return;
    }
    a(a_(), paramString1, paramString2);
  }

  protected int b()
  {
    try
    {
      if (this.b.containsKey("visible"))
      {
        int i = ((Integer)this.b.get("visible")).intValue();
        return i;
      }
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  protected void b(Handler paramHandler, String paramString)
  {
  }

  protected void b(Handler paramHandler, boolean paramBoolean)
  {
  }

  protected void c(Handler paramHandler, boolean paramBoolean)
  {
  }

  protected boolean c()
  {
    try
    {
      if (this.b.containsKey("checked"))
      {
        boolean bool = ((Boolean)this.b.get("checked")).booleanValue();
        return bool;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public String cache(String paramString)
  {
    return null;
  }

  public void cache(String paramString1, String paramString2)
  {
  }

  public final String checkInput()
  {
    if ((this instanceof ISubmitable))
    {
      if (((ISubmitable)this).k())
        return "true";
      return "false";
    }
    return "true";
  }

  protected String d()
  {
    try
    {
      if (this.b.containsKey("text"))
      {
        String str = this.b.get("text").toString();
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public void dispose()
  {
    if (this.b != null)
      this.b.clear();
  }

  protected String e()
  {
    try
    {
      if (this.b.containsKey("value"))
      {
        String str = this.b.get("value").toString();
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final void event(String paramString1, String paramString2, String paramString3)
  {
    EventType localEventType = EventType.a(paramString1);
    if (localEventType == null)
    {
      new StringBuilder("event name--").append(paramString1).append(" is error").toString();
      LogUtils.i();
      return;
    }
    a(localEventType, paramString3);
  }

  protected boolean f()
  {
    return false;
  }

  protected boolean g()
  {
    try
    {
      if (this.b.containsKey("enable"))
      {
        boolean bool = ((Boolean)this.b.get("enable")).booleanValue();
        return bool;
      }
    }
    catch (Exception localException)
    {
    }
    return true;
  }

  public IDocumentScriptable getById(String paramString)
  {
    return this;
  }

  public void putSubmitData(String paramString1, String paramString2)
  {
  }

  public void style(String paramString1, String paramString2)
  {
    boolean bool = this instanceof IUIElement;
    String str = null;
    if (bool)
      str = ((IUIElement)this).n();
    new StringBuilder("lua excute attr:").append(str).append("--").append(paramString1).append("--").append(paramString2).toString();
    LogUtils.g();
    a(paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.BaseAttrScriptable
 * JD-Core Version:    0.6.2
 */