package com.alipay.android.app.pay;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.data.BizData;
import com.alipay.android.app.data.BizDataSource;
import com.alipay.android.app.data.Orientation;
import com.alipay.android.app.display.event.OnContainerEventListener;
import com.alipay.android.app.display.windows.IContainer;
import com.alipay.android.app.display.windows.UIWindow;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.ILoadingScriptable;
import com.alipay.android.lib.plusin.ui.WindowManagerRouter;
import com.alipay.android.mini.window.BaseActivity;

public final class TransContainer extends BaseActivity
  implements IContainer
{
  private ActivityWindowScriptable b;

  protected final void a(Intent paramIntent)
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
      MonitorThread.a().d(localException, "on trans activity create");
      finish();
    }
  }

  public final void a(OnContainerEventListener paramOnContainerEventListener)
  {
    if (this.b != null)
      this.b.a(paramOnContainerEventListener);
  }

  public final void a(UIWindow paramUIWindow)
  {
    if (this.b != null)
      this.b.a(paramUIWindow);
  }

  public final void a(UIWindow paramUIWindow, Orientation paramOrientation)
  {
  }

  public final void alert(String paramString1, String paramString2)
  {
    alert(paramString1, paramString2, null);
  }

  public final void alert(String paramString1, String paramString2, String paramString3)
  {
    if (this.b != null)
      this.b.alert(paramString1, paramString2, paramString3);
  }

  public final void allowback(String paramString1, String paramString2)
  {
    if (this.b != null)
      this.b.allowback(paramString1, paramString2);
  }

  public final void confirm(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if (this.b != null)
      this.b.confirm(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7);
  }

  public final void dismiss()
  {
    if (this.b != null)
      this.b.dismiss();
  }

  public final void dispose()
  {
    if (this.b != null)
      this.b.dispose();
    this.b = null;
    super.finish();
  }

  public final void exit()
  {
    if (this.b != null)
      this.b.exit();
  }

  public final ILoadingScriptable getLoadingScriptable()
  {
    if (this.b != null)
      return this.b.getLoadingScriptable();
    return null;
  }

  public final ILoadingScriptable loading(int paramInt)
  {
    return loading(paramInt, null, null);
  }

  public final ILoadingScriptable loading(int paramInt, String paramString)
  {
    return loading(paramInt, null, null);
  }

  public final ILoadingScriptable loading(int paramInt, String paramString1, String paramString2)
  {
    if (this.b != null)
      return this.b.loading(paramInt, paramString1, paramString2);
    return null;
  }

  public final void onBackPressed()
  {
    if (!this.b.a())
      super.onBackPressed();
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setBackgroundDrawableResource(R.drawable.M);
    super.getWindow().getDecorView().setBackgroundDrawable(null);
    a(paramBundle);
  }

  protected final void onPause()
  {
    super.onPause();
  }

  public final void open(String paramString)
  {
    if (this.b != null)
      this.b.open(paramString);
  }

  public final void open(String[] paramArrayOfString)
  {
    if (this.b != null)
      this.b.open(paramArrayOfString);
  }

  public final void openWithCallback(String paramString1, String paramString2)
  {
    if (this.b != null)
      this.b.openWithCallback(paramString1, paramString2);
  }

  public final void openWithCallback(String paramString, String[] paramArrayOfString)
  {
    if (this.b != null)
      this.b.openWithCallback(paramString, paramArrayOfString);
  }

  public final void submit()
  {
    if (this.b != null)
      this.b.submit();
  }

  public final void submit(String paramString)
  {
    if (this.b != null)
      this.b.submit(paramString);
  }

  public final void toast(String paramString)
  {
    if (this.b != null)
      this.b.toast(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.TransContainer
 * JD-Core Version:    0.6.2
 */