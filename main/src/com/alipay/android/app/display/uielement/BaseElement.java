package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.display.event.OnElementEventListener;
import com.alipay.android.app.script.IDocumentScriptable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class BaseElement extends BaseAttrScriptable
  implements IUIElement
{
  private String a;
  private String b;
  private View c;
  private ElementStyle d = new ElementStyle();
  private WeakReference e;
  private Map f;
  private int g = 1;
  private int h = -2;
  private int i = -2;
  private boolean j = false;

  public final View a(Context paramContext, ViewGroup paramViewGroup)
  {
    if ((this.c == null) && (p() != 0))
      this.c = LayoutInflater.from(paramContext).inflate(p(), paramViewGroup, false);
    if (this.c != null)
    {
      this.d.b(this.c);
      ViewGroup.LayoutParams localLayoutParams = this.c.getLayoutParams();
      if (localLayoutParams != null)
      {
        localLayoutParams.width = this.h;
        localLayoutParams.height = this.i;
        this.c.setLayoutParams(localLayoutParams);
        this.d.a(localLayoutParams);
      }
      this.d.a(this.c);
      this.d.c(this.c);
      a(paramContext, this.c, this.d);
      if (this.j)
        this.c.getViewTreeObserver().addOnGlobalLayoutListener(new o(this));
      a(a_(), b());
      c(a_(), g());
    }
    return this.c;
  }

  protected final String a(EventType paramEventType)
  {
    if (this.f != null)
      return (String)this.f.get(paramEventType);
    return null;
  }

  public void a(int paramInt)
  {
    this.g = paramInt;
  }

  protected abstract void a(Context paramContext, View paramView, ElementStyle paramElementStyle);

  protected void a(Handler paramHandler, int paramInt)
  {
    a("visible", Integer.valueOf(paramInt));
    paramHandler.post(new p(this, paramInt, new MspEventArgs(EventType.h)));
  }

  protected final void a(View paramView)
  {
    if (this.d != null)
      this.d.a(paramView);
  }

  protected final void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setGravity(this.d.a());
    b(paramTextView, paramCharSequence);
  }

  protected final void a(EventType paramEventType, String paramString)
  {
    if (paramEventType == null)
      return;
    if (this.f.containsKey(paramEventType))
      this.f.remove(paramEventType);
    this.f.put(paramEventType, paramString);
  }

  protected final void a(MspEventArgs paramMspEventArgs)
  {
    if ((this.e != null) && (this.e.get() != null))
      ((OnElementEventListener)this.e.get()).a(this, paramMspEventArgs);
  }

  public final void a(OnElementEventListener paramOnElementEventListener)
  {
    this.e = new WeakReference(paramOnElementEventListener);
  }

  protected final void a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null)
      return;
    if (this.f == null)
      this.f = new HashMap();
    while (true)
    {
      for (int k = 0; k < paramJSONArray.length(); k++)
      {
        JSONObject localJSONObject = paramJSONArray.optJSONObject(k);
        if (localJSONObject != null)
        {
          String str1 = localJSONObject.optString("name");
          String str2 = localJSONObject.optString("script");
          EventType localEventType = EventType.a(str1);
          if (localEventType != null)
            this.f.put(localEventType, str2);
        }
      }
      break;
      this.f.clear();
    }
  }

  public void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    this.a = paramJSONObject1.optString("id", null);
    this.b = paramJSONObject1.optString("format");
    a("text", paramJSONObject1.optString("text"));
    a("value", paramJSONObject1.optString("value"));
    a("checked", Boolean.valueOf("true".equalsIgnoreCase(paramJSONObject1.optString("checked"))));
    a("toast_message", paramJSONObject1.optString("toast_message"));
    if ("false".equalsIgnoreCase(paramJSONObject1.optString("visible")))
    {
      a("visible", Integer.valueOf(8));
      if (!"false".equalsIgnoreCase(paramJSONObject1.optString("enable")))
        break label193;
      a("enable", Boolean.valueOf(false));
    }
    while (true)
    {
      if (paramJSONObject1.has("events"))
        a(paramJSONObject1.optJSONArray("events"));
      if (paramJSONObject1.has("styles"))
      {
        JSONObject localJSONObject = paramJSONObject1.optJSONObject("styles");
        this.d.a(localJSONObject);
      }
      return;
      a("visible", Integer.valueOf(0));
      break;
      label193: a("enable", Boolean.valueOf(true));
    }
  }

  protected final void b(TextView paramTextView, CharSequence paramCharSequence)
  {
    if (paramTextView == null)
      return;
    boolean bool = "text/html".equals(this.b);
    this.d.a(paramTextView, paramCharSequence, bool);
  }

  protected void c(Handler paramHandler, boolean paramBoolean)
  {
    a("enable", Boolean.valueOf(paramBoolean));
    if (this.c != null)
      a(new MspEventArgs(EventType.h));
  }

  public void dispose()
  {
    super.dispose();
    if (this.f != null)
      this.f.clear();
  }

  public IDocumentScriptable getById(String paramString)
  {
    return this;
  }

  protected final int l()
  {
    return this.g;
  }

  protected final Map m()
  {
    return this.f;
  }

  public final String n()
  {
    return this.a;
  }

  public final ElementStyle o()
  {
    return this.d;
  }

  protected abstract int p();

  protected final void q()
  {
    this.j = true;
  }

  protected void r()
  {
  }

  protected final boolean s()
  {
    if (this.c == null)
      return true;
    if (!g())
      return false;
    if (b() > 0)
      return false;
    if (this.c.getWidth() == 0)
      return false;
    for (ViewParent localViewParent = this.c.getParent(); localViewParent != null; localViewParent = localViewParent.getParent())
      if ((localViewParent instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)localViewParent;
        if ((localViewGroup.getVisibility() == 8) || (localViewGroup.getVisibility() == 4))
          return false;
      }
    return true;
  }

  protected final void t()
  {
    a(new q(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.BaseElement
 * JD-Core Version:    0.6.2
 */