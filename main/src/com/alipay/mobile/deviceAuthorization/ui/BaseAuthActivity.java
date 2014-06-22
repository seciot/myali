package com.alipay.mobile.deviceAuthorization.ui;

import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.ImageView;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.PWDInputListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.biz.gw.service.approve.ApproveFacade;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.approve.CancelApproveRes;
import com.alipay.mobilesecurity.core.model.approve.ConfirmApproveReq;
import com.alipay.mobilesecurity.core.model.approve.ConfirmApproveRes;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveReq;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes;
import java.util.List;

public abstract class BaseAuthActivity extends BaseActivity
  implements APSixNumberPwdInputBox.PWDInputListener
{
  boolean a;
  String b;
  List<String> c;
  boolean d = false;
  private String e = "BaseAuthActivity";
  private ApproveFacade f;
  private DeviceService g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private APFlowTipView m;
  private LocationInfoService n;
  private WifiManager o;
  private AuthService p;
  private PayHelperServcie q;
  private String r;
  private String s = "Preparing";

  // ERROR //
  private java.util.Map<String, String> b()
  {
    // Byte code:
    //   0: new 77	java/util/HashMap
    //   3: dup
    //   4: invokespecial 78	java/util/HashMap:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 66	com/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity:g	Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    //   12: invokevirtual 84	com/alipay/mobile/framework/service/ext/security/DeviceService:queryCertification	()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    //   15: astore_3
    //   16: aload_3
    //   17: ifnull +434 -> 451
    //   20: aload_3
    //   21: invokevirtual 90	com/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean:getTid	()Ljava/lang/String;
    //   24: astore 4
    //   26: aload_0
    //   27: getfield 92	com/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity:o	Landroid/net/wifi/WifiManager;
    //   30: ifnull +415 -> 445
    //   33: aload_0
    //   34: getfield 92	com/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity:o	Landroid/net/wifi/WifiManager;
    //   37: invokevirtual 98	android/net/wifi/WifiManager:getConnectionInfo	()Landroid/net/wifi/WifiInfo;
    //   40: astore 35
    //   42: aload 35
    //   44: ifnull +401 -> 445
    //   47: aload 35
    //   49: invokevirtual 103	android/net/wifi/WifiInfo:getSSID	()Ljava/lang/String;
    //   52: astore 5
    //   54: aload_0
    //   55: getfield 105	com/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity:n	Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;
    //   58: invokevirtual 111	com/alipay/mobile/framework/service/ext/security/LocationInfoService:getCacheLocationInfo	()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    //   61: astore 6
    //   63: aload 6
    //   65: ifnonnull +373 -> 438
    //   68: aload_0
    //   69: getfield 105	com/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity:n	Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;
    //   72: invokevirtual 114	com/alipay/mobile/framework/service/ext/security/LocationInfoService:getLocationInfo	()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    //   75: astore 7
    //   77: aload 7
    //   79: ifnull +344 -> 423
    //   82: aload 7
    //   84: invokevirtual 119	com/alipay/mobile/framework/service/ext/security/bean/LocationInfo:getCellId	()Ljava/lang/String;
    //   87: astore 8
    //   89: aload 8
    //   91: astore 9
    //   93: aload 9
    //   95: invokestatic 125	com/alibaba/fastjson/JSON:parseObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   98: astore 32
    //   100: aconst_null
    //   101: astore 33
    //   103: aload 32
    //   105: ifnull +25 -> 130
    //   108: aload 32
    //   110: ldc 127
    //   112: invokevirtual 133	com/alibaba/fastjson/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   115: astore 9
    //   117: aload 32
    //   119: ldc 135
    //   121: invokevirtual 133	com/alibaba/fastjson/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   124: astore 34
    //   126: aload 34
    //   128: astore 33
    //   130: aload 33
    //   132: astore 12
    //   134: aload 9
    //   136: astore 11
    //   138: new 137	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   145: aload 7
    //   147: invokevirtual 141	com/alipay/mobile/framework/service/ext/security/bean/LocationInfo:getLongitude	()Ljava/lang/String;
    //   150: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc 147
    //   155: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload 7
    //   160: invokevirtual 150	com/alipay/mobile/framework/service/ext/security/bean/LocationInfo:getLatitude	()Ljava/lang/String;
    //   163: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: astore 13
    //   171: aload 7
    //   173: invokevirtual 156	com/alipay/mobile/framework/service/ext/security/bean/LocationInfo:getMac	()Ljava/lang/String;
    //   176: astore 14
    //   178: invokestatic 162	com/alipay/mobile/common/info/DeviceInfo:getInstance	()Lcom/alipay/mobile/common/info/DeviceInfo;
    //   181: astore 15
    //   183: invokestatic 167	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   186: astore 16
    //   188: aload_1
    //   189: ldc 169
    //   191: aload 4
    //   193: invokeinterface 175 3 0
    //   198: pop
    //   199: aload_1
    //   200: ldc 177
    //   202: aload 11
    //   204: invokeinterface 175 3 0
    //   209: pop
    //   210: aload_1
    //   211: ldc 179
    //   213: aload 15
    //   215: invokevirtual 183	com/alipay/mobile/common/info/DeviceInfo:ismRooted	()Z
    //   218: invokestatic 189	java/lang/String:valueOf	(Z)Ljava/lang/String;
    //   221: invokeinterface 175 3 0
    //   226: pop
    //   227: aload_1
    //   228: ldc 191
    //   230: ldc 193
    //   232: invokeinterface 175 3 0
    //   237: pop
    //   238: aload_1
    //   239: ldc 195
    //   241: aload 16
    //   243: invokevirtual 198	com/alipay/mobile/common/info/AppInfo:getmProductVersion	()Ljava/lang/String;
    //   246: invokeinterface 175 3 0
    //   251: pop
    //   252: aload_1
    //   253: ldc 200
    //   255: aload 15
    //   257: invokevirtual 203	com/alipay/mobile/common/info/DeviceInfo:getOsVersion	()Ljava/lang/String;
    //   260: invokeinterface 175 3 0
    //   265: pop
    //   266: aload_1
    //   267: ldc 205
    //   269: aload 13
    //   271: invokeinterface 175 3 0
    //   276: pop
    //   277: aload_1
    //   278: ldc 207
    //   280: aload 15
    //   282: invokevirtual 210	com/alipay/mobile/common/info/DeviceInfo:getImei	()Ljava/lang/String;
    //   285: invokeinterface 175 3 0
    //   290: pop
    //   291: aload_1
    //   292: ldc 212
    //   294: aload 15
    //   296: invokevirtual 215	com/alipay/mobile/common/info/DeviceInfo:getImsi	()Ljava/lang/String;
    //   299: invokeinterface 175 3 0
    //   304: pop
    //   305: aload_0
    //   306: getfield 217	com/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity:q	Lcom/alipay/android/app/helper/PayHelperServcie;
    //   309: ifnull +19 -> 328
    //   312: aload_1
    //   313: ldc 219
    //   315: aload_0
    //   316: getfield 217	com/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity:q	Lcom/alipay/android/app/helper/PayHelperServcie;
    //   319: invokevirtual 224	com/alipay/android/app/helper/PayHelperServcie:getPaySysInfo	()Ljava/lang/String;
    //   322: invokeinterface 175 3 0
    //   327: pop
    //   328: aload_1
    //   329: ldc 226
    //   331: aload_0
    //   332: invokestatic 232	com/ut/device/UTDevice:getUtdid	(Landroid/content/Context;)Ljava/lang/String;
    //   335: invokeinterface 175 3 0
    //   340: pop
    //   341: aload_1
    //   342: ldc 234
    //   344: new 236	java/text/SimpleDateFormat
    //   347: dup
    //   348: ldc 238
    //   350: invokespecial 241	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   353: new 243	java/util/Date
    //   356: dup
    //   357: invokespecial 244	java/util/Date:<init>	()V
    //   360: invokevirtual 248	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   363: invokeinterface 175 3 0
    //   368: pop
    //   369: aload_1
    //   370: ldc 250
    //   372: aload 12
    //   374: invokeinterface 175 3 0
    //   379: pop
    //   380: aload_1
    //   381: ldc 252
    //   383: aload 5
    //   385: invokeinterface 175 3 0
    //   390: pop
    //   391: aload_1
    //   392: ldc 254
    //   394: aload 14
    //   396: invokeinterface 175 3 0
    //   401: pop
    //   402: aload_1
    //   403: areturn
    //   404: astore 10
    //   406: aload 9
    //   408: astore 11
    //   410: aconst_null
    //   411: astore 12
    //   413: goto -275 -> 138
    //   416: astore 36
    //   418: aconst_null
    //   419: areturn
    //   420: astore_2
    //   421: aload_1
    //   422: areturn
    //   423: aconst_null
    //   424: astore 14
    //   426: aconst_null
    //   427: astore 13
    //   429: aconst_null
    //   430: astore 12
    //   432: aconst_null
    //   433: astore 11
    //   435: goto -257 -> 178
    //   438: aload 6
    //   440: astore 7
    //   442: goto -365 -> 77
    //   445: aconst_null
    //   446: astore 5
    //   448: goto -394 -> 54
    //   451: aconst_null
    //   452: astore 4
    //   454: goto -428 -> 26
    //
    // Exception table:
    //   from	to	target	type
    //   93	100	404	java/lang/Exception
    //   108	126	404	java/lang/Exception
    //   0	8	416	java/lang/Exception
    //   8	16	420	java/lang/Exception
    //   20	26	420	java/lang/Exception
    //   26	42	420	java/lang/Exception
    //   47	54	420	java/lang/Exception
    //   54	63	420	java/lang/Exception
    //   68	77	420	java/lang/Exception
    //   82	89	420	java/lang/Exception
    //   138	178	420	java/lang/Exception
    //   178	328	420	java/lang/Exception
    //   328	402	420	java/lang/Exception
  }

  public final void a()
  {
    new a((byte)0).execute(new Void[0]);
  }

  protected abstract void a(ImageView paramImageView, Bitmap paramBitmap);

  public final void a(ImageView paramImageView, String paramString)
  {
    ((ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName())).startLoad(null, null, paramString, new p(this, paramImageView), -1, -1, new q(this));
  }

  public abstract void a(PrepareApproveRes paramPrepareApproveRes);

  protected abstract void a(String paramString);

  public final void a(String paramString, boolean paramBoolean)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage(paramString);
    localBuilder.setPositiveButton(R.string.s, new l(this, paramBoolean));
    localBuilder.setNegativeButton(R.string.t, new m(this, paramBoolean));
    localBuilder.show();
  }

  public final void a(boolean paramBoolean, String paramString1, String paramString2, List<String> paramList)
  {
    this.a = paramBoolean;
    this.b = paramString1;
    this.c = paramList;
    if (paramBoolean)
    {
      n localn = new n(this, paramString2, paramString1, paramList);
      PhoneCashierOrder localPhoneCashierOrder = new PhoneCashierOrder();
      localPhoneCashierOrder.setBizType("prepay_initial");
      localPhoneCashierOrder.setBizSubType("");
      localPhoneCashierOrder.setOrderNo("");
      ((PhoneCashierServcie)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneCashierServcie.class.getName())).bootToCertification(localPhoneCashierOrder, localn);
      return;
    }
    if ((paramString1 != null) && (paramString1.length() < 6) && (TextUtils.equals("PAYMENTPASSWORD", paramString2)))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage(R.string.I);
      localBuilder.setPositiveButton(getText(R.string.v), new o(this, paramString2));
      localBuilder.show();
      return;
    }
    new b(paramString2).execute(new Object[] { paramString1, paramList });
  }

  public final void b(String paramString)
  {
    this.d = true;
    r localr = new r(this);
    alert(null, paramString, getResources().getString(R.string.r), new s(this, localr), getResources().getString(R.string.t), new t(this));
  }

  public final void c(String paramString)
  {
    alert(null, paramString, getResources().getString(R.string.v), new u(this), null, null);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 6001)
      if (!this.s.equals("Confirming"))
        new c((byte)0).execute(new Void[0]);
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      a(this.a, this.b, this.r, this.c);
      continue;
      finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.f = ((ApproveFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(ApproveFacade.class));
    this.g = ((DeviceService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName()));
    this.o = ((WifiManager)getSystemService("wifi"));
    this.n = ((LocationInfoService)this.mMicroApplicationContext.getExtServiceByInterface(LocationInfoService.class.getName()));
    this.p = ((AuthService)this.mMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName()));
    this.q = ((PayHelperServcie)this.mMicroApplicationContext.getExtServiceByInterface(PayHelperServcie.class.getName()));
    this.h = getIntent().getStringExtra("id");
    this.i = getIntent().getStringExtra("type");
    this.j = getIntent().getStringExtra("targetId");
    this.k = getIntent().getStringExtra("targetType");
    this.l = getIntent().getStringExtra("partnerId");
    new c((byte)0).execute(new Void[0]);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      this.mApp.getMicroApplicationContext().finishApp(null, "20000055", null);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    if (this.d)
      this.mMicroApplicationContext.finishApp("20000055", "20000055", null);
    super.onResume();
  }

  private final class a extends AsyncTask<Void, String, CancelApproveRes>
  {
    private a()
    {
    }

    protected final void onPreExecute()
    {
      BaseAuthActivity.u(BaseAuthActivity.this).finishApp("20000055", "20000055", null);
    }
  }

  private final class b extends AsyncTask<Object, String, ConfirmApproveRes>
  {
    private String b;

    public b(String arg2)
    {
      Object localObject;
      this.b = localObject;
    }

    private ConfirmApproveRes a(Object[] paramArrayOfObject)
    {
      try
      {
        ConfirmApproveReq localConfirmApproveReq = new ConfirmApproveReq();
        localConfirmApproveReq.mobileOperationEnvironment = BaseAuthActivity.n(BaseAuthActivity.this);
        MspDeviceInfoBean localMspDeviceInfoBean = BaseAuthActivity.getBundle(BaseAuthActivity.this).queryCertification();
        localConfirmApproveReq.password = BaseAuthActivity.i(BaseAuthActivity.this, (String)paramArrayOfObject[0]);
        localConfirmApproveReq.approveId = BaseAuthActivity.b(BaseAuthActivity.this);
        localConfirmApproveReq.approveType = BaseAuthActivity.getBundleByComponentName(BaseAuthActivity.this);
        localConfirmApproveReq.targetId = BaseAuthActivity.d(BaseAuthActivity.this);
        localConfirmApproveReq.targetType = BaseAuthActivity.removeBundle(BaseAuthActivity.this);
        localConfirmApproveReq.partnerId = BaseAuthActivity.f(BaseAuthActivity.this);
        localConfirmApproveReq.passwordType = BaseAuthActivity.o(BaseAuthActivity.this);
        if (localMspDeviceInfoBean != null)
        {
          Tid localTid = new Tid();
          localTid.tid = localMspDeviceInfoBean.getTid();
          localTid.imei = localMspDeviceInfoBean.getImei();
          localTid.imsi = localMspDeviceInfoBean.getImsi();
          localTid.vimei = localMspDeviceInfoBean.getVimei();
          localTid.clientKey = localMspDeviceInfoBean.getMspkey();
          localConfirmApproveReq.tid = localTid;
        }
        if (paramArrayOfObject.length > 1)
          localConfirmApproveReq.selectedAuthIdList = ((List)paramArrayOfObject[1]);
        ConfirmApproveRes localConfirmApproveRes = BaseAuthActivity.g(BaseAuthActivity.this).confirmApprove(localConfirmApproveReq);
        return localConfirmApproveRes;
      }
      catch (RpcException localRpcException)
      {
        BaseAuthActivity.this.dismissProgressDialog();
        throw localRpcException;
      }
      catch (RuntimeException localRuntimeException)
      {
        BaseAuthActivity.this.dismissProgressDialog();
        throw localRuntimeException;
      }
    }

    protected final void onPreExecute()
    {
      BaseAuthActivity.v(BaseAuthActivity.this, "Confirming");
      BaseAuthActivity.this.showProgressDialog("", true, new v(this));
    }
  }

  private final class c extends AsyncTask<Void, String, BaseAuthActivity.d>
  {
    private c()
    {
    }

    private BaseAuthActivity.d a()
    {
      BaseAuthActivity.d locald = new BaseAuthActivity.d(BaseAuthActivity.this);
      PrepareApproveReq localPrepareApproveReq = new PrepareApproveReq();
      Tid localTid = new Tid();
      MspDeviceInfoBean localMspDeviceInfoBean = BaseAuthActivity.getBundle(BaseAuthActivity.this).queryCertification();
      if (localMspDeviceInfoBean != null)
      {
        localTid.tid = localMspDeviceInfoBean.getTid();
        localTid.imei = localMspDeviceInfoBean.getImei();
        localTid.imsi = localMspDeviceInfoBean.getImsi();
        localTid.vimei = localMspDeviceInfoBean.getVimei();
        localTid.vimsi = localMspDeviceInfoBean.getVimsi();
        localTid.clientKey = localMspDeviceInfoBean.getMspkey();
      }
      localPrepareApproveReq.tid = localTid;
      localPrepareApproveReq.approveId = BaseAuthActivity.b(BaseAuthActivity.this);
      localPrepareApproveReq.approveType = BaseAuthActivity.getBundleByComponentName(BaseAuthActivity.this);
      localPrepareApproveReq.targetId = BaseAuthActivity.d(BaseAuthActivity.this);
      localPrepareApproveReq.targetType = BaseAuthActivity.removeBundle(BaseAuthActivity.this);
      localPrepareApproveReq.partnerId = BaseAuthActivity.f(BaseAuthActivity.this);
      try
      {
        locald.getBundle(BaseAuthActivity.g(BaseAuthActivity.this).prepareApprove(localPrepareApproveReq));
        return locald;
      }
      catch (RpcException localRpcException)
      {
        int i = localRpcException.getCode();
        if ((i == 7) || (i == 2) || (i == 4))
        {
          locald.b();
          return locald;
        }
        BaseAuthActivity.this.toast(locald.a().message, 0);
        BaseAuthActivity.h(BaseAuthActivity.this).finishApp("20000055", "20000055", null);
        return locald;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw localRuntimeException;
      }
    }

    protected final void onPreExecute()
    {
      BaseAuthActivity.v(BaseAuthActivity.this, "Preparing");
      BaseAuthActivity.this.showProgressDialog("", true, new z(this));
    }
  }

  final class d
  {
    private boolean b;
    private PrepareApproveRes c;

    d()
    {
    }

    public final PrepareApproveRes a()
    {
      return this.c;
    }

    public final void a(PrepareApproveRes paramPrepareApproveRes)
    {
      this.c = paramPrepareApproveRes;
    }

    public final void b()
    {
      this.b = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.BaseAuthActivity
 * JD-Core Version:    0.6.2
 */