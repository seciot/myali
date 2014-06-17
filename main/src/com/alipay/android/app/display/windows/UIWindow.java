package com.alipay.android.app.display.windows;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.alipay.android.app.R.dimen;
import com.alipay.android.app.display.event.OnElementEventListener;
import com.alipay.android.app.display.uielement.ElementFactory;
import com.alipay.android.app.display.uielement.ElementStyle;
import com.alipay.android.app.display.uielement.ElementType;
import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.display.uielement.IUIElementContainer;
import com.alipay.android.app.display.uielement.UIButtonGroup;
import com.alipay.android.app.display.uielement.UILayoutPopup;
import com.alipay.android.app.display.uielement.UIList;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UIWindow
{
  private IUIElement a;
  private IUIElement b;
  private IUIElement c;
  private UILayoutPopup d;
  private WeakReference e;
  private WeakReference f;

  public UIWindow(WindowElements paramWindowElements, OnElementEventListener paramOnElementEventListener)
  {
    this.e = new WeakReference(paramWindowElements);
    this.f = new WeakReference(paramOnElementEventListener);
  }

  private IUIElement a(IUIElementContainer paramIUIElementContainer, JSONObject paramJSONObject1, JSONObject paramJSONObject2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IUIElement localIUIElement1 = ElementFactory.a(paramJSONObject1);
    if (localIUIElement1 == null);
    label289: label467: UIList localUIList;
    JSONArray localJSONArray1;
    do
    {
      JSONObject localJSONObject1;
      do
      {
        return localIUIElement1;
        localIUIElement1.o().a(paramInt1, paramInt2, paramInt3, paramInt4);
        localIUIElement1.a(paramJSONObject1, paramJSONObject2);
        a(localIUIElement1);
        if (paramIUIElementContainer == null)
          this.a = localIUIElement1;
        switch (h.a[localIUIElement1.a().ordinal()])
        {
        default:
          return localIUIElement1;
        case 1:
          localJSONObject1 = paramJSONObject1.optJSONObject("layout");
        case 2:
        }
      }
      while (localJSONObject1 == null);
      IUIElementContainer localIUIElementContainer1 = (IUIElementContainer)localIUIElement1;
      JSONArray localJSONArray2 = localJSONObject1.optJSONArray("rows");
      if (localJSONArray2 == null)
      {
        MonitorThread.a().a("rows data is null", null);
        return localIUIElement1;
      }
      int m = localJSONArray2.length();
      int n = m - 1;
      Resources localResources2 = GlobalContext.a().b().getResources();
      for (int i1 = 0; i1 < m; i1++)
      {
        JSONObject localJSONObject2 = localJSONArray2.optJSONObject(i1);
        if (localJSONObject2 != null)
        {
          JSONArray localJSONArray3 = localJSONObject2.optJSONArray("columns");
          if ((localJSONObject2 != null) && (localJSONObject2.length() > 0))
          {
            IUIElementContainer localIUIElementContainer2 = (IUIElementContainer)ElementFactory.a(ElementType.q);
            localIUIElementContainer1.a(localIUIElementContainer2);
            int i2 = (int)localResources2.getDimension(R.dimen.h);
            float f2;
            int i3;
            Resources localResources3;
            int i6;
            JSONObject localJSONObject3;
            JSONObject localJSONObject4;
            if (i1 < n)
            {
              f2 = 0.0F;
              i3 = (int)f2;
              if (localJSONArray3 == null)
                continue;
              int i4 = localJSONArray3.length();
              int i5 = i4 - 1;
              localResources3 = GlobalContext.a().b().getResources();
              i6 = 0;
              if (i6 >= i4)
                continue;
              localJSONObject3 = localJSONArray3.optJSONObject(i6);
              localJSONObject4 = localJSONObject3.optJSONObject("component");
              if (localJSONObject4 != null)
                if (i6 >= i5)
                  break label467;
            }
            for (float f3 = 0.0F; ; f3 = localResources3.getDimension(R.dimen.g))
            {
              int i7 = (int)f3;
              IUIElement localIUIElement3 = a(localIUIElementContainer2, localJSONObject4, paramJSONObject2, (int)localResources3.getDimension(R.dimen.f), i2, i7, i3);
              if (localIUIElement3 != null)
              {
                IUIElementContainer localIUIElementContainer3 = (IUIElementContainer)ElementFactory.a(ElementType.r);
                localIUIElementContainer3.a(localIUIElement3);
                localIUIElementContainer2.a(localIUIElementContainer3);
                JSONObject localJSONObject5 = localJSONObject3.optJSONObject("styles");
                if (localJSONObject5 != null)
                {
                  localIUIElementContainer3.a(localJSONObject5);
                  if (localIUIElement3.a() == ElementType.f)
                    ((IUIElementContainer)localIUIElement3).a(localJSONObject5);
                }
                a(localIUIElementContainer3);
              }
              i6++;
              break label289;
              f2 = localResources2.getDimension(R.dimen.d);
              break;
            }
          }
        }
      }
      localUIList = (UIList)localIUIElement1;
      localJSONArray1 = localUIList.c();
    }
    while ((localJSONArray1 == null) || (localJSONArray1.length() == 0));
    ElementType localElementType = localUIList.b();
    int i = localJSONArray1.length();
    Resources localResources1 = GlobalContext.a().b().getResources();
    int j = 0;
    while (j < i)
    {
      IUIElement localIUIElement2 = ElementFactory.a(localElementType);
      float f1;
      if (j > 0)
      {
        f1 = localResources1.getDimension(R.dimen.h);
        int k = (int)f1;
        localIUIElement2.o().a(0, k, 0, 0);
      }
      try
      {
        localIUIElement2.a(localJSONArray1.getJSONObject(j), paramJSONObject2);
        localUIList.a(localIUIElement2);
        a(localIUIElement2);
        j++;
        continue;
        f1 = 0.0F;
      }
      catch (JSONException localJSONException)
      {
        while (true)
          LogUtils.a(localJSONException);
      }
    }
  }

  private void a(IUIElement paramIUIElement)
  {
    if (paramIUIElement == null);
    String str;
    do
    {
      do
      {
        return;
        if (this.f != null)
          paramIUIElement.a((OnElementEventListener)this.f.get());
      }
      while (this.e.get() == null);
      str = paramIUIElement.n();
    }
    while (TextUtils.isEmpty(str));
    ((WindowElements)this.e.get()).a(str, paramIUIElement);
  }

  public final IUIElement a()
  {
    return this.a;
  }

  public final void a(JSONArray paramJSONArray)
  {
    if ((paramJSONArray == null) || (paramJSONArray.length() == 0))
      return;
    UIButtonGroup localUIButtonGroup = new UIButtonGroup();
    localUIButtonGroup.b(paramJSONArray);
    this.c = localUIButtonGroup;
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if (paramJSONObject1 == null);
    IUIElement localIUIElement;
    do
    {
      return;
      localIUIElement = ElementFactory.a(paramJSONObject1);
      this.b = localIUIElement;
    }
    while (localIUIElement == null);
    localIUIElement.a(paramJSONObject1, paramJSONObject2);
  }

  public final IUIElement b()
  {
    return this.b;
  }

  public final void b(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if (paramJSONObject1 == null);
    do
    {
      return;
      this.d = ((UILayoutPopup)ElementFactory.a(paramJSONObject1));
    }
    while (this.d == null);
    this.d.b((OnElementEventListener)this.f.get());
    this.d.a((WindowElements)this.e.get());
    this.d.a(paramJSONObject1.optJSONObject("layout"), paramJSONObject2);
  }

  public final IUIElement c()
  {
    return this.c;
  }

  public final IUIElement c(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    return a(null, paramJSONObject1, paramJSONObject2, 0, 0, 0, 0);
  }

  public final UILayoutPopup d()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.UIWindow
 * JD-Core Version:    0.6.2
 */