package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Toast;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.service.g;
import com.alipay.mobile.alipassapp.ui.app.AlipassApp;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.UUID;

@EActivity
public class AlipassPreviewActivity extends BaseActivity
{
  private View a;
  private String b;
  private String c;
  private Uri d;
  private com.alipay.mobile.alipassapp.biz.common.a e;
  private AlipassInfo f;
  private com.alipay.mobile.alipassapp.viewcontrol.a g;
  private boolean h = false;
  private boolean i = false;
  private com.alipay.mobile.alipassapp.biz.a j;
  private APTitleBar k;
  private APPullRefreshView l = null;
  private APRelativeLayout m = null;
  private com.alipay.mobile.alipassapp.biz.Bundle.AppBundle n;
  private final View.OnClickListener o = new be(this);

  // ERROR //
  private void b(String paramString)
  {
    // Byte code:
    //   0: new 72	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline
    //   3: dup
    //   4: invokespecial 73	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: aload_0
    //   10: getfield 61	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:e	Lcom/alipay/mobile/alipassapp/biz/common/a;
    //   13: aload_0
    //   14: getfield 58	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:b	Ljava/lang/String;
    //   17: invokevirtual 78	com/alipay/mobile/alipassapp/biz/common/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   20: invokevirtual 84	java/io/File:getPath	()Ljava/lang/String;
    //   23: invokevirtual 87	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setPassPath	(Ljava/lang/String;)V
    //   26: getstatic 92	com/alipay/mobile/alipassapp/ui/common/aq:b	Ljava/util/List;
    //   29: aload_0
    //   30: getfield 55	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:f	Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   33: invokevirtual 98	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   36: invokevirtual 103	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getChildType	()Ljava/lang/String;
    //   39: invokeinterface 109 2 0
    //   44: ifeq +93 -> 137
    //   47: aload_2
    //   48: ldc 111
    //   50: invokevirtual 114	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setBizType	(Ljava/lang/String;)V
    //   53: aload_2
    //   54: aload_0
    //   55: getfield 55	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:f	Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   58: invokevirtual 98	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   61: invokevirtual 117	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getPartnerId	()Ljava/lang/String;
    //   64: invokevirtual 120	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setPartnerId	(Ljava/lang/String;)V
    //   67: aload_2
    //   68: aload_0
    //   69: getfield 55	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:f	Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   72: invokevirtual 98	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   75: invokevirtual 123	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getSerialNumber	()Ljava/lang/String;
    //   78: invokevirtual 126	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setSerialNumber	(Ljava/lang/String;)V
    //   81: aload_2
    //   82: aload_0
    //   83: getfield 55	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:f	Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   86: invokevirtual 98	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   89: invokestatic 132	com/alibaba/fastjson/JSON:toJSONString	(Ljava/lang/Object;)Ljava/lang/String;
    //   92: invokevirtual 135	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setPassBaseInfo	(Ljava/lang/String;)V
    //   95: aload_0
    //   96: getfield 137	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:n	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   99: aload_1
    //   100: aload_2
    //   101: invokeinterface 142 3 0
    //   106: ifeq +40 -> 146
    //   109: aload_0
    //   110: aload_1
    //   111: invokevirtual 144	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:a	(Ljava/lang/String;)V
    //   114: ldc2_w 145
    //   117: invokestatic 152	java/lang/Thread:sleep	(J)V
    //   120: aload_0
    //   121: bipush 100
    //   123: aload_0
    //   124: invokevirtual 156	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:getResources	()Landroid/content/res/Resources;
    //   127: getstatic 162	com/alipay/mobile/alipassapp/R$string:alipass_add_success	I
    //   130: invokevirtual 168	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   133: invokevirtual 171	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:a	(ILjava/lang/String;)V
    //   136: return
    //   137: aload_2
    //   138: ldc 173
    //   140: invokevirtual 114	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline:setBizType	(Ljava/lang/String;)V
    //   143: goto -90 -> 53
    //   146: aload_0
    //   147: invokespecial 175	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:g	()V
    //   150: aload_0
    //   151: bipush 102
    //   153: aload_0
    //   154: invokevirtual 156	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:getResources	()Landroid/content/res/Resources;
    //   157: getstatic 178	com/alipay/mobile/alipassapp/R$string:alipass_add_failed	I
    //   160: invokevirtual 168	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   163: invokevirtual 171	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:a	(ILjava/lang/String;)V
    //   166: return
    //   167: astore 5
    //   169: aload_0
    //   170: invokespecial 175	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:g	()V
    //   173: aload_0
    //   174: bipush 102
    //   176: aload_0
    //   177: invokevirtual 156	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:getResources	()Landroid/content/res/Resources;
    //   180: getstatic 178	com/alipay/mobile/alipassapp/R$string:alipass_add_failed	I
    //   183: invokevirtual 168	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   186: invokevirtual 171	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:a	(ILjava/lang/String;)V
    //   189: return
    //   190: astore 4
    //   192: aload_0
    //   193: invokespecial 175	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:g	()V
    //   196: aload_0
    //   197: bipush 102
    //   199: aload_0
    //   200: invokevirtual 156	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:getResources	()Landroid/content/res/Resources;
    //   203: getstatic 178	com/alipay/mobile/alipassapp/R$string:alipass_add_failed	I
    //   206: invokevirtual 168	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   209: invokevirtual 171	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:a	(ILjava/lang/String;)V
    //   212: return
    //   213: astore_3
    //   214: aload_0
    //   215: invokespecial 175	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:g	()V
    //   218: aload_0
    //   219: bipush 102
    //   221: aload_0
    //   222: invokevirtual 156	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:getResources	()Landroid/content/res/Resources;
    //   225: getstatic 178	com/alipay/mobile/alipassapp/R$string:alipass_add_failed	I
    //   228: invokevirtual 168	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   231: invokevirtual 171	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:a	(ILjava/lang/String;)V
    //   234: return
    //   235: astore 6
    //   237: goto -117 -> 120
    //
    // Exception table:
    //   from	to	target	type
    //   81	114	167	com/alibaba/fastjson/JSONException
    //   114	120	167	com/alibaba/fastjson/JSONException
    //   120	136	167	com/alibaba/fastjson/JSONException
    //   146	166	167	com/alibaba/fastjson/JSONException
    //   81	114	190	java/sql/SQLException
    //   114	120	190	java/sql/SQLException
    //   120	136	190	java/sql/SQLException
    //   146	166	190	java/sql/SQLException
    //   81	114	213	java/lang/IllegalStateException
    //   114	120	213	java/lang/IllegalStateException
    //   120	136	213	java/lang/IllegalStateException
    //   146	166	213	java/lang/IllegalStateException
    //   114	120	235	java/lang/InterruptedException
  }

