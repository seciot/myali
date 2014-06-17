package com.alipay.android.app.display.uielement;

import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.android.app.R.layout;
import org.json.JSONObject;

final class bj extends r
{
  public final ElementType a()
  {
    return ElementType.q;
  }

  protected final void a(ViewGroup.LayoutParams paramLayoutParams, String paramString1, String paramString2)
  {
    paramLayoutParams.width = -1;
    paramLayoutParams.height = -2;
    if ((ElementDimension.a.a().equals(paramString2)) && ((paramLayoutParams instanceof LinearLayout.LayoutParams)))
      ((LinearLayout.LayoutParams)paramLayoutParams).weight = 1.0F;
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    paramJSONObject1.optJSONObject("style");
  }

  protected final boolean i()
  {
    return true;
  }

  protected final int m()
  {
    return R.layout.K;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bj
 * JD-Core Version:    0.6.2
 */