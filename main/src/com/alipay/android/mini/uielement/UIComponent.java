package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.alipay.android.app.R.layout;
import com.alipay.android.mini.util.UIPropUtil;
import org.json.JSONObject;

public class UIComponent extends BaseComponent
{
  private String b;
  private boolean c;
  private String e;

  public final String a()
  {
    return this.b;
  }

  public final void a(ViewGroup paramViewGroup, Activity paramActivity)
  {
    if (this.c);
    for (int i = 0; ; i = 8)
    {
      paramViewGroup.setVisibility(i);
      if (!TextUtils.isEmpty(this.e))
        UIPropUtil.a(this.e, new k(this, paramViewGroup));
      return;
    }
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.e = paramJSONObject.optString("image");
    this.b = paramJSONObject.optString("name");
    this.c = paramJSONObject.optBoolean("display", true);
  }

  public void dispose()
  {
    super.dispose();
  }

  protected final int f()
  {
    return R.layout.j;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UIComponent
 * JD-Core Version:    0.6.2
 */