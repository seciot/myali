package com.alipay.android.app.data;

import android.content.Context;
import com.alipay.android.app.empty.WindowTemplateProvider;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.monitor.TaskManager;
import com.alipay.android.app.script.IDataScriptable;
import com.alipay.android.app.script.ITidScriptable;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.script.IScriptExcutor;

public class MspBizUnit
  implements BizDataUnit
{
  private h a;
  private IDataScriptable b;
  private ITidScriptable c;
  private f d;

  public final void a(BizData paramBizData)
  {
    DataProcessor localDataProcessor = paramBizData.c();
    Context localContext = GlobalContext.a().b();
    TaskManager.a().b();
    long l1 = System.currentTimeMillis();
    WindowTemplateProvider.b().a(localContext);
    long l2 = System.currentTimeMillis() - l1;
    new StringBuilder("init window time:").append(l2).toString();
    LogUtils.i();
    MonitorThread.a().c(l2, "init window template time");
    this.a = new h();
    this.b = new e();
    this.c = new EventTidScriptable(paramBizData.l());
    this.d = new f(localDataProcessor, paramBizData.k());
    IScriptExcutor localIScriptExcutor = paramBizData.f();
    localIScriptExcutor.a(this.a);
    localIScriptExcutor.a(this.b);
    localIScriptExcutor.a(this.c);
    localIScriptExcutor.a(this.d);
    this.d.a(paramBizData.g());
    this.a.a(paramBizData.g());
  }

  public final void b(BizData paramBizData)
  {
    try
    {
      DataProcessor localDataProcessor = paramBizData.c();
      TaskManager.a().b(localDataProcessor.c());
      WindowTemplateProvider.b().a();
      TaskManager.a().a("lbs");
      TaskManager.a().a("push");
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.MspBizUnit
 * JD-Core Version:    0.6.2
 */