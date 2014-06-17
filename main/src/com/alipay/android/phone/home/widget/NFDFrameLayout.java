package com.alipay.android.phone.home.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.nfd.nfdbiz.IOnActiveBoardVisibleChange;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NFDFrameLayout extends FrameLayout
{
  private List<IOnActiveBoardVisibleChange> a;

  public NFDFrameLayout(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public NFDFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public NFDFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    this.a = new ArrayList();
  }

  public void addOnVisibleChangeListener(IOnActiveBoardVisibleChange paramIOnActiveBoardVisibleChange)
  {
    this.a.add(paramIOnActiveBoardVisibleChange);
  }

  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    LogCatLog.i("wif", paramView.getClass().getName());
    Iterator localIterator = this.a.iterator();
    if (localIterator.hasNext())
    {
      IOnActiveBoardVisibleChange localIOnActiveBoardVisibleChange = (IOnActiveBoardVisibleChange)localIterator.next();
      if (paramInt == 0);
      for (boolean bool = true; ; bool = false)
      {
        localIOnActiveBoardVisibleChange.onVisibleChange(bool);
        break;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.NFDFrameLayout
 * JD-Core Version:    0.6.2
 */