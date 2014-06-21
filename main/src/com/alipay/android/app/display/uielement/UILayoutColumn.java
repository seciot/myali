package com.alipay.android.app.display.uielement;

import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.widget.LayoutColumn;
import org.json.JSONObject;

public class UILayoutColumn extends r
  implements ISubmitable
{
  private IUIElement a;
  private int b = -2;
  private int c = 0;

  private BaseAttrScriptable p()
  {
    if ((this.a != null) && ((this.a instanceof BaseAttrScriptable)))
      return (BaseAttrScriptable)this.a;
    return null;
  }

  public final ElementType a()
  {
    if (this.a == null)
      return ElementType.r;
    return this.a.a();
  }

  protected final String a(String paramString)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable == null)
      return null;
    return localBaseAttrScriptable.a(paramString);
  }

  public final void a(int paramInt)
  {
    if (this.a != null)
      this.a.a(paramInt);
  }

  protected final void a(Handler paramHandler)
  {
    super.a(paramHandler);
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.a(paramHandler);
  }

  protected final void a(Handler paramHandler, int paramInt)
  {
    super.a(paramHandler, paramInt);
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.a(paramHandler, paramInt);
  }

  protected final void a(Handler paramHandler, String paramString)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.a(paramHandler, paramString);
  }

  protected final void a(Handler paramHandler, String paramString1, String paramString2)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.a(paramHandler, paramString1, paramString2);
  }

  protected final void a(Handler paramHandler, boolean paramBoolean)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.a(paramHandler, paramBoolean);
  }

  protected final void a(ViewGroup.LayoutParams paramLayoutParams, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1));
    do
    {
      return;
      this.b = -2;
      if (ElementDimension.a.getInstance().equalsIgnoreCase(paramString1))
        this.c = 1;
      while (this.b > 0)
      {
        ((LayoutColumn)l()).setWidthFixValue(this.b);
        return;
        if (paramString1.indexOf("%") > 0)
        {
          String str = paramString1.replace("%", "");
          try
          {
            this.b = Integer.valueOf(str).intValue();
          }
          catch (Exception localException)
          {
            this.b = -2;
          }
        }
      }
      paramLayoutParams.height = -1;
      paramLayoutParams.width = this.b;
    }
    while ((this.c <= 0) || (!(paramLayoutParams instanceof LinearLayout.LayoutParams)));
    ((LinearLayout.LayoutParams)paramLayoutParams).weight = this.c;
  }

  protected final void a(EventType paramEventType, String paramString)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.a(paramEventType, paramString);
  }

  public final void a(IUIElement paramIUIElement)
  {
    super.a(paramIUIElement);
    this.a = paramIUIElement;
  }

  protected final void a(String paramString1, String paramString2)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.a(paramString1, paramString2);
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if (this.a != null)
      this.a.a(paramJSONObject1, paramJSONObject2);
  }

  protected final int b()
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      return localBaseAttrScriptable.b();
    return 8;
  }

  protected final void b(Handler paramHandler, String paramString)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.b(paramHandler, paramString);
  }

  protected final void b(Handler paramHandler, boolean paramBoolean)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.b(paramHandler, paramBoolean);
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable != null)
      localBaseAttrScriptable.c(paramHandler, paramBoolean);
  }

  protected final boolean c()
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable == null)
      return false;
    return localBaseAttrScriptable.c();
  }

  protected final String d()
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable == null)
      return null;
    return localBaseAttrScriptable.d();
  }

  public void dispose()
  {
    super.dispose();
    this.a = null;
  }

  protected final String e()
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable == null)
      return null;
    return localBaseAttrScriptable.e();
  }

  protected final boolean f()
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable == null)
      return false;
    return localBaseAttrScriptable.f();
  }

  protected final boolean g()
  {
    BaseAttrScriptable localBaseAttrScriptable = p();
    if (localBaseAttrScriptable == null)
      return false;
    return localBaseAttrScriptable.g();
  }

  public final int[] h()
  {
    if (this.a != null)
      return this.a.h();
    return null;
  }

  protected final boolean i()
  {
    return false;
  }

  public final ISubmitable.SubmitValue getRequireBundleName()
  {
    if ((this.a != null) && ((this.a instanceof ISubmitable)))
      return ((ISubmitable)this.a).getRequireBundleName();
    return null;
  }

  public final boolean k()
  {
    if (this.a == null);
    label121: 
    while (true)
    {
      return true;
      StringBuilder localStringBuilder1 = new StringBuilder();
      if (b() == 0);
      for (boolean bool1 = true; ; bool1 = false)
      {
        if ("false".equals(bool1))
          break label121;
        BaseAttrScriptable localBaseAttrScriptable = p();
        if (localBaseAttrScriptable != null)
        {
          StringBuilder localStringBuilder2 = new StringBuilder();
          int i = localBaseAttrScriptable.b();
          boolean bool2 = false;
          if (i == 0)
            bool2 = true;
          if ("false".equals(bool2))
            break;
        }
        if (!(this.a instanceof ISubmitable))
          break;
        return ((ISubmitable)this.a).k();
      }
    }
  }

  protected final int m()
  {
    return R.layout.J;
  }

  public final String n()
  {
    if (this.a == null)
      return super.n();
    return this.a.n();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UILayoutColumn
 * JD-Core Version:    0.6.2
 */