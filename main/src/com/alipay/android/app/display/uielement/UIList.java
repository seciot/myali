package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.display.event.OnElementEventListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class UIList
  implements IUIElement, IUIElementContainer
{
  private List a = new ArrayList();
  private ViewGroup b;
  private String c;
  private JSONArray d;
  private ElementStyle e = new ElementStyle();

  public final View a(Context paramContext, ViewGroup paramViewGroup)
  {
    if (this.b == null)
    {
      this.b = ((ViewGroup)LayoutInflater.from(paramContext).inflate(R.layout.N, paramViewGroup, false));
      ViewGroup.LayoutParams localLayoutParams = this.b.getLayoutParams();
      ElementFactory.a(this.b);
      this.e.a(localLayoutParams);
      this.e.c(this.b);
      if (this.a.size() > 0)
      {
        Iterator localIterator = this.a.iterator();
        while (localIterator.hasNext())
        {
          IUIElement localIUIElement = (IUIElementContainer)localIterator.next();
          this.b.addView(localIUIElement.a(paramContext, this.b));
        }
      }
      this.b.setVisibility(8);
    }
    return this.b;
  }

  public final ElementType a()
  {
    return ElementType.v;
  }

  public final void a(int paramInt)
  {
  }

  public final void a(OnElementEventListener paramOnElementEventListener)
  {
  }

  public final void a(IUIElement paramIUIElement)
  {
    this.a.add(paramIUIElement);
  }

  public final void a(JSONObject paramJSONObject)
  {
    this.e.a(paramJSONObject);
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    this.c = paramJSONObject1.optString("component");
    String str = paramJSONObject1.optString("ds");
    if ((!TextUtils.isEmpty(str)) && (paramJSONObject2 != null))
      this.d = paramJSONObject2.optJSONArray(str);
  }

  public final ElementType b()
  {
    return ElementType.a(this.c);
  }

  public final JSONArray c()
  {
    return this.d;
  }

  public final int[] h()
  {
    if (this.b != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.b.getId();
      return arrayOfInt;
    }
    return null;
  }

  public final String n()
  {
    return null;
  }

  public final ElementStyle o()
  {
    return this.e;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIList
 * JD-Core Version:    0.6.2
 */