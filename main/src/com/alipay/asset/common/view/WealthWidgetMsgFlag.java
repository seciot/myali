package com.alipay.asset.common.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.alipay.android.widgets.asset.utils.AssetRedpointCacheUtil;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class WealthWidgetMsgFlag extends WidgetMsgFlag
{
  protected static int MSG_STYLE_LABLE = 3;
  public static int MSG_WIDGET_TYPE_SDK;
  public static int MSG_WIDGET_TYPE_TAG = 0;
  private static String a = "lable";
  private WealthWidgetMsgFlag b;
  private List<WealthWidgetMsgFlag> c = new ArrayList();
  private int d = MSG_WIDGET_TYPE_TAG;
  private String e;
  private boolean f;
  private String g;
  private boolean h;
  private String i;

  static
  {
    MSG_WIDGET_TYPE_SDK = 1;
  }

  public WealthWidgetMsgFlag(Context paramContext)
  {
    super(paramContext);
  }

  public WealthWidgetMsgFlag(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public WealthWidgetMsgFlag(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a(List<WealthWidgetMsgFlag> paramList)
  {
    int j = 1;
    String str1 = null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i6;
    int i10;
    int i7;
    int i8;
    int i9;
    if (localIterator.hasNext())
    {
      WealthWidgetMsgFlag localWealthWidgetMsgFlag = (WealthWidgetMsgFlag)localIterator.next();
      boolean bool = localWealthWidgetMsgFlag.isHideFlag();
      localArrayList.add("#" + localWealthWidgetMsgFlag.getWidgetId() + "|" + localWealthWidgetMsgFlag.g + "|" + bool);
      if (bool)
        break label405;
      if ((i3 == 0) && (localWealthWidgetMsgFlag.getMsgStyle() == 3))
      {
        str1 = localWealthWidgetMsgFlag.e;
        i3 = j;
      }
      if (localWealthWidgetMsgFlag.getMsgStyle() == j)
      {
        m += localWealthWidgetMsgFlag.getShowNum();
        i2 = j;
      }
      if ((i1 == 0) && (localWealthWidgetMsgFlag.getMsgStyle() == 2))
        i1 = j;
      if ((n != 0) || (localWealthWidgetMsgFlag.getMsgStyle() != 0))
        break label405;
      i6 = m;
      i10 = i2;
      i7 = i1;
      i8 = i3;
      i9 = j;
    }
    while (true)
    {
      i2 = i10;
      n = i9;
      i3 = i8;
      i1 = i7;
      m = i6;
      break;
      if (localArrayList.size() > 0)
        Collections.sort(localArrayList);
      for (String str2 = StringUtils.concatenate(localArrayList.toArray()); ; str2 = "EMPTY")
      {
        String str3;
        if ((i3 != 0) || (i2 != 0) || (i1 != 0) || (n != 0))
        {
          int i4 = j;
          if (i2 == 0)
            break label362;
          str3 = "num";
          str1 = m;
          label313: this.f = j;
          this.g = str2;
          this.e = str1;
          setMsgStyle(str3);
          if ((i4 == 0) || (a(j, str2)))
            break label393;
        }
        while (true)
        {
          this.h = j;
          return;
          int i5 = 0;
          break;
          label362: if (i1 != 0)
          {
            str3 = "new";
            break label313;
          }
          if (i3 != 0)
          {
            str3 = "lable";
            break label313;
          }
          str3 = "point";
          break label313;
          label393: int k = 0;
        }
      }
      label405: i6 = m;
      i7 = i1;
      i8 = i3;
      i9 = n;
      i10 = i2;
    }
  }

  private boolean a(boolean paramBoolean, String paramString)
  {
    String str = AssetRedpointCacheUtil.a(getWidgetId());
    return (paramBoolean) && (StringUtils.equals(str, paramString));
  }

  public void ackClick()
  {
    if (this.d == MSG_WIDGET_TYPE_TAG)
    {
      if (this.f)
        AssetRedpointCacheUtil.a(getWidgetId(), this.g);
      refreshMsgFlag();
    }
    while (true)
    {
      if (this.b != null)
      {
        this.b.a(this.b.c);
        this.b.ackClick();
      }
      return;
      super.ackClick();
    }
  }

  public void addChild(WealthWidgetMsgFlag paramWealthWidgetMsgFlag)
  {
    if (!this.c.contains(paramWealthWidgetMsgFlag))
    {
      this.c.add(paramWealthWidgetMsgFlag);
      paramWealthWidgetMsgFlag.setParent(this);
    }
  }

  public int getMsgStyle()
  {
    return this.mMsgStyle;
  }

  public int getShowNum()
  {
    if (this.d == MSG_WIDGET_TYPE_TAG)
      try
      {
        int j = Integer.parseInt(this.e);
        return j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        return 0;
      }
    return calculateMsgCount(this.mTemporaryMsgCount, this.mPersistenceMsgCount, this.mDescendantCount);
  }

  public String getWidgetId()
  {
    if (this.d != MSG_WIDGET_TYPE_TAG)
      return super.getWidgetId();
    return this.i;
  }

  public boolean isHideFlag()
  {
    boolean bool;
    if (this.d == MSG_WIDGET_TYPE_TAG)
    {
      int k = getShowNum();
      if ((this.h) && (!a(this.f, this.g)))
      {
        bool = false;
        if (k == 0)
        {
          int m = this.mMsgStyle;
          int n = MSG_STYLE_NUM;
          bool = false;
          if (m != n);
        }
      }
      else
      {
        bool = true;
      }
    }
    int j;
    do
    {
      return bool;
      j = calculateMsgCount(this.mTemporaryMsgCount, this.mPersistenceMsgCount, this.mDescendantCount);
      bool = false;
    }
    while (j > 0);
    return true;
  }

  public void refreshMsgFlag()
  {
    if (this.c.size() > 0)
      a(this.c);
    if (this.d == MSG_WIDGET_TYPE_TAG)
    {
      post(new a(this));
      return;
    }
    super.refreshMsgFlag();
    StringBuilder localStringBuilder = new StringBuilder("WidgetId=").append(this.i).append(",show=");
    if (!isHideFlag());
    for (boolean bool = true; ; bool = false)
    {
      localStringBuilder.append(bool).append(";").append(this.mTemporaryMsgCount).append(",").append(this.mPersistenceMsgCount).append(",").append(this.mDescendantCount).toString();
      return;
    }
  }

  public void reset()
  {
    if (this.d == MSG_WIDGET_TYPE_TAG)
    {
      this.e = null;
      this.g = null;
      this.f = false;
      this.h = false;
      this.mMsgStyle = MSG_STYLE_POINT;
      refreshMsgFlag();
      return;
    }
    super.reset();
  }

  public void setBindingWidget(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    this.i = paramString;
    super.setBindingWidget(paramString);
  }

  public void setMsgCount(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = isHideFlag();
    super.setMsgCount(paramInt1, paramInt2, paramInt3);
    if ((bool != isHideFlag()) && (this.b != null))
      this.b.refreshMsgFlag();
  }

  public void setMsgData(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3)
  {
    this.d = MSG_WIDGET_TYPE_TAG;
    this.h = paramBoolean1;
    this.f = paramBoolean2;
    this.g = String.valueOf(paramString1);
    this.e = paramString2;
    setMsgStyle(paramString3);
    refreshMsgFlag();
  }

  public void setMsgStyle(String paramString)
  {
    if (a.equals(paramString))
    {
      this.mMsgStyle = MSG_STYLE_LABLE;
      return;
    }
    super.setMsgStyle(paramString);
  }

  public void setParent(WealthWidgetMsgFlag paramWealthWidgetMsgFlag)
  {
    this.b = paramWealthWidgetMsgFlag;
  }

  public void setWidgetType(int paramInt)
  {
    this.d = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.view.WealthWidgetMsgFlag
 * JD-Core Version:    0.6.2
 */