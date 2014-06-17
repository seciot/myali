package com.alipay.asset.common.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.alipay.android.widgets.asset.widget.IAssetWidgetView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.widgetcontainer.view.DefaultListWidgetView;
import com.alipay.mobile.ui.R.color;

public class WealthDynamicTableView extends DefaultListWidgetView
  implements IAssetWidgetView
{
  private WealthWidgetMsgFlag a;

  public WealthDynamicTableView(Context paramContext)
  {
    super(paramContext);
  }

  public WealthDynamicTableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void bindWidgetFlagView(WealthWidgetMsgFlag paramWealthWidgetMsgFlag)
  {
    if ((this.a == null) && (paramWealthWidgetMsgFlag != null))
    {
      this.a = paramWealthWidgetMsgFlag;
      attachNewFlag2LeftText(paramWealthWidgetMsgFlag);
    }
  }

  public void cleanWidgetFlag()
  {
    removeView(this.a);
    this.a = null;
  }

  public WealthWidgetMsgFlag getBindedWidgetFlagView()
  {
    return this.a;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    getRightTextView().setTextColor(getContext().getResources().getColor(R.color.colorGray));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.view.WealthDynamicTableView
 * JD-Core Version:    0.6.2
 */