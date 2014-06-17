package com.alipay.mobile.alipassnfcapp.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import java.util.EmptyStackException;
import java.util.Stack;

public abstract class RootController extends BaseActivity
{
  protected Stack<h> a = new Stack();

  private boolean c()
  {
    return (!this.a.isEmpty()) && (this.a.peek() != null);
  }

  private void d()
  {
    try
    {
      h localh = e();
      if (localh != null)
        localh.onControllerInit(this.mApp);
      return;
    }
    catch (EmptyStackException localEmptyStackException)
    {
      localEmptyStackException.printStackTrace();
    }
  }

  private h e()
  {
    if (!this.a.isEmpty())
      return (h)this.a.peek();
    return null;
  }

  public final h a(int paramInt)
  {
    h localh1 = null;
    while ((!this.a.isEmpty()) && (paramInt > 0))
    {
      localh1 = (h)this.a.pop();
      localh1.onDestroy();
      paramInt--;
    }
    try
    {
      h localh2 = e();
      if (localh2 != null)
      {
        localh2.onResume();
        return localh1;
      }
      finish();
      return localh1;
    }
    catch (EmptyStackException localEmptyStackException)
    {
      localEmptyStackException.printStackTrace();
    }
    return localh1;
  }

  public final h a(int paramInt1, int paramInt2, int paramInt3, Intent paramIntent)
  {
    h localh1 = null;
    while ((!this.a.isEmpty()) && (paramInt1 > 0))
    {
      localh1 = (h)this.a.pop();
      localh1.onDestroy();
      paramInt1--;
    }
    try
    {
      h localh2 = e();
      if (localh2 != null)
      {
        localh2.onControllerResult(paramInt2, paramInt3, paramIntent);
        localh2.onResume();
        return localh1;
      }
      finish();
      return localh1;
    }
    catch (EmptyStackException localEmptyStackException)
    {
      localEmptyStackException.printStackTrace();
    }
    return localh1;
  }

  public final h a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    h localh3;
    if (!this.a.isEmpty())
    {
      localh3 = (h)this.a.pop();
      localh3.onDestroy();
    }
    for (h localh1 = localh3; ; localh1 = null)
      try
      {
        h localh2 = e();
        if (localh2 != null)
        {
          localh2.onControllerResult(paramInt1, paramInt2, paramIntent);
          localh2.onResume();
          return localh1;
        }
        finish();
        return localh1;
      }
      catch (EmptyStackException localEmptyStackException)
      {
        localEmptyStackException.printStackTrace();
        return localh1;
      }
  }

  protected abstract String a();

  public final void a(String paramString)
  {
    a(paramString, null);
  }

  public final void a(String paramString, Object paramObject)
  {
    try
    {
      h localh = (h)Class.forName(a() + "." + paramString + "Controller").newInstance();
      localh.init(this, paramObject, this.mApp);
      this.a.push(localh);
      localh.onCreate();
      d();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void a(String paramString, Object paramObject, int paramInt)
  {
    try
    {
      h localh = (h)Class.forName(a() + "." + paramString + "Controller").newInstance();
      localh.init(this, paramObject, paramInt);
      this.a.push(localh);
      localh.onCreate();
      d();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final h b()
  {
    h localh3;
    if (!this.a.isEmpty())
    {
      localh3 = (h)this.a.pop();
      localh3.onDestroy();
    }
    for (h localh1 = localh3; ; localh1 = null)
      try
      {
        h localh2 = e();
        if (localh2 != null)
        {
          localh2.onResume();
          return localh1;
        }
        finish();
        return localh1;
      }
      catch (EmptyStackException localEmptyStackException)
      {
        localEmptyStackException.printStackTrace();
        return localh1;
      }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (c())
      ((h)this.a.peek()).onActivityResult(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    if (c())
      ((h)this.a.peek()).onDestroy();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      h localh = e();
      bool1 = false;
      if (localh != null)
      {
        boolean bool2 = e().onKeyDown(paramInt, paramKeyEvent);
        bool1 = bool2;
      }
      if ((!bool1) && (paramInt == 4))
      {
        b();
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool1 = false;
      }
    }
  }

  protected void onPause()
  {
    if (c())
      ((h)this.a.peek()).onPause();
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    try
    {
      h localh = e();
      if (localh != null)
        localh.onResume();
      return;
    }
    catch (EmptyStackException localEmptyStackException)
    {
      localEmptyStackException.printStackTrace();
    }
  }

  protected void onStart()
  {
    if (c())
      ((h)this.a.peek()).onStart();
    super.onStart();
  }

  protected void onStop()
  {
    if (c())
      ((h)this.a.peek()).onStop();
    super.onStop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.RootController
 * JD-Core Version:    0.6.2
 */