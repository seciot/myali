package com.alipay.android.phone.home.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import com.alipay.android.phone.home.dialog.NfdPanelDialog;
import com.alipay.android.phone.home.widget.NFDFrameLayout;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.nfd.nfdbiz.IActiveTopBaordContainer;
import com.alipay.mobile.nfd.nfdbiz.IOnActiveBoardVisibleChange;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;

final class n
  implements IActiveTopBaordContainer
{
  final Runnable a = new o(this);
  private int c = 0;

  public n(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void a()
  {
    this.c = 1;
  }

  public final int b()
  {
    return this.c;
  }

  public final void changeState(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    do
      while (true)
      {
        try
        {
          this.c = paramInt;
          return;
          if (1 == this.c)
          {
            HeaderAreaLayout.j(this.b).setVisibility(8);
            if (HeaderAreaLayout.l(this.b) == null)
              continue;
            HeaderAreaLayout.l(this.b).dismiss();
            continue;
          }
        }
        catch (Exception localException)
        {
          LogCatLog.e(HeaderAreaLayout.h(this.b), localException.getMessage());
          localException.printStackTrace();
          return;
        }
        if (2 == this.c)
        {
          HeaderAreaLayout.j(this.b).setVisibility(8);
          if (HeaderAreaLayout.l(this.b) != null)
            HeaderAreaLayout.l(this.b).a();
        }
        else if (this.c == 0)
        {
          HeaderAreaLayout.j(this.b).setVisibility(8);
          if (HeaderAreaLayout.l(this.b) != null)
          {
            HeaderAreaLayout.l(this.b).dismiss();
            continue;
            if (1 == this.c)
            {
              if (HeaderAreaLayout.l(this.b) != null)
                HeaderAreaLayout.l(this.b).hide();
              HeaderAreaLayout.j(this.b).setVisibility(0);
            }
            else if (2 == this.c)
            {
              if (HeaderAreaLayout.l(this.b) != null)
                HeaderAreaLayout.l(this.b).a();
            }
            else if (this.c == 0)
            {
              HeaderAreaLayout.j(this.b).setVisibility(0);
              continue;
              this.b.b();
              this.b.getBundleName();
              if (1 == this.c)
              {
                HeaderAreaLayout.l(this.b).a(HeaderAreaLayout.m(this.b).getBottom(), true);
              }
              else
              {
                if (2 != this.c)
                  break;
                HeaderAreaLayout.l(this.b).a(HeaderAreaLayout.m(this.b).getBottom(), false);
                HeaderAreaLayout.j(this.b).setVisibility(4);
              }
            }
          }
        }
      }
    while (this.c != 0);
    ViewGroup.LayoutParams localLayoutParams;
    if (HeaderAreaLayout.m(this.b).getHeight() != 0)
    {
      localLayoutParams = HeaderAreaLayout.j(this.b).getLayoutParams();
      if (localLayoutParams != null)
        break label474;
      localLayoutParams = new ViewGroup.LayoutParams(HeaderAreaLayout.removeBundle(this.b).getWidth(), HeaderAreaLayout.m(this.b).getHeight());
    }
    while (true)
    {
      HeaderAreaLayout.j(this.b).setLayoutParams(localLayoutParams);
      HeaderAreaLayout.j(this.b).setVisibility(0);
      HeaderAreaLayout.l(this.b).a(HeaderAreaLayout.m(this.b).getBottom(), true);
      break;
      label474: localLayoutParams.height = HeaderAreaLayout.m(this.b).getHeight();
      localLayoutParams.width = HeaderAreaLayout.removeBundle(this.b).getWidth();
    }
  }

  public final View getView()
  {
    return HeaderAreaLayout.m(this.b);
  }

  public final void setOnBoardCLickListener(View.OnClickListener paramOnClickListener)
  {
    if (HeaderAreaLayout.l(this.b) != null)
      HeaderAreaLayout.l(this.b).a(paramOnClickListener);
  }

  public final void setOnStateChangeListener(ITopBoardStateCallBack paramITopBoardStateCallBack)
  {
    if (HeaderAreaLayout.l(this.b) != null)
      HeaderAreaLayout.l(this.b).a(paramITopBoardStateCallBack);
  }

  public final void setOnVisibleChangeListener(IOnActiveBoardVisibleChange paramIOnActiveBoardVisibleChange)
  {
    HeaderAreaLayout.m(this.b).addOnVisibleChangeListener(paramIOnActiveBoardVisibleChange);
  }

  public final void updateTopInfo(String paramString1, String paramString2, String paramString3)
  {
    if (HeaderAreaLayout.l(this.b) != null)
      HeaderAreaLayout.l(this.b).a(paramString1, paramString2, paramString3);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.n
 * JD-Core Version:    0.6.2
 */