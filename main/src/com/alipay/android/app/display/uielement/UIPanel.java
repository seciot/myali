package com.alipay.android.app.display.uielement;

import android.text.TextUtils;
import android.view.ViewGroup.LayoutParams;
import com.alipay.android.app.R.layout;
import org.json.JSONObject;

public class UIPanel extends r
{
  public ElementType a()
  {
    return ElementType.f;
  }

  protected void a(ViewGroup.LayoutParams paramLayoutParams, String paramString1, String paramString2)
  {
    int i = -2;
    if ((!TextUtils.isEmpty(paramString1)) && (ElementDimension.a.a().equals(paramString1)));
    for (int j = -1; ; j = i)
    {
      if ((!TextUtils.isEmpty(paramString2)) && (ElementDimension.a.a().equals(paramString2)))
        i = -1;
      if (paramLayoutParams != null)
      {
        paramLayoutParams.width = j;
        paramLayoutParams.height = i;
      }
      return;
    }
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
  }

  protected int m()
  {
    return R.layout.N;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIPanel
 * JD-Core Version:    0.6.2
 */