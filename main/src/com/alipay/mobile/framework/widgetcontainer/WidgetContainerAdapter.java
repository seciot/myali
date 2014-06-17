package com.alipay.mobile.framework.widgetcontainer;

import android.view.View;
import java.util.Map;

public abstract interface WidgetContainerAdapter
{
  public abstract IWidgetView getWidgetView(String paramString1, String paramString2, Map<String, String> paramMap, int paramInt);

  public abstract boolean isWidgetVisible(String paramString1, String paramString2);

  public abstract boolean needBindWidgetMsgFlag(String paramString1, String paramString2);

  public abstract boolean performWidgetClick(View paramView, String paramString1, String paramString2, String paramString3);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetcontainer.WidgetContainerAdapter
 * JD-Core Version:    0.6.2
 */