package com.alipay.mobile.framework.widgetmsg;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.styleable;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.commonui.widget.APFrameLayout;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;

public class WidgetMsgFlag extends APFrameLayout
{
  protected static int MSG_STYLE_NEW = 2;
  protected static int MSG_STYLE_NUM;
  protected static int MSG_STYLE_POINT = 0;
  private static String a = "point";
  private static String b = "new";
  private static String c = "num";
  private APImageView d;
  private APTextView e;
  private boolean f = false;
  private boolean g = true;
  protected int mDescendantCount = 0;
  protected int mMsgStyle = MSG_STYLE_POINT;
  protected int mPersistenceMsgCount = 0;
  protected int mTemporaryMsgCount = 0;
  protected int maxCount = 99;
  protected String widgetId = null;

  static
  {
    MSG_STYLE_NUM = 1;
  }

  public WidgetMsgFlag(Context paramContext)
  {
    this(paramContext, null);
  }

  public WidgetMsgFlag(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WidgetMsgFlag(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setVisibility(4);
    LayoutInflater.from(paramContext).inflate(R.layout.widget_msg_flag_layout, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.widgetMsgFlag);
    this.g = localTypedArray.getBoolean(1, true);
    this.maxCount = localTypedArray.getInteger(4, 99);
    if (localTypedArray.getBoolean(3, false))
      this.maxCount = 9;
    setBindingWidget(localTypedArray.getString(0));
    localTypedArray.recycle();
    this.d = ((APImageView)findViewById(R.id.widgetMsgBg));
    this.e = ((APTextView)findViewById(R.id.widgetMsgText));
  }

  public WidgetMsgFlag(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, null);
    this.g = paramBoolean;
  }

  public void ackClick()
  {
    LogCatLog.v("WidgetMsgFlag", "ackClick,id=" + this.widgetId);
    WidgetMsgManager.getInstance().removeWidgetMsg(this.widgetId);
    if ((this.f) && (this.mDescendantCount == 0))
      WidgetMsgManager.getInstance().cachedTaskIdAndMsgIdRequestUpdateWidgetMsg(this.widgetId);
    this.mTemporaryMsgCount = 0;
    this.mPersistenceMsgCount = 0;
    refreshMsgFlag();
  }

  protected int calculateMsgCount(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt3 + (paramInt1 + paramInt2);
  }

  public void clearBindingWidget(String paramString)
  {
    WidgetMsgManager.getInstance().unRegisterWidgetView(this);
    reset();
  }

  public void clearBindingWidget(boolean paramBoolean)
  {
    this.widgetId = null;
    WidgetMsgManager.getInstance().unRegisterWidgetView(this);
    if (paramBoolean)
      reset();
  }

  public String getWidgetId()
  {
    return this.widgetId;
  }

  public void hideMsgFlag()
  {
    WidgetMsgManager.getInstance().unRegisterWidgetView(this);
    setVisibility(4);
  }

  protected void refreshMsgFlag()
  {
    post(new WidgetMsgFlag.1(this));
  }

  public void reset()
  {
    this.mTemporaryMsgCount = 0;
    this.mPersistenceMsgCount = 0;
    this.mDescendantCount = 0;
    this.f = false;
    this.mMsgStyle = MSG_STYLE_POINT;
    refreshMsgFlag();
  }

  public void setBindingWidget(String paramString)
  {
    if (!this.g);
    while (TextUtils.isEmpty(paramString))
      return;
    this.widgetId = paramString;
    WidgetMsgManager.getInstance().registerWidgetView(this);
  }

  public void setMsgCount(int paramInt1, int paramInt2, int paramInt3)
  {
    LogCatLog.v("WidgetMsgFlag", "setMsgCount:" + (paramInt3 + (paramInt1 + paramInt2)) + ",id=" + this.widgetId + ",t=" + paramInt1 + ",p=" + paramInt2 + ",d=" + paramInt3);
    this.mTemporaryMsgCount = paramInt1;
    this.mPersistenceMsgCount = paramInt2;
    this.mDescendantCount = paramInt3;
    refreshMsgFlag();
  }

  public void setMsgStyle(String paramString)
  {
    if (c.equals(paramString))
      this.mMsgStyle = MSG_STYLE_NUM;
    do
    {
      return;
      if (a.equals(paramString))
      {
        this.mMsgStyle = MSG_STYLE_POINT;
        return;
      }
    }
    while (!b.equals(paramString));
    this.mMsgStyle = MSG_STYLE_NEW;
  }

  public void setNeedAck(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void showMsgFlag()
  {
    WidgetMsgManager.getInstance().unRegisterWidgetView(this);
    this.d.setImageResource(R.drawable.redpoint);
    this.e.setText("");
    setVisibility(0);
    postInvalidate();
  }

  public void showMsgFlag(int paramInt)
  {
    WidgetMsgManager.getInstance().unRegisterWidgetView(this);
    if (paramInt > this.maxCount)
    {
      this.d.setImageResource(R.drawable.msg_more_bg);
      this.e.setText("");
      setBackgroundResource(0);
    }
    while (true)
    {
      postInvalidate();
      return;
      showMsgFlag(Integer.toString(paramInt));
    }
  }

  public void showMsgFlag(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      WidgetMsgManager.getInstance().unRegisterWidgetView(this);
      if (paramString.length() != 1)
        break label55;
      this.d.setImageResource(R.drawable.msg_flag_bg);
      setBackgroundResource(0);
    }
    while (true)
    {
      this.e.setText(paramString);
      setVisibility(0);
      postInvalidate();
      return;
      label55: this.d.setImageBitmap(null);
      setBackgroundResource(R.drawable.msg_txt_bg);
    }
  }

  public void showMsgFlagNew()
  {
    WidgetMsgManager.getInstance().unRegisterWidgetView(this);
    this.e.setText("");
    this.d.setImageResource(R.drawable.msg_new_bg);
    setBackgroundResource(0);
    setVisibility(0);
    postInvalidate();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag
 * JD-Core Version:    0.6.2
 */