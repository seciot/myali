package com.alipay.android.mini.util;

import android.content.Context;
import com.alipay.android.mini.event.OnElementEventListener;
import com.alipay.android.mini.widget.CustomEditText;
import com.alipay.android.mini.widget.YearMonthPickerDialog;

public class CardValidateInputUtil
{
  private YearMonthPickerDialog a;
  private String b;
  private String c;
  private String d;
  private Context e;
  private CustomEditText f;
  private OnElementEventListener g;

  public CardValidateInputUtil(Context paramContext, CustomEditText paramCustomEditText, OnElementEventListener paramOnElementEventListener)
  {
    this.e = paramContext;
    this.f = paramCustomEditText;
    this.g = paramOnElementEventListener;
  }

  public final void a()
  {
    this.a = new YearMonthPickerDialog("有效期", this.e);
    this.a.a(new a(this));
    this.a.b(new b(this));
    if ((this.c == null) || (this.c.length() <= 0))
      this.a.a();
    while (true)
    {
      this.a.b();
      return;
      this.a.a(Integer.valueOf(this.c).intValue(), Integer.valueOf(this.b).intValue());
    }
  }

  public final String b()
  {
    return this.b + this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.CardValidateInputUtil
 * JD-Core Version:    0.6.2
 */