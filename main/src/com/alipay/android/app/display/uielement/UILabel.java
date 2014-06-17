package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.util.UIUtils;
import org.json.JSONObject;

public class UILabel extends BaseElement
{
  private String a;
  private String b;
  private boolean c;
  private int d;
  private int e;
  private CountDownTimer f;
  private TextView g;

  public ElementType a()
  {
    return ElementType.a;
  }

  protected final String a(String paramString)
  {
    if ("countdown".equals(paramString));
    for (String str = String.valueOf(this.d); ; str = null)
    {
      if ("countdown_interval".equals(paramString))
        str = String.valueOf(this.e);
      if (TextUtils.isEmpty(str))
        return null;
      return str;
    }
  }

  protected void a(Context paramContext, TextView paramTextView, ElementStyle paramElementStyle)
  {
    ElementFactory.a(paramTextView);
    this.g = paramTextView;
    this.g.setSingleLine(this.c);
    a(this.g, d());
    UIUtils.a(this.b, paramTextView, 0);
    UIUtils.a(this.a, new bc(this, paramTextView));
    a(paramTextView);
  }

  protected final void a(Handler paramHandler)
  {
    super.a(paramHandler);
    paramHandler.post(new bi(this));
  }

  protected final void a(Handler paramHandler, String paramString)
  {
    a("text", paramString);
    paramHandler.post(new bg(this, paramString));
  }

  protected final void a(Handler paramHandler, String paramString1, String paramString2)
  {
    if ("countdown".equals(paramString1))
      this.d = Integer.valueOf(paramString2).intValue();
    if ("countdown_interval".equals(paramString1))
      this.e = Integer.valueOf(paramString2).intValue();
    if ((this.d > 0) && (this.e > 0))
      paramHandler.post(new bh(this));
  }

  public void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    String str = paramJSONObject1.optString("icon");
    if (!TextUtils.isEmpty(str))
    {
      this.a = UIUtils.d(str);
      this.b = paramJSONObject1.optString("icon_align", "left");
    }
    this.c = "true".equals(paramJSONObject1.optString("single_line"));
    this.d = paramJSONObject1.optInt("countdown", 0);
    this.e = paramJSONObject1.optInt("countdown_interval", 1000);
    if ((this.d > 0) && (this.e > 0))
      super.q();
    a("countdown", Integer.valueOf(this.d));
    a("countdown_interval", Integer.valueOf(this.e));
  }

  public void dispose()
  {
    super.dispose();
    if (this.f != null)
    {
      this.f.cancel();
      this.f = null;
    }
    this.a = null;
    this.b = null;
  }

  public final int[] h()
  {
    if (this.g != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.g.getId();
      return arrayOfInt;
    }
    return null;
  }

  protected int p()
  {
    return R.layout.X;
  }

  protected final void r()
  {
    super.r();
    this.f = new bd(this, this.d, this.e);
    this.f.start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UILabel
 * JD-Core Version:    0.6.2
 */