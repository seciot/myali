package com.alipay.mobile.common.ui.contacts.util;

public class PinyinHelper
{
  public static String[] toHanyuPinyinStringArray(char paramChar)
  {
    return ChineseToPinyinResource.getInstance().getHanyuPinyinStringArray(paramChar);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.PinyinHelper
 * JD-Core Version:    0.6.2
 */