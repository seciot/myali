package com.alipay.android.app.display.uielement;

import android.os.Handler;
import android.widget.RadioButton;
import com.alipay.android.app.R.layout;
import org.json.JSONObject;

final class bn extends BaseElement
{
  private boolean a;
  private int b;
  private RadioButton c;

  public final ElementType a()
  {
    return ElementType.h;
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.a = "true".equalsIgnoreCase(paramJSONObject1.optString("checked"));
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    paramHandler.post(new bo(this, paramBoolean));
  }

  public final int[] h()
  {
    return null;
  }

  public final int i()
  {
    return this.b;
  }

  protected final int p()
  {
    return R.layout.ab;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bn
 * JD-Core Version:    0.6.2
 */