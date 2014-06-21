package com.alipay.mobile.onsitepay.payer.barcode;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdReq;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.onsitepay.payer.AutoPaySuccessActivity;
import com.alipay.mobile.onsitepay.payer.BasicFacePayerActivity;
import com.alipay.mobile.onsitepay.payer.confirm.C2BConfirmActivity_;
import com.alipay.mobile.onsitepay.payer.confirm.C2CConfirmActivity_;
import com.alipay.mobile.security.otp.OtpManager;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.List;
import org.json.JSONObject;

@EActivity(resName="barcode_pay_activity")
public class BarcodePayActivity extends BasicFacePayerActivity
{

  @ViewById(resName="titleBar")
  APTitleBar k;

  @ViewById(resName="barcode_image")
  SizeEventImageView l;

  @ViewById(resName="qrcode_image")
  SizeEventImageView m;

  @ViewById(resName="progress_horizontal")
  ProgressBar n;

  @ViewById(resName="state_text_container")
  LinearLayout o;

  @ViewById(resName="state_text")
  APTextView p;

  @ViewById(resName="deviceAuthLayout2")
  LinearLayout q;

  @ViewById(resName="barcode_main")
  RelativeLayout r;
  BroadcastReceiver s = new f(this);
  SizeEventImageView t;
  PopupWindow u;
  ScrollView v;
  View.OnClickListener w = new e(this);
  PopupWindow x = null;
  PowerManager.WakeLock y = null;

  @SuppressLint({"HandlerLeak"})
  private Handler z = new a(this);

