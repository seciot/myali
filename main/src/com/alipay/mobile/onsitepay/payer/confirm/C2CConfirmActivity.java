package com.alipay.mobile.onsitepay.payer.confirm;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.common.helper.HideUtils;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.f;
import com.alipay.mobile.onsitepay.utils.g;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.lang.reflect.Method;

@EActivity(resName="facepayment_c2c_confirminfor")
public class C2CConfirmActivity extends BasicConfirmActivity
  implements View.OnClickListener
{

  @ViewById(resName="numberKeyLayout")
  protected LinearLayout A;

  @ViewById(resName="numberPayLayout")
  protected RelativeLayout B;

  @ViewById(resName="headImageLayout")
  protected LinearLayout C;

  @ViewById(resName="c2cLayout")
  protected LinearLayout D;

  @ViewById(resName="pay_text")
  protected APTextView E;

  @ViewById(resName="titleBar")
  protected APTitleBar F;
  protected DeviceInfo G;
  private String H = "";
  private String I = "";
  private String J = "";
  private String K = "";
  private String L = "otp";
  private EditTextHasNullChecker M = new EditTextHasNullChecker();
  private g N;

  @ViewById(resName="creatQuickPay")
  protected APButton g = null;

  @ViewById(resName="personNameTextView")
  protected APTextView h = null;

  @ViewById(resName="accountTextView")
  protected APTextView i = null;

  @ViewById(resName="headImage")
  protected CircularImageView j = null;

  @ViewById(resName="paymentEdit")
  protected APInputBox k = null;

  @ViewById(resName="digitkeypad_1")
  protected APButton l;

  @ViewById(resName="digitkeypad_2")
  protected APButton m;

  @ViewById(resName="digitkeypad_3")
  protected APButton n;

  @ViewById(resName="digitkeypad_4")
  protected APButton o;

  @ViewById(resName="digitkeypad_5")
  protected APButton p;

  @ViewById(resName="digitkeypad_6")
  protected APButton q;

  @ViewById(resName="digitkeypad_7")
  protected APButton r;

  @ViewById(resName="digitkeypad_8")
  protected APButton s;

  @ViewById(resName="digitkeypad_9")
  protected APButton t;

  @ViewById(resName="digitkeypad_decimal")
  protected APButton u;

  @ViewById(resName="digitkeypad_0")
  protected APButton v;

  @ViewById(resName="digitkeypad_c")
  protected APButton w;

  @ViewById(resName="keypadLayout1")
  protected LinearLayout x;

  @ViewById(resName="keypadLayout2")
  protected LinearLayout y;

  @ViewById(resName="keypadLayout3")
  protected LinearLayout z;

  private void d(String paramString)
  {
    int i1 = this.k.getEtContent().getSelectionStart();
    this.k.getEtContent().getEditableText().insert(i1, paramString);
    String str;
    int i2;
    if (this.k.getInputedText() != null)
    {
      str = this.k.getInputedText().trim();
      i2 = str.indexOf(".");
      if (i2 != -1)
        break label74;
    }
    label74: 
    while (-1 + (str.length() - i2) <= 2)
    {
      return;
      str = "";
      break;
    }
    this.k.getEtContent().getEditableText().delete(i2 + 3, i2 + 4);
  }

  @UiThread
  protected void a(Bitmap paramBitmap)
  {
    this.j.setImageBitmap(paramBitmap);
  }

  protected final boolean b()
  {
    return false;
  }

  // ERROR //
  @com.googlecode.androidannotations.annotations.Background
  protected void c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 178	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:getApplicationContext	()Landroid/content/Context;
    //   4: getstatic 184	com/alipay/mobile/common/logagent/BehaviourIdEnum:MONITOR	Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    //   7: ldc 186
    //   9: aconst_null
    //   10: aload_0
    //   11: getfield 189	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:f	Ljava/lang/String;
    //   14: aconst_null
    //   15: aconst_null
    //   16: aconst_null
    //   17: ldc 191
    //   19: aload_0
    //   20: getfield 193	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:b	Ljava/lang/String;
    //   23: aload_0
    //   24: invokevirtual 195	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:a	()Ljava/lang/String;
    //   27: ldc 197
    //   29: iconst_5
    //   30: anewarray 144	java/lang/String
    //   33: dup
    //   34: iconst_0
    //   35: ldc 186
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: ldc 199
    //   42: aastore
    //   43: dup
    //   44: iconst_2
    //   45: ldc 97
    //   47: aastore
    //   48: dup
    //   49: iconst_3
    //   50: ldc 200
    //   52: aastore
    //   53: dup
    //   54: iconst_4
    //   55: ldc 202
    //   57: aastore
    //   58: invokestatic 208	com/alipay/mobile/common/logagent/AlipayLogAgent:writeLog	(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   61: ldc 210
    //   63: aload_0
    //   64: getfield 109	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:L	Ljava/lang/String;
    //   67: invokevirtual 214	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifeq +74 -> 144
    //   73: new 216	com/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq
    //   76: dup
    //   77: invokespecial 217	com/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq:<init>	()V
    //   80: astore 4
    //   82: aload 4
    //   84: aload_0
    //   85: getfield 193	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:b	Ljava/lang/String;
    //   88: putfield 220	com/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq:dynamicId	Ljava/lang/String;
    //   91: aload 4
    //   93: aload_1
    //   94: putfield 223	com/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq:payMoney	Ljava/lang/String;
    //   97: aload 4
    //   99: aload_0
    //   100: getfield 105	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:K	Ljava/lang/String;
    //   103: putfield 226	com/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq:payeeUserId	Ljava/lang/String;
    //   106: invokestatic 229	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:c	()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
    //   109: aload 4
    //   111: invokeinterface 235 2 0
    //   116: astore 5
    //   118: aload 5
    //   120: astore_3
    //   121: new 237	java/lang/StringBuilder
    //   124: dup
    //   125: ldc 239
    //   127: invokespecial 241	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: aload_3
    //   131: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: pop
    //   138: aload_0
    //   139: aload_3
    //   140: invokevirtual 251	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:b	(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    //   143: return
    //   144: new 253	com/alipay/livetradeprod/core/model/rpc/SoundWavePayReq
    //   147: dup
    //   148: invokespecial 254	com/alipay/livetradeprod/core/model/rpc/SoundWavePayReq:<init>	()V
    //   151: astore 8
    //   153: aload 8
    //   155: aload_0
    //   156: getfield 193	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:b	Ljava/lang/String;
    //   159: putfield 255	com/alipay/livetradeprod/core/model/rpc/SoundWavePayReq:dynamicId	Ljava/lang/String;
    //   162: aload 8
    //   164: aload_1
    //   165: putfield 256	com/alipay/livetradeprod/core/model/rpc/SoundWavePayReq:payMoney	Ljava/lang/String;
    //   168: invokestatic 229	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:c	()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
    //   171: aload 8
    //   173: invokeinterface 260 2 0
    //   178: astore 9
    //   180: aload 9
    //   182: astore_3
    //   183: goto -62 -> 121
    //   186: astore_2
    //   187: aconst_null
    //   188: astore_3
    //   189: aload_0
    //   190: invokevirtual 263	com/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity:dismissProgressDialog	()V
    //   193: goto -55 -> 138
    //   196: astore 6
    //   198: goto -9 -> 189
    //
    // Exception table:
    //   from	to	target	type
    //   61	118	186	java/lang/Exception
    //   144	180	186	java/lang/Exception
    //   121	138	196	java/lang/Exception
  }

  @AfterViews
  protected final void e()
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      int i5 = localDisplayMetrics.heightPixels;
      int i6 = localDisplayMetrics.widthPixels;
      new StringBuilder("width:").append(i6).append(" height:").append(i5).toString();
      if (i5 <= 1000)
        this.E.setVisibility(8);
      label80: if (this.f.equals("20000056"))
        this.F.setTitleText("付款码");
      while (true)
      {
        APEditText localAPEditText = this.k.getEtContent();
        try
        {
          Class[] arrayOfClass2 = new Class[1];
          arrayOfClass2[0] = Boolean.TYPE;
          Method localMethod2 = EditText.class.getMethod("setShowSoftInputOnFocus", arrayOfClass2);
          localMethod2.setAccessible(false);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Boolean.valueOf(false);
          localMethod2.invoke(localAPEditText, arrayOfObject2);
          this.g.setClickable(true);
          this.g.setOnClickListener(this);
          this.M.addNeedEnabledButton(this.g);
          this.h.setText(this.H);
          this.i.setText(HideUtils.hide(this.I, "hideaccount"));
          this.j.setImageBitmap(BitmapFactory.decodeResource(getApplication().getResources(), R.drawable.user_info_area_portrait_default));
          this.l.setOnClickListener(this);
          this.m.setOnClickListener(this);
          this.n.setOnClickListener(this);
          this.o.setOnClickListener(this);
          this.p.setOnClickListener(this);
          this.q.setOnClickListener(this);
          this.r.setOnClickListener(this);
          this.s.setOnClickListener(this);
          this.t.setOnClickListener(this);
          this.u.setOnClickListener(this);
          this.v.setOnClickListener(this);
          this.w.setOnClickListener(this);
          this.G = DeviceInfo.createInstance(this.D.getContext());
          int i1 = this.G.getScreenHeight() / 12;
          int i2 = this.G.getScreenHeight() / 85;
          int i3 = this.G.getScreenHeight() / 42;
          int i4 = this.G.getScreenHeight() / 28;
          LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)this.l.getLayoutParams();
          localLayoutParams1.height = i1;
          LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)this.v.getLayoutParams();
          localLayoutParams2.height = i1;
          RelativeLayout.LayoutParams localLayoutParams3 = (RelativeLayout.LayoutParams)this.w.getLayoutParams();
          localLayoutParams3.height = (i2 + i1 * 2);
          LinearLayout.LayoutParams localLayoutParams4 = (LinearLayout.LayoutParams)this.g.getLayoutParams();
          localLayoutParams4.height = (i2 + i1 * 2);
          localLayoutParams4.topMargin = i2;
          LinearLayout.LayoutParams localLayoutParams5 = (LinearLayout.LayoutParams)this.x.getLayoutParams();
          localLayoutParams5.bottomMargin = i2;
          RelativeLayout.LayoutParams localLayoutParams6 = (RelativeLayout.LayoutParams)this.A.getLayoutParams();
          localLayoutParams6.topMargin = i3;
          this.A.setPadding(0, 0, 0, i3);
          LinearLayout.LayoutParams localLayoutParams7 = (LinearLayout.LayoutParams)this.B.getLayoutParams();
          this.B.setPadding(0, i3, 0, 0);
          localLayoutParams7.topMargin = i4;
          LinearLayout.LayoutParams localLayoutParams8 = (LinearLayout.LayoutParams)this.C.getLayoutParams();
          localLayoutParams8.topMargin = i3;
          LinearLayout.LayoutParams localLayoutParams9 = (LinearLayout.LayoutParams)this.h.getLayoutParams();
          localLayoutParams9.topMargin = i3;
          LinearLayout.LayoutParams localLayoutParams10 = (LinearLayout.LayoutParams)this.i.getLayoutParams();
          localLayoutParams10.topMargin = i3;
          this.l.setLayoutParams(localLayoutParams1);
          this.m.setLayoutParams(localLayoutParams1);
          this.n.setLayoutParams(localLayoutParams1);
          this.o.setLayoutParams(localLayoutParams1);
          this.p.setLayoutParams(localLayoutParams1);
          this.q.setLayoutParams(localLayoutParams1);
          this.r.setLayoutParams(localLayoutParams1);
          this.s.setLayoutParams(localLayoutParams1);
          this.t.setLayoutParams(localLayoutParams1);
          this.u.setLayoutParams(localLayoutParams1);
          this.v.setLayoutParams(localLayoutParams2);
          this.w.setLayoutParams(localLayoutParams3);
          this.g.setLayoutParams(localLayoutParams4);
          this.x.setLayoutParams(localLayoutParams5);
          this.y.setLayoutParams(localLayoutParams5);
          this.z.setLayoutParams(localLayoutParams5);
          this.A.setLayoutParams(localLayoutParams6);
          this.B.setLayoutParams(localLayoutParams7);
          this.C.setLayoutParams(localLayoutParams8);
          this.h.setLayoutParams(localLayoutParams9);
          this.i.setLayoutParams(localLayoutParams10);
          this.k.getEtContent().addTextChangedListener(this.M);
          this.M.addNeedCheckView(this.k.getEtContent());
          this.k.getEtContent().setTypeface(Typeface.DEFAULT_BOLD, 1);
          this.k.getEtContent().requestFocus();
          localImageLoaderService = (ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName());
          if (TextUtils.isEmpty(this.J))
          {
            this.j.setImageBitmap(BitmapFactory.decodeResource(getApplicationContext().getResources(), R.drawable.user_info_area_portrait_default));
            d();
            return;
            if (!this.f.equals("10000014"))
              continue;
            this.F.setTitleText("当面付");
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            ImageLoaderService localImageLoaderService;
            try
            {
              Class[] arrayOfClass1 = new Class[1];
              arrayOfClass1[0] = Boolean.TYPE;
              Method localMethod1 = EditText.class.getMethod("setSoftInputShownOnFocus", arrayOfClass1);
              localMethod1.setAccessible(false);
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = Boolean.valueOf(false);
              localMethod1.invoke(localAPEditText, arrayOfObject1);
            }
            catch (Exception localException3)
            {
              this.k.setInputType(0);
            }
            continue;
            localImageLoaderService.startLoad(null, null, this.J, new j(this), -1, -1, new k(this));
          }
        }
      }
    }
    catch (Exception localException1)
    {
      break label80;
    }
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    String str1;
    String str2;
    String str3;
    l locall;
    String str4;
    m localm;
    if (i1 == d.q)
    {
      this.g.setClickable(false);
      if (this.k.getInputedText() == null)
        break label478;
      str1 = this.k.getInputedText().trim();
      this.g.setClickable(true);
      if (str1.matches("0*\\.?0{0,2}"))
        break label495;
      str2 = "给   " + this.H + " 付款" + this.k.getInputedText() + "元？";
      str3 = getApplication().getResources().getString(f.c);
      locall = new l(this);
      str4 = getApplication().getString(f.a);
      localm = new m(this);
      if (this == null);
    }
    while (true)
    {
      try
      {
        if (!isFinishing())
        {
          if ((this.N != null) && (this.N.c() != null) && (this.N.c().isShowing()))
            this.N.b();
          this.N = new g(this, "asfasdfasdf", str2, str3, locall, str4, localm);
          this.N.c().setOnKeyListener(new o(this));
          this.N.a();
        }
        this.N.c().setCancelable(false);
        if (i1 == d.u)
          d("1");
        if (i1 == d.v)
          d("2");
        if (i1 == d.w)
          d("3");
        if (i1 == d.x)
          d("4");
        if (i1 == d.y)
          d("5");
        if (i1 == d.z)
          d("6");
        if (i1 == d.A)
          d("7");
        if (i1 == d.B)
          d("8");
        if (i1 == d.C)
          d("9");
        if (i1 == d.t)
          d("0");
        if ((i1 == d.E) && (!this.k.getEtContent().getEditableText().toString().contains(".")))
          d(".");
        if (i1 == d.D)
        {
          int i2 = this.k.getEtContent().getSelectionStart();
          if (i2 > 0)
            this.k.getEtContent().getEditableText().delete(i2 - 1, i2);
        }
        return;
        label478: str1 = "";
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      label495: alert(getApplication().getResources().getString(f.d), getApplication().getResources().getString(f.e), getApplication().getResources().getString(f.c), new n(this), null, null, Boolean.valueOf(true));
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.f = getIntent().getExtras().getString("fromAppid");
    this.b = getIntent().getExtras().getString("dynamicId");
    this.d = getIntent().getExtras().getString("extern_token");
    this.H = getIntent().getExtras().getString("payeeName");
    this.J = getIntent().getExtras().getString("headImageUrl");
    this.I = getIntent().getExtras().getString("payeeAccount");
    this.L = getIntent().getExtras().getString("c2cpaytype");
    this.K = getIntent().getExtras().getString("payeeUserId");
    this.e = "AUTOPAY";
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      AlipayLogAgent.writeLog(getApplicationContext(), BehaviourIdEnum.CLICKED, "-", "-", this.f, "-", "payConfirmView", "payFirstView", "backIcon");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.C2CConfirmActivity
 * JD-Core Version:    0.6.2
 */