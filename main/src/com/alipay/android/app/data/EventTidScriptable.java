package com.alipay.android.app.data;

import android.content.Context;
import com.alipay.android.app.script.ITidScriptable;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.tid.TidInfo;
import java.lang.ref.WeakReference;

public class EventTidScriptable
  implements ITidScriptable
{
  private WeakReference a;

  protected EventTidScriptable(DataSource paramDataSource)
  {
    this.a = new WeakReference(paramDataSource);
  }

  public void reset()
  {
    ((DataSource)this.a.get()).f();
    TidInfo.h();
  }

  public void save(String paramString)
  {
    Context localContext = GlobalContext.a().b();
    TidInfo localTidInfo = TidInfo.g();
    localTidInfo.a(paramString);
    localTidInfo.a(localContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.EventTidScriptable
 * JD-Core Version:    0.6.2
 */