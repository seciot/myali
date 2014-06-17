package com.alipay.android.widgets.asset.widget;

import android.content.Context;
import android.view.View;
import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeInfo;

public class DefaultShowWidgetActionStrategy extends DefaultWidgetActionStrategy
{
  public DefaultShowWidgetActionStrategy(Context paramContext)
  {
    super(paramContext);
  }

  public final boolean a(View paramView, String paramString1, String paramString2, String paramString3, WealthHomeInfo paramWealthHomeInfo)
  {
    if (paramWealthHomeInfo != null)
      return super.a(paramView, paramString1, paramString2, paramString3, paramWealthHomeInfo);
    return false;
  }

  public final boolean a(String paramString, WealthHomeInfo paramWealthHomeInfo)
  {
    if (paramWealthHomeInfo != null);
    while (!this.a)
      return true;
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.widget.DefaultShowWidgetActionStrategy
 * JD-Core Version:    0.6.2
 */