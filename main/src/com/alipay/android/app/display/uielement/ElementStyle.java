package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.graphics.Typeface;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.app.util.StringUtil;
import com.alipay.android.app.util.UIUtils;
import com.alipay.html.Html;
import org.json.JSONObject;

public class ElementStyle
{
  private final float a = 1.5F;
  private int b = UIUtils.a("left");
  private int c = UIUtils.b("large");
  private String d;
  private int e;
  private boolean f;
  private boolean g;
  private float h;
  private int i;
  private int j;
  private int[] k = { 0, 0, 0, 0 };
  private int[] l = { 0, 0, 0, 0 };
  private boolean m;
  private String n;
  private String o;

  public ElementStyle()
  {
    a(null);
    b("medium");
    c(null);
    d(null);
  }

  private static int a(View paramView, String paramString)
  {
    if (StringUtil.a(paramString))
      return UIUtils.a(paramView.getContext(), Integer.valueOf(paramString).intValue());
    int i1 = Integer.valueOf(paramString.replace("%", "")).intValue();
    if (i1 == 100)
      return -1;
    return i1 / 10;
  }

  public final int a()
  {
    return this.b | this.c;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.l[0] = paramInt2;
    this.l[1] = paramInt3;
    this.l[2] = paramInt4;
    this.l[3] = paramInt1;
  }

  protected final void a(View paramView)
  {
    int i1 = -2;
    String str1 = this.n;
    String str2 = this.o;
    int i2 = 0;
    ElementDimension localElementDimension1 = ElementDimension.a(str1);
    int i3;
    if (localElementDimension1 != null)
      switch (v.a[localElementDimension1.ordinal()])
      {
      default:
        i3 = a(paramView, str1);
      case 1:
      case 2:
      }
    while (true)
    {
      ElementDimension localElementDimension2 = ElementDimension.a(str2);
      int i4;
      if (localElementDimension2 != null)
        switch (v.a[localElementDimension2.ordinal()])
        {
        default:
          i1 = a(paramView, str2);
          i4 = i2;
        case 1:
        case 2:
        }
      while (true)
      {
        ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
        if (localLayoutParams != null)
        {
          localLayoutParams.width = i3;
          localLayoutParams.height = i1;
          if ((localLayoutParams instanceof LinearLayout.LayoutParams))
          {
            ((LinearLayout.LayoutParams)localLayoutParams).weight = i4;
            a(localLayoutParams);
          }
          paramView.setLayoutParams(localLayoutParams);
        }
        return;
        i2 = 1;
        i3 = -1;
        break;
        i3 = i1;
        i2 = 0;
        break;
        i1 = -1;
        i4 = 1;
        continue;
        i4 = i2;
        continue;
        i4 = i2;
      }
      i3 = i1;
      i2 = 0;
    }
  }

