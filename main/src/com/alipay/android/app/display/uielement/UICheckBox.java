package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.alipay.android.app.R.dimen;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.UIUtils;
import org.json.JSONObject;

public class UICheckBox extends BaseElement
  implements ISubmitable
{
  private String a;
  private CheckBox b;
  private TextView c;
  private View d;
  private String e;
  private String f;
  private boolean g;
  private boolean h = true;

  public final ElementType a()
  {
    return ElementType.c;
  }

  protected final void a(Context paramContext, View paramView, ElementStyle paramElementStyle)
  {
    ElementFactory.a(paramView);
    this.d = paramView.findViewById(R.id.BundlesManagerImpl);
    this.b = ((CheckBox)paramView.findViewById(R.id.d));
    if (this.g)
    {
      this.c = ((TextView)paramView.findViewById(R.id.e));
      if (!TextUtils.isEmpty(d()))
      {
        this.c.setVisibility(0);
        b(this.c, d());
      }
      this.b.setOnTouchListener(new z(this));
      this.b.setVisibility(0);
      this.b.setChecked(c());
      this.b.setOnCheckedChangeListener(new ab(this));
      this.d.setOnClickListener(new ac(this));
      if (TextUtils.isEmpty(this.f))
        break label230;
      Resources localResources = GlobalContext.a().b().getResources();
      this.d.setPadding((int)localResources.getDimension(R.dimen.f), 0, (int)localResources.getDimension(R.dimen.g), 0);
      UIUtils.a(this.f, new ad(this));
    }
    while (true)
    {
      paramElementStyle.c(paramView);
      return;
      this.c = ((TextView)paramView.findViewById(R.id.aB));
      break;
      label230: this.d.setPadding(0, 0, 0, 0);
    }
  }

  protected final void a(Handler paramHandler)
  {
    super.a(paramHandler);
    paramHandler.post(new aa(this));
  }

  protected final void a(Handler paramHandler, String paramString)
  {
    a("text", paramString);
    paramHandler.post(new ai(this, paramString));
  }

  protected final void a(Handler paramHandler, boolean paramBoolean)
  {
    a("checked", Boolean.valueOf(paramBoolean));
    paramHandler.post(new ag(this, paramBoolean));
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.a = paramJSONObject1.optString("name");
    if (paramJSONObject1.has("styles"))
    {
      JSONObject localJSONObject = paramJSONObject1.optJSONObject("styles");
      this.e = localJSONObject.optString("align", null);
      this.g = TextUtils.equals(this.e, "right");
      this.f = localJSONObject.optString("background-image", null);
    }
    a("show_toast", paramJSONObject1.optString("show_toast", "false"));
  }

  protected final void b(Handler paramHandler, String paramString)
  {
    a("value", paramString);
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    super.c(paramHandler, paramBoolean);
    paramHandler.post(new ah(this, paramBoolean));
  }

  public void dispose()
  {
    super.dispose();
    this.b = null;
    this.d = null;
    this.c = null;
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

  public final ISubmitable.SubmitValue j()
  {
    if (!super.s());
    while (!c())
      return null;
    return new ISubmitable.SubmitValue(this.a, e());
  }

  public final boolean k()
  {
    return true;
  }

  protected final int p()
  {
    return R.layout.Q;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UICheckBox
 * JD-Core Version:    0.6.2
 */