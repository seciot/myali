package com.alipay.android.mini.uielement;

import com.alipay.android.app.R.layout;
import org.json.JSONObject;

public class UIWebView extends BaseElement
{
  private String e;
  private String f;
  private String g;

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.e = paramJSONObject.optString("height");
    this.f = paramJSONObject.optString("width");
    this.g = paramJSONObject.optString("alt");
  }

  public final int b()
  {
    return 0;
  }

  public void dispose()
  {
    super.dispose();
  }

  public final JSONObject e()
  {
    return s();
  }

  protected final int t()
  {
    return R.layout.A;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UIWebView
 * JD-Core Version:    0.6.2
 */