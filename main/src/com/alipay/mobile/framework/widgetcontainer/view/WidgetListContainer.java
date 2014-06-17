package com.alipay.mobile.framework.widgetcontainer.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.framework.service.ext.appentry.WidgetItemInfo;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;
import com.alipay.mobile.framework.widgetcontainer.WidgetContainerAdapter;
import com.alipay.mobile.ui.R.id;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WidgetListContainer extends WidgetContainer
{
  public WidgetListContainer(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public WidgetListContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WidgetListContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected View getContentView(List<WidgetItemInfo> paramList)
  {
    Collections.sort(paramList, new WidgetListContainer.1(this));
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    localLinearLayout.setOrientation(1);
    int i = 0;
    WidgetItemInfo localWidgetItemInfo;
    String str1;
    String str2;
    label89: String str3;
    label118: int j;
    if (i < paramList.size())
    {
      localWidgetItemInfo = (WidgetItemInfo)paramList.get(i);
      str1 = localWidgetItemInfo.getGroup();
      if (!TextUtils.isEmpty(str1))
      {
        if (i <= 0)
          break label464;
        str2 = ((WidgetItemInfo)paramList.get(i - 1)).getGroup();
        if (i >= -1 + paramList.size())
          break label471;
        str3 = ((WidgetItemInfo)paramList.get(i + 1)).getGroup();
        if ((str1.equals(str2)) || (str1.equals(str3)))
          break label478;
        j = 1;
      }
    }
    while (true)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("name", localWidgetItemInfo.getName());
      localHashMap.put("icon", localWidgetItemInfo.getIcon());
      localHashMap.put("desc", localWidgetItemInfo.getDisc());
      localHashMap.put("tips", localWidgetItemInfo.getTips());
      WidgetContainerAdapter localWidgetContainerAdapter = this.widgetContainerAdapter;
      Object localObject = null;
      if (localWidgetContainerAdapter != null)
        localObject = this.widgetContainerAdapter.getWidgetView(localWidgetItemInfo.getWidgetId(), localWidgetItemInfo.getAppId(), localHashMap, j);
      if (localObject == null)
        localObject = new DefaultListWidgetView(getContext());
      ((IWidgetView)localObject).setWidgetId(localWidgetItemInfo.getWidgetId());
      ((IWidgetView)localObject).setDisplayInfo(localHashMap);
      ((IWidgetView)localObject).setViewFlag(j);
      if ((this.widgetContainerAdapter != null) && (this.widgetContainerAdapter.needBindWidgetMsgFlag(localWidgetItemInfo.getWidgetId(), localWidgetItemInfo.getAppId())))
        ((IWidgetView)localObject).bindWidgetMsgFlag();
      this.widgetList.add(localObject);
      View localView = ((IWidgetView)localObject).getView();
      if (localView != null)
      {
        localView.setOnClickListener(this);
        localView.setTag(localWidgetItemInfo);
        localView.setTag(R.id.performance_sdk_monitor_key, localWidgetItemInfo.getAppId());
        localLinearLayout.addView(localView);
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
        if (((j & 0x2) != 0) || ((j & 0x1) != 0))
          localLayoutParams.topMargin = (this.groupGap / 2);
        if (((j & 0x4) != 0) || ((j & 0x1) != 0))
          localLayoutParams.bottomMargin = (this.groupGap / 2);
        localView.setLayoutParams(localLayoutParams);
      }
      i++;
      break;
      label464: str2 = "-1";
      break label89;
      label471: str3 = "-1";
      break label118;
      label478: if ((!str1.equals(str2)) && (str1.equals(str3)))
      {
        j = 2;
      }
      else if ((str1.equals(str2)) && (!str1.equals(str3)))
      {
        j = 4;
      }
      else if ((str1.equals(str2)) && (str1.equals(str3)))
      {
        j = 8;
        continue;
        return localLinearLayout;
      }
      else
      {
        j = 0;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetcontainer.view.WidgetListContainer
 * JD-Core Version:    0.6.2
 */