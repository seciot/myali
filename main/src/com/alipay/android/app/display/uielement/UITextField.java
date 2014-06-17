package com.alipay.android.app.display.uielement;

import android.content.Context;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.widget.CustomEditText;
import com.alipay.android.app.widget.FormatBankcard;
import org.json.JSONObject;

public class UITextField extends BaseEditElement
{
  private int c;
  private int d;

  public final ElementType a()
  {
    return ElementType.k;
  }

  protected final void a(Context paramContext, CustomEditText paramCustomEditText, ElementStyle paramElementStyle)
  {
    super.a(paramContext, paramCustomEditText, paramElementStyle);
    String str = e();
    switch (this.d)
    {
    default:
      this.a.setInputType(1);
    case 2:
    case 3:
    }
    while (true)
    {
      if (this.c > 0)
      {
        this.b = new FormatBankcard();
        this.b.a(paramCustomEditText, this.c);
      }
      a(paramCustomEditText, str);
      return;
      this.a.setInputType(8194);
    }
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.c = paramJSONObject1.optInt("split");
    String str = paramJSONObject1.optString("keyboard");
    if ("decimal".equals(str))
    {
      this.d = 3;
      return;
    }
    if ("digit".equals(str))
    {
      this.d = 2;
      return;
    }
    this.d = 1;
  }

  protected final int p()
  {
    return R.layout.U;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UITextField
 * JD-Core Version:    0.6.2
 */