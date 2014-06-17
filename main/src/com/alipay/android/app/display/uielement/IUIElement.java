package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.app.display.event.OnElementEventListener;
import org.json.JSONObject;

public abstract interface IUIElement
{
  public abstract View a(Context paramContext, ViewGroup paramViewGroup);

  public abstract ElementType a();

  public abstract void a(int paramInt);

  public abstract void a(OnElementEventListener paramOnElementEventListener);

  public abstract void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2);

  public abstract int[] h();

  public abstract String n();

  public abstract ElementStyle o();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.IUIElement
 * JD-Core Version:    0.6.2
 */