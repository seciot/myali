package com.alipay.asset.common;

import android.content.Context;
import com.alipay.android.phone.wealth.common.R.string;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class InputValidator
{
  public static final int ERROR_INVALID_FORMAT = -2;
  public static final int ERROR_NULL_INPUT = -4;
  public static final int ERROR_OUTOF_RANGE = -3;
  public static final int NO_ERROR = -1;

  public static ValidateResult checkAmount(Context paramContext, String paramString1, String paramString2)
  {
    ValidateResult localValidateResult = new ValidateResult(paramContext);
    String str = paramString1.trim();
    if (str.length() == 0)
    {
      localValidateResult.bRet = false;
      localValidateResult.strErr = (paramString2 + paramContext.getString(R.string.amount_empty_err));
      return localValidateResult;
    }
    if (Pattern.compile("^[1-9]\\d*(([\\.]?[0-9]{1,2})?)$|^[0][\\.][1-9]$|^[0][\\.]([0-9][0-9])$").matcher(str).matches());
    for (int i = 1; i == 0; i = 0)
    {
      localValidateResult.bRet = false;
      localValidateResult.strErr = (paramString2 + paramContext.getString(R.string.amount_format_err));
      return localValidateResult;
    }
    localValidateResult.bRet = true;
    return localValidateResult;
  }

  public static ValidateResult checkPaymentPassword(Context paramContext, String paramString1, String paramString2)
  {
    ValidateResult localValidateResult = new ValidateResult(paramContext);
    if (paramString1.trim().length() == 0)
    {
      localValidateResult.bRet = false;
      localValidateResult.strErr = (paramString2 + paramContext.getString(R.string.pay_password_empty_tip));
      return localValidateResult;
    }
    localValidateResult.bRet = true;
    return localValidateResult;
  }

  public static ValidateResult checkSmsCode(Context paramContext, String paramString, int paramInt)
  {
    ValidateResult localValidateResult = new ValidateResult(paramContext);
    String str1 = paramString.trim();
    if (str1.length() == 0)
    {
      localValidateResult.bRet = false;
      localValidateResult.strErr = paramContext.getString(R.string.check_code_empty_err);
      return localValidateResult;
    }
    if (str1.length() != paramInt)
    {
      localValidateResult.bRet = false;
      String str2 = paramContext.getString(R.string.check_code_length_err);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramInt;
      localValidateResult.strErr = String.format(str2, arrayOfObject);
      return localValidateResult;
    }
    if (Pattern.compile("^[0-9]*$").matcher(str1).matches());
    for (int i = 1; i == 0; i = 0)
    {
      localValidateResult.bRet = false;
      localValidateResult.strErr = paramContext.getString(R.string.pay_passwd_format_err);
      return localValidateResult;
    }
    localValidateResult.bRet = true;
    return localValidateResult;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.InputValidator
 * JD-Core Version:    0.6.2
 */