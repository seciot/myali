package com.alipay.mobile.common.rpc.ext;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.ActivityResponsable;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.lang.ref.WeakReference;

public abstract class RpcExcutor<Result>
  implements Runnable
{
  private Handler a = new Handler(Looper.getMainLooper());
  private RpcService b = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());
  private MicroApplicationContext c = AlipayApplication.getInstance().getMicroApplicationContext();
  private Activity d;
  private ActivityResponsable e;
  private String f = null;
  private boolean g = true;
  private boolean h = true;
  private int i = 0;
  private int j = 0;
  private int k = 0;
  private int l = 0;
  private FrameLayout m;
  private APFlowTipView n;
  private ScrollView o;
  private boolean p = false;

  public RpcExcutor()
  {
    this.h = false;
    Activity localActivity = (Activity)this.c.getTopActivity().get();
    if ((localActivity != null) && ((localActivity instanceof ActivityResponsable)))
      this.e = ((ActivityResponsable)localActivity);
  }

  public RpcExcutor(Activity paramActivity, int paramInt)
  {
    a(paramActivity, paramInt);
  }

  public RpcExcutor(Activity paramActivity, View paramView)
  {
    int i1 = paramView.getMeasuredHeight();
    if (i1 <= 0)
    {
      DeviceInfo localDeviceInfo = DeviceInfo.getInstance();
      paramView.measure(localDeviceInfo.getmScreenWidth(), localDeviceInfo.getScreenHeight());
      i1 = paramView.getMeasuredHeight();
    }
    a(paramActivity, i1);
  }

  private void a(Activity paramActivity, int paramInt)
  {
    this.d = paramActivity;
    this.i = paramInt;
    if ((paramActivity instanceof ActivityResponsable))
      this.e = ((ActivityResponsable)paramActivity);
  }

  // ERROR //
  private void a(Object[] paramArrayOfObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 95	com/alipay/mobile/common/rpc/ext/RpcExcutor:p	Z
    //   5: aload_0
    //   6: getfield 83	com/alipay/mobile/common/rpc/ext/RpcExcutor:g	Z
    //   9: ifeq +23 -> 32
    //   12: aload_0
    //   13: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   16: ifnull +16 -> 32
    //   19: aload_0
    //   20: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   23: aload_0
    //   24: invokevirtual 146	com/alipay/mobile/common/rpc/ext/RpcExcutor:getProgressText	()Ljava/lang/String;
    //   27: invokeinterface 150 2 0
    //   32: aload_0
    //   33: aload_1
    //   34: invokevirtual 154	com/alipay/mobile/common/rpc/ext/RpcExcutor:excute	([Ljava/lang/Object;)Ljava/lang/Object;
    //   37: astore 9
    //   39: aload_0
    //   40: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   43: ifnull +12 -> 55
    //   46: aload_0
    //   47: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   50: invokeinterface 157 1 0
    //   55: aload_0
    //   56: iconst_0
    //   57: putfield 95	com/alipay/mobile/common/rpc/ext/RpcExcutor:p	Z
    //   60: aload_0
    //   61: aload 9
    //   63: aload_1
    //   64: invokevirtual 161	com/alipay/mobile/common/rpc/ext/RpcExcutor:onRpcFinish	(Ljava/lang/Object;[Ljava/lang/Object;)V
    //   67: return
    //   68: astore 7
    //   70: aload_0
    //   71: aload 7
    //   73: aload_1
    //   74: invokevirtual 165	com/alipay/mobile/common/rpc/ext/RpcExcutor:onRpcException	(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    //   77: aload 7
    //   79: invokevirtual 168	com/alipay/mobile/common/rpc/RpcException:getCode	()I
    //   82: bipush 7
    //   84: if_icmpeq +21 -> 105
    //   87: aload 7
    //   89: invokevirtual 168	com/alipay/mobile/common/rpc/RpcException:getCode	()I
    //   92: iconst_2
    //   93: if_icmpeq +12 -> 105
    //   96: aload 7
    //   98: invokevirtual 168	com/alipay/mobile/common/rpc/RpcException:getCode	()I
    //   101: iconst_4
    //   102: if_icmpne +88 -> 190
    //   105: aload_0
    //   106: aload 7
    //   108: aload_1
    //   109: invokevirtual 171	com/alipay/mobile/common/rpc/ext/RpcExcutor:onNetworkError	(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    //   112: aload_0
    //   113: getfield 85	com/alipay/mobile/common/rpc/ext/RpcExcutor:h	Z
    //   116: ifeq +39 -> 155
    //   119: aload_0
    //   120: aload_1
    //   121: invokevirtual 174	com/alipay/mobile/common/rpc/ext/RpcExcutor:showNetworkErrorTip	([Ljava/lang/Object;)V
    //   124: aload_0
    //   125: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   128: ifnull +12 -> 140
    //   131: aload_0
    //   132: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   135: invokeinterface 157 1 0
    //   140: aload_0
    //   141: iconst_0
    //   142: putfield 95	com/alipay/mobile/common/rpc/ext/RpcExcutor:p	Z
    //   145: aload_0
    //   146: aconst_null
    //   147: aload_1
    //   148: invokevirtual 161	com/alipay/mobile/common/rpc/ext/RpcExcutor:onRpcFinish	(Ljava/lang/Object;[Ljava/lang/Object;)V
    //   151: return
    //   152: astore 8
    //   154: return
    //   155: aload 7
    //   157: athrow
    //   158: astore 5
    //   160: aload_0
    //   161: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   164: ifnull +12 -> 176
    //   167: aload_0
    //   168: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   171: invokeinterface 157 1 0
    //   176: aload_0
    //   177: iconst_0
    //   178: putfield 95	com/alipay/mobile/common/rpc/ext/RpcExcutor:p	Z
    //   181: aload_0
    //   182: aconst_null
    //   183: aload_1
    //   184: invokevirtual 161	com/alipay/mobile/common/rpc/ext/RpcExcutor:onRpcFinish	(Ljava/lang/Object;[Ljava/lang/Object;)V
    //   187: aload 5
    //   189: athrow
    //   190: aload 7
    //   192: athrow
    //   193: astore_2
    //   194: aload_0
    //   195: aload_2
    //   196: aload_1
    //   197: invokevirtual 178	com/alipay/mobile/common/rpc/ext/RpcExcutor:onException	(Ljava/lang/Exception;[Ljava/lang/Object;)V
    //   200: aload_0
    //   201: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   204: ifnull +12 -> 216
    //   207: aload_0
    //   208: getfield 111	com/alipay/mobile/common/rpc/ext/RpcExcutor:e	Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    //   211: invokeinterface 157 1 0
    //   216: aload_0
    //   217: iconst_0
    //   218: putfield 95	com/alipay/mobile/common/rpc/ext/RpcExcutor:p	Z
    //   221: aload_0
    //   222: aconst_null
    //   223: aload_1
    //   224: invokevirtual 161	com/alipay/mobile/common/rpc/ext/RpcExcutor:onRpcFinish	(Ljava/lang/Object;[Ljava/lang/Object;)V
    //   227: return
    //   228: astore 4
    //   230: return
    //   231: astore 10
    //   233: return
    //   234: astore_3
    //   235: goto -35 -> 200
    //   238: astore 6
    //   240: goto -53 -> 187
    //
    // Exception table:
    //   from	to	target	type
    //   0	32	68	com/alipay/mobile/common/rpc/RpcException
    //   32	39	68	com/alipay/mobile/common/rpc/RpcException
    //   145	151	152	java/lang/Exception
    //   0	32	158	finally
    //   32	39	158	finally
    //   70	105	158	finally
    //   105	124	158	finally
    //   155	158	158	finally
    //   190	193	158	finally
    //   194	200	158	finally
    //   0	32	193	java/lang/Exception
    //   32	39	193	java/lang/Exception
    //   221	227	228	java/lang/Exception
    //   60	67	231	java/lang/Exception
    //   194	200	234	java/lang/Exception
    //   181	187	238	java/lang/Exception
  }

  public abstract Result excute(Object[] paramArrayOfObject);

  public <T extends ExternalService> T getExtServiceByInterface(Class<? extends ExternalService> paramClass)
  {
    return this.c.getExtServiceByInterface(paramClass.getName());
  }

  public String getProgressText()
  {
    return this.f;
  }

  public <T> T getRpcProxy(Class<T> paramClass)
  {
    return this.b.getRpcProxy(paramClass);
  }

  public <T> T getServiceByInterface(Class paramClass)
  {
    return this.c.findServiceByInterface(paramClass.getName());
  }

  public void hideTipView()
  {
    if (this.o != null)
      this.o.setVisibility(8);
  }

  public boolean isRunning()
  {
    return this.p;
  }

  public boolean isShowNetworkErrorView()
  {
    return this.h;
  }

  public boolean isShowProgressDialog()
  {
    return this.g;
  }

  public void onException(Exception paramException, Object[] paramArrayOfObject)
  {
  }

  public void onNetworkError(RpcException paramRpcException, Object[] paramArrayOfObject)
  {
  }

  public void onRpcException(RpcException paramRpcException, Object[] paramArrayOfObject)
  {
  }

  public void onRpcFinish(Result paramResult, Object[] paramArrayOfObject)
  {
  }

  public void run()
  {
    a(new Object[0]);
  }

  public void runOnUiThread(Runnable paramRunnable)
  {
    runOnUiThreadDelay(paramRunnable, -1L);
  }

  public void runOnUiThreadDelay(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable != null)
    {
      if (paramLong > 0L)
        this.a.postDelayed(paramRunnable, paramLong);
    }
    else
      return;
    this.a.post(paramRunnable);
  }

  public void setProgressText(String paramString)
  {
    this.f = paramString;
  }

  public void setShowNetworkErrorView(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void setShowProgressDialog(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public void setTipMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.j = paramInt3;
    this.k = paramInt2;
    this.l = paramInt4;
    this.i = paramInt1;
  }

  public void showEmptyTip(String paramString1, String paramString2, View.OnClickListener paramOnClickListener)
  {
    if (this.d == null)
      return;
    this.d.runOnUiThread(new RpcExcutor.3(this, paramString1, paramOnClickListener, paramString2));
  }

  public void showNetworkErrorTip(Object[] paramArrayOfObject)
  {
    if (this.d == null)
      return;
    this.d.runOnUiThread(new RpcExcutor.2(this, paramArrayOfObject));
  }

  public void showWarningTip(String paramString1, String paramString2, View.OnClickListener paramOnClickListener)
  {
    if (this.d == null)
      return;
    this.d.runOnUiThread(new RpcExcutor.4(this, paramString1, paramOnClickListener, paramString2));
  }

  public void start(Object[] paramArrayOfObject)
  {
    BackgroundExecutor.execute(new RpcExcutor.1(this, paramArrayOfObject));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.ext.RpcExcutor
 * JD-Core Version:    0.6.2
 */