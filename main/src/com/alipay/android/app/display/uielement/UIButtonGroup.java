package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.view.View;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class UIButtonGroup extends BaseElement
{
  private UIButtonGroup.UIButtonItem[] a;

  public final ElementType a()
  {
    return ElementType.w;
  }

  protected final void a(Context paramContext, View paramView, ElementStyle paramElementStyle)
  {
  }

  public final void b(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null);
    while (true)
    {
      return;
      int i = paramJSONArray.length();
      if (i != 0)
      {
        this.a = new UIButtonGroup.UIButtonItem[i];
        for (int j = 0; j < i; j++)
        {
          JSONObject localJSONObject = paramJSONArray.optJSONObject(j);
          if (localJSONObject != null)
          {
            boolean bool = localJSONObject.has("events");
            Map localMap = null;
            if (bool)
            {
              a(localJSONObject.optJSONArray("events"));
              localMap = m();
            }
            this.a[j] = new UIButtonGroup.UIButtonItem();
            this.a[j].v(localJSONObject, localMap);
          }
        }
      }
    }
  }

  public final int[] h()
  {
    return null;
  }

  public final UIButtonGroup.UIButtonItem[] getAllBundles()
  {
    return this.a;
  }

  protected final int p()
  {
    return 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIButtonGroup
 * JD-Core Version:    0.6.2
 */