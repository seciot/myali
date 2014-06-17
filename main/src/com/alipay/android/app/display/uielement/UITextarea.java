package com.alipay.android.app.display.uielement;

import android.content.Context;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.widget.CustomEditText;
import org.json.JSONObject;

public class UITextarea extends BaseEditElement
{
  private int c;

  public final ElementType a()
  {
    return ElementType.j;
  }

  protected final void a(Context paramContext, CustomEditText paramCustomEditText, ElementStyle paramElementStyle)
  {
    super.a(paramContext, paramCustomEditText, paramElementStyle);
    if (this.c > 0)
      paramCustomEditText.setMaxLines(this.c);
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.c = paramJSONObject1.optInt("rows", 5);
  }

  protected final int p()
  {
    return R.layout.U;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UITextarea
 * JD-Core Version:    0.6.2
 */