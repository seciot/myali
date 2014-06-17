package com.alipay.android.mini.window;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.app.data.BizData;
import com.alipay.android.app.data.BizDataSource;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.ui.WindowManagerRouter;
import java.lang.reflect.Method;

public class BaseActivity extends AbsActivity
{
  public int a = 0;

  protected void a(Intent paramIntent)
  {
    this.a = paramIntent.getIntExtra("CallingPid", 0);
    try
    {
      if (this.a == 0)
        throw new AppErrorException(getClass(), "no biz id");
    }
    catch (AppErrorException localAppErrorException)
    {
      LogUtils.a(localAppErrorException);
      finish();
      return;
    }
    BizDataSource.a().b(this.a).i().a(this);
  }

  protected final void a(Bundle paramBundle)
  {
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
    }
    catch (AppErrorException localAppErrorException)
    {
      try
      {
        while (true)
        {
          Class localClass = getClass();
          Class[] arrayOfClass = new Class[1];
          arrayOfClass[0] = Boolean.TYPE;
          Method localMethod = localClass.getDeclaredMethod("setFinishOnTouchOutside", arrayOfClass);
          if (localMethod != null)
          {
            localMethod.setAccessible(true);
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Boolean.valueOf(false);
            localMethod.invoke(this, arrayOfObject);
          }
          return;
          localAppErrorException = localAppErrorException;
          localAppErrorException.printStackTrace();
        }
      }
      catch (Exception localException)
      {
        localException.getMessage();
        LogUtils.i();
      }
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("CallingPid", this.a);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.BaseActivity
 * JD-Core Version:    0.6.2
 */