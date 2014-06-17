package com.alipay.android.phone.publicplatform.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.alipay.android.phone.publicplatform.main.model.MsgCountModel;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;

public class PublicTabWidgetMsgFlag extends WidgetMsgFlag
{
  private a a;

  public PublicTabWidgetMsgFlag(Context paramContext)
  {
    super(paramContext);
  }

  public PublicTabWidgetMsgFlag(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PublicTabWidgetMsgFlag(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected int calculateMsgCount(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.a != null)
    {
      MsgCountModel localMsgCountModel = this.a.a();
      if (localMsgCountModel.getTyle() == 2);
      for (String str = "num"; ; str = "point")
      {
        setMsgStyle(str);
        return localMsgCountModel.getCount();
      }
    }
    return super.calculateMsgCount(paramInt1, paramInt2, paramInt3);
  }

  public void setPublicTabWidgetMsgFlagCallback(a parama)
  {
    this.a = parama;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.widget.PublicTabWidgetMsgFlag
 * JD-Core Version:    0.6.2
 */