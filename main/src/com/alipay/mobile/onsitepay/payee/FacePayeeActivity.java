package com.alipay.mobile.onsitepay.payee;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.Vibrator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.alipay.livetradeprod.core.model.base.OnsiteTradeInfo;
import com.alipay.livetradeprod.core.model.rpc.SendPayeeInfoReq;
import com.alipay.livetradeprod.core.model.rpc.SendPayeeInfoRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackList;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.SecurityAccountQrCode;
import com.alipay.sonicwavenfc.SonicWaveNFC;
import com.alipay.sonicwavenfc.SonicWaveNFCHandler;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@EActivity(resName="c2c_payee")
public class FacePayeeActivity extends BaseActivity
  implements com.alipay.mobile.onsitepay.a.b.a
{
  private boolean A = true;
  private com.alipay.mobile.onsitepay.a.b.b B = null;
  private com.alipay.mobile.onsitepay.a.b.c C = null;
  private com.alipay.mobile.onsitepay.a.b.d D = null;
  private SecurityQrCodeShowResult E;
  private int F = 0;

  @ViewById(resName="titleBar")
  APTitleBar a;

  @ViewById(resName="account_barcode")
  protected APImageView b;

  @ViewById(resName="account_info")
  protected LinearLayout c;

  @ViewById(resName="show_barcode_layout")
  protected RelativeLayout d;

  @ViewById(resName="show_barcode_img")
  protected ImageView e;

  @ViewById(resName="sendtab_barcode_linearlayout")
  protected LinearLayout f;

  @ViewById(resName="acousticSensingTextView")
  protected APTextView g;

  @ViewById(resName="account_barcode_layout")
  protected RelativeLayout h;

  @ViewById(resName="not_support_sonic")
  protected APTextView i;

  @ViewById(resName="send_tab_layout")
  protected RelativeLayout j;
  DrawInduceView k = null;
  boolean l;
  boolean m = false;
  boolean n = true;
  boolean o = false;
  int p = -1;
  int q = 0;
  int r = 0;
  boolean s = true;
  private SonicWaveNFC t;
  private PowerManager.WakeLock u;
  private Vibrator v;
  private FacePayeeHead[] w = new FacePayeeHead[9];
  private SonicWaveNFCHandler x;
  private Map<String, Long> y = new HashMap();
  private ConnectivityManager z;

  private FacePayeeHead a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        localObject2 = d(paramString1);
        if (localObject2 != null)
        {
          a(paramString1, paramString2, paramString3, paramBoolean, (FacePayeeHead)localObject2);
          return localObject2;
        }
        if (this.w[0].getUserId() == null)
        {
          localObject2 = this.w[0];
          a(paramString1, paramString2, paramString3, paramBoolean, (FacePayeeHead)localObject2);
          continue;
        }
      }
      finally
      {
      }
      int i1 = 0;
      int i2 = 1;
      FacePayeeHead localFacePayeeHead;
      if (i1 < this.w.length)
      {
        if ((i2 == 0) || (!this.w[i1].isUsed()))
          break label207;
        i2 = 1;
      }
      else
      {
        if (i2 != 0)
        {
          localFacePayeeHead = a(true);
          if (localFacePayeeHead != null)
            break label213;
          localFacePayeeHead = a(false);
          break label213;
        }
        int i3 = (int)(System.currentTimeMillis() % 9L);
        for (int i4 = i3; ; i4++)
        {
          if (i4 >= i3 + this.w.length)
            break label195;
          localObject2 = this.w[(i4 % 9)];
          boolean bool = ((FacePayeeHead)localObject2).isUsed();
          if (!bool)
            break;
        }
        label195: localObject2 = null;
        continue;
      }
      while (true)
      {
        i1++;
        break;
        label207: i2 = 0;
      }
      label213: Object localObject2 = localFacePayeeHead;
    }
  }

  private FacePayeeHead a(boolean paramBoolean)
  {
    FacePayeeHead localFacePayeeHead = null;
    int i1 = 0;
    if (i1 < this.w.length)
    {
      if ((this.w[i1].isUsed()) && (this.w[i1].isSuccessed() == paramBoolean))
      {
        if (localFacePayeeHead != null)
          break label55;
        localFacePayeeHead = this.w[i1];
      }
      while (true)
      {
        i1++;
        break;
        label55: if (localFacePayeeHead.getNum() > this.w[i1].getNum())
          localFacePayeeHead = this.w[i1];
      }
    }
    return localFacePayeeHead;
  }

  private void a(int paramInt)
  {
    new StringBuilder("stopSonicReceive").append(paramInt).toString();
    this.t.stopReceiveData();
  }

  private void a(OnsiteTradeInfo paramOnsiteTradeInfo)
  {
    if (StringUtils.isNotBlank(paramOnsiteTradeInfo.userId))
    {
      FacePayeeHead localFacePayeeHead1 = d(paramOnsiteTradeInfo.userId);
      if (localFacePayeeHead1 == null)
        break label37;
      if (!localFacePayeeHead1.isSuccessed())
        a(paramOnsiteTradeInfo, localFacePayeeHead1);
    }
    label37: FacePayeeHead localFacePayeeHead2;
    do
    {
      do
        return;
      while ((paramOnsiteTradeInfo.userId == null) || (paramOnsiteTradeInfo.payerName == null));
      String str1 = paramOnsiteTradeInfo.headImageUrl;
      String str2 = paramOnsiteTradeInfo.userId;
      String str3 = paramOnsiteTradeInfo.payerName;
      c();
      localFacePayeeHead2 = a(str2, str3, str1, true);
    }
    while (localFacePayeeHead2 == null);
    a(paramOnsiteTradeInfo, localFacePayeeHead2);
  }

  private void a(String paramString1, String paramString2, String paramString3, boolean paramBoolean, FacePayeeHead paramFacePayeeHead)
  {
    d();
    this.F = (1 + this.F);
    this.v.vibrate(com.alipay.mobile.onsitepay.a.a.a.f, -1);
    paramFacePayeeHead.showPayerInfo(paramString1, paramString2, paramString3, paramBoolean, this.F);
  }

  private FacePayeeHead d(String paramString)
  {
    for (int i1 = 0; i1 < this.w.length; i1++)
    {
      FacePayeeHead localFacePayeeHead = this.w[i1];
      if ((localFacePayeeHead.isUsed()) && (paramString.equals(localFacePayeeHead.getUserId())))
        return localFacePayeeHead;
    }
    return null;
  }

  private static String e()
  {
    UserInfo localUserInfo = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getLastLoginedUserInfo();
    if (localUserInfo != null)
      return localUserInfo.getUserId();
    return null;
  }

  private void f()
  {
    this.c.setVisibility(4);
    this.e.setImageDrawable(getResources().getDrawable(com.alipay.mobile.onsitepay.c.b));
    this.d.setOnClickListener(new e(this));
    this.f.setBackgroundColor(16777215);
    this.j.setVisibility(4);
  }

  private void g()
  {
    this.t.startReceiveData(10000, 20, this, this.x);
    h();
  }

  private void h()
  {
    try
    {
      if (this.n)
      {
        this.o = false;
        new Thread(new i(this, (byte)0)).start();
        this.n = false;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static SecurityAccountQrCode i()
  {
    return (SecurityAccountQrCode)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(SecurityAccountQrCode.class.getName());
  }

  @AfterViews
  protected final void a()
  {
    UserInfo localUserInfo = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
    ((TextView)findViewById(com.alipay.mobile.onsitepay.d.ab)).setText(localUserInfo.getUserName());
    ((TextView)findViewById(com.alipay.mobile.onsitepay.d.aa)).setText(localUserInfo.getLogonId());
    if (this.z.getActiveNetworkInfo() != null);
    for (boolean bool = this.z.getActiveNetworkInfo().isAvailable(); ; bool = false)
    {
      this.l = bool;
      new StringBuilder("isNetworkAvailable = ").append(this.l).toString();
      if (!this.l)
      {
        c(getResources().getString(com.alipay.mobile.onsitepay.f.f));
        this.o = true;
      }
      this.t = SonicWaveNFC.getInstance();
      ((PhoneBlackList)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneBlackList.class.getName())).queryPhoneBlackList(this.mApp.getMicroApplicationContext().getApplicationContext(), new g(this));
      this.w[0] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.ae));
      this.w[1] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.af));
      this.w[2] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.ag));
      this.w[3] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.ah));
      this.w[4] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.ai));
      this.w[5] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.aj));
      this.w[6] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.ak));
      this.w[7] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.al));
      this.w[8] = ((FacePayeeHead)findViewById(com.alipay.mobile.onsitepay.d.am));
      this.d.setOnClickListener(new a(this));
      this.k = new DrawInduceView(this.mApp.getMicroApplicationContext().getApplicationContext());
      LinearLayout localLinearLayout = (LinearLayout)findViewById(com.alipay.mobile.onsitepay.d.F);
      new StringBuilder("drawInductionLayout getWidth=").append(localLinearLayout.getWidth()).append(" drawInductionLayout getHeight=").append(localLinearLayout.getHeight()).toString();
      this.k.invalidate();
      localLinearLayout.addView(this.k);
      this.D = new com.alipay.mobile.onsitepay.a.b.a.f();
      this.D.a(this.mApp.getMicroApplicationContext().getApplicationContext(), "com.alipay.longlink.TRANSFER_10000013", this);
      this.B = new com.alipay.mobile.onsitepay.a.b.a.a(this);
      this.B.a(localUserInfo.getUserId());
      this.C = new com.alipay.mobile.onsitepay.a.b.a.d(this);
      BackgroundExecutor.execute(new b(this));
      return;
    }
  }

  @UiThread
  protected void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      this.g.setText("收到支付请求");
    while (true)
    {
      this.k.row = paramInt;
      this.k.invalidate();
      return;
      this.g.setText("声波感应区");
    }
  }

  // ERROR //
  @UiThread
  protected void a(OnsiteTradeInfo paramOnsiteTradeInfo, FacePayeeHead paramFacePayeeHead)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: getfield 545	com/alipay/livetradeprod/core/model/base/OnsiteTradeInfo:memo	Ljava/lang/String;
    //   5: invokevirtual 425	com/alipay/mobile/onsitepay/payee/FacePayeeActivity:c	(Ljava/lang/String;)V
    //   8: aconst_null
    //   9: astore_3
    //   10: aload_0
    //   11: invokevirtual 211	com/alipay/mobile/onsitepay/payee/FacePayeeActivity:getResources	()Landroid/content/res/Resources;
    //   14: getstatic 550	com/alipay/mobile/ui/R$raw:diaoqian	I
    //   17: invokevirtual 554	android/content/res/Resources:openRawResourceFd	(I)Landroid/content/res/AssetFileDescriptor;
    //   20: astore 9
    //   22: aload 9
    //   24: astore 5
    //   26: new 556	android/media/MediaPlayer
    //   29: dup
    //   30: invokespecial 557	android/media/MediaPlayer:<init>	()V
    //   33: astore 10
    //   35: aload 10
    //   37: invokevirtual 560	android/media/MediaPlayer:reset	()V
    //   40: aload 10
    //   42: aload 5
    //   44: invokevirtual 566	android/content/res/AssetFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   47: aload 5
    //   49: invokevirtual 569	android/content/res/AssetFileDescriptor:getStartOffset	()J
    //   52: aload 5
    //   54: invokevirtual 572	android/content/res/AssetFileDescriptor:getDeclaredLength	()J
    //   57: invokevirtual 576	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;JJ)V
    //   60: aload 10
    //   62: invokevirtual 579	android/media/MediaPlayer:prepare	()V
    //   65: aload 10
    //   67: invokevirtual 580	android/media/MediaPlayer:start	()V
    //   70: aload 5
    //   72: ifnull +8 -> 80
    //   75: aload 5
    //   77: invokevirtual 583	android/content/res/AssetFileDescriptor:close	()V
    //   80: aload_0
    //   81: getfield 251	com/alipay/mobile/onsitepay/payee/FacePayeeActivity:v	Landroid/os/Vibrator;
    //   84: getstatic 256	com/alipay/mobile/onsitepay/a/a/a:f	[J
    //   87: iconst_m1
    //   88: invokevirtual 262	android/os/Vibrator:vibrate	([JI)V
    //   91: aload_0
    //   92: getfield 94	com/alipay/mobile/onsitepay/payee/FacePayeeActivity:C	Lcom/alipay/mobile/onsitepay/a/b/c;
    //   95: aload_1
    //   96: getfield 174	com/alipay/livetradeprod/core/model/base/OnsiteTradeInfo:userId	Ljava/lang/String;
    //   99: invokeinterface 586 2 0
    //   104: aload_2
    //   105: invokevirtual 589	com/alipay/mobile/onsitepay/payee/FacePayeeHead:paySuccess	()V
    //   108: return
    //   109: astore 11
    //   111: aload 11
    //   113: invokevirtual 592	java/io/IOException:printStackTrace	()V
    //   116: goto -36 -> 80
    //   119: astore 7
    //   121: aload 7
    //   123: invokevirtual 593	java/lang/Exception:printStackTrace	()V
    //   126: aload_3
    //   127: ifnull -47 -> 80
    //   130: aload_3
    //   131: invokevirtual 583	android/content/res/AssetFileDescriptor:close	()V
    //   134: goto -54 -> 80
    //   137: astore 8
    //   139: aload 8
    //   141: invokevirtual 592	java/io/IOException:printStackTrace	()V
    //   144: goto -64 -> 80
    //   147: astore 4
    //   149: aconst_null
    //   150: astore 5
    //   152: aload 5
    //   154: ifnull +8 -> 162
    //   157: aload 5
    //   159: invokevirtual 583	android/content/res/AssetFileDescriptor:close	()V
    //   162: aload 4
    //   164: athrow
    //   165: astore 6
    //   167: aload 6
    //   169: invokevirtual 592	java/io/IOException:printStackTrace	()V
    //   172: goto -10 -> 162
    //   175: astore 4
    //   177: goto -25 -> 152
    //   180: astore 4
    //   182: aload_3
    //   183: astore 5
    //   185: goto -33 -> 152
    //   188: astore 7
    //   190: aload 5
    //   192: astore_3
    //   193: goto -72 -> 121
    //
    // Exception table:
    //   from	to	target	type
    //   75	80	109	java/io/IOException
    //   10	22	119	java/lang/Exception
    //   130	134	137	java/io/IOException
    //   10	22	147	finally
    //   157	162	165	java/io/IOException
    //   26	70	175	finally
    //   121	126	180	finally
    //   26	70	188	java/lang/Exception
  }

  @Background
  protected void a(String paramString)
  {
    try
    {
      i().putCacheQrCodeData(paramString);
      this.E = i().getCacheQrCodeData(e());
      a(paramString, this.E);
      return;
    }
    catch (RpcException localRpcException)
    {
    }
  }

  @UiThread
  protected void a(String paramString, SecurityQrCodeShowResult paramSecurityQrCodeShowResult)
  {
    new StringBuilder("showUiView userId=").append(paramString).append(" SecurityQrCodeShowResult= ").append(paramSecurityQrCodeShowResult).toString();
    new StringBuilder("qrCodeShowRs=").append(this.E).toString();
    if (this.E != null)
    {
      int i1 = com.alipay.mobile.onsitepay.utils.a.a(this.E);
      new StringBuilder("shareType=").append(i1).toString();
      if (i1 != 0)
      {
        this.j.setVisibility(0);
        this.j.setOnClickListener(new d(this));
      }
      new StringBuilder("getQrCodeImgByteArr1 = ").append(this.E.getQrCodeImgByteArr()).toString();
      if (this.E.getQrCodeImgByteArr() != null)
      {
        Bitmap localBitmap1 = BitmapFactory.decodeByteArray(this.E.getQrCodeImgByteArr(), 0, this.E.getQrCodeImgByteArr().length);
        APImageView localAPImageView = this.b;
        Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap2);
        Paint localPaint = new Paint();
        Rect localRect = new Rect(0, 0, localBitmap1.getWidth(), localBitmap1.getHeight());
        RectF localRectF = new RectF(localRect);
        localPaint.setAntiAlias(true);
        localCanvas.drawARGB(0, 0, 0, 0);
        localPaint.setColor(-12434878);
        localCanvas.drawRoundRect(localRectF, 20.0F, 20.0F, localPaint);
        localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        localCanvas.drawBitmap(localBitmap1, localRect, localRect, localPaint);
        localAPImageView.setImageBitmap(localBitmap2);
        this.h.setVisibility(0);
      }
    }
  }

  public final void a(List<OnsiteTradeInfo> paramList)
  {
    if (paramList != null)
    {
      int i1 = paramList.size();
      int i2 = 0;
      while (i2 < i1)
      {
        OnsiteTradeInfo localOnsiteTradeInfo = (OnsiteTradeInfo)paramList.get(i2);
        if (localOnsiteTradeInfo != null)
        {
          String str = localOnsiteTradeInfo.action;
          new StringBuilder("action=").append(str).toString();
          if (!str.equalsIgnoreCase("soundWavePayPush"));
        }
        try
        {
          this.C.a(localOnsiteTradeInfo.userId);
          a(localOnsiteTradeInfo);
          i2++;
        }
        finally
        {
        }
      }
    }
  }

  @UiThread(delay=600L)
  protected void b()
  {
    this.a.setGenericButtonListener(new c(this));
  }

  @Background
  protected void b(String paramString)
  {
    long l1 = System.currentTimeMillis();
    try
    {
      SendPayeeInfoReq localSendPayeeInfoReq = new SendPayeeInfoReq();
      localSendPayeeInfoReq.dynamicId = paramString;
      localSendPayeeInfoRes = ((SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class)).sendPayeeInfo(localSendPayeeInfoReq);
      if ((localSendPayeeInfoRes != null) && (localSendPayeeInfoRes.success))
        str1 = "y";
    }
    catch (Exception localException1)
    {
      try
      {
        SendPayeeInfoRes localSendPayeeInfoRes;
        String str1;
        String str3 = localSendPayeeInfoRes.payerUserId;
        String str4 = localSendPayeeInfoRes.payerName;
        String str5 = localSendPayeeInfoRes.payerHeadImageUrl;
        boolean bool = localSendPayeeInfoRes.payerIsOnline;
        new StringBuilder("userId =").append(str3).toString();
        if (str3 != null)
        {
          if ("".equals(str3.trim()))
            return;
          this.C.a(paramString, localSendPayeeInfoRes.payerUserId);
          c();
          a(str3, str4, str5, bool);
          String str2 = str1;
          while (true)
          {
            Context localContext = getApplicationContext();
            BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
            String[] arrayOfString = new String[5];
            arrayOfString[0] = "kf";
            arrayOfString[1] = "verifywave";
            arrayOfString[2] = (System.currentTimeMillis() - l1);
            arrayOfString[3] = str2;
            arrayOfString[4] = "alipayclient";
            AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, null, null, null, null, "C2C", paramString, "", "-", arrayOfString);
            return;
            if (localSendPayeeInfoRes != null)
            {
              String str6 = localSendPayeeInfoRes.resultDes;
              new StringBuilder("getPayUserInfo getSoundWavePayRpcFacade memo=").append(str6).toString();
              if (StringUtils.isNotBlank(str6))
              {
                c(str6);
                str2 = "n";
              }
              else
              {
                c("系统繁忙，请稍后再试");
              }
            }
            else
            {
              str2 = "n";
              continue;
              localException1 = localException1;
              str1 = "n";
              label347: c("网络无法连接");
              str2 = str1;
            }
          }
        }
      }
      catch (Exception localException2)
      {
        break label347;
      }
    }
  }

  @UiThread
  protected void c()
  {
    this.d.setVisibility(0);
    f();
  }

  @UiThread
  protected void c(String paramString)
  {
    Context localContext = (Context)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get();
    char[] arrayOfChar = paramString.toCharArray();
    int i1 = 0;
    if (i1 < arrayOfChar.length)
    {
      if (arrayOfChar[i1] == '　')
        arrayOfChar[i1] = ' ';
      while (true)
      {
        i1++;
        break;
        if ((arrayOfChar[i1] > 65280) && (arrayOfChar[i1] < 65375))
          arrayOfChar[i1] = ((char)(arrayOfChar[i1] - 65248));
      }
    }
    Toast localToast = Toast.makeText(localContext, new String(arrayOfChar), 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }

  @UiThread
  protected void d()
  {
    this.a.getGenericButton().setVisibility(8);
  }

  protected void onCreate(Bundle paramBundle)
  {
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
    localAlipayLogInfo.appID = "10000013";
    localAlipayLogInfo.viewID = "10000013Home";
    AlipayLogAgent.writeLog(getApplicationContext(), localAlipayLogInfo);
    super.onCreate(paramBundle);
    this.z = ((ConnectivityManager)getSystemService("connectivity"));
    this.v = ((Vibrator)getSystemService("vibrator"));
    this.E = i().getCacheQrCodeData(e());
    if (this.E == null)
    {
      a(e());
      return;
    }
    a(e(), this.E);
  }

  public void onDestroy()
  {
    try
    {
      if (this.u != null)
      {
        this.u.release();
        this.u = null;
      }
      this.D.a();
      this.C.a();
      this.o = true;
      super.onDestroy();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      while (true)
        localIllegalStateException.printStackTrace();
    }
  }

  protected void onPause()
  {
    super.onPause();
    this.u.release();
    this.u = null;
    if ((this.A) && (this.t != null))
      a(2);
    this.C.a();
    this.o = true;
  }

  protected void onResume()
  {
    super.onResume();
    if (this.u == null)
    {
      this.u = ((PowerManager)getSystemService("power")).newWakeLock(10, "C2C_PAYEE");
      this.u.acquire();
    }
    if (this.A)
    {
      if (this.x == null)
        this.x = new h(this, (byte)0);
      g();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.FacePayeeActivity
 * JD-Core Version:    0.6.2
 */