package com.alipay.mobile.command.engine;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Base64;
import com.alipay.mobile.command.model.TriggerTypeEnum;
import com.alipay.mobile.command.trigger.SysEventChangeTrigger;
import com.alipay.mobile.command.util.CommandConfig;
import com.alipay.mobile.command.util.CommandLogUtil;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.ThreadPools;
import java.util.concurrent.ThreadPoolExecutor;

public class TaskExeService extends Service
{
  private ThreadPoolExecutor a = null;
  private long b = -1L;

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    while (true)
    {
      try
      {
        this.a = ThreadPools.applyDefaultThreadPool("service_triger" + System.currentTimeMillis());
        CommandConfig.initial(getApplicationContext());
        new g(this, (byte)0).execute(new String[] { "" });
        new Object[] { "trigger service  onCreate" };
        ScripterExecutor.a();
        if ((ScripterExecutor.a() == null) || (ScripterExecutor.a().b() == null))
        {
          stopSelf();
          return;
        }
        if (CommandUtil.getSp() != null)
        {
          if (!CommandUtil.getSp().contains("trigger_time_key"))
          {
            this.b = CommandUtil.fetchCurrnetMiniTimeInIntervalModel();
            CommandUtil.getSp().edit().putLong("trigger_time_key", this.b).commit();
          }
        }
        else
        {
          this.a.execute(new b(this));
          this.a.execute(new c(this));
          this.a.execute(new d(this));
          IntentFilter localIntentFilter = new IntentFilter();
          localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
          localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
          localIntentFilter.addDataScheme("package");
          registerReceiver(new SysEventChangeTrigger(), localIntentFilter);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        CommandLogUtil.upErrorInfo(localThrowable, new Object[] { "crash commandCenter erro." });
        stopSelf();
        return;
      }
      this.b = CommandUtil.getSp().getLong("trigger_time_key", CommandUtil.fetchCurrnetMiniTimeInIntervalModel());
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      if (this.a != null)
        this.a.shutdownNow();
      new Object[] { "triger service onDestroy" };
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        new Object[] { "task shutdown error." };
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ((paramIntent != null) && (ScripterExecutor.a() != null) && (ScripterExecutor.a().b() != null));
    try
    {
      if ((Environment.getExternalStorageState() != null) && (Environment.getExternalStorageState().equals("mounted")))
      {
        String str1 = paramIntent.getStringExtra("trigger_type");
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = "triger action_type:";
        arrayOfObject1[1] = TriggerTypeEnum.getOpTypeEnum(str1);
        str2 = paramIntent.getStringExtra("trigger_biz_context");
        boolean bool = TextUtils.isEmpty(str2);
        if (bool)
          break label229;
        try
        {
          String str5 = Base64.encodeToString(str2.getBytes(), 2);
          str3 = str5;
          TriggerTypeEnum localTriggerTypeEnum = TriggerTypeEnum.getOpTypeEnum(str1);
          long l = this.b;
          String str4 = paramIntent.getStringExtra("trigger_fm_context");
          Object[] arrayOfObject2 = new Object[0];
          this.a.execute(new e(this, localTriggerTypeEnum, l, str4, str3, arrayOfObject2));
          super.onStartCommand(paramIntent, paramInt1, paramInt2);
          return 2;
        }
        catch (Throwable localThrowable2)
        {
          while (true)
          {
            new Object[] { "encode bizcontext Error" };
            str3 = null;
          }
        }
      }
    }
    catch (Throwable localThrowable1)
    {
      while (true)
      {
        String str2;
        CommandLogUtil.upErrorInfo(localThrowable1, new Object[] { "CMDCENTER兼容性问题" });
        continue;
        new Object[] { "当前设备无sd卡信息,无法完成cmd操作." };
        CommandLogUtil.upErrorInfo(null, new Object[] { "当前设备无sd卡信息,无法完成cmd操作." });
        continue;
        label229: String str3 = str2;
      }
    }
  }

  public boolean onUnbind(Intent paramIntent)
  {
    new Object[] { "triger Service unbind" };
    return super.onUnbind(paramIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.TaskExeService
 * JD-Core Version:    0.6.2
 */