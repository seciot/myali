package com.alipay.mobile.framework.widgetcontainer.view;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.alipay.mobile.commonui.widget.APExtTableView;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgManager;
import com.androidquery.AQuery;
import java.util.Map;

public class DefaultListWidgetView extends APExtTableView
  implements IWidgetView
{
  private String a;
  private WidgetMsgFlag b;

  public DefaultListWidgetView(Context paramContext)
  {
    this(paramContext, null);
  }

  public DefaultListWidgetView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void bindWidgetMsgFlag()
  {
    this.b = new WidgetMsgFlag(getContext());
    this.b.setBindingWidget(this.a);
    attachNewFlag2LeftText(this.b);
  }

  public View getView()
  {
    return this;
  }

  public String getWidgetId()
  {
    return this.a;
  }

  public void setDisplayInfo(Map<String, String> paramMap)
  {
    if (paramMap == null);
    label215: int j;
    do
    {
      return;
      String str1 = (String)paramMap.get("name");
      paramMap.get("desc");
      String str2 = (String)paramMap.get("icon");
      String str3 = (String)paramMap.get("tips");
      String str4 = (String)paramMap.get("widget_msg_style");
      if (paramMap.get("widget_msg_count") != null);
      while (true)
      {
        try
        {
          int k = Integer.parseInt((String)paramMap.get("widget_msg_count"));
          i = k;
          if ((this.b != null) && (i >= 0))
          {
            WidgetMsgManager.getInstance().unRegisterWidgetView(this.b);
            this.b.setMsgStyle(str4);
            this.b.setMsgCount(i, 0, 0);
          }
          if (!TextUtils.isEmpty(str1))
            setLeftText(str1);
          if (str3 != null)
            setRightText(str3);
          if (TextUtils.isEmpty(str2))
            break;
          if (!str2.startsWith("http://"))
            break label215;
          ((AQuery)new AQuery(getContext()).id(this.mIconImageView)).image(str2);
          return;
        }
        catch (NumberFormatException localNumberFormatException)
        {
        }
        int i = -1;
      }
      String[] arrayOfString = str2.split("/");
      String str5 = arrayOfString[(-1 + arrayOfString.length)];
      String str6 = getContext().getPackageName();
      if (arrayOfString.length >= 2)
        str6 = arrayOfString[(-2 + arrayOfString.length)];
      j = getResources().getIdentifier(str5, "drawable", str6);
    }
    while (j <= 0);
    setLeftImage(getResources().getDrawable(j));
  }

  public void setViewFlag(int paramInt)
  {
    if ((paramInt & 0x1) != 0)
      setType(16);
    do
    {
      return;
      if ((paramInt & 0x2) != 0)
      {
        setType(17);
        return;
      }
      if ((paramInt & 0x8) != 0)
      {
        setType(19);
        return;
      }
    }
    while ((paramInt & 0x4) == 0);
    setType(18);
  }

  public void setWidgetId(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetcontainer.view.DefaultListWidgetView
 * JD-Core Version:    0.6.2
 */