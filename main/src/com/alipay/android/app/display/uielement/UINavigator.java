package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import org.json.JSONObject;

public class UINavigator extends BaseElement
{
  private TextView a;

  public final ElementType a()
  {
    return ElementType.t;
  }

  protected final void a(Context paramContext, View paramView, ElementStyle paramElementStyle)
  {
    String str = d();
    if (!TextUtils.isEmpty(str))
    {
      paramView.findViewById(R.id.aE).setVisibility(8);
      this.a = ((TextView)paramView.findViewById(R.id.aF));
      this.a.setVisibility(0);
      a(this.a, str);
    }
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    JSONObject localJSONObject = paramJSONObject1.optJSONObject("middle");
    if (localJSONObject == null);
    for (Object localObject = null; ; localObject = localJSONObject.optString("text"))
    {
      a("text", localObject);
      return;
    }
  }

  public final String d()
  {
    return super.d();
  }

  public final int[] h()
  {
    if (this.a != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.a.getId();
      return arrayOfInt;
    }
    return null;
  }

  protected final int p()
  {
    return R.layout.ae;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UINavigator
 * JD-Core Version:    0.6.2
 */