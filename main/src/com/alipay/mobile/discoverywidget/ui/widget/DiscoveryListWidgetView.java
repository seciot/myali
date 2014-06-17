package com.alipay.mobile.discoverywidget.ui.widget;

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

public class DiscoveryListWidgetView extends APExtTableView
  implements IWidgetView
{
  private String a;
  private WidgetMsgFlag b;

  public DiscoveryListWidgetView(Context paramContext)
  {
    this(paramContext, null);
  }

  public DiscoveryListWidgetView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void bindWidgetMsgFlag()
  {
    this.b = new WidgetMsgFlag(getContext(), false);
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
    label176: label225: label236: int i;
    do
    {
      return;
      String str1 = (String)paramMap.get("name");
      paramMap.get("desc");
      String str2 = (String)paramMap.get("icon");
      String str3 = (String)paramMap.get("tips");
      String str4 = (String)paramMap.get("widget_msg_disc");
      if (this.b != null)
      {
        if (TextUtils.isEmpty(str4))
          break label225;
        WidgetMsgManager.getInstance().unRegisterWidgetView(this.b);
        if (!"new".equalsIgnoreCase(str4))
          break label176;
        this.b.showMsgFlagNew();
      }
      while (true)
      {
        if (!TextUtils.isEmpty(str1))
          setLeftText(str1);
        if (str3 != null)
          setRightText(str3);
        if (TextUtils.isEmpty(str2))
          break;
        if (!str2.startsWith("http://"))
          break label236;
        ((AQuery)new AQuery(getContext()).id(this.mIconImageView)).image(str2);
        return;
        if ("hui".equalsIgnoreCase(str4))
        {
          this.b.showMsgFlag("惠");
        }
        else
        {
          this.b.setMsgStyle("num");
          this.b.showMsgFlag(Integer.valueOf(str4).intValue());
          continue;
          this.b.setVisibility(4);
        }
      }
      String[] arrayOfString = str2.split("/");
      String str5 = arrayOfString[(-1 + arrayOfString.length)];
      String str6 = getContext().getPackageName();
      if (arrayOfString.length >= 2)
        str6 = arrayOfString[(-2 + arrayOfString.length)];
      i = getResources().getIdentifier(str5, "drawable", str6);
    }
    while (i <= 0);
    setLeftImage(getResources().getDrawable(i));
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
 * Qualified Name:     com.alipay.mobile.discoverywidget.ui.widget.DiscoveryListWidgetView
 * JD-Core Version:    0.6.2
 */