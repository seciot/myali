package com.alipay.android.app.pay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ScrollView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.data.BizData;
import com.alipay.android.app.data.BizDataSource;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.data.Orientation;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.OnContainerEventListener;
import com.alipay.android.app.display.uielement.IElementFocusChanged;
import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.display.uielement.UILayoutPopup;
import com.alipay.android.app.display.windows.ContentFragment;
import com.alipay.android.app.display.windows.IContainer;
import com.alipay.android.app.display.windows.UIWindow;
import com.alipay.android.app.empty.WindowTemplateProvider;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.ILoadingScriptable;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.app.widget.ResizeLayout;
import com.alipay.android.lib.plusin.ui.WindowManagerRouter;
import com.alipay.android.mini.window.AbsActivity;

public class MainActivity extends AbsActivity
  implements IElementFocusChanged, IContainer
{
  private int a;
  private ActivityWindowScriptable b;
  private OnContainerEventListener c;
  private String d;
  private boolean e;
  private UILayoutPopup f;
  private ResizeLayout g;

  private void a(Intent paramIntent)
  {
    if (this.b == null)
      this.b = new ActivityWindowScriptable(this, this);
    try
    {
      this.a = paramIntent.getIntExtra("CallingPid", 0);
      if (this.a == 0)
        throw new Exception("no biz id");
    }
    catch (AppErrorException localAppErrorException)
    {
      MonitorThread.a().d(localAppErrorException, "");
      return;
      BizDataSource.a().b(this.a).i().a(this);
      loading(0);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().d(localException, "on main activity create");
    }
  }

  public final void a(OnContainerEventListener paramOnContainerEventListener)
  {
    this.c = paramOnContainerEventListener;
    this.b.a(paramOnContainerEventListener);
  }

  public final void a(UIWindow paramUIWindow)
  {
    this.b.a(paramUIWindow);
  }

  public final void a(UIWindow paramUIWindow, Orientation paramOrientation)
  {
    if (this.e)
    {
      paramOrientation = null;
      this.e = false;
    }
    ScrollView localScrollView = new ScrollView(this);
    this.g.setScrollView(localScrollView);
    ViewGroup.LayoutParams localLayoutParams = localScrollView.getLayoutParams();
    if (localLayoutParams == null)
      localScrollView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    while (true)
    {
      IUIElement localIUIElement = paramUIWindow.a();
      localScrollView.removeAllViews();
      View localView = localIUIElement.a(this, localScrollView);
      localScrollView.addView(localView);
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      if (paramOrientation != null)
        localFragmentTransaction.setCustomAnimations(paramOrientation.b(), paramOrientation.a());
      ContentFragment localContentFragment = new ContentFragment();
      localContentFragment.a(localScrollView);
      localFragmentTransaction.replace(R.id.s, localContentFragment).commitAllowingStateLoss();
      localView.getViewTreeObserver().addOnGlobalLayoutListener(new i(this, paramUIWindow));
      if (this.f != null)
        this.f.dispose();
      return;
      localLayoutParams.width = -1;
      localLayoutParams.height = -1;
    }
  }

  public void alert(String paramString1, String paramString2)
  {
    alert(paramString1, paramString2, null);
  }

  public void alert(String paramString1, String paramString2, String paramString3)
  {
    if (this.b != null)
      this.b.alert(paramString1, paramString2, paramString3);
  }

  public void allowback(String paramString1, String paramString2)
  {
    if (this.b != null)
      this.b.allowback(paramString1, paramString2);
  }

  public void confirm(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if (this.b != null)
      this.b.confirm(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7);
  }

  public void dismiss()
  {
    if (this.b != null)
      this.b.dismiss();
  }

  public void dispose()
  {
    if (this.b != null)
      this.b.dispose();
    this.b = null;
    super.finish();
  }

  public void exit()
  {
    if (this.b != null)
      this.b.exit();
  }

  public ILoadingScriptable getLoadingScriptable()
  {
    if (this.b != null)
      return this.b.getLoadingScriptable();
    return null;
  }

  public ILoadingScriptable loading(int paramInt)
  {
    return loading(paramInt, null, null);
  }

  public ILoadingScriptable loading(int paramInt, String paramString)
  {
    return loading(paramInt, null, null);
  }

  public ILoadingScriptable loading(int paramInt, String paramString1, String paramString2)
  {
    if (this.b != null)
      return this.b.loading(paramInt, paramString1, paramString2);
    return null;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((!TextUtils.isEmpty(this.d)) && (this.c != null))
    {
      h localh = new h(this, EventType.a);
      this.c.a(this, localh);
    }
  }

  public void onBackPressed()
  {
    if (!this.b.a())
      super.onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = new ActivityWindowScriptable(this, this);
    this.e = true;
    setContentView(R.layout.L);
    getWindow().setLayout(-1, -1);
    this.g = ((ResizeLayout)findViewById(R.id.r));
    if (paramBundle != null)
    {
      if (this.a == 0)
        this.a = paramBundle.getInt("CallingPid");
      try
      {
        BizDataSource.a().b(this.a).c().j();
        return;
      }
      catch (AppErrorException localAppErrorException)
      {
        LogUtils.a(localAppErrorException);
        finish();
        return;
      }
    }
    a(getIntent());
  }

  public void onFocusChange(int paramInt)
  {
    this.g.onFocusChange(paramInt);
  }

  public void onLowMemory()
  {
    WindowTemplateProvider.b().b(getApplicationContext());
    super.onLowMemory();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(paramIntent);
  }

  protected void onResume()
  {
    super.onResume();
    try
    {
      BizDataSource.a().b(this.a).c();
      DataProcessor.a();
      return;
    }
    catch (AppErrorException localAppErrorException)
    {
      localAppErrorException.printStackTrace();
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("CallingPid", this.a);
    super.onSaveInstanceState(paramBundle);
  }

  public void open(String paramString)
  {
    if (this.b != null)
      this.b.open(paramString);
  }

  public void open(String[] paramArrayOfString)
  {
    if (this.b != null)
      this.b.open(paramArrayOfString);
  }

  public void openWithCallback(String paramString1, String paramString2)
  {
    this.d = paramString1;
    if (this.b != null)
      this.b.openWithCallback(paramString1, paramString2);
  }

  public void openWithCallback(String paramString, String[] paramArrayOfString)
  {
    this.d = paramString;
    if (this.b != null)
      this.b.openWithCallback(paramString, paramArrayOfString);
  }

  public void submit()
  {
    if (this.b != null)
      this.b.submit();
  }

  public void submit(String paramString)
  {
    if (this.b != null)
      this.b.submit(paramString);
  }

  public void toast(String paramString)
  {
    if (this.b != null)
      this.b.toast(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.MainActivity
 * JD-Core Version:    0.6.2
 */