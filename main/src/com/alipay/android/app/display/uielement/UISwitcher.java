package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckedTextView;
import com.alipay.android.app.R.dimen;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.sys.GlobalContext;
import org.json.JSONObject;

public class UISwitcher extends BaseElement
  implements ISubmitable
{
  private String a;
  private CheckedTextView b;
  private String c;
  private String d;

  public final ElementType a()
  {
    return ElementType.l;
  }

  protected final void a(Context paramContext, View paramView, ElementStyle paramElementStyle)
  {
    boolean bool = TextUtils.equals(this.d, "Y");
    Resources localResources = GlobalContext.a().b().getResources();
    if (paramView != null)
      paramView.setPadding((int)localResources.getDimension(R.dimen.f), 0, (int)localResources.getDimension(R.dimen.g), 0);
    this.b = ((CheckedTextView)paramView);
    this.b.setPadding((int)localResources.getDimension(R.dimen.f), 0, (int)localResources.getDimension(R.dimen.g), 0);
    this.b.setChecked(bool);
    this.b.setText(this.a);
    this.b.setOnClickListener(new bu(this));
    paramElementStyle.c(paramView);
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.a = paramJSONObject1.optString("text");
    this.c = paramJSONObject1.optString("name");
    this.d = paramJSONObject1.optString("value", "Y");
  }

  public void dispose()
  {
    super.dispose();
    this.b = null;
  }

  public final int[] h()
  {
    if (this.b != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.b.getId();
      return arrayOfInt;
    }
    return null;
  }

  public final ISubmitable.SubmitValue getRequireBundleName()
  {
    if (!super.s())
      return null;
    boolean bool = this.b.isChecked();
    String str1 = this.c;
    if (bool);
    for (String str2 = "Y"; ; str2 = "N")
      return new ISubmitable.SubmitValue(str1, str2);
  }

  public final boolean k()
  {
    return true;
  }

  protected final int p()
  {
    return R.layout.ad;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UISwitcher
 * JD-Core Version:    0.6.2
 */