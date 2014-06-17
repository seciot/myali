package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.view.ViewGroup;
import com.alipay.android.app.R.layout;
import org.json.JSONObject;

public class UITitle extends BaseComponent
{
  private String b;
  private String c;

  protected final void a(ViewGroup paramViewGroup, Activity paramActivity)
  {
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    if (paramJSONObject.has("image"))
      this.b = paramJSONObject.optString("image");
    if (paramJSONObject.has("color"))
      this.c = paramJSONObject.optString("color");
  }

  protected final int f()
  {
    return R.layout.f;
  }

  public final String h()
  {
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UITitle
 * JD-Core Version:    0.6.2
 */