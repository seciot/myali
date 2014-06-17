package com.alipay.mobile.framework.widgetcontainer.view;

import android.text.TextUtils;
import com.alipay.mobile.framework.service.ext.appentry.WidgetItemInfo;
import java.util.Comparator;

class WidgetListContainer$1
  implements Comparator<WidgetItemInfo>
{
  WidgetListContainer$1(WidgetListContainer paramWidgetListContainer)
  {
  }

  public int compare(WidgetItemInfo paramWidgetItemInfo1, WidgetItemInfo paramWidgetItemInfo2)
  {
    if ((!TextUtils.isEmpty(paramWidgetItemInfo1.getGroup())) && (!TextUtils.isEmpty(paramWidgetItemInfo2.getGroup())))
    {
      int i = paramWidgetItemInfo1.getGroup().compareTo(paramWidgetItemInfo2.getGroup());
      if (i != 0)
        return i;
    }
    return paramWidgetItemInfo1.getIndex().compareTo(paramWidgetItemInfo2.getIndex());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetcontainer.view.WidgetListContainer.1
 * JD-Core Version:    0.6.2
 */