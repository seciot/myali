package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.clientsecurity.R.dimen;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.misc.ExtStringUtil;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.common.utils.ImageUtil;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.BindPhoneCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.ui.R.color;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="account_info_detail_main")
public class AccountInfoActivity extends BaseActivity
  implements BindPhoneCallBack
{

  @ViewById(resName="action_bar")
  protected APTitleBar a;

  @ViewById(resName="account_head")
  protected APTableView b;

  @ViewById(resName="qrcode")
  protected APTableView c;

  @ViewById(resName="name")
  protected APTableView d;

  @ViewById(resName="account_name")
  protected APTableView e;

  @ViewById(resName="recharge")
  protected APTableView f;

  @ViewById(resName="bindphone")
  protected APTableView g;
  View.OnClickListener h = new b(this);
  View.OnClickListener i = new c(this);
  View.OnClickListener j = new d(this);
  View.OnClickListener k = new e(this);
  View.OnClickListener l = new f(this);
  private final String m = AccountInfoActivity.class.getSimpleName();
  private boolean n = false;
  private boolean o = false;
  private a p;
  private ConfigService q;
  private UserInfo r = null;
  private AuthService s;
  private ImageLoaderService t;
  private ImageLoaderListener u = new h(this);

  private void b()
  {
    new StringBuilder("initReCharge: ").append(this.r.getIsCertified()).toString();
    if (TextUtils.equals(this.r.getIsCertified(), "Y"))
    {
      this.f.setRightText(getResources().getString(R.string.cg));
      this.f.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
    }
    while (true)
    {
      this.f.setOnClickListener(this.k);
      return;
      this.f.setRightText(getResources().getString(R.string.ch));
      this.f.getRightTextView().setTextColor(getResources().getColor(R.color.text_light_blue));
    }
  }

  private void c()
  {
    if (TextUtils.isEmpty(this.r.getMobileNumber()))
    {
      this.g.setRightText(getResources().getString(R.string.aC));
      this.g.setOnClickListener(this.j);
      this.g.getRightTextView().setTextColor(getResources().getColor(R.color.text_light_blue));
      return;
    }
    if ((this.q.getConfig("Security_BindingPhone") != null) && ("YES".equals(this.q.getConfig("Security_BindingPhone"))))
    {
      this.g.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
      this.g.setRightText(SecurityUtil.a(this.r.getMobileNumber(), "hideaccount"));
      this.g.setOnClickListener(this.i);
      return;
    }
    this.g.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
    this.g.setRightText(SecurityUtil.a(this.r.getMobileNumber(), "hideaccount"));
    this.g.setClickable(false);
    this.g.getArrowImage().setVisibility(8);
  }

  private void d()
  {
    String str = this.r.getUserAvatar();
    if (ExtStringUtil.isEmpty(str))
      a(((BitmapDrawable)getResources().getDrawable(R.drawable.x)).getBitmap());
    while (true)
    {
      this.b.setOnClickListener(this.l);
      float f1 = ExtViewUtil.convertDpToPixel(60.0F, this);
      APImageView localAPImageView = this.b.getRightImageView();
      int i1 = (int)f1;
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localAPImageView.getLayoutParams();
      localLayoutParams.width = i1;
      localLayoutParams.height = i1;
      localLayoutParams.topMargin = ((int)ExtViewUtil.convertDpToPixel(20.0F, this));
      localLayoutParams.bottomMargin = ((int)ExtViewUtil.convertDpToPixel(20.0F, this));
      this.b.getRightImageView().setOnClickListener(new g(this, str));
      return;
      b(str);
    }
  }

  public void BindPhoneResult(boolean paramBoolean)
  {
    new StringBuilder("bind phone result: ").append(paramBoolean).toString();
    if (paramBoolean)
    {
      this.r = this.s.getUserInfo();
      c();
    }
  }

  @AfterViews
  protected final void a()
  {
    if (this.r == null)
    {
      finish();
      return;
    }
    d();
    this.d.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
    APTableView localAPTableView = this.d;
    if (TextUtils.isEmpty(this.r.getUserName()));
    for (String str = this.r.getLogonId(); ; str = this.r.getUserName())
    {
      localAPTableView.setRightText(str);
      this.e.getRightTextView().setSingleLine(false);
      this.e.getRightTextView().setMaxLines(2);
      this.e.setRightText(this.r.getLogonId());
      this.e.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
      b();
      c();
      this.a.setTitleText(getString(R.string.ak));
      this.c.setOnClickListener(new a(this));
      APButton localAPButton = this.a.getRightButton();
      this.a.setGenericButtonIconResource(R.drawable.AppBundle);
      localAPButton.setVisibility(0);
      localAPButton.setOnClickListener(this.h);
      return;
    }
  }

  @UiThread
  protected void a(Bitmap paramBitmap)
  {
    float f1 = getResources().getDimension(R.dimen.AppBundle);
    ExtViewUtil.convertDpToPixel(60.0F, this);
    if (paramBitmap != null)
    {
      this.b.setRightImage(ImageUtil.getRoundAngleImage(paramBitmap, f1, f1));
      return;
    }
    Drawable localDrawable = getResources().getDrawable(R.drawable.x);
    this.b.setRightImage(ImageUtil.getRoundAngleImage(((BitmapDrawable)localDrawable).getBitmap(), f1, f1));
  }

  final void a(String paramString)
  {
    LocalBroadcastManager.getInstance(this).registerReceiver(this.p, new IntentFilter(paramString));
  }

  @Background
  protected void b(String paramString)
  {
    this.t.startLoad(this.r.getUserId(), null, paramString, this.u, -1, -1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.mApp == null)
      return;
    this.t = ((ImageLoaderService)this.mApp.getServiceByInterface(ImageLoaderService.class.getName()));
    this.s = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.q = ((ConfigService)this.mApp.getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName()));
    this.r = this.s.getUserInfo();
    this.p = new a();
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }

  protected void onStart()
  {
    super.onStart();
    this.r = this.s.getUserInfo();
    if (this.r == null)
    {
      finish();
      return;
    }
    this.e.setRightText(this.r.getLogonId());
    c();
  }

  final class a extends BroadcastReceiver
  {
    a()
    {
    }

    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      String str = paramIntent.getAction();
      AccountInfoActivity.a(AccountInfoActivity.this, AccountInfoActivity.p(AccountInfoActivity.this).getUserInfo());
      AccountInfoActivity.d(AccountInfoActivity.this);
      new StringBuilder("name certified receive action: ").append(str).toString();
      if ("com.alipay.mobile.android.main.avatar.action.changed".equalsIgnoreCase(str))
        AccountInfoActivity.q(AccountInfoActivity.this);
      while ((!"com.alipay.security.namecertified".equalsIgnoreCase(str)) || (!paramIntent.getBooleanExtra("isCertified", false)))
        return;
      AccountInfoActivity.r(AccountInfoActivity.this);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.AccountInfoActivity
 * JD-Core Version:    0.6.2
 */