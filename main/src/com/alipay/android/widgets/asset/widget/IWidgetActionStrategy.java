package com.alipay.android.widgets.asset.widget;

import android.view.View;
import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeInfo;
import java.util.Map;

public abstract interface IWidgetActionStrategy
{
  public abstract IAssetWidgetView a(Map<String, String> paramMap, int paramInt, WealthHomeInfo paramWealthHomeInfo);

  public abstract void a(boolean paramBoolean);

  public abstract boolean a(View paramView, String paramString1, String paramString2, String paramString3, WealthHomeInfo paramWealthHomeInfo);

  public abstract boolean a(String paramString, WealthHomeInfo paramWealthHomeInfo);

  public abstract void b(String paramString, WealthHomeInfo paramWealthHomeInfo);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.widget.IWidgetActionStrategy
 * JD-Core Version:    0.6.2
 */