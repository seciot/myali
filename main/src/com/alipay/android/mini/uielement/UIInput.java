package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.event.OnElementEventListener;
import com.alipay.android.mini.util.CardValidateInputUtil;
import com.alipay.android.mini.util.UIPropUtil;
import com.alipay.android.mini.widget.CustomEditText;
import com.alipay.android.mini.widget.CustomToast;
import com.alipay.android.mini.widget.FormatBankcard;
import com.alipay.android.mini.window.IUIForm;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class UIInput extends BaseElement
{
  private CustomEditText e;
  private LinearLayout f;
  private TextView g;
  private TextView h;
  private String i;
  private ElementAction j;
  private String k;
  private String l;
  private String m;
  private boolean n = false;
  private boolean o;
  private FormatBankcard p;
  private String q;
  private String r;
  private boolean s = false;
  private Activity t;
  private boolean u = false;
  private String v = "";
  private CardValidateInputUtil w;

  private String G()
  {
    Editable localEditable = this.e.getText();
    if (localEditable.length() == 0)
      return "";
    return localEditable.toString().replaceAll(" ", "");
  }

  private void a(CustomEditText paramCustomEditText)
  {
    paramCustomEditText.removeIcon();
    Activity localActivity = (Activity)paramCustomEditText.getContext();
    Resources localResources = localActivity.getResources();
    if ((this.p != null) && (TextUtils.equals(this.m, "card_no")))
      if ((!TextUtils.equals(localActivity.getPackageName(), "com.eg.android.AlipayGphone")) && (!TextUtils.equals(localActivity.getPackageName(), "com.eg.android.AlipayGphoneRC")))
        break label151;
    label151: for (Object localObject = new o(this); ; localObject = null)
    {
      Drawable localDrawable = UIPropUtil.a(R.drawable.x, localResources);
      while (true)
      {
        if ((localObject != null) && (localDrawable != null))
          paramCustomEditText.setOnIconClickListener(localDrawable, new p(this, (MiniEventArgs)localObject));
        return;
        if (TextUtils.equals(this.m, "cvv"))
        {
          localDrawable = UIPropUtil.a(R.drawable.G, localResources);
          localObject = new MiniEventArgs(ActionType.J);
        }
        else
        {
          localObject = null;
          localDrawable = null;
        }
      }
    }
  }

  public final String E()
  {
    if (this.e != null)
      return this.e.getText().toString();
    return null;
  }

  protected void F()
  {
    if (TextUtils.equals("num", this.l))
      this.e.setInputType(2);
    do
    {
      return;
      if (TextUtils.equals("en", this.l))
      {
        this.e.setInputType(4096);
        return;
      }
      if (TextUtils.equals("cert", this.l))
      {
        this.e.setInputType(4096);
        return;
      }
      if (TextUtils.equals("pinyin", this.l))
      {
        this.e.setInputType(192);
        return;
      }
    }
    while (!TextUtils.equals("email", this.l));
    this.e.setInputType(32);
  }

  public final int a(int paramInt)
  {
    if (this.e != null)
    {
      int i1 = this.h.getMeasuredWidth();
      if (i1 >= paramInt)
        return i1;
      this.h.setWidth(paramInt);
      return paramInt;
    }
    return 0;
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    this.u = paramBoolean;
    if (this.u)
      this.v = paramString;
    if (this.e != null)
      this.e.post(new w(this, paramString));
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.i = paramJSONObject.optString("width");
    this.j = ElementAction.a(paramJSONObject, "onload");
    this.k = paramJSONObject.optString("label");
    this.l = paramJSONObject.optString("keyboard");
    this.m = paramJSONObject.optString("content");
    this.n = paramJSONObject.optBoolean("disable");
    this.q = paramJSONObject.optString("format");
    this.s = paramJSONObject.optBoolean("encoded");
    this.r = paramJSONObject.optString("format_msg");
    this.o = paramJSONObject.optBoolean("must", true);
  }

  public final int b()
  {
    CustomEditText localCustomEditText = this.e;
    ElementFactory.a(localCustomEditText);
    if (localCustomEditText != null)
      return localCustomEditText.getId();
    return 0;
  }

  public final boolean c()
  {
    if (!this.o)
      return true;
    if ((this.e == null) || (!l()))
    {
      this.g.setVisibility(8);
      return true;
    }
    if (TextUtils.isEmpty(this.e.getText().toString()))
      return false;
    this.g.setVisibility(8);
    return true;
  }

  public final boolean d()
  {
    if (!this.o);
    while (true)
    {
      return true;
      if (!c())
        return false;
      if ((j() == null) || (!TextUtils.equals(G(), j().toString())))
      {
        OnElementEventListener localOnElementEventListener = A();
        if ((localOnElementEventListener instanceof IUIForm))
        {
          BaseElement localBaseElement = ((IUIForm)localOnElementEventListener).d("certtype");
          if (localBaseElement != null)
          {
            Object localObject = localBaseElement.j();
            if ((localObject == null) || (!TextUtils.equals(localObject.toString(), "A")));
          }
        }
        for (int i1 = 1; (!TextUtils.isEmpty(this.q)) && (i1 != 0); i1 = 0)
          try
          {
            boolean bool = Pattern.compile(this.q).matcher(G()).matches();
            if (!bool)
            {
              this.h.setTextColor(-65536);
              if (TextUtils.isEmpty(this.r))
              {
                String str = this.e.getContext().getString(R.string.f);
                this.r = (p() + str);
              }
              UIPropUtil.b(this.e);
              CustomToast.a(this.t, this.r);
            }
            return bool;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return true;
          }
      }
    }
  }

  public void dispose()
  {
    super.dispose();
    if (this.e != null)
    {
      this.e.setOnFocusChangeListener(null);
      this.e.setCustomOnFocusChangeListener(null);
      this.e.hiddenPopHint();
      this.g.setVisibility(8);
    }
    this.p = null;
    this.e = null;
    this.k = null;
    this.j = null;
    this.t = null;
  }

  public final JSONObject e()
  {
    JSONObject localJSONObject = s();
    while (true)
    {
      String str;
      try
      {
        str = G();
        if ((j() != null) && (TextUtils.equals(str, j().toString())))
          return localJSONObject;
        if (TextUtils.equals(r(), "card_validate"))
        {
          localJSONObject.put(a(), this.w.b());
          if ((!this.u) || (!TextUtils.equals(this.v, str)))
            break;
          localJSONObject.put("local", "Y");
          return localJSONObject;
        }
      }
      catch (JSONException localJSONException)
      {
        LogUtils.a(localJSONException);
        return localJSONObject;
      }
      localJSONObject.put(a(), str);
    }
    return localJSONObject;
  }

  public final void g()
  {
    if (this.e != null)
      this.e.postDelayed(new u(this), 200L);
  }

  public final void h()
  {
    if (this.e != null)
      this.e.getText().clear();
  }

  protected int t()
  {
    return R.layout.o;
  }

  protected final void u()
  {
    if ((TextUtils.equals("card_no", this.m)) || (TextUtils.equals("cvv", this.m)))
      a(this.e);
    if (this.j != null)
    {
      ActionType[] arrayOfActionType = ActionType.a(this.j);
      int i1 = arrayOfActionType.length;
      for (int i2 = 0; i2 < i1; i2++)
        a(this, arrayOfActionType[i2]);
    }
  }

  public final String x()
  {
    return this.r;
  }

  public final EditText z()
  {
    return this.e;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UIInput
 * JD-Core Version:    0.6.2
 */