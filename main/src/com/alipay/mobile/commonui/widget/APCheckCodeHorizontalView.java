package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.string;
import com.alipay.mobile.ui.R.styleable;
import java.util.Timer;

public class APCheckCodeHorizontalView extends APRelativeLayout
{
  private APInputBox a;
  private APButton b;
  private String c;
  private OnSendCallback d;
  private SendResultCallback e;
  private Handler f = new APCheckCodeHorizontalView.TimerHanlder(this, null);
  private int g;
  private boolean h = true;
  private Timer i;
  private APCheckCodeHorizontalView.SendButtonEnableChecker j;
  private boolean k = true;

  public APCheckCodeHorizontalView(Context paramContext)
  {
    super(paramContext);
  }

  public APCheckCodeHorizontalView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_checkcode_sender_horizontal_view, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.checkcode_sender);
    this.h = localTypedArray.getBoolean(0, true);
    localTypedArray.recycle();
    this.g = 60;
  }

  public void addTextChangedListener(TextWatcher paramTextWatcher)
  {
    this.a.addTextChangedListener(paramTextWatcher);
  }

  public void currentSecond2Zero()
  {
    this.g = 0;
  }

  public int getCurrentSecond()
  {
    return this.g;
  }

  public APInputBox getInputBox()
  {
    return this.a;
  }

  public APButton getSendCodeButton()
  {
    return this.b;
  }

  public String getText()
  {
    return this.a.getInputedText();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((APInputBox)findViewById(R.id.checkCodeSendInputBox));
    this.b = ((APButton)findViewById(R.id.checkCodeSendButton));
    this.c = getContext().getText(R.string.timeAfter);
    this.e = new APCheckCodeHorizontalView.CheckCodeSendResultCallback(this, null);
    boolean bool = this.h;
    APInputBox localAPInputBox = this.a;
    if (bool);
    for (int m = 0; ; m = 8)
    {
      localAPInputBox.setVisibility(m);
      this.b.setOnClickListener(new APCheckCodeHorizontalView.1(this));
      return;
    }
  }

  public void scheduleTimer()
  {
    this.k = false;
    updateSendButtonEnableStatus();
    if (this.i != null)
    {
      this.i.cancel();
      this.i = null;
    }
    this.i = new Timer();
    this.i.schedule(new APCheckCodeHorizontalView.2(this), 0L, 1000L);
  }

  public void setCurrentSecond(int paramInt)
  {
    this.g = paramInt;
  }

  public void setOnSendCallback(OnSendCallback paramOnSendCallback)
  {
    if (paramOnSendCallback != null)
      this.d = paramOnSendCallback;
  }

  public void setSendButtonEnableChecker(APCheckCodeHorizontalView.SendButtonEnableChecker paramSendButtonEnableChecker)
  {
    this.j = paramSendButtonEnableChecker;
  }

  public void updateSendButtonEnableStatus()
  {
    if ((this.j != null) && (!this.j.checkIsEnabled()))
    {
      this.b.setEnabled(false);
      return;
    }
    this.b.setEnabled(this.k);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView
 * JD-Core Version:    0.6.2
 */