  private void f()
  {
    if ((this.mApp instanceof AlipassApp))
    {
      Bundle localBundle = ((AlipassApp)this.mApp).getAppBundle();
      if (localBundle != null)
      {
        this.e = new com.alipay.mobile.alipassapp.biz.common.a(this);
        this.c = localBundle.getString("sourceId");
        String str = localBundle.getString("path");
        this.b = (UUID.randomUUID().toString() + ".alipass");
        this.d = Uri.parse(str);
        if ("files".equals(localBundle.getString("entry")))
          this.i = true;
        c();
      }
    }
  }

  private void g()
  {
    runOnUiThread(new bf(this));
  }

  @UiThread
  public void a()
  {
    this.l.refreshFinished();
  }

  // ERROR //
  @UiThread
  void a(int paramInt, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 39	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:h	Z
    //   5: aload_0
    //   6: getfield 55	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:f	Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   9: astore 4
    //   11: aconst_null
    //   12: astore 5
    //   14: aload 4
    //   16: ifnull +32 -> 48
    //   19: aload_0
    //   20: getfield 55	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:f	Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   23: invokevirtual 98	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   26: astore 6
    //   28: aconst_null
    //   29: astore 5
    //   31: aload 6
    //   33: ifnull +15 -> 48
    //   36: aload_0
    //   37: getfield 55	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:f	Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   40: invokevirtual 98	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   43: invokevirtual 123	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getSerialNumber	()Ljava/lang/String;
    //   46: astore 5
    //   48: new 348	android/content/Intent
    //   51: dup
    //   52: invokespecial 349	android/content/Intent:<init>	()V
    //   55: astore 7
    //   57: new 297	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 298	java/lang/StringBuilder:<init>	()V
    //   64: aload_0
    //   65: getfield 293	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:c	Ljava/lang/String;
    //   68: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc_w 351
    //   74: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: iload_1
    //   78: invokevirtual 354	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   81: ldc_w 356
    //   84: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_2
    //   88: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: astore 8
    //   93: aload 5
    //   95: ifnull +124 -> 219
    //   98: new 297	java/lang/StringBuilder
    //   101: dup
    //   102: ldc_w 358
    //   105: invokespecial 360	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   108: aload 5
    //   110: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 314	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: astore 9
    //   118: aload 8
    //   120: aload 9
    //   122: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 314	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: astore 10
    //   130: aload 7
    //   132: ldc_w 361
    //   135: invokevirtual 365	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   138: pop
    //   139: aload 7
    //   141: ldc_w 366
    //   144: invokevirtual 365	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   147: pop
    //   148: aload 7
    //   150: ldc_w 367
    //   153: invokevirtual 365	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   156: pop
    //   157: aload 7
    //   159: aload 10
    //   161: invokestatic 320	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   164: invokevirtual 371	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   167: pop
    //   168: aload_0
    //   169: getfield 263	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:mApp	Lcom/alipay/mobile/framework/app/ActivityApplication;
    //   172: invokevirtual 377	com/alipay/mobile/framework/app/ActivityApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   175: aload_0
    //   176: getfield 263	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:mApp	Lcom/alipay/mobile/framework/app/ActivityApplication;
    //   179: aload 7
    //   181: invokeinterface 383 3 0
    //   186: aload_0
    //   187: invokevirtual 386	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:finish	()V
    //   190: aload_0
    //   191: invokespecial 387	com/alipay/mobile/framework/app/ui/BaseActivity:finish	()V
    //   194: return
    //   195: astore 16
    //   197: aload_0
    //   198: invokevirtual 386	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:finish	()V
    //   201: aload_0
    //   202: invokespecial 387	com/alipay/mobile/framework/app/ui/BaseActivity:finish	()V
    //   205: return
    //   206: astore 15
    //   208: aload_0
    //   209: invokevirtual 386	com/alipay/mobile/alipassapp/ui/AlipassPreviewActivity:finish	()V
    //   212: aload_0
    //   213: invokespecial 387	com/alipay/mobile/framework/app/ui/BaseActivity:finish	()V
    //   216: aload 15
    //   218: athrow
    //   219: ldc_w 389
    //   222: astore 9
    //   224: goto -106 -> 118
    //   227: astore_3
    //   228: return
    //
    // Exception table:
    //   from	to	target	type
    //   168	186	195	android/content/ActivityNotFoundException
    //   168	186	206	finally
    //   0	11	227	java/lang/Exception
    //   19	28	227	java/lang/Exception
    //   36	48	227	java/lang/Exception
    //   48	93	227	java/lang/Exception
    //   98	118	227	java/lang/Exception
    //   118	168	227	java/lang/Exception
    //   186	194	227	java/lang/Exception
    //   197	205	227	java/lang/Exception
    //   208	219	227	java/lang/Exception
  }

