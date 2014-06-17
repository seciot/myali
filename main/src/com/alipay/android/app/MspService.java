package com.alipay.android.app;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.os.IBinder;
import android.text.TextUtils;
import com.alipay.android.app.data.BizData;
import com.alipay.android.app.data.BizDataSource;
import com.alipay.android.app.data.LuaExcutor;
import com.alipay.android.app.data.MspBizUnit;
import com.alipay.android.app.display.windows.WindowsManager;
import com.alipay.android.app.empty.WindowTemplateProvider;
import com.alipay.android.app.helper.MspConfig;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.request.MspFrameFactory;
import com.alipay.android.app.script.ScriptEventRunnable;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.FrameFactoryManager;
import com.alipay.android.lib.plusin.script.ScriptExcutorCreator;
import com.alipay.android.lib.plusin.ui.WindowManagerRouter;
import com.alipay.android.mini.data.MiniFrameFactory;
import com.alipay.android.mini.window.MiniWindowManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.phonecashier.assist.PhoneCashierAssistService;
import java.io.InputStream;

public class MspService extends Service
{
  private static boolean a = false;
  private MspService.AliPayServiceStub b;
  private MspService.AlixPayServiceStub c;
  private Thread.UncaughtExceptionHandler d = new c(this);

  public IBinder onBind(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    LogUtils.c();
    if ((TextUtils.equals(str, "com.alipay.android.app.IAliPay")) || (TextUtils.equals(str, "com.eg.android.AlipayGphone.IAliPay")))
      return this.b;
    return this.c;
  }

  public void onCreate()
  {
    super.onCreate();
    Thread.currentThread().setUncaughtExceptionHandler(this.d);
    Context localContext = getApplicationContext();
    GlobalContext.a().a(localContext, MspConfig.u());
    if (!a)
      a = true;
    try
    {
      InputStream localInputStream = getAssets().open("msp.properties");
      GlobalConstant.loadProperties(getApplicationContext(), localInputStream, true);
      localInputStream.close();
      GlobalConstant.convertProperties(getApplicationContext());
      WindowTemplateProvider.b().c();
      ScriptExcutorCreator.a(LuaExcutor.class);
      BizData.a(MspBizUnit.class);
      FrameFactoryManager.a(new MspFrameFactory());
      FrameFactoryManager.a(new MiniFrameFactory());
      WindowManagerRouter.a(2, WindowsManager.class);
      WindowManagerRouter.a(3, WindowsManager.class);
      WindowManagerRouter.a(1, WindowsManager.class);
      WindowManagerRouter.a(0, MiniWindowManager.class);
      WindowManagerRouter.a(4, MiniWindowManager.class);
      WindowManagerRouter.a(6, MiniWindowManager.class);
      WindowManagerRouter.a(7, MiniWindowManager.class);
      WindowManagerRouter.a(8, MiniWindowManager.class);
      WindowManagerRouter.a(-10, MiniWindowManager.class);
      WindowManagerRouter.a(10, MiniWindowManager.class);
      WindowManagerRouter.a(5, MiniWindowManager.class);
      WindowManagerRouter.a(9, MiniWindowManager.class);
      ScriptEventRunnable.startThread();
      MonitorThread.b();
      AlarmReciver.a(localContext);
      if (this.b == null)
        this.b = new MspService.AliPayServiceStub(this, this);
      if (this.c == null)
        this.c = new MspService.AlixPayServiceStub(this, this);
      ((PhoneCashierAssistService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(PhoneCashierAssistService.class.getName())).isQihooGuardOpened();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        LogUtils.a(localException);
    }
  }

  public void onDestroy()
  {
    BizDataSource.a().c();
    WindowTemplateProvider.b().b(getApplicationContext());
    a = false;
    super.onDestroy();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.MspService
 * JD-Core Version:    0.6.2
 */