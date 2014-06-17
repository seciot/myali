package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class k
{
  private static final String a = k.class.getName();
  private View b;
  private Context c;
  private ViewGroup d;
  private ActivityApplication e;
  private p f;
  private Handler g = new Handler();
  private View h;

  public k(Context paramContext, ViewGroup paramViewGroup, ActivityApplication paramActivityApplication, p paramp)
  {
    this.c = paramContext;
    this.d = paramViewGroup;
    this.e = paramActivityApplication;
    this.f = paramp;
  }

  public final void a(BaseActivity paramBaseActivity, APTitleBar paramAPTitleBar, View.OnClickListener paramOnClickListener)
  {
    if ((paramBaseActivity == null) || (paramBaseActivity.isFinishing()))
      return;
    if (paramAPTitleBar == null)
      return;
    this.g.post(new m(this, paramBaseActivity, paramOnClickListener, paramAPTitleBar));
  }

  public final boolean a(RpcException paramRpcException)
  {
    if (paramRpcException.getCode() == 2)
    {
      this.g.post(new l(this));
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.k
 * JD-Core Version:    0.6.2
 */