  @UiThread
  void a(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("userId", paramString);
    localBundle.putInt("action", 1);
    g.getBundle(localBundle);
  }

  @UiThread
  void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      bh localbh = new bh(this, (byte)0);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.b;
      localbh.execute(arrayOfString);
      return;
    }
    dismissProgressDialog();
    SimpleToast.makeToast(this, R.string.alipass_unzip_voucher_fail, 0).show();
    v(102, getResources().getString(R.string.alipass_add_failed));
  }

  @Background
  public void b()
  {
    try
    {
      Thread.sleep(1000L);
      a();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      new StringBuilder().append(AlipassPreviewActivity.class.getName()).toString();
    }
  }

  @Background
  void c()
  {
    if ((this.e != null) && (this.d != null))
    {
      a(this.e.a(this.d, this.b, this.i));
      return;
    }
    a(false);
  }

  @Background
  void d()
  {
    try
    {
      AuthService localAuthService1 = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      if ((localAuthService1 != null) && (localAuthService1.isLogin()) && (localAuthService1.getUserInfo() != null) && (localAuthService1.getUserInfo().getUserId() != null))
      {
        b(localAuthService1.getUserInfo().getUserId());
        return;
      }
      this.j.a();
      AuthService localAuthService2 = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      if ((localAuthService2 != null) && (localAuthService2.isLogin()) && (localAuthService2.getUserInfo() != null) && (localAuthService2.getUserInfo().getUserId() != null))
      {
        b(localAuthService1.getUserInfo().getUserId());
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      g();
      v(102, getResources().getString(R.string.alipass_add_failed));
      return;
      g();
      v(102, getResources().getString(R.string.alipass_add_failed));
      return;
    }
    catch (Exception localException)
    {
      g();
      v(102, getResources().getString(R.string.alipass_add_failed));
    }
  }

  @Background
  void e()
  {
    showProgressDialog("添加中", true, null);
    while (true)
    {
      try
      {
        String str = this.e.c(this.b);
        if (str == null)
        {
          g();
          return;
        }
        PassInfoResult localPassInfoResult = this.j.b(str);
        if ((localPassInfoResult != null) && (localPassInfoResult.success))
        {
          runOnUiThread(new bg(this));
          continue;
        }
      }
      catch (RpcException localRpcException)
      {
        throw localRpcException;
      }
      finally
      {
        dismissProgressDialog();
        this.h = true;
        finish();
      }
      g();
    }
  }

  public void onBackPressed()
  {
    if (this.i)
    {
      this.h = true;
      finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    try
    {
      Thread.sleep(500L);
      label6: super.onCreate(paramBundle);
      this.a = LayoutInflater.from(this).inflate(R.layout.main_alipass_detail, null);
      this.l = ((APPullRefreshView)this.a.findViewById(R.id.details_pull_refresh_container));
      this.l.setRefreshListener(new bd(this));
      this.m = ((APRelativeLayout)LayoutInflater.from(this).inflate(R.layout.alipass_detail_item, null));
      this.l.addView(this.m);
      setContentView(this.a);
      this.k = ((APTitleBar)findViewById(R.id.titlebar));
      this.k.setTitleText(getResources().getString(R.string.alipass_preview_title));
      this.j = new com.alipay.mobile.alipassapp.biz.c.a(this.mApp);
      this.n = new com.alipay.mobile.alipassapp.biz.ZResources.a.a(this);
      showProgressDialog("加载中...");
      f();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label6;
    }
  }

  protected void onDestroy()
  {
    if (this.n != null)
      this.n.getInstance();
    if ((!this.h) && ((this.mApp instanceof AlipassApp)));
    try
    {
      this.mApp.getMicroApplicationContext().startApp("", "09999987", ((AlipassApp)this.mApp).getAppBundle());
      super.onDestroy();
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      while (true)
        localAppLoadException.printStackTrace();
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    ((ViewGroup)findViewById(R.id.layout_container)).removeAllViews();
    ((ViewGroup)findViewById(R.id.layout_container)).setBackgroundDrawable(null);
    f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassPreviewActivity
 * JD-Core Version:    0.6.2
 */