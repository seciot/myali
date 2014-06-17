package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.display.event.OnElementEventListener;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.app.util.UIUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

abstract class r extends BaseAttrScriptable
  implements IUIElementContainer
{
  private String a;
  private List b = new ArrayList();
  private LinearLayout c;
  private String d;
  private String e;
  private String f;
  private String g;
  private ElementStyle h = new ElementStyle();
  private OnElementEventListener i;

  public View a(Context paramContext, ViewGroup paramViewGroup)
  {
    if ((this.c == null) && (m() != 0))
    {
      this.c = ((LinearLayout)LayoutInflater.from(paramContext).inflate(m(), paramViewGroup, false));
      ElementFactory.a(this.c);
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        IUIElement localIUIElement = (IUIElement)localIterator.next();
        this.c.addView(localIUIElement.a(paramContext, this.c));
      }
      this.h.b(this.c);
      ViewGroup.LayoutParams localLayoutParams = this.c.getLayoutParams();
      if (localLayoutParams != null)
        a(localLayoutParams, this.d, this.e);
      this.c.setGravity(UIUtils.a(this.f) | UIUtils.b(this.g));
      this.h.a(localLayoutParams);
      this.h.c(this.c);
    }
    if (i())
      a(a_(), b());
    return this.c;
  }

  public void a(int paramInt)
  {
  }

  protected void a(Handler paramHandler, int paramInt)
  {
    a("visible", Integer.valueOf(paramInt));
    paramHandler.post(new s(this, paramInt));
    MspEventArgs localMspEventArgs = new MspEventArgs(EventType.h);
    if (this.i != null)
      this.i.a(this, localMspEventArgs);
  }

  protected abstract void a(ViewGroup.LayoutParams paramLayoutParams, String paramString1, String paramString2);

  public void a(OnElementEventListener paramOnElementEventListener)
  {
    this.i = paramOnElementEventListener;
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      ((IUIElement)localIterator.next()).a(paramOnElementEventListener);
  }

  public void a(IUIElement paramIUIElement)
  {
    this.b.add(paramIUIElement);
  }

  public void a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return;
    this.f = paramJSONObject.optString("align");
    this.g = paramJSONObject.optString("valign");
    this.d = paramJSONObject.optString("width");
    this.e = paramJSONObject.optString("height");
  }

  public void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    this.a = paramJSONObject1.optString("id", null);
    JSONObject localJSONObject = paramJSONObject1.optJSONObject("styles");
    this.h.a(localJSONObject);
    if ("false".equalsIgnoreCase(paramJSONObject1.optString("visible")))
    {
      a("visible", Integer.valueOf(8));
      return;
    }
    a("visible", Integer.valueOf(0));
  }

  public void dispose()
  {
    super.dispose();
    if (this.b != null)
    {
      for (int j = 0; j < this.b.size(); j++)
      {
        IUIElement localIUIElement = (IUIElement)this.b.get(j);
        if ((localIUIElement != null) && ((localIUIElement instanceof IDispose)))
          ((IDispose)localIUIElement).dispose();
      }
      this.b.clear();
    }
    this.b = null;
    this.c = null;
  }

  public int[] h()
  {
    if (this.c != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.c.getId();
      return arrayOfInt;
    }
    return null;
  }

  protected boolean i()
  {
    return true;
  }

  protected final ViewGroup l()
  {
    return this.c;
  }

  protected abstract int m();

  public String n()
  {
    return this.a;
  }

  public ElementStyle o()
  {
    return this.h;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.r
 * JD-Core Version:    0.6.2
 */