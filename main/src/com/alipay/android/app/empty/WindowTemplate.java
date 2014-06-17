package com.alipay.android.app.empty;

import android.text.TextUtils;

public class WindowTemplate
  implements IMemorySizeable
{
  int a;
  String b;

  public WindowTemplate(int paramInt, String paramString)
  {
    this.a = paramInt;
    this.b = paramString;
  }

  public final int a()
  {
    return TextUtils.getTrimmedLength(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.empty.WindowTemplate
 * JD-Core Version:    0.6.2
 */