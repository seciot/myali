package com.alipay.mobile.common.misc;

import com.alipay.mobile.common.utils.StringUtils;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;

public final class MoneyUtil
{
  public static final String ZERO = "0.00";

  public static String formatMoney(double paramDouble)
  {
    return new DecimalFormat("###,###,###,##0.00").format(paramDouble);
  }

  public static String formatMoney(String paramString)
  {
    if (StringUtils.isBlank(paramString))
      paramString = "0.00";
    return formatMoney(Double.parseDouble(paramString));
  }

  public static String formatMoney(BigDecimal paramBigDecimal)
  {
    int i = 1;
    if (paramBigDecimal == null)
      i = 0;
    String str = null;
    if (i != 0)
      str = formatMoney(paramBigDecimal.doubleValue());
    return str;
  }

  public static String moneyWithUnit(String paramString)
  {
    return moneyWithUnit(paramString, "元");
  }

  public static String moneyWithUnit(String paramString1, String paramString2)
  {
    if (StringUtils.isBlank(paramString1))
      paramString1 = "0.00";
    return formatMoney(paramString1) + paramString2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.MoneyUtil
 * JD-Core Version:    0.6.2
 */