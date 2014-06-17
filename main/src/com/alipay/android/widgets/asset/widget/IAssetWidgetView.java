package com.alipay.android.widgets.asset.widget;

import com.alipay.asset.common.view.WealthWidgetMsgFlag;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;

public abstract interface IAssetWidgetView extends IWidgetView
{
  public abstract void bindWidgetFlagView(WealthWidgetMsgFlag paramWealthWidgetMsgFlag);

  public abstract void cleanWidgetFlag();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.widget.IAssetWidgetView
 * JD-Core Version:    0.6.2
 */