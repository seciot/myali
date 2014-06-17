package com.alipay.mobile.common.misc;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import java.text.DecimalFormat;

public class ExtStringUtil
{
  public static String formatMoney(double paramDouble)
  {
    return String.valueOf(new DecimalFormat("0.00").format(paramDouble));
  }

  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }

  public static String maskString(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    if (paramString1 == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString2.length() > 1)
      paramString2 = paramString2.substring(0, 1);
    for (int i = 0; i < paramInt2; i++)
      localStringBuilder.append(paramString2);
    return paramString1.substring(0, paramInt1) + localStringBuilder.toString() + paramString1.substring(paramInt1 + paramInt2);
  }

  public static Spannable subChangeSize(String paramString, float paramFloat, int paramInt)
  {
    SpannableString localSpannableString = new SpannableString(paramString);
    localSpannableString.setSpan(new RelativeSizeSpan(paramFloat), 0, paramInt, 18);
    return localSpannableString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExtStringUtil
 * JD-Core Version:    0.6.2
 */