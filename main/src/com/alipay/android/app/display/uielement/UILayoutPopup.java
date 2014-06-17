package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.alipay.android.app.display.event.OnElementEventListener;
import com.alipay.android.app.display.windows.UIWindow;
import com.alipay.android.app.display.windows.WindowElements;
import com.alipay.android.app.sys.IDispose;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class UILayoutPopup
  implements IUIElement, IDispose
{
  private WeakReference a;
  private WeakReference b;
  private List c = new ArrayList();
  private List d = new ArrayList();

  public final View a(Context paramContext, ViewGroup paramViewGroup)
  {
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    int[] arrayOfInt = new int[2];
    paramViewGroup.getLocationInWindow(arrayOfInt);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = localDisplay.getWidth() - i - paramViewGroup.getWidth();
    int m = localDisplay.getHeight() - j - paramViewGroup.getHeight();
    Iterator localIterator = this.c.iterator();
    if (localIterator.hasNext())
    {
      IUIElement localIUIElement = ((UIWindow)localIterator.next()).a();
      View localView = localIUIElement.a(paramContext, null);
      PopupWindow localPopupWindow = new PopupWindow(paramContext);
      ElementStyle localElementStyle = localIUIElement.o();
      int n = i + localElementStyle.b();
      int i1 = k + localElementStyle.d();
      label161: int i2;
      int i3;
      if (localElementStyle.f() == 3)
      {
        i2 = j + localElementStyle.c();
        i3 = m + localElementStyle.e();
        if (localElementStyle.f() != 48)
          break label265;
      }
      while (true)
      {
        int i4 = localElementStyle.a();
        localPopupWindow.setBackgroundDrawable(null);
        localPopupWindow.setWidth(-2);
        localPopupWindow.setHeight(-2);
        localPopupWindow.setContentView(localView);
        localPopupWindow.showAtLocation(paramViewGroup, i4, n, i2);
        localPopupWindow.setOutsideTouchable(true);
        this.d.add(localPopupWindow);
        break;
        n = i1;
        break label161;
        label265: i2 = i3;
      }
    }
    return null;
  }

  public final ElementType a()
  {
    return ElementType.x;
  }

  public final void a(int paramInt)
  {
  }

  public final void a(OnElementEventListener paramOnElementEventListener)
  {
  }

  public final void a(WindowElements paramWindowElements)
  {
    this.a = new WeakReference(paramWindowElements);
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if (paramJSONObject1 == null);
    while (true)
    {
      return;
      JSONArray localJSONArray = paramJSONObject1.optJSONArray("list");
      if ((localJSONArray != null) && (localJSONArray.length() != 0))
        for (int i = 0; i < localJSONArray.length(); i++)
        {
          JSONObject localJSONObject1 = localJSONArray.optJSONObject(i);
          if (localJSONObject1 != null)
          {
            UIWindow localUIWindow = new UIWindow((WindowElements)this.a.get(), (OnElementEventListener)this.b.get());
            localUIWindow.c(localJSONObject1, paramJSONObject2);
            JSONObject localJSONObject2 = localJSONObject1.optJSONObject("styles");
            if (localJSONObject2 != null)
            {
              int j = localJSONObject2.optInt("margin_left", 0);
              int k = localJSONObject2.optInt("margin_top", 0);
              int m = localJSONObject2.optInt("margin_right", 0);
              int n = localJSONObject2.optInt("margin_bottom", 0);
              localUIWindow.a().o().a(j, k, m, n);
            }
            this.c.add(localUIWindow);
          }
        }
    }
  }

  public final void b(OnElementEventListener paramOnElementEventListener)
  {
    this.b = new WeakReference(paramOnElementEventListener);
  }

  public void dispose()
  {
    Iterator localIterator1 = this.c.iterator();
    while (localIterator1.hasNext())
    {
      UIWindow localUIWindow = (UIWindow)localIterator1.next();
      if ((localUIWindow instanceof IDispose))
        ((IDispose)localUIWindow).dispose();
    }
    Iterator localIterator2 = this.d.iterator();
    while (localIterator2.hasNext())
    {
      PopupWindow localPopupWindow = (PopupWindow)localIterator2.next();
      if ((localPopupWindow != null) && (localPopupWindow.isShowing()))
        localPopupWindow.dismiss();
    }
  }

  public final int[] h()
  {
    return null;
  }

  public final String n()
  {
    return null;
  }

  public final ElementStyle o()
  {
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UILayoutPopup
 * JD-Core Version:    0.6.2
 */