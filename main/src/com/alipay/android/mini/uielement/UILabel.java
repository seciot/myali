package com.alipay.android.mini.uielement;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import org.json.JSONObject;

public class UILabel extends BaseElement
{
  private String e;
  private boolean f;
  private boolean g = false;
  private TextView h;
  private String[] i;
  private String[] j;
  private String k;

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.f = false;
    this.e = paramJSONObject.optString("text-align");
    this.f = paramJSONObject.optBoolean("encoded");
    this.g = Boolean.parseBoolean(paramJSONObject.optString("shadow"));
    String str1 = paramJSONObject.optString("image");
    String str2 = paramJSONObject.optString("color");
    if (!TextUtils.isEmpty(str1))
      this.i = str1.split(";");
    if (!TextUtils.isEmpty(str2))
      this.j = str2.split(";");
    this.k = paramJSONObject.optString("text-decoration");
  }

  public final int b()
  {
    TextView localTextView = this.h;
    ElementFactory.a(localTextView);
    if (localTextView != null)
      return localTextView.getId();
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
    return R.layout.n;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UILabel
 * JD-Core Version:    0.6.2
 */