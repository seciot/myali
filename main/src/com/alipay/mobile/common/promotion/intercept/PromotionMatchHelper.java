package com.alipay.mobile.common.promotion.intercept;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.alipay.mobile.common.utils.StringUtils;
import java.lang.reflect.Method;

public class PromotionMatchHelper
{
  public static final String APABSTABLEVIEW_CLASS = "com.alipay.mobile.commonui.widget.APAbsTableView";
  public static final String IWIDGETVIEW_CLASS = "com.alipay.mobile.framework.widgetcontainer.IWidgetView";
  public static final String MATCH_TYPE_JUMP = "jump";
  public static final String MATCH_TYPE_VIEW_TRIGGER = "viewTrigger";

  private static String a(Object paramObject, String paramString1, String paramString2)
  {
    try
    {
      Class localClass = Class.forName(paramString1);
      if (localClass.isInstance(paramObject))
      {
        String str = (String)localClass.getMethod(paramString2, new Class[0]).invoke(paramObject, new Object[0]);
        return str;
      }
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
    return "";
  }

  public static boolean matchViewTrigger(View paramView, String paramString)
  {
    new StringBuilder("matchViewTrigger begin, triggerId=").append(paramString).toString();
    Object localObject1;
    int i;
    if ((paramView != null) && (!StringUtils.isEmpty(paramString)))
    {
      localObject1 = "";
      if (paramString.indexOf("widgetId:") == 0)
      {
        localObject1 = a(paramView, "com.alipay.mobile.framework.widgetcontainer.IWidgetView", "getWidgetId");
        new StringBuilder("(reflect)get view widgetId: ").append((String)localObject1).toString();
        i = 1;
        if (i != 0)
          paramString = paramString.substring(1 + paramString.indexOf(":"));
        new StringBuilder("viewTriggerId:").append((String)localObject1).append(", realTriggerId:").append(paramString).toString();
        if ((StringUtils.isEmpty(paramString)) || (!paramString.equals(localObject1)))
          break label367;
      }
    }
    label367: for (boolean bool = true; ; bool = false)
    {
      while (true)
      {
        new StringBuilder("matchViewTrigger end, result=").append(bool).toString();
        return bool;
        if (paramString.indexOf("viewId:") == 0)
        {
          localObject1 = paramView.getContext().getResources().getResourceEntryName(paramView.getId());
          new StringBuilder("get view id: ").append((String)localObject1).toString();
          i = 1;
          break;
        }
        if (paramString.indexOf("viewText:") == 0)
        {
          if ((paramView instanceof TextView))
          {
            localObject1 = ((TextView)paramView).getText().toString();
            new StringBuilder("get textview text: ").append((String)localObject1).toString();
            i = 1;
            break;
          }
          localObject1 = a(paramView, "com.alipay.mobile.commonui.widget.APAbsTableView", "getLeftText");
          new StringBuilder("(reflect)get APAbsTableView lefttext: ").append((String)localObject1).toString();
          i = 1;
          break;
        }
        try
        {
          if ((paramView.getContext() != null) && (paramView.getContext().getResources() != null))
          {
            localObject1 = paramView.getContext().getResources().getResourceEntryName(paramView.getId());
            new StringBuilder("(default)get viewid: ").append((String)localObject1).toString();
          }
          i = 0;
        }
        catch (Exception localException)
        {
          Object localObject2 = localObject1;
          localException.printStackTrace();
          localObject1 = localObject2;
          i = 0;
        }
      }
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.PromotionMatchHelper
 * JD-Core Version:    0.6.2
 */