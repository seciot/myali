package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import org.json.JSONObject;

public class UIButton extends UILabel
  implements ISubmitable
{
  private String a;
  private String b;
  private TextView c;

  public final ElementType a()
  {
    return ElementType.b;
  }

  protected final void a(Context paramContext, TextView paramTextView, ElementStyle paramElementStyle)
  {
    super.a(paramContext, paramTextView, paramElementStyle);
    this.c = paramTextView;
    paramTextView.setOnClickListener(new w(this));
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.a = paramJSONObject1.optString("name");
    this.b = paramJSONObject1.optString("value");
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    super.c(paramHandler, paramBoolean);
    paramHandler.post(new y(this, paramBoolean));
  }

  public void dispose()
  {
    super.dispose();
    this.c = null;
    this.a = null;
  }

  public final ISubmitable.SubmitValue getRequireBundleName()
  {
    if (TextUtils.isEmpty(this.a));
    while (!super.s())
      return null;
    return new ISubmitable.SubmitValue(this.a, this.b);
  }

  public final boolean k()
  {
    return true;
  }

  protected final int p()
  {
    return R.layout.P;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIButton
 * JD-Core Version:    0.6.2
 */