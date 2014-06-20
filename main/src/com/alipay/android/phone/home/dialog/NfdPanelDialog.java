package com.alipay.android.phone.home.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import com.alipay.android.phone.home.widget.NfdPanelView;
import com.alipay.android.phone.openplatform.R.anim;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.android.phone.openplatform.R.style;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;

public class NfdPanelDialog extends Dialog
{
  private static final String a = NfdPanelDialog.class.getName();
  private Context b;
  private NfdPanelView c;
  private View d;
  private View e;
  private View f;
  private Animation g;
  private Animation h;
  private AlphaAnimation i;
  private AlphaAnimation j;
  private ScaleAnimation k;
  private ScaleAnimation l;
  private ITopBoardStateCallBack m;
  private View.OnClickListener n;

  public NfdPanelDialog(Context paramContext)
  {
    super(paramContext, R.style.AppBundle);
    this.b = paramContext;
    setCanceledOnTouchOutside(true);
    setContentView(R.layout.k);
    this.c = ((NfdPanelView)findViewById(R.id.o));
    this.d = findViewById(R.id.y);
    this.e = findViewById(R.id.e);
    this.f = findViewById(R.id.n);
    try
    {
      Window localWindow = getWindow();
      localWindow.setGravity(51);
      WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
      localLayoutParams.width = -1;
      localLayoutParams.height = -1;
      localWindow.setAttributes(localLayoutParams);
      this.h = AnimationUtils.loadAnimation(paramContext, R.anim.BundlesManager);
      this.h.setAnimationListener(new a(this));
      this.g = AnimationUtils.loadAnimation(paramContext, R.anim.AppBundle);
      this.g.setAnimationListener(new b(this));
      this.i = new AlphaAnimation(0.1F, 0.6F);
      this.i.setDuration(200L);
      this.j = new AlphaAnimation(0.6F, 0.1F);
      this.j.setDuration(200L);
      this.k = new ScaleAnimation(1.0F, 0.6F, 1.0F, 1.0F, 1, 0.5F, 1, 0.0F);
      this.k.setDuration(200L);
      this.k.setFillAfter(true);
      this.l = new ScaleAnimation(0.6F, 1.0F, 1.0F, 1.0F, 1, 0.5F, 1, 0.0F);
      this.l.setDuration(200L);
      this.l.setFillAfter(true);
      this.c.initGestureData(new c(this));
      return;
    }
    catch (Exception localException)
    {
      LogCatLog.e(a, "NfdPanelDialog init err:" + localException.getMessage());
    }
  }

  public final void a()
  {
    this.c.startAnimation(this.h);
    this.e.startAnimation(this.j);
    this.f.startAnimation(this.l);
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams = this.d.getLayoutParams();
    if (localLayoutParams != null)
      localLayoutParams.height = paramInt;
    while (true)
    {
      this.d.setLayoutParams(localLayoutParams);
      super.show();
      if (paramBoolean)
      {
        this.c.startAnimation(this.g);
        this.e.startAnimation(this.i);
        this.f.startAnimation(this.k);
      }
      return;
      localLayoutParams = new ViewGroup.LayoutParams(-1, paramInt);
    }
  }

  public final void a(View.OnClickListener paramOnClickListener)
  {
    if (paramOnClickListener != null)
      this.c.setOnClickListener(paramOnClickListener);
  }

  public final void a(ITopBoardStateCallBack paramITopBoardStateCallBack)
  {
    this.m = paramITopBoardStateCallBack;
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    if (this.c != null)
      this.c.setData(paramString1, paramString2, paramString3);
  }

  public final void b(View.OnClickListener paramOnClickListener)
  {
    this.n = paramOnClickListener;
    this.d.setOnClickListener(paramOnClickListener);
    this.e.setOnClickListener(paramOnClickListener);
  }

  public void cancel()
  {
    if (this.n != null)
      this.n.onClick(null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.dialog.NfdPanelDialog
 * JD-Core Version:    0.6.2
 */