package com.alipay.mobile.commonbiz.biz;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonbiz.biz.dialog.UserTipDialog;
import com.alipay.mobile.commonbiz.tracker.CommonUiClickListenerWrapper;
import com.alipay.mobile.commonui.widget.APViewEventHelper;
import com.alipay.mobile.core.ApplicationManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.logmonitor.Logcat;
import java.lang.ref.WeakReference;

public class LaunchRouter
{
  private static String g = "AlipayLogin";
  private MicroApplicationContext a;
  private LocalBroadcastManager b;
  private LocationInfoService c;
  private AccountService d;
  private GestureService e;
  private long f;
  private Handler h = new Handler();
  private Activity i;
  private AlipayApplication j;

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: new 45	android/content/Intent
    //   3: dup
    //   4: ldc 47
    //   6: invokespecial 50	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   9: astore_1
    //   10: aload_0
    //   11: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   14: invokevirtual 58	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   17: invokevirtual 62	android/content/Intent:getData	()Landroid/net/Uri;
    //   20: astore 25
    //   22: aload 25
    //   24: ifnull +37 -> 61
    //   27: aload_1
    //   28: ldc 64
    //   30: aload 25
    //   32: invokevirtual 70	android/net/Uri:toString	()Ljava/lang/String;
    //   35: invokevirtual 74	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   38: pop
    //   39: aload_0
    //   40: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   43: ldc 78
    //   45: invokevirtual 83	java/lang/Class:getName	()Ljava/lang/String;
    //   48: invokeinterface 89 2 0
    //   53: checkcast 78	com/alipay/mobile/framework/service/common/SchemeService
    //   56: aload 25
    //   58: invokevirtual 93	com/alipay/mobile/framework/service/common/SchemeService:extractTagId	(Landroid/net/Uri;)V
    //   61: new 95	java/lang/Thread
    //   64: dup
    //   65: new 97	com/alipay/mobile/commonbiz/biz/LaunchRouter$2
    //   68: dup
    //   69: aload_0
    //   70: invokespecial 100	com/alipay/mobile/commonbiz/biz/LaunchRouter$2:<init>	(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V
    //   73: invokespecial 103	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   76: invokevirtual 106	java/lang/Thread:start	()V
    //   79: aload_0
    //   80: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   83: ldc 108
    //   85: invokevirtual 83	java/lang/Class:getName	()Ljava/lang/String;
    //   88: invokeinterface 89 2 0
    //   93: checkcast 108	com/alipay/mobile/base/config/ConfigService
    //   96: astore 4
    //   98: aload 4
    //   100: ifnull +8 -> 108
    //   103: aload 4
    //   105: invokevirtual 111	com/alipay/mobile/base/config/ConfigService:loadConfig	()V
    //   108: aload_0
    //   109: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   112: invokevirtual 58	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   115: invokevirtual 62	android/content/Intent:getData	()Landroid/net/Uri;
    //   118: astore 5
    //   120: aload_0
    //   121: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   124: invokeinterface 115 1 0
    //   129: ldc 117
    //   131: ldc 119
    //   133: invokevirtual 125	com/alipay/mobile/framework/interfaces/InterfaceManager:findInterfaceByName	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   136: checkcast 119	com/alipay/mobile/framework/interfaces/RouterInterface
    //   139: astore 6
    //   141: aload 6
    //   143: ifnull +460 -> 603
    //   146: aload 6
    //   148: aload_0
    //   149: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   152: invokevirtual 129	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   155: aload 5
    //   157: invokeinterface 133 3 0
    //   162: istore 7
    //   164: iload 7
    //   166: ifeq +268 -> 434
    //   169: aload_0
    //   170: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   173: ldc 135
    //   175: invokevirtual 83	java/lang/Class:getName	()Ljava/lang/String;
    //   178: invokeinterface 89 2 0
    //   183: checkcast 135	com/alipay/mobile/core/ApplicationManager
    //   186: astore 8
    //   188: aload_0
    //   189: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   192: invokevirtual 58	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   195: invokevirtual 62	android/content/Intent:getData	()Landroid/net/Uri;
    //   198: astore 9
    //   200: aload_0
    //   201: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   204: invokeinterface 139 1 0
    //   209: invokevirtual 145	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   212: checkcast 54	android/app/Activity
    //   215: astore 10
    //   217: aload 10
    //   219: ifnull +373 -> 592
    //   222: ldc 147
    //   224: aload 10
    //   226: invokevirtual 151	java/lang/Object:getClass	()Ljava/lang/Class;
    //   229: invokevirtual 83	java/lang/Class:getName	()Ljava/lang/String;
    //   232: invokevirtual 157	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   235: ifne +357 -> 592
    //   238: aload 9
    //   240: ifnull +287 -> 527
    //   243: aload_0
    //   244: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   247: invokeinterface 139 1 0
    //   252: invokevirtual 145	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   255: checkcast 54	android/app/Activity
    //   258: astore 11
    //   260: aload 11
    //   262: ifnull +58 -> 320
    //   265: new 45	android/content/Intent
    //   268: dup
    //   269: ldc 159
    //   271: invokespecial 50	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   274: astore 12
    //   276: aload 12
    //   278: ldc 161
    //   280: invokevirtual 165	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   283: pop
    //   284: aload 12
    //   286: aload 11
    //   288: ldc 167
    //   290: invokevirtual 171	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    //   293: pop
    //   294: aload 12
    //   296: ldc 172
    //   298: invokevirtual 176	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   301: pop
    //   302: aload 12
    //   304: ldc 178
    //   306: iconst_1
    //   307: invokevirtual 181	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   310: pop
    //   311: aload_0
    //   312: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   315: aload 12
    //   317: invokevirtual 185	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   320: aload 11
    //   322: ifnull +63 -> 385
    //   325: aload 11
    //   327: invokevirtual 151	java/lang/Object:getClass	()Ljava/lang/Class;
    //   330: invokevirtual 83	java/lang/Class:getName	()Ljava/lang/String;
    //   333: ldc 187
    //   335: invokevirtual 157	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   338: ifeq +47 -> 385
    //   341: aload_0
    //   342: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   345: invokeinterface 190 1 0
    //   350: invokevirtual 196	com/alipay/mobile/framework/AlipayApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   353: ldc 198
    //   355: invokevirtual 83	java/lang/Class:getName	()Ljava/lang/String;
    //   358: invokeinterface 202 2 0
    //   363: checkcast 198	com/alipay/mobile/framework/service/ext/security/AuthService
    //   366: iconst_0
    //   367: iconst_0
    //   368: invokevirtual 206	com/alipay/mobile/framework/service/ext/security/AuthService:notifyUnlockLoginApp	(ZZ)V
    //   371: aload_0
    //   372: getfield 76	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   375: ldc 208
    //   377: ldc 210
    //   379: aconst_null
    //   380: invokeinterface 214 4 0
    //   385: new 216	com/alipay/mobile/commonbiz/biz/LaunchRouter$4
    //   388: dup
    //   389: aload_0
    //   390: aload 9
    //   392: invokespecial 219	com/alipay/mobile/commonbiz/biz/LaunchRouter$4:<init>	(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    //   395: astore 19
    //   397: invokestatic 225	com/alipay/mobile/security/gesture/util/GestureDataCenter:getInstance	()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    //   400: invokevirtual 229	com/alipay/mobile/security/gesture/util/GestureDataCenter:isNeedAuthGesture	()Z
    //   403: ifne +12 -> 415
    //   406: invokestatic 225	com/alipay/mobile/security/gesture/util/GestureDataCenter:getInstance	()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    //   409: invokevirtual 232	com/alipay/mobile/security/gesture/util/GestureDataCenter:isOverrangingLeavehintTime	()Z
    //   412: ifeq +91 -> 503
    //   415: aload_0
    //   416: getfield 234	com/alipay/mobile/commonbiz/biz/LaunchRouter:e	Lcom/alipay/mobile/framework/service/ext/security/GestureService;
    //   419: aload 19
    //   421: invokevirtual 240	com/alipay/mobile/framework/service/ext/security/GestureService:validateStartClientGesture	(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    //   424: pop
    //   425: invokestatic 225	com/alipay/mobile/security/gesture/util/GestureDataCenter:getInstance	()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    //   428: invokestatic 246	java/lang/System:currentTimeMillis	()J
    //   431: invokevirtual 250	com/alipay/mobile/security/gesture/util/GestureDataCenter:setLastUserLeavehint	(J)V
    //   434: aload_0
    //   435: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   438: invokevirtual 253	android/app/Activity:finish	()V
    //   441: aload_0
    //   442: getfield 255	com/alipay/mobile/commonbiz/biz/LaunchRouter:b	Landroid/support/v4/content/LocalBroadcastManager;
    //   445: aload_1
    //   446: invokevirtual 261	android/support/v4/content/LocalBroadcastManager:sendBroadcast	(Landroid/content/Intent;)Z
    //   449: pop
    //   450: return
    //   451: astore_2
    //   452: aload_2
    //   453: invokevirtual 264	java/lang/Exception:printStackTrace	()V
    //   456: goto -395 -> 61
    //   459: astore_3
    //   460: aload_0
    //   461: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   464: invokevirtual 253	android/app/Activity:finish	()V
    //   467: aload_3
    //   468: invokevirtual 264	java/lang/Exception:printStackTrace	()V
    //   471: return
    //   472: astore 17
    //   474: aload 12
    //   476: aload_0
    //   477: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   480: aload_0
    //   481: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   484: invokevirtual 151	java/lang/Object:getClass	()Ljava/lang/Class;
    //   487: invokevirtual 171	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    //   490: pop
    //   491: aload_0
    //   492: getfield 52	com/alipay/mobile/commonbiz/biz/LaunchRouter:i	Landroid/app/Activity;
    //   495: aload 12
    //   497: invokevirtual 185	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   500: goto -180 -> 320
    //   503: aload_0
    //   504: getfield 38	com/alipay/mobile/commonbiz/biz/LaunchRouter:h	Landroid/os/Handler;
    //   507: new 266	com/alipay/mobile/commonbiz/biz/LaunchRouter$5
    //   510: dup
    //   511: aload_0
    //   512: aload 9
    //   514: invokespecial 267	com/alipay/mobile/commonbiz/biz/LaunchRouter$5:<init>	(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    //   517: ldc2_w 268
    //   520: invokevirtual 273	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   523: pop
    //   524: goto -90 -> 434
    //   527: new 275	com/alipay/mobile/commonbiz/biz/LaunchRouter$3
    //   530: dup
    //   531: aload_0
    //   532: aload 8
    //   534: aload 9
    //   536: invokespecial 278	com/alipay/mobile/commonbiz/biz/LaunchRouter$3:<init>	(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V
    //   539: astore 23
    //   541: invokestatic 225	com/alipay/mobile/security/gesture/util/GestureDataCenter:getInstance	()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    //   544: invokevirtual 229	com/alipay/mobile/security/gesture/util/GestureDataCenter:isNeedAuthGesture	()Z
    //   547: ifne +12 -> 559
    //   550: invokestatic 225	com/alipay/mobile/security/gesture/util/GestureDataCenter:getInstance	()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    //   553: invokevirtual 232	com/alipay/mobile/security/gesture/util/GestureDataCenter:isOverrangingLeavehintTime	()Z
    //   556: ifeq +25 -> 581
    //   559: aload_0
    //   560: getfield 234	com/alipay/mobile/commonbiz/biz/LaunchRouter:e	Lcom/alipay/mobile/framework/service/ext/security/GestureService;
    //   563: aload 23
    //   565: invokevirtual 240	com/alipay/mobile/framework/service/ext/security/GestureService:validateStartClientGesture	(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    //   568: pop
    //   569: invokestatic 225	com/alipay/mobile/security/gesture/util/GestureDataCenter:getInstance	()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    //   572: invokestatic 246	java/lang/System:currentTimeMillis	()J
    //   575: invokevirtual 250	com/alipay/mobile/security/gesture/util/GestureDataCenter:setLastUserLeavehint	(J)V
    //   578: goto -144 -> 434
    //   581: aload_0
    //   582: aload 8
    //   584: aload 9
    //   586: invokespecial 281	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	(Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V
    //   589: goto -155 -> 434
    //   592: aload_0
    //   593: aload 8
    //   595: aload 9
    //   597: invokespecial 281	com/alipay/mobile/commonbiz/biz/LaunchRouter:a	(Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V
    //   600: goto -166 -> 434
    //   603: iconst_1
    //   604: istore 7
    //   606: goto -442 -> 164
    //
    // Exception table:
    //   from	to	target	type
    //   10	22	451	java/lang/Exception
    //   27	61	451	java/lang/Exception
    //   0	10	459	java/lang/Exception
    //   61	98	459	java/lang/Exception
    //   103	108	459	java/lang/Exception
    //   108	141	459	java/lang/Exception
    //   146	164	459	java/lang/Exception
    //   169	217	459	java/lang/Exception
    //   222	238	459	java/lang/Exception
    //   243	260	459	java/lang/Exception
    //   265	311	459	java/lang/Exception
    //   325	385	459	java/lang/Exception
    //   385	415	459	java/lang/Exception
    //   415	434	459	java/lang/Exception
    //   434	450	459	java/lang/Exception
    //   452	456	459	java/lang/Exception
    //   474	500	459	java/lang/Exception
    //   503	524	459	java/lang/Exception
    //   527	559	459	java/lang/Exception
    //   559	578	459	java/lang/Exception
    //   581	589	459	java/lang/Exception
    //   592	600	459	java/lang/Exception
    //   311	320	472	java/lang/Exception
  }

  private void a(ApplicationManager paramApplicationManager, Uri paramUri)
  {
    paramApplicationManager.exit();
    this.a.clearState();
    Bundle localBundle = null;
    if (paramUri != null)
    {
      localBundle = new Bundle();
      localBundle.putString("externParams", paramUri.toString());
    }
    try
    {
      this.a.updateActivity(this.i);
      paramApplicationManager.startEntryApp(localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  public void attackTimeSend(long paramLong)
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
    String str = getClass().getName();
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "";
    arrayOfString[1] = "";
    arrayOfString[2] = String.valueOf(paramLong);
    arrayOfString[3] = "";
    AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, null, null, null, null, str, "-", "perf_startup", null, "s", "c", arrayOfString);
  }

  public boolean isFirstDeploy()
  {
    String str = ((ChannelConfig)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ChannelConfig.class.getName())).getConfig("isFirstDeploy");
    return (str != null) && ("true".equals(str));
  }

  public void onCreate(Activity paramActivity)
  {
    this.i = paramActivity;
    if (paramActivity.getIntent().getBooleanExtra("pushToFront", false))
    {
      paramActivity.finish();
      return;
    }
    this.j = AlipayApplication.getInstance();
    while (true)
    {
      try
      {
        Logcat.start();
        this.a = this.j.getMicroApplicationContext();
        if ((this.a.getTopActivity() == null) || (this.a.getTopActivity().get() == null))
          this.a.updateActivity(paramActivity);
        AlipayLogAgent.ctx = this.j;
        APViewEventHelper.setWrapper(new CommonUiClickListenerWrapper());
        this.f = System.currentTimeMillis();
        this.c = ((LocationInfoService)this.a.getExtServiceByInterface(LocationInfoService.class.getName()));
        this.d = ((AccountService)this.a.getExtServiceByInterface(AccountService.class.getName()));
        this.e = ((GestureService)this.a.getExtServiceByInterface(GestureService.class.getName()));
        this.b = LocalBroadcastManager.getInstance(this.j);
        SharedPreferences localSharedPreferences = paramActivity.getSharedPreferences("usertip", 0);
        String str = ((ChannelConfig)this.a.findServiceByInterface(ChannelConfig.class.getName())).getConfig("isShowUserTip");
        if ((str != null) && ("true".equalsIgnoreCase(str)))
        {
          k = 1;
          if ((k == 0) || (!localSharedPreferences.getBoolean("showTip", true)))
            break;
          UserTipDialog localUserTipDialog = new UserTipDialog(paramActivity);
          localUserTipDialog.setOnClickListener(new LaunchRouter.1(this, localUserTipDialog, localSharedPreferences, paramActivity));
          localUserTipDialog.show();
          return;
        }
      }
      catch (Exception localException)
      {
        paramActivity.finish();
        localException.printStackTrace();
        return;
      }
      int k = 0;
    }
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.LaunchRouter
 * JD-Core Version:    0.6.2
 */