  protected final void a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LinearLayout.LayoutParams))
      ((LinearLayout.LayoutParams)paramLayoutParams).setMargins(this.l[3], this.l[0], this.l[1], this.l[2]);
  }

  public final void a(TextView paramTextView, CharSequence paramCharSequence, boolean paramBoolean)
  {
    paramTextView.setTextSize(this.h);
    paramTextView.setTextColor(this.e);
    if ((this.i != 0) || (this.j != 0))
      paramTextView.setTypeface(Typeface.DEFAULT, this.i | this.j);
    if ((paramCharSequence == null) || (TextUtils.isEmpty(paramCharSequence)));
    for (Object localObject = paramTextView.getText(); ; localObject = paramCharSequence)
    {
      if (localObject == null);
      String str;
      do
      {
        return;
        if (!paramBoolean)
          break label136;
        if (!(localObject instanceof Spanned))
          break;
        str = Html.a((Spanned)localObject);
      }
      while (TextUtils.isEmpty(str));
      paramTextView.setText(Html.a(str.replace("<p>", "").replace("</p>", "")));
      return;
      paramTextView.setText(Html.a(localObject.toString()));
      return;
      label136: if (this.f)
        localObject = UIUtils.a((CharSequence)localObject, ((CharSequence)localObject).length());
      if (this.g)
        localObject = UIUtils.b((CharSequence)localObject, ((CharSequence)localObject).length());
      paramTextView.setText((CharSequence)localObject);
      return;
    }
  }

  protected final void a(String paramString)
  {
    this.e = UIUtils.f(paramString);
  }

  public final void a(JSONObject paramJSONObject)
  {
    int i1 = 0;
    if (paramJSONObject == null)
      return;
    a(paramJSONObject.optString("text-color"));
    b(paramJSONObject.optString("font-size"));
    c(paramJSONObject.optString("font-weight"));
    d(paramJSONObject.optString("font-style"));
    e(paramJSONObject.optString("text-decoration"));
    this.d = UIUtils.d(paramJSONObject.optString("background-image", null));
    this.b = UIUtils.a(paramJSONObject.optString("align"));
    this.c = UIUtils.b(paramJSONObject.optString("valign"));
    String str1 = paramJSONObject.optString("margin");
    if (!TextUtils.isEmpty(str1))
      try
      {
        Context localContext2 = GlobalContext.a().b();
        if (StringUtil.a(str1))
        {
          int i9 = UIUtils.a(localContext2, (int)(Integer.valueOf(str1).intValue() / 1.5F));
          for (int i10 = 0; i10 < this.l.length; i10++)
            this.l[i10] = i9;
        }
        String[] arrayOfString2 = str1.split(" ");
        if (arrayOfString2 != null)
        {
          int i6 = Math.min(arrayOfString2.length, this.l.length);
          for (int i7 = 0; i7 < i6; i7++)
          {
            int i8 = UIUtils.a(localContext2, (int)(Integer.valueOf(arrayOfString2[i7]).intValue() / 1.5F));
            this.l[i7] = i8;
          }
        }
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        LogUtils.a(localNumberFormatException2);
      }
    String str2 = paramJSONObject.optString("padding");
    if (!TextUtils.isEmpty(str2));
    try
    {
      Context localContext1 = GlobalContext.a().b();
      if (StringUtil.a(str2))
      {
        int i5 = UIUtils.a(localContext1, (int)(Integer.valueOf(str2).intValue() / 1.5F));
        while (i1 < this.k.length)
        {
          this.k[i1] = i5;
          i1++;
        }
      }
      String[] arrayOfString1 = str2.split(" ");
      if (arrayOfString1 != null)
      {
        int i2 = Math.min(arrayOfString1.length, this.k.length);
        for (int i3 = 0; i3 < i2; i3++)
        {
          int i4 = UIUtils.a(localContext1, (int)(Integer.valueOf(arrayOfString1[i3]).intValue() / 1.5F));
          this.k[i3] = i4;
        }
      }
      this.m = true;
      this.n = paramJSONObject.optString("width");
      this.o = paramJSONObject.optString("height");
      return;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      while (true)
        LogUtils.a(localNumberFormatException1);
    }
  }

  public final int b()
  {
    return this.l[3];
  }

  protected final void b(View paramView)
  {
    UIUtils.a(this.d, new u(this, paramView));
  }

  protected final void b(String paramString)
  {
    this.h = UIUtils.c(paramString);
  }

  public final int c()
  {
    return this.l[0];
  }

  protected final void c(View paramView)
  {
    if (this.m)
      paramView.setPadding(this.k[3], this.k[0], this.k[1], this.k[2]);
  }

  protected final void c(String paramString)
  {
    this.i = UIUtils.e(paramString);
  }

  public final int d()
  {
    return this.l[1];
  }

  protected final void d(String paramString)
  {
    this.j = UIUtils.e(paramString);
  }

  public final int e()
  {
    return this.l[2];
  }

  protected final void e(String paramString)
  {
    if (TextUtils.equals(paramString, "underline"))
    {
      this.f = true;
      return;
    }
    if (TextUtils.equals(paramString, "strike"))
    {
      this.g = true;
      return;
    }
    this.f = false;
    this.g = false;
  }

  public final int f()
  {
    return this.b;
  }

  public final int g()
  {
    return this.e;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ElementStyle
 * JD-Core Version:    0.6.2
 */