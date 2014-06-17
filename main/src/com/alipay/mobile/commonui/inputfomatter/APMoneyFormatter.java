package com.alipay.mobile.commonui.inputfomatter;

import android.text.Editable;

public class APMoneyFormatter
  implements APFormatter
{
  public void format(Editable paramEditable)
  {
    String str = paramEditable.toString();
    int i = str.indexOf(".");
    if (i == -1);
    while (-1 + (str.length() - i) <= 2)
      return;
    paramEditable.delete(i + 3, paramEditable.length());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.inputfomatter.APMoneyFormatter
 * JD-Core Version:    0.6.2
 */