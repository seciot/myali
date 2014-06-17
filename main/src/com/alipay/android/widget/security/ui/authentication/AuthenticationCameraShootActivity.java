package com.alipay.android.widget.security.ui.authentication;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.color;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.utils.DensityUtil;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.security.securitycommon.Utilz;
import java.util.List;

public class AuthenticationCameraShootActivity extends BaseActivity
{
  private View a;
  private CameraPreview b;
  private CameraPreview.CameraPreviewController c;
  private StateHelper d;
  private View e;
  private ImageView f;
  private View g;
  private ImageView h;
  private View i;
  private View j;
  private Button k;
  private Button l;
  private ViewGroup m;
  private TextView n;
  private TextView o;
  private Bitmap p = null;
  private Bitmap q = null;
  private ImageView r;
  private String s;
  private List<String> t = null;
  private String[] u = new String[2];
  private Handler v;
  private GestureDetector w;

  private void a(int paramInt)
  {
    this.i.setVisibility(paramInt);
    d();
  }

  private void a(String paramString)
  {
    try
    {
      int i1;
      if (paramString.equals("off"))
        i1 = R.drawable.r;
      while (true)
      {
        this.s = paramString;
        this.h.setImageResource(i1);
        this.c.a(this.s);
        return;
        if (paramString.equals("auto"))
        {
          i1 = R.drawable.q;
        }
        else
        {
          boolean bool = paramString.equals("on");
          i1 = 0;
          if (bool)
            i1 = R.drawable.s;
        }
      }
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  private void b()
  {
    if (this.d.a == 0)
      finish();
    do
    {
      return;
      if (this.d.a == 1)
      {
        this.d.a(0);
        return;
      }
      if (this.d.a == 2)
      {
        this.d.a(1);
        return;
      }
    }
    while (this.d.a != 3);
    this.d.a(2);
  }

  private void b(int paramInt)
  {
    this.h.setVisibility(paramInt);
    d();
  }

  private void b(String paramString)
  {
    alert(null, paramString, getString(R.string.af), new AuthenticationCameraShootActivity.11(this), null, null);
  }

  private void c()
  {
    if (this.c.c() == 1)
    {
      b(4);
      this.t = null;
      return;
    }
    this.t = this.c.a();
    if (this.t != null)
    {
      b(0);
      a(CameraPreview.CameraPreviewController.b());
      return;
    }
    b(4);
  }

  private void d()
  {
    if ((this.d.a == 1) || (this.d.a == 3))
    {
      this.g.setVisibility(8);
      e();
    }
    while ((this.d.a != 0) && (this.d.a != 2))
      return;
    if (((this.i.getVisibility() == 8) || (this.i.getVisibility() == 4)) && ((this.h.getVisibility() == 8) || (this.h.getVisibility() == 4)))
    {
      this.g.setVisibility(8);
      e();
      return;
    }
    this.g.setVisibility(0);
    this.e.setPadding(0, DensityUtil.dip2px(this, 40.0F), 0, 0);
    this.e.requestLayout();
  }

  private void e()
  {
    this.e.setPadding(0, 0, 0, 0);
    this.e.requestLayout();
  }

  private void f()
  {
    this.c.g();
    this.t = null;
  }

  private void g()
  {
    if (CameraHelper.a(this))
      try
      {
        if (this.c.f())
          c();
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    b("设备没有相机");
  }

  protected final void a()
  {
    String str = "";
    if (this.s.equals("on"))
    {
      str = "auto";
      if ((this.t != null) && (!this.t.contains(str)))
        str = "off";
    }
    while (true)
    {
      if (!"".equals(str))
        a(str);
      return;
      if (this.s.equals("auto"))
        str = "off";
      else if (this.s.equals("off"))
        if (CameraHelper.c())
          str = "auto";
        else
          str = "on";
    }
  }

  protected final void a(Bitmap paramBitmap)
  {
    Utilz.a(this.p);
    this.p = paramBitmap;
  }

  protected final void b(Bitmap paramBitmap)
  {
    Utilz.a(this.q);
    this.q = paramBitmap;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    this.a = LayoutInflater.from(this).inflate(R.layout.v, null);
    setContentView(this.a);
    this.v = new Handler();
    this.n = ((TextView)findViewById(R.id.bq));
    this.o = ((TextView)findViewById(R.id.br));
    this.r = ((ImageView)findViewById(R.id.gc));
    this.r.setOnClickListener(new AuthenticationCameraShootActivity.1(this));
    this.e = findViewById(R.id.ac);
    this.b = ((CameraPreview)findViewById(R.id.ab));
    this.b.setCallback(new AuthenticationCameraShootActivity.2(this));
    this.c = this.b.getPreviewController();
    this.g = findViewById(R.id.aa);
    this.f = ((ImageView)findViewById(R.id.cQ));
    this.m = ((ViewGroup)findViewById(R.id.cR));
    this.h = ((ImageView)findViewById(R.id.bh));
    this.h.setOnClickListener(new AuthenticationCameraShootActivity.3(this));
    a("off");
    this.i = findViewById(R.id.fU);
    this.i.setOnClickListener(new AuthenticationCameraShootActivity.4(this));
    this.j = findViewById(R.id.fK);
    this.j.setOnClickListener(new AuthenticationCameraShootActivity.5(this));
    this.k = ((Button)findViewById(R.id.af));
    this.k.setOnClickListener(new AuthenticationCameraShootActivity.6(this));
    this.l = ((Button)findViewById(R.id.cx));
    this.l.setOnClickListener(new AuthenticationCameraShootActivity.7(this));
    this.w = new GestureDetector(this, new AuthenticationCameraShootActivity.8(this));
    this.b.setOnTouchListener(new AuthenticationCameraShootActivity.9(this));
    this.d = new StateHelper(this);
    this.d.a(0);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    new StringBuilder("onDestroy imag0:").append(this.u[0]).append(" imag1:").append(this.u[1]).toString();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      b();
      return true;
    }
    return false;
  }

  protected void onPause()
  {
    super.onPause();
    f();
  }

  protected void onResume()
  {
    super.onResume();
    if ((CameraHelper.c(this)) && (CameraHelper.b(this)))
      a(0);
    while (true)
    {
      g();
      return;
      a(4);
    }
  }

  public class StateHelper
  {
    public int a = 0;
    public AuthenticationCameraShootActivity b;

    public StateHelper(AuthenticationCameraShootActivity arg2)
    {
      Object localObject;
      this.b = localObject;
    }

    private void a(int paramInt, String paramString)
    {
      if ((paramInt == 0) || (paramInt == 2));
      try
      {
        AuthenticationCameraShootActivity.m(AuthenticationCameraShootActivity.this).setVisibility(8);
        AuthenticationCameraShootActivity.n(AuthenticationCameraShootActivity.this).setVisibility(0);
        AuthenticationCameraShootActivity.n(AuthenticationCameraShootActivity.this).setText(paramString);
        return;
        if (paramInt == 1)
        {
          AuthenticationCameraShootActivity.n(AuthenticationCameraShootActivity.this).setVisibility(8);
          RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)AuthenticationCameraShootActivity.m(AuthenticationCameraShootActivity.this).getLayoutParams();
          int i = 0 - DeviceInfo.getInstance().getmScreenWidth() / 4;
          new StringBuilder("displacement: ").append(i).toString();
          localLayoutParams.leftMargin = i;
          SpannableString localSpannableString = new SpannableString(paramString);
          localSpannableString.setSpan(new ForegroundColorSpan(AuthenticationCameraShootActivity.this.getResources().getColor(R.color.c)), 5, paramString.length(), 34);
          AuthenticationCameraShootActivity.m(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.m(AuthenticationCameraShootActivity.this).setText(localSpannableString);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.getMessage();
      }
    }

    public final void a(int paramInt)
    {
      boolean bool = CameraHelper.a("motorola", "XT910");
      this.a = paramInt;
      new StringBuilder("enterState: ").append(paramInt).toString();
      if (paramInt == 0)
      {
        AuthenticationCameraShootActivity.o(AuthenticationCameraShootActivity.this).setVisibility(8);
        AuthenticationCameraShootActivity.p(AuthenticationCameraShootActivity.this).setVisibility(0);
        AuthenticationCameraShootActivity.q(AuthenticationCameraShootActivity.this).setVisibility(0);
        AuthenticationCameraShootActivity.r(AuthenticationCameraShootActivity.this).setVisibility(8);
        AuthenticationCameraShootActivity.q(AuthenticationCameraShootActivity.this).setText("取消");
        AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setVisibility(8);
        AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setImageBitmap(AuthenticationCameraShootActivity.g(AuthenticationCameraShootActivity.this));
        AuthenticationCameraShootActivity.e(AuthenticationCameraShootActivity.this).setVisibility(0);
        if (bool)
        {
          AuthenticationCameraShootActivity.t(AuthenticationCameraShootActivity.this);
          a(paramInt, AuthenticationCameraShootActivity.this.getString(R.string.aT));
        }
      }
      while (true)
      {
        AuthenticationCameraShootActivity.v(AuthenticationCameraShootActivity.this);
        return;
        AuthenticationCameraShootActivity.b(AuthenticationCameraShootActivity.this).d();
        break;
        if (paramInt == 1)
        {
          AuthenticationCameraShootActivity.o(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.p(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.q(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.r(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.q(AuthenticationCameraShootActivity.this).setText("重拍");
          AuthenticationCameraShootActivity.r(AuthenticationCameraShootActivity.this).setText("继续拍摄反面");
          AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setImageBitmap(AuthenticationCameraShootActivity.g(AuthenticationCameraShootActivity.this));
          AuthenticationCameraShootActivity.e(AuthenticationCameraShootActivity.this).setVisibility(8);
          if (bool)
            AuthenticationCameraShootActivity.u(AuthenticationCameraShootActivity.this);
          while (true)
          {
            a(paramInt, AuthenticationCameraShootActivity.this.getString(R.string.aU));
            break;
            AuthenticationCameraShootActivity.b(AuthenticationCameraShootActivity.this).e();
          }
        }
        if (paramInt == 2)
        {
          AuthenticationCameraShootActivity.o(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.o(AuthenticationCameraShootActivity.this).setImageBitmap(AuthenticationCameraShootActivity.g(AuthenticationCameraShootActivity.this));
          AuthenticationCameraShootActivity.p(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.q(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.r(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setImageBitmap(AuthenticationCameraShootActivity.h(AuthenticationCameraShootActivity.this));
          AuthenticationCameraShootActivity.e(AuthenticationCameraShootActivity.this).setVisibility(0);
          if (bool)
            AuthenticationCameraShootActivity.t(AuthenticationCameraShootActivity.this);
          while (true)
          {
            a(paramInt, AuthenticationCameraShootActivity.this.getString(R.string.aS));
            break;
            AuthenticationCameraShootActivity.b(AuthenticationCameraShootActivity.this).d();
          }
        }
        if (paramInt == 3)
        {
          AuthenticationCameraShootActivity.n(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.m(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.o(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.o(AuthenticationCameraShootActivity.this).setImageBitmap(AuthenticationCameraShootActivity.g(AuthenticationCameraShootActivity.this));
          AuthenticationCameraShootActivity.p(AuthenticationCameraShootActivity.this).setVisibility(8);
          AuthenticationCameraShootActivity.q(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.r(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.q(AuthenticationCameraShootActivity.this).setText("重拍");
          AuthenticationCameraShootActivity.r(AuthenticationCameraShootActivity.this).setText("提交照片");
          AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setVisibility(0);
          AuthenticationCameraShootActivity.s(AuthenticationCameraShootActivity.this).setImageBitmap(AuthenticationCameraShootActivity.h(AuthenticationCameraShootActivity.this));
          AuthenticationCameraShootActivity.e(AuthenticationCameraShootActivity.this).setVisibility(8);
          if (bool)
            AuthenticationCameraShootActivity.u(AuthenticationCameraShootActivity.this);
          else
            AuthenticationCameraShootActivity.b(AuthenticationCameraShootActivity.this).e();
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCameraShootActivity
 * JD-Core Version:    0.6.2
 */