  private void a(boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      this.p.setText("刷新中...");
      this.o.setVisibility(0);
      this.c = paramString;
      n();
      new StringBuilder("mDynamicId =").append(this.e).append(" dynamicIdType=").append(paramString).toString();
      if (StringUtils.isNotBlank(this.e))
      {
        dismissProgressDialog();
        if (this.o.getVisibility() == 0)
        {
          o();
          if (!paramBoolean1)
            break label146;
          this.p.setText("刷新成功");
        }
      }
    }
    while (true)
    {
      j();
      com.alipay.mobile.onsitepay.utils.j.a(this.e, "CODE_128", this.l, false);
      q();
      if (this.t != null)
        this.t.reFresh();
      return;
      showProgressDialog("");
      break;
      label146: this.o.setVisibility(8);
    }
  }

  private void b(String paramString)
  {
    try
    {
      if (this.u != null)
      {
        boolean bool = this.u.isShowing();
        if (bool != true);
      }
      while (true)
      {
        return;
        int i = com.alipay.mobile.onsitepay.e.b;
        View localView = LayoutInflater.from(this).inflate(i, null);
        this.t = ((SizeEventImageView)localView.findViewById(com.alipay.mobile.onsitepay.d.i));
        this.t.setScaleType(ImageView.ScaleType.MATRIX);
        this.t.setOnRefreshEventListener(new b(this, paramString));
        this.u = new PopupWindow(localView, -1, -1, true);
        this.u.setFocusable(true);
        this.u.setBackgroundDrawable(new BitmapDrawable());
        this.u.setOutsideTouchable(true);
        this.u.showAtLocation(localView, 119, 0, 0);
        this.t.setVisibility(0);
        localView.setOnClickListener(new c(this));
      }
    }
    finally
    {
    }
  }

  private void p()
  {
    this.z.removeMessages(101);
    this.z.removeMessages(102);
    i();
  }

  private void q()
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      int i = localDisplayMetrics.heightPixels;
      int j = localDisplayMetrics.widthPixels;
      new StringBuilder("width:").append(j).append(" height:").append(i).toString();
      new StringBuilder("Qrcode width:").append(this.m.getWidth()).append(" Qrcode height:").append(this.m.getHeight()).toString();
      com.alipay.mobile.onsitepay.utils.j.a(this.e, "QR_CODE", this.m, false, this.m.getWidth(), (int)(1.5D * this.m.getHeight()));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void r()
  {
    try
    {
      com.alipay.mobile.onsitepay.payer.sound.a.e(getApplicationContext(), "barcodePromptFlag", "true");
      View localView = LayoutInflater.from(this).inflate(com.alipay.mobile.onsitepay.e.d, null);
      this.x = new PopupWindow(localView, -1, -1, true);
      this.x.setFocusable(true);
      this.x.setBackgroundDrawable(new BitmapDrawable());
      this.x.setOutsideTouchable(true);
      this.x.showAtLocation(localView, 119, 0, 0);
      localView.setOnClickListener(this.w);
      ((LinearLayout)localView.findViewById(com.alipay.mobile.onsitepay.d.J)).setOnClickListener(this.w);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private boolean s()
  {
    String str = com.alipay.mobile.onsitepay.payer.sound.a.v(getApplicationContext(), "barcodePromptFlag");
    new StringBuilder("barcodePromptFlag=").append(str).toString();
    return "true".equals(str);
  }

  @UiThread
  protected void a(GetDynamicIdRes paramGetDynamicIdRes)
  {
    if ((paramGetDynamicIdRes != null) && (paramGetDynamicIdRes.success))
    {
      if (paramGetDynamicIdRes.dynamicId == null);
      for (String str = ""; ; str = paramGetDynamicIdRes.dynamicId)
      {
        this.e = str;
        this.d.add(this.e);
        new StringBuilder("获取动态ID成功 mDynamicId=").append(this.e).toString();
        a(true, "SC", false);
        return;
      }
    }
    p();
    a("系统繁忙，点击重试");
    this.e = "";
  }

  @UiThread
  protected void a(String paramString)
  {
    this.o.setVisibility(0);
    this.p.setText(paramString);
  }

  public final void a(JSONObject paramJSONObject, String paramString)
  {
    new StringBuilder("onAutoPaySuccess requestType=").append(paramString).append(" onAutoPaySuccess ").append(paramJSONObject).toString();
    String str1 = paramJSONObject.optString("amount");
    String str2 = paramJSONObject.optString("promoUrl");
    String str3 = paramJSONObject.optString("dynamicId");
    if ((this.u != null) && (this.u.isShowing()))
      this.u.dismiss();
    if (StringUtils.isNotBlank(str1));
    for (String str4 = "成功付款" + str1 + "元"; ; str4 = "")
    {
      BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.MONITOR;
      String str5 = this.e;
      String str6 = g();
      String[] arrayOfString1 = new String[5];
      arrayOfString1[0] = "kf";
      arrayOfString1[1] = paramString;
      arrayOfString1[2] = (System.currentTimeMillis() - this.j);
      arrayOfString1[3] = "y";
      arrayOfString1[4] = "alipayclient";
      AlipayLogAgent.writeLog(this, localBehaviourIdEnum1, "kf", null, null, null, null, null, "C2B", str5, str6, "-", arrayOfString1);
      BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.MONITOR;
      String str7 = this.e;
      String str8 = g();
      String[] arrayOfString2 = new String[5];
      arrayOfString2[0] = "kf";
      arrayOfString2[1] = "orderpay";
      arrayOfString2[2] = (System.currentTimeMillis() - this.j);
      arrayOfString2[3] = "y";
      arrayOfString2[4] = "alipayclient";
      AlipayLogAgent.writeLog(this, localBehaviourIdEnum2, "kf", null, null, null, null, null, "ZD", str7, str8, "-", arrayOfString2);
      this.z.sendEmptyMessage(102);
      Intent localIntent = new Intent(this, AutoPaySuccessActivity.class);
      localIntent.putExtra("needPayResultAck", true);
      localIntent.putExtra("paysucceedMsg", str4);
      localIntent.putExtra("dynamicId", str3);
      localIntent.putExtra("promoUrl", str2);
      this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
      return;
    }
  }

  protected final void b()
  {
    if (this.v == null)
    {
      this.v = ((ScrollView)LayoutInflater.from(this).inflate(R.layout.ext_flow_tip_view, null));
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      int i = this.k.getMeasuredHeight();
      if (i <= 0)
      {
        DeviceInfo localDeviceInfo = DeviceInfo.getInstance();
        this.k.measure(localDeviceInfo.getmScreenWidth(), localDeviceInfo.getScreenHeight());
        i = this.k.getMeasuredHeight();
      }
      new StringBuilder("measuredHeight = ").append(i).toString();
      localLayoutParams.setMargins(0, i, 0, 0);
      this.r.addView(this.v, localLayoutParams);
    }
    APFlowTipView localAPFlowTipView = (APFlowTipView)this.v.getChildAt(0);
    localAPFlowTipView.resetFlowTipType(16);
    localAPFlowTipView.setTips(getString(R.string.flow_network_error));
    localAPFlowTipView.setAction(getString(R.string.tryAgin), new d(this));
    this.v.setVisibility(0);
  }

  public final void b(JSONObject paramJSONObject, String paramString)
  {
    new StringBuilder("onAutoPaySuccess requestType=").append(paramString).append(" onAutoPaySuccess ").append(paramJSONObject).toString();
    String str1 = f().getUserInfo().getExtern_token();
    Intent localIntent = new Intent();
    localIntent.putExtra("fromAppid", "20000056");
    localIntent.putExtra("responseStr", paramJSONObject.toString());
    localIntent.putExtra("extern_token", str1);
    localIntent.setClass(this, C2BConfirmActivity_.class);
    i();
    this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str2 = this.e;
    String str3 = g();
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "kf";
    arrayOfString[1] = paramString;
    arrayOfString[2] = (System.currentTimeMillis() - this.j);
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    AlipayLogAgent.writeLog(this, localBehaviourIdEnum, "kf", null, null, null, null, null, "C2B", str2, str3, "-", arrayOfString);
  }

  public final void c(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject.isNull("payeeName"));
    for (String str1 = ""; ; str1 = paramJSONObject.optString("payeeName"))
    {
      String str2 = paramJSONObject.optString("payeeAccount");
      String str3 = paramJSONObject.optString("headImageUrl");
      String str4 = paramJSONObject.optString("dynamicId");
      String str5 = f().getUserInfo().getExtern_token();
      Intent localIntent = new Intent();
      localIntent.putExtra("dynamicId", str4);
      localIntent.putExtra("extern_token", str5);
      localIntent.putExtra("fromAppid", "20000056");
      localIntent.putExtra("payeeName", str1);
      localIntent.putExtra("payeeUserId", "");
      localIntent.putExtra("headImageUrl", str3);
      localIntent.putExtra("payeeAccount", str2);
      localIntent.putExtra("c2cpaytype", "otp");
      localIntent.setClass(this, C2CConfirmActivity_.class);
      this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
      Context localContext = getApplicationContext();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
      String str6 = this.e;
      String str7 = g();
      String[] arrayOfString = new String[5];
      arrayOfString[0] = "kf";
      arrayOfString[1] = paramString;
      arrayOfString[2] = (System.currentTimeMillis() - this.j);
      arrayOfString[3] = "y";
      arrayOfString[4] = "alipayclient";
      AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, null, null, null, null, "C2C", str6, str7, "-", arrayOfString);
      return;
    }
  }

  @Background
  protected void d()
  {
    try
    {
      GetDynamicIdReq localGetDynamicIdReq = new GetDynamicIdReq();
      localGetDynamicIdReq.type = "bar_code";
      GetDynamicIdRes localGetDynamicIdRes = c().getDynamicId(localGetDynamicIdReq);
      this.g = System.currentTimeMillis();
      a(localGetDynamicIdRes);
      return;
    }
    catch (Exception localException)
    {
      this.e = "";
      b();
    }
  }

  protected final String h()
  {
    return e().getDynamicOtp(OtpManager.OTP_BARCODE);
  }

  protected final boolean k()
  {
    return true;
  }

  @AfterViews
  protected final void m()
  {
    this.n.setProgress(1440);
    this.l.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    this.m.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    findViewById(com.alipay.mobile.onsitepay.d.aH).setOnClickListener(new g(this));
    this.l.setOnRefreshEventListener(new h(this));
    this.m.setOnRefreshEventListener(new i(this));
    this.m.setOnClickListener(new j(this));
    this.l.setOnClickListener(new k(this));
    this.k.setGenericButtonListener(new l(this));
    this.q.setOnClickListener(new m(this));
    a(this.s);
    l();
  }

  @UiThread
  protected void n()
  {
    if (this.h)
    {
      this.q.setVisibility(0);
      return;
    }
    this.q.setVisibility(4);
  }

  @UiThread(delay=1000L)
  public void o()
  {
    this.o.setVisibility(4);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
    localAlipayLogInfo.appID = "20000056";
    localAlipayLogInfo.viewID = "20000056Home";
    AlipayLogAgent.writeLog(getApplicationContext(), localAlipayLogInfo);
  }

  public void onDestroy()
  {
    if (this.y != null)
    {
      this.y.release();
      this.y = null;
    }
    super.onDestroy();
  }

  protected void onPause()
  {
    p();
    if (this.y != null)
      this.y.release();
    this.y = null;
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    if (this.y == null)
      this.y = ((PowerManager)getSystemService("power")).newWakeLock(26, "My Lock");
    this.y.acquire();
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.screenBrightness = 1.0F;
    getWindow().setAttributes(localLayoutParams);
    this.z.sendEmptyMessage(102);
  }

  protected void onStart()
  {
    super.onStart();
    a(this.s);
  }

  protected void onStop()
  {
    p();
    b(this.s);
    if ((this.u != null) && (this.u.isShowing()))
      this.u.dismiss();
    super.onStop();
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    new StringBuilder("onWindowFocusChanged hasFocus=").append(paramBoolean).append(" checkSkip()=").append(s()).toString();
    if ((paramBoolean) && (!s()))
      r();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.BarcodePayActivity
 * JD-Core Version:    0.6.2
 */