package com.alipay.mobile.security.securitycommon;

import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.method.DigitsKeyListener;
import android.widget.EditText;

public class SecurityPwdUtil
{
  public static Boolean a(String paramString)
  {
    if (("".equals(paramString.trim())) || (paramString.length() > 20) || (paramString.length() < 6))
      return Boolean.valueOf(false);
    return Boolean.valueOf(true);
  }

  public static void a(EditText paramEditText, int paramInt)
  {
    paramEditText.setInputType(2);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(paramInt);
    paramEditText.setFilters(arrayOfInputFilter);
    paramEditText.setKeyListener(DigitsKeyListener.getInstance("0123456789"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityPwdUtil
 * JD-Core Version:    0.6.2
 */