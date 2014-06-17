package com.alipay.android.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.alipay.android.app.util.LogUtils;

public class Switcher extends SeekBar
  implements SeekBar.OnSeekBarChangeListener
{
  private boolean a;

  public Switcher(Context paramContext)
  {
    super(paramContext);
    start();
  }

  public Switcher(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    start();
  }

  public Switcher(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    start();
  }

  public boolean getSwitcherState()
  {
    return this.a;
  }

  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    new StringBuilder("pro:").append(paramInt).toString();
    LogUtils.d();
  }

  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    LogUtils.d();
  }

  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    LogUtils.d();
    if (paramSeekBar.getProgress() > 10)
    {
      setProgress(20);
      this.a = true;
      return;
    }
    setProgress(0);
    this.a = false;
  }

  public void setSwitcherState(boolean paramBoolean)
  {
    if (paramBoolean)
      setProgress(20);
    while (true)
    {
      this.a = paramBoolean;
      return;
      setProgress(0);
    }
  }

  public void start()
  {
    setMax(20);
    setOnSeekBarChangeListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.Switcher
 * JD-Core Version:    0.6.2
 */