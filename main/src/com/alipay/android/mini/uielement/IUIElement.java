package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.event.OnElementEventListener;
import org.json.JSONObject;

public abstract class IUIElement
  implements IDispose
{
  private boolean a = false;
  private String b;
  private String c;
  protected OnElementEventListener d;

  public final OnElementEventListener A()
  {
    return this.d;
  }

  public final boolean B()
  {
    return this.a;
  }

  public final String C()
  {
    return this.b;
  }

  public final String D()
  {
    return this.c;
  }

  public abstract String a();

  public final void a(OnElementEventListener paramOnElementEventListener)
  {
    this.d = paramOnElementEventListener;
  }

  protected final void a(Object paramObject, ActionType paramActionType)
  {
    if (this.d != null)
      this.d.a(paramObject, new MiniEventArgs(paramActionType));
  }

  protected final void a(Object paramObject, MiniEventArgs paramMiniEventArgs)
  {
    if (this.d != null)
      this.d.a(paramObject, paramMiniEventArgs);
  }

  protected final void a(Object paramObject, ActionType[] paramArrayOfActionType)
  {
    int i = paramArrayOfActionType.length;
    for (int j = 0; j < i; j++)
      a(paramObject, paramArrayOfActionType[j]);
  }

  public void a(JSONObject paramJSONObject)
  {
    this.a = TextUtils.equals(paramJSONObject.optString("style"), "cell");
    this.b = paramJSONObject.optString("align");
    this.c = paramJSONObject.optString("vertical-align");
  }

  public abstract int b();

  public abstract Object b(Activity paramActivity, ViewGroup paramViewGroup, boolean paramBoolean);

  public abstract boolean c();

  public abstract boolean d();

  public abstract JSONObject e();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.IUIElement
 * JD-Core Version:    0.6.2
 */