package com.alipay.android.phone.nfd.wifisdk.ui;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.siteprobe.biz.wifi.rpc.AuthProcessorFacade;
import com.alipay.siteprobe.core.model.rpc.AuthProcessorReq;
import com.alipay.siteprobe.core.model.rpc.AuthProcessorRsp;
import com.alipay.siteprobe.core.model.rpc.AuthVerifyReq;
import com.alipay.siteprobe.core.model.rpc.AuthVerifyRsp;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class WifiConnectingActivity extends BaseActivity
{
  protected boolean a;
  protected String b;
  protected ViewGroup c;
  protected ViewGroup d;
  protected Button e;
  protected TextView f;
  protected ImageView g;
  protected ImageView h;
  protected TextView i;
  protected TextView j;
  protected LinearLayout k;
  protected Animation l;
  protected Animation m;
  protected Animation n;
  protected Animation o;
  protected Animation p;
  protected Animation q;
  private j r;
  private TimerTask s;
  private Timer t = new Timer();
  private boolean u = false;
  private boolean v = false;
  private boolean w = false;
  private Handler x = new Handler(Looper.getMainLooper());

  private void i()
  {
    this.g.startAnimation(this.m);
    this.h.startAnimation(this.n);
  }

  private void j()
  {
    this.j.startAnimation(this.q);
  }

  private j k()
  {
    j localj = new j();
    AuthProcessorFacade localAuthProcessorFacade = (AuthProcessorFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(AuthProcessorFacade.class);
    AuthProcessorReq localAuthProcessorReq = new AuthProcessorReq();
    localAuthProcessorReq.clientType = "android";
    localAuthProcessorReq.wifiParams = this.b;
    AuthProcessorRsp localAuthProcessorRsp;
    try
    {
      localAuthProcessorRsp = localAuthProcessorFacade.processor(localAuthProcessorReq);
      if (!localAuthProcessorRsp.success)
      {
        localj.a = false;
        localj.b = localAuthProcessorRsp.otherAccessUrl;
        return localj;
      }
    }
    catch (Exception localException1)
    {
      localException1.getMessage();
      localj.a = false;
      localj.b = null;
      return localj;
    }
    if (!TextUtils.isEmpty(localAuthProcessorRsp.needUrl))
      try
      {
        HttpGet localHttpGet = new HttpGet(localAuthProcessorRsp.needUrl);
        HttpResponse localHttpResponse = new DefaultHttpClient().execute(localHttpGet);
        if (localHttpResponse.getStatusLine().getStatusCode() != 200)
        {
          localj.a = false;
          localj.b = localAuthProcessorRsp.otherAccessUrl;
          return localj;
        }
        AuthVerifyReq localAuthVerifyReq = new AuthVerifyReq();
        localAuthVerifyReq.input = EntityUtils.toString(localHttpResponse.getEntity(), "UTF-8");
        localAuthVerifyReq.wifiParams = this.b;
        if (!localAuthProcessorFacade.verify(localAuthVerifyReq).success)
        {
          localj.a = false;
          localj.b = localAuthProcessorRsp.otherAccessUrl;
          return localj;
        }
      }
      catch (Exception localException2)
      {
        localj.a = false;
        localj.b = localAuthProcessorRsp.otherAccessUrl;
        return localj;
      }
    localj.a = true;
    localj.c = localAuthProcessorRsp.gotoUrl;
    return localj;
  }

  protected final void a()
  {
    this.n.setAnimationListener(new a(this));
    this.o.setAnimationListener(new b(this));
    this.q.setAnimationListener(new c(this));
    this.p.setAnimationListener(new d(this));
  }

  protected final void b()
  {
    String str;
    if ((getIntent() != null) && (getIntent().getExtras() != null) && (getIntent().getExtras().getString("wifiParams") != null))
      str = getIntent().getExtras().getString("wifiParams");
    try
    {
      this.b = URLDecoder.decode(str, "UTF-8");
      this.e.setOnClickListener(new g(this));
      this.f.setOnClickListener(new h(this));
      i();
      c();
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        this.b = str;
    }
  }

  protected void c()
  {
    this.s = new e(this);
    this.t.schedule(this.s, 60000L);
    this.r = k();
    if (this.s != null)
      this.s.cancel();
    this.w = true;
    if (!this.v)
      d();
  }

  protected void d()
  {
    if ((this.r == null) || (this.b == null))
      finish();
    while (this.u != true)
      return;
    if (this.r.a)
    {
      j();
      return;
    }
    f();
  }

  protected final void e()
  {
    if (TextUtils.isEmpty(this.r.c))
    {
      new StringBuilder("gotoSuccess:wifiAuthModel.gotoUrl:").append(this.r.c).toString();
      finish();
      return;
    }
    Uri localUri = Uri.parse(this.r.c);
    String str = localUri.getQueryParameter("publicId");
    SharedPreferences localSharedPreferences = AlipayApplication.getInstance().getSharedPreferences("wifisdk_setting", 0);
    localSharedPreferences.edit().putString("wifisdk_setting_success_public_id", str);
    localSharedPreferences.edit().putLong("wifisdk_setting_success_timestamp", System.currentTimeMillis());
    ((SchemeService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName())).process(localUri);
    finish();
  }

  protected final void f()
  {
    this.c.setVisibility(0);
    this.d.setVisibility(8);
    if (TextUtils.isEmpty(this.r.b))
    {
      this.f.setVisibility(8);
      return;
    }
    this.f.setVisibility(0);
  }

  public final void g()
  {
    this.w = false;
    this.u = false;
    this.v = false;
    this.c.setVisibility(8);
    this.d.setVisibility(0);
    i();
    c();
  }

  public final void h()
  {
    if (TextUtils.isEmpty(this.r.b))
      return;
    try
    {
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.r.b)));
      finish();
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  public void onBackPressed()
  {
    this.a = true;
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.ui.WifiConnectingActivity
 * JD-Core Version:    0.6.2
 */