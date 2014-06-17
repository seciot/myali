package com.alipay.mobile.framework.widgetcontainer;

import android.view.View;
import java.util.Map;

public abstract interface IWidgetView
{
  public static final int VIEW_FLAG_BOTTOM = 4;
  public static final int VIEW_FLAG_CENTER = 8;
  public static final int VIEW_FLAG_NORMAL = 1;
  public static final int VIEW_FLAG_TOP = 2;
  public static final String WIDGET_DESC = "desc";
  public static final String WIDGET_ICON = "icon";
  public static final String WIDGET_MSG_COUNT = "widget_msg_count";
  public static final String WIDGET_MSG_STYLE = "widget_msg_style";
  public static final String WIDGET_MSG_TYPE_NUM = "num";
  public static final String WIDGET_MSG_TYPE_POINT = "point";
  public static final String WIDGET_NAME = "name";
  public static final String WIDGET_TIPS = "tips";

  public abstract void bindWidgetMsgFlag();

  public abstract View getView();

  public abstract String getWidgetId();

  public abstract void setDisplayInfo(Map<String, String> paramMap);

  public abstract void setViewFlag(int paramInt);

  public abstract void setWidgetId(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetcontainer.IWidgetView
 * JD-Core Version:    0.6.2
 */