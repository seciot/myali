package com.alipay.mobile.commonui.widget;

import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;

public class APViewEventHelper
{
  private static APViewEventHelper.ClickListenerWrapper a;

  public static void setWrapper(APViewEventHelper.ClickListenerWrapper paramClickListenerWrapper)
  {
    AppBundle = paramClickListenerWrapper;
  }

  public static View.OnClickListener wrapClickListener(View.OnClickListener paramOnClickListener)
  {
    if (AppBundle == null)
      return paramOnClickListener;
    return AppBundle.wrap(paramOnClickListener);
  }

  public static AdapterView.OnItemClickListener wrapItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    if (AppBundle == null)
      return paramOnItemClickListener;
    return AppBundle.wrap(paramOnItemClickListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APViewEventHelper
 * JD-Core Version:    0.6.2
 */