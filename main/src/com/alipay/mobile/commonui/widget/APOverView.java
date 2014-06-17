package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

public abstract class APOverView extends APFrameLayout
{
  public static final byte STATE_CLOSE = 0;
  public static final byte STATE_FINISH = 4;
  public static final byte STATE_LOAD = 3;
  public static final byte STATE_OPEN = 1;
  public static final byte STATE_OVER = 2;
  protected byte mState = 0;

  public APOverView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public APOverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public APOverView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  public ImageView getLoadingLogo()
  {
    return null;
  }

  public View getLoadingShadowView()
  {
    return null;
  }

  public ImageView getNormalLogo()
  {
    return null;
  }

  public View getNormalShadowView()
  {
    return null;
  }

  public abstract int getOverViewHeight();

  public byte getState()
  {
    return this.mState;
  }

  public abstract void init();

  public abstract void onFinish();

  public abstract void onLoad();

  public abstract void onOpen();

  public abstract void onOver();

  public void onPullto(double paramDouble, byte paramByte)
  {
  }

  public void setState(byte paramByte)
  {
    this.mState = paramByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APOverView
 * JD-Core Version:    0.6.2
 */