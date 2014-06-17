package com.alipay.mobile.common.ui.contacts.util;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

public class KeyBoardUtil
{
  public static void hideKeyBoard(Context paramContext, View paramView)
  {
    try
    {
      ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("hideKeyBoard").append(localException.toString()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.KeyBoardUtil
 * JD-Core Version:    0.6.2
 */