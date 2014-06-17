package com.alipay.android.app.pay;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Toast;
import com.alipay.android.app.R.string;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.display.event.OnContainerEventListener;
import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.display.uielement.UIButtonGroup;
import com.alipay.android.app.display.uielement.UIButtonGroup.UIButtonItem;
import com.alipay.android.app.display.uielement.UINavigator;
import com.alipay.android.app.display.windows.IContainer;
import com.alipay.android.app.display.windows.UIWindow;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.ILoadingScriptable;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.app.widget.CustomAlertDialog.Builder;
import com.alipay.android.app.widget.CustomProgressDialog;
import com.alipay.android.mini.widget.SystemDefaultDialog;

class ActivityWindowScriptable
  implements IWindowScriptable, IDispose
{
  private Activity a;
  private OnContainerEventListener b;
  private IContainer c;
  private CustomProgressDialog d;
  private Dialog e;
  private Toast f;
  public ILoadingScriptable mLoading = new ActivityWindowScriptable.13(this);

  protected ActivityWindowScriptable(Activity paramActivity, IContainer paramIContainer)
  {
    this.a = paramActivity;
    this.c = paramIContainer;
  }

  public final void a(OnContainerEventListener paramOnContainerEventListener)
  {
    this.b = paramOnContainerEventListener;
  }

  public final void a(UIWindow paramUIWindow)
  {
    if (Build.VERSION.SDK_INT <= 13)
      if (!this.a.isFinishing());
    while (this.a.isFinishing())
    {
      return;
      c();
      CustomAlertDialog.Builder localBuilder = new CustomAlertDialog.Builder(this.a);
      UINavigator localUINavigator2 = (UINavigator)paramUIWindow.b();
      if (localUINavigator2 != null)
      {
        String str4 = localUINavigator2.d();
        if (!TextUtils.isEmpty(str4))
          localBuilder.a(str4);
      }
      View localView2 = paramUIWindow.a().a(this.a, null);
      if (localView2 != null)
        localBuilder.a(localView2);
      UIButtonGroup localUIButtonGroup2 = (UIButtonGroup)paramUIWindow.c();
      if (localUIButtonGroup2 != null)
      {
        UIButtonGroup.UIButtonItem[] arrayOfUIButtonItem2 = localUIButtonGroup2.i();
        if (arrayOfUIButtonItem2.length > 0)
        {
          UIButtonGroup.UIButtonItem localUIButtonItem4 = arrayOfUIButtonItem2[0];
          localBuilder.a(localUIButtonItem4.d, new ActivityWindowScriptable.1(this, localUIButtonItem4));
        }
        if (arrayOfUIButtonItem2.length >= 2)
        {
          UIButtonGroup.UIButtonItem localUIButtonItem3 = arrayOfUIButtonItem2[1];
          localBuilder.b(localUIButtonItem3.d, new ActivityWindowScriptable.2(this, localUIButtonItem3));
        }
      }
      localView2.getViewTreeObserver().addOnGlobalLayoutListener(new ActivityWindowScriptable.3(this));
      try
      {
        this.e = localBuilder.b();
        return;
      }
      catch (Exception localException2)
      {
        MonitorThread.a().b(localException2, "on show dialog");
        return;
      }
    }
    c();
    UINavigator localUINavigator1 = (UINavigator)paramUIWindow.b();
    if (localUINavigator1 != null)
      TextUtils.isEmpty(localUINavigator1.d());
    View localView1 = paramUIWindow.a().a(this.a, null);
    String str1 = "";
    String str2 = "";
    UIButtonGroup localUIButtonGroup1 = (UIButtonGroup)paramUIWindow.c();
    ActivityWindowScriptable.4 local42;
    ActivityWindowScriptable.5 local5;
    String str3;
    ActivityWindowScriptable.4 local41;
    if (localUIButtonGroup1 != null)
    {
      UIButtonGroup.UIButtonItem[] arrayOfUIButtonItem1 = localUIButtonGroup1.i();
      if (arrayOfUIButtonItem1.length > 0)
      {
        UIButtonGroup.UIButtonItem localUIButtonItem2 = arrayOfUIButtonItem1[0];
        str1 = localUIButtonItem2.d;
        local42 = new ActivityWindowScriptable.4(this, localUIButtonItem2);
        if (arrayOfUIButtonItem1.length >= 2)
        {
          UIButtonGroup.UIButtonItem localUIButtonItem1 = arrayOfUIButtonItem1[1];
          str2 = localUIButtonItem1.d;
          local5 = new ActivityWindowScriptable.5(this, localUIButtonItem1);
          str3 = str1;
          local41 = local42;
        }
      }
    }
    while (true)
    {
      localView1.getViewTreeObserver().addOnGlobalLayoutListener(new ActivityWindowScriptable.6(this));
      try
      {
        this.e = SystemDefaultDialog.a(this.a, localView1, str3, local41, str2, local5);
        return;
      }
      catch (Exception localException1)
      {
        MonitorThread.a().b(localException1, "on show dialog");
        return;
      }
      str3 = str1;
      local41 = local42;
      local5 = null;
      continue;
      local42 = null;
      break;
      str3 = str1;
      local41 = null;
      local5 = null;
    }
  }

  public final boolean a()
  {
    if (this.b != null)
    {
      MspEventArgs localMspEventArgs = new MspEventArgs(EventType.j);
      return this.b.a(this.c, localMspEventArgs);
    }
    return false;
  }

  public void alert(String paramString1, String paramString2)
  {
    alert(paramString1, paramString2, null);
  }

  public void alert(String paramString1, String paramString2, String paramString3)
  {
    if (this.a.isFinishing())
      return;
    c();
    this.e = SystemDefaultDialog.a(this.a, paramString2, this.a.getString(17039370), new ActivityWindowScriptable.7(this), null, null);
  }

  public void allowback(String paramString1, String paramString2)
  {
    ActivityWindowScriptable.14 local14 = new ActivityWindowScriptable.14(this, paramString1, paramString2);
    this.b.a(this.c, local14);
  }

  public final void b()
  {
    if (this.b != null)
    {
      MspEventArgs localMspEventArgs = new MspEventArgs(EventType.l);
      this.b.a(this.c, localMspEventArgs);
    }
  }

  protected final void c()
  {
    if (this.d != null)
    {
      this.d.dismiss();
      this.d = null;
    }
    if (this.e != null)
    {
      this.e.dismiss();
      this.e = null;
    }
  }

  public void confirm(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if (this.a.isFinishing())
      return;
    c();
    this.e = SystemDefaultDialog.a(this.a, paramString4, paramString6, new ActivityWindowScriptable.8(this, paramString1), paramString7, new ActivityWindowScriptable.9(this, paramString2));
  }

  public void dismiss()
  {
    if (this.b != null)
    {
      MspEventArgs localMspEventArgs = new MspEventArgs(EventType.w);
      this.b.a(this.c, localMspEventArgs);
    }
  }

  public void dispose()
  {
    c();
    this.c = null;
    this.b = null;
    this.c = null;
    this.f = null;
  }

  public void exit()
  {
    if (this.b != null)
    {
      MspEventArgs localMspEventArgs = new MspEventArgs(EventType.s);
      this.b.a(this.c, localMspEventArgs);
    }
  }

  public ILoadingScriptable getLoadingScriptable()
  {
    return this.mLoading;
  }

  public ILoadingScriptable loading(int paramInt)
  {
    return loading(paramInt, null, null);
  }

  public ILoadingScriptable loading(int paramInt, String paramString)
  {
    return loading(paramInt, paramString, null);
  }

  public ILoadingScriptable loading(int paramInt, String paramString1, String paramString2)
  {
    if (this.a.isFinishing())
      return null;
    c();
    this.d = new CustomProgressDialog(this.a);
    String str = " 加载中";
    if (TextUtils.isEmpty(str))
      str = this.a.getString(R.string.v);
    this.d.setCancelable(false);
    this.d.a(str);
    this.d.show();
    if (paramInt > 0)
      new Handler().postAtTime(new ActivityWindowScriptable.12(this), paramInt * 1000);
    return this.mLoading;
  }

  public void open(String paramString)
  {
    openWithCallback(null, paramString);
  }

  public void open(String[] paramArrayOfString)
  {
    openWithCallback(null, paramArrayOfString);
  }

  public void openWithCallback(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2))
      return;
    Intent localIntent = new Intent(this.a, HyperlinkActivity.class);
    localIntent.putExtra("type", "url");
    localIntent.putExtra("param", paramString2);
    if (TextUtils.isEmpty(paramString1))
    {
      this.a.startActivity(localIntent);
      return;
    }
    this.a.startActivityForResult(localIntent, 0);
  }

  public void openWithCallback(String paramString, String[] paramArrayOfString)
  {
    if (paramArrayOfString == null);
    while (paramArrayOfString.length % 2 != 0)
      return;
    Intent localIntent = new Intent(this.a, HyperlinkActivity.class);
    localIntent.putExtra("type", "text");
    localIntent.putExtra("param", paramArrayOfString);
    if (TextUtils.isEmpty(paramString))
    {
      this.a.startActivity(localIntent);
      return;
    }
    this.a.startActivityForResult(localIntent, 0);
  }

  public void submit()
  {
    submit(null);
  }

  public void submit(String paramString)
  {
    if (this.b != null)
    {
      ActivityWindowScriptable.10 local10 = new ActivityWindowScriptable.10(this, paramString);
      this.b.a(this.c, local10);
    }
  }

  public void toast(String paramString)
  {
    this.a.runOnUiThread(new ActivityWindowScriptable.11(this, paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable
 * JD-Core Version:    0.6.2
 */