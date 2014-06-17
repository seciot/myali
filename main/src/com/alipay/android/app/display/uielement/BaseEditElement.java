package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.alipay.android.app.R.string;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.widget.CustomEditText;
import com.alipay.android.app.widget.CustomEditText.OnIconClickListener;
import com.alipay.android.app.widget.FormatBankcard;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public abstract class BaseEditElement extends BaseElement
  implements ISubmitable, CustomEditText.OnIconClickListener
{
  protected CustomEditText a;
  protected FormatBankcard b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;

  private final void b(String paramString)
  {
    this.a.post(new n(this, paramString));
  }

  private boolean u()
  {
    String str = e();
    if ((!TextUtils.isEmpty(this.g)) && (TextUtils.equals(this.g, str)));
    while (TextUtils.isEmpty(this.d))
      return true;
    try
    {
      boolean bool = Pattern.compile(this.d).matcher(str).matches();
      if (!bool)
        b(this.e);
      return bool;
    }
    catch (Exception localException)
    {
    }
    return true;
  }

  private final void v()
  {
    if (this.a != null)
      this.a.post(new m(this));
  }

  public final void a(int paramInt)
  {
    super.a(paramInt);
    if (this.a != null)
      this.a.post(new a(this, paramInt));
  }

  protected void a(Context paramContext, CustomEditText paramCustomEditText, ElementStyle paramElementStyle)
  {
    ElementFactory.a(paramCustomEditText);
    this.a = paramCustomEditText;
    a(paramCustomEditText, null);
    paramCustomEditText.setHint(d());
    int i = l();
    this.a.setImeOptions(i);
    this.a.setOnDoneListener(new e(this));
    paramCustomEditText.setOnEditorActionListener(new f(this));
    paramCustomEditText.addTextChangedListener(new k(this));
    paramCustomEditText.setOnClickListener(new i(this));
    paramCustomEditText.setOnFocusChangeListener(new g(this));
  }

  protected final void a(Handler paramHandler)
  {
    super.a(paramHandler);
    paramHandler.post(new d(this));
  }

  protected final void a(Handler paramHandler, int paramInt)
  {
    super.a(paramHandler, paramInt);
    v();
  }

  public void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.c = paramJSONObject1.optString("name");
    this.d = paramJSONObject1.optString("regex");
    this.e = paramJSONObject1.optString("regex_msg");
    this.f = paramJSONObject1.optString("blankMsg");
    this.g = paramJSONObject1.optString("default_value");
  }

  protected void b(Handler paramHandler, String paramString)
  {
    a("value", paramString);
    paramHandler.post(new b(this, paramString));
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    super.c(paramHandler, paramBoolean);
    paramHandler.post(new c(this, paramBoolean));
  }

  public void dispose()
  {
    super.dispose();
    if (this.a != null)
    {
      this.a.setCompoundDrawables(null, null, null, null);
      this.a.hiddenPopHint();
      this.a = null;
    }
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

  public final void i()
  {
    this.a.setText(null);
    a("value", null);
    this.a.removeIcon();
  }

  public final ISubmitable.SubmitValue j()
  {
    if (TextUtils.isEmpty(this.c));
    String str;
    do
    {
      do
        return null;
      while (!super.s());
      str = e();
    }
    while ((!TextUtils.isEmpty(this.g)) && (TextUtils.equals(this.g, str)));
    return new ISubmitable.SubmitValue(this.c, str);
  }

  public final boolean k()
  {
    String str = e();
    boolean bool;
    if (!super.s())
      bool = true;
    while (true)
    {
      if (bool)
        v();
      return bool;
      if (TextUtils.isEmpty(str))
      {
        Context localContext = GlobalContext.a().b();
        if (TextUtils.isEmpty(this.f))
          this.f = (localContext.getString(R.string.D) + d());
        b(this.f);
        bool = false;
      }
      else
      {
        bool = u();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.BaseEditElement
 * JD-Core Version:    0.6.2
 */