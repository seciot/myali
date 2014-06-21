package com.alipay.android.mini.uielement;

import android.view.View;
import com.alipay.android.app.R.layout;
import com.alipay.android.mini.widget.CustomCheckbox;
import org.json.JSONObject;

public class UICheckBox extends BaseElement
{
  private CustomCheckbox e;
  private boolean f = true;
  private boolean g = false;

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.g = paramJSONObject.optBoolean("disable");
    this.f = paramJSONObject.optBoolean("must");
  }

  public final int b()
  {
    CustomCheckbox localCustomCheckbox = this.e;
    ElementFactory.a(localCustomCheckbox);
    if (localCustomCheckbox != null)
      return localCustomCheckbox.getId();
    return 0;
  }

  public final boolean c()
  {
    if (!this.f);
    while ((this.e == null) || (!l()) || ((this.f) && (this.e.isChecked())))
      return true;
    return false;
  }

  public final boolean d()
  {
    return c();
  }

  public void dispose()
  {
    super.dispose();
    this.e = null;
  }

  public final JSONObject e()
  {
    JSONObject localJSONObject = s();
    if ((this.e != null) && (this.e.isChecked()));
    try
    {
      localJSONObject.put(a(), String.valueOf(this.e.isChecked()));
      return localJSONObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localJSONObject;
  }

  protected final int t()
  {
    return R.layout.Loadable;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UICheckBox
 * JD-Core Version:    0.6.2
 */