package com.alipay.android.mini.window;

import android.app.Activity;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import com.alipay.android.app.R.id;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.event.MiniReadSmsArgs;
import com.alipay.android.mini.uielement.BaseComponent;
import com.alipay.android.mini.uielement.IUIComponet;
import com.alipay.android.mini.uielement.IUIElement;
import com.alipay.android.mini.uielement.UIInput;
import com.alipay.android.mini.util.ActionUtil;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.android.mini.util.MiniSmsReader;
import com.alipay.android.mini.util.UIPropUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AbstractUIForm extends IUIForm
{
  protected static boolean b;
  private JSONObject A = null;
  private String B;
  private MiniSmsReader C;
  private UISubForm D;
  private boolean E = false;
  protected MiniUiWindow a;
  protected boolean c;
  protected boolean d = false;
  protected boolean e = false;
  private List z = null;

  protected AbstractUIForm(BizUiData paramBizUiData)
  {
    super(paramBizUiData);
    this.p = false;
    b = false;
    this.r = new HashMap();
  }

  protected final LinearLayout a(View paramView)
  {
    if (this.e);
    for (LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(R.id.K); ; localLinearLayout = (LinearLayout)paramView.findViewById(R.id.D))
    {
      localLinearLayout.setVisibility(0);
      return localLinearLayout;
    }
  }

  protected final UISubForm a(String paramString)
  {
    if ((this.A == null) || (!this.A.has(paramString)))
      return null;
    JSONObject localJSONObject1 = this.A.optJSONObject(paramString);
    if (this.D == null)
      this.D = new UISubForm(this.f);
    JSONObject localJSONObject2 = new JSONObject();
    try
    {
      localJSONObject2.put("form", localJSONObject1);
      this.D.a(localJSONObject2);
      return this.D;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }

  protected final void a()
  {
    this.D.dispose();
    this.D = null;
  }

  public void a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    this.h = paramActivity;
    LinearLayout localLinearLayout1 = a(paramViewGroup);
    localLinearLayout1.removeAllViews();
    if (this.z != null)
    {
      if (this.e)
      {
        IUIComponet localIUIComponet1 = (IUIComponet)this.z.get(0);
        if (((localIUIComponet1 instanceof BaseComponent)) && (TextUtils.equals(localIUIComponet1.g(), "title")))
        {
          this.z.remove(localIUIComponet1);
          LinearLayout localLinearLayout3 = (LinearLayout)this.h.findViewById(R.id.T);
          localLinearLayout3.addView((View)localIUIComponet1.b(this.h, localLinearLayout3, this.c));
        }
        IUIComponet localIUIComponet2 = (IUIComponet)this.z.get(-1 + this.z.size());
        if (((localIUIComponet2 instanceof BaseComponent)) && (TextUtils.equals(localIUIComponet1.g(), "bottom")))
        {
          this.z.remove(localIUIComponet2);
          LinearLayout localLinearLayout2 = (LinearLayout)this.h.findViewById(R.id.t);
          localLinearLayout2.addView((View)localIUIComponet1.b(this.h, localLinearLayout2, this.c));
        }
      }
      Iterator localIterator = this.z.iterator();
      while (localIterator.hasNext())
        localLinearLayout1.addView((ViewGroup)((IUIComponet)localIterator.next()).b(paramActivity, localLinearLayout1, this.c));
    }
    localLinearLayout1.getViewTreeObserver().addOnGlobalLayoutListener(new b(this));
  }

  protected final void a(MiniEventArgs paramMiniEventArgs)
  {
    ActionType localActionType = paramMiniEventArgs.getEventType();
    String[] arrayOfString = ActionUtil.a(localActionType.e());
    String str1 = arrayOfString[1];
    String str2 = ActionUtil.c(str1);
    if (!TextUtils.isEmpty(str2))
    {
      Iterator localIterator = this.a.a().iterator();
      while (localIterator.hasNext())
      {
        IUIElement localIUIElement = (IUIElement)localIterator.next();
        if (TextUtils.equals(str2, localIUIElement.a()))
          if ((localIUIElement instanceof UIInput))
            arrayOfString[1] = ActionUtil.a(str1, ((UIInput)localIUIElement).E());
      }
    }
    a(localActionType, arrayOfString);
  }

  public final void a(IFormShower paramIFormShower)
  {
    this.g = paramIFormShower;
  }

  public void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    JSONObject localJSONObject = paramJSONObject.optJSONObject("form");
    if (localJSONObject.has("guide"))
      this.d = localJSONObject.optBoolean("guide");
    this.c = TextUtils.equals(localJSONObject.optString("type"), "fullscreen");
    this.a = new MiniUiWindow();
    this.E = localJSONObject.optBoolean("disableBack");
    this.B = localJSONObject.optString("image");
    this.z = this.a.a(this, localJSONObject.optJSONArray("blocks"));
    if (localJSONObject.has("scroll"))
      this.e = localJSONObject.optBoolean("scroll");
    this.u = new MiniEventHandleHelper(this.j, this.k, this.E, this.c);
  }

  public boolean a(Object paramObject, MiniEventArgs paramMiniEventArgs)
  {
    boolean bool1 = false;
    ActionType localActionType;
    if (paramMiniEventArgs != null)
    {
      localActionType = paramMiniEventArgs.getEventType();
      if (localActionType != ActionType.j)
        break label60;
      LogAgent.a("SPSafePay", this.i);
      if (localActionType != ActionType.k)
        break label132;
      this.h.onKeyDown(4, new KeyEvent(0, 4));
      bool1 = true;
    }
    label60: String str;
    label132: boolean bool3;
    do
    {
      boolean bool2;
      do
      {
        return bool1;
        if (localActionType == ActionType.d)
        {
          LogAgent.b("SPSafePay", this.i);
          break;
        }
        if (localActionType == ActionType.l)
        {
          LogAgent.d("SPSafePay");
          break;
        }
        if ((localActionType == ActionType.t) || (localActionType == ActionType.B))
          break;
        LogAgent.a("SPSafePay", this.i, localActionType.e());
        break;
        if (localActionType != ActionType.l)
          break label236;
        bool2 = b;
        bool1 = false;
      }
      while (bool2);
      b = true;
      str = ActionUtil.a(localActionType.e())[0];
      bool3 = TextUtils.isEmpty(str);
      bool1 = false;
    }
    while (bool3);
    Activity localActivity2 = this.h;
    ViewGroup localViewGroup = (ViewGroup)localActivity2.findViewById(R.id.C);
    UIPropUtil.a(localViewGroup.getWindowToken(), localActivity2);
    localViewGroup.postDelayed(new c(this, str, localActivity2, localViewGroup), 200L);
    return true;
    label236: MiniEventHandleHelper localMiniEventHandleHelper = this.u;
    IFormShower localIFormShower = this.g;
    Activity localActivity1 = this.h;
    BizUiData localBizUiData = this.f;
    return localMiniEventHandleHelper.a(paramObject, paramMiniEventArgs, localIFormShower, localActivity1, localBizUiData, this);
  }

  public final List b()
  {
    return this.a.a();
  }

  public final void b(JSONObject paramJSONObject)
  {
    this.A = paramJSONObject;
  }

  protected final void c()
  {
    super.c();
    if (this.C != null)
      this.C.a().reSendSuccess();
  }

  public final void d()
  {
    this.h.runOnUiThread(new d(this));
  }

  public void dispose()
  {
    if (this.z != null)
    {
      Iterator localIterator = this.z.iterator();
      while (localIterator.hasNext())
        ((IUIComponet)localIterator.next()).dispose();
    }
    if (this.C != null)
      this.C.c();
    this.z = null;
    this.a = null;
    this.g = null;
    this.f = null;
    this.q = null;
  }

  public final void e()
  {
    this.h.runOnUiThread(new e(this));
  }

  public final void f()
  {
    if (this.h == null)
      return;
    this.h.runOnUiThread(new f(this));
  }

  public final void g()
  {
    this.h.runOnUiThread(new g(this));
  }

  protected final UISubForm h()
  {
    return this.D;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.AbstractUIForm
 * JD-Core Version:    0.6.2
 */