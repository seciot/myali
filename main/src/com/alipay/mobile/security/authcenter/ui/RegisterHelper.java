package com.alipay.mobile.security.authcenter.ui;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class RegisterHelper
{
  private static final Pattern a = Pattern.compile("\\d*");
  private static final Pattern b = Pattern.compile("[a-zA-Z`~!@#%&:;\"'_=<,>\\.\\$\\?\\^\\/\\*\\(\\)\\-\\+\\{\\}\\[\\]\\|\\\\]*");
  private static final Pattern c = Pattern.compile("[[a-z]|[A-Z]]*");
  private static final Pattern d = Pattern.compile("\\S*");
  private static final Pattern e = Pattern.compile("^[\\x00-\\xff]+$");

  public static boolean a(String paramString)
  {
    if (Pattern.compile("^((\\+{0,1}86){0,1})1[0-9]{10}").matcher(paramString).matches())
    {
      Matcher localMatcher = Pattern.compile("^((\\+{0,1}86){0,1})").matcher(paramString);
      StringBuffer localStringBuffer = new StringBuffer();
      while (localMatcher.find())
        localMatcher.appendReplacement(localStringBuffer, "");
      localMatcher.appendTail(localStringBuffer);
      return true;
    }
    return false;
  }

  public static enum PasswordEnum
  {
    private int code;
    private String memo;

    static
    {
      PASSWORD_ERROR_SPACE = new PasswordEnum("PASSWORD_ERROR_SPACE", 1, 2001, "密码为全空格");
      PASSWORD_ERROR_SMALL_LENGTH = new PasswordEnum("PASSWORD_ERROR_SMALL_LENGTH", 2, 2002, "密码太短");
      PASSWORD_ERROR_DIGITS = new PasswordEnum("PASSWORD_ERROR_DIGITS", 3, 2003, "密码为全数字");
      PASSWORD_ERROR_LETTER = new PasswordEnum("PASSWORD_ERROR_LETTER", 4, 2004, "密码为连续的字母标点");
      PASSWORD_ERROR_DOUBLE = new PasswordEnum("PASSWORD_ERROR_DOUBLE", 5, 2005, "密码为中文等双字节字符");
      PASSWORD_ERROR_ALL_LETTER = new PasswordEnum("PASSWORD_ERROR_ALL_LETTER", 6, 2007, "密码为字符，数字，和字母");
      PASSWORD_ERROR_BIG_LENGTH = new PasswordEnum("PASSWORD_ERROR_BIG_LENGTH", 7, 2006, "密码太长");
      PasswordEnum[] arrayOfPasswordEnum = new PasswordEnum[8];
      arrayOfPasswordEnum[0] = PASSWORD_OK;
      arrayOfPasswordEnum[1] = PASSWORD_ERROR_SPACE;
      arrayOfPasswordEnum[2] = PASSWORD_ERROR_SMALL_LENGTH;
      arrayOfPasswordEnum[3] = PASSWORD_ERROR_DIGITS;
      arrayOfPasswordEnum[4] = PASSWORD_ERROR_LETTER;
      arrayOfPasswordEnum[5] = PASSWORD_ERROR_DOUBLE;
      arrayOfPasswordEnum[6] = PASSWORD_ERROR_ALL_LETTER;
      arrayOfPasswordEnum[7] = PASSWORD_ERROR_BIG_LENGTH;
    }

    private PasswordEnum(int paramInt, String paramString)
    {
      this.code = paramInt;
      this.memo = paramString;
    }

    public final int getCode()
    {
      return this.code;
    }

    public final String getMemo()
    {
      return this.memo;
    }

    public final void setCode(int paramInt)
    {
      this.code = paramInt;
    }

    public final void setMemo(String paramString)
    {
      this.memo = paramString;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.RegisterHelper
 * JD-Core Version:    0.6.2
 */