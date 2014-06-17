package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.card.NewExpressCardCallback;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="security_name_certified_result")
public class SecurityCertifiedResultActivity extends SecurityBaseActivity
  implements NewExpressCardCallback
{

  @ViewById(resName="certified_confirmBn")
  protected APButton d;

  @ViewById(resName="certified_viewBankList")
  protected APTableView e;

  @ViewById(resName="security_certified_result_image")
  protected APImageView f;

  @ViewById(resName="security_certified_result")
  protected APTextView g;

  @ViewById(resName="security_certified_result_tip")
  protected APTextView h;

  @ViewById(resName="security_certified_result_failTip")
  protected APTextView i;
  private String j;
  private CheckCertifyByMspRes k;
  private VerifyCertifyByMspRes l;
  private String m;
  private boolean n = false;
  private a o;
  private AuthService p;
  private View.OnClickListener q = new SecurityCertifiedResultActivity.2(this);

  @AfterViews
  protected final void a()
  {
    this.d.setOnClickListener(new SecurityCertifiedResultActivity.1(this));
    this.e.setOnClickListener(this.q);
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
      {
        this.j = localBundle.getString("currentLogonId");
        this.c = localBundle.getString("fromWhich");
        this.m = localBundle.getString("certifiedClass");
        if (this.c == null)
          this.c = "";
      }
    }
    new StringBuilder("logonId: ").append(this.j).append(" fromWhich: ").append(this.c).toString();
    this.o = new a();
    if (this.c.equalsIgnoreCase("cardActivity"))
    {
      if ((this.m != null) && (!this.m.equalsIgnoreCase("")));
      try
      {
        this.l = ((VerifyCertifyByMspRes)JSON.parseObject(this.m, VerifyCertifyByMspRes.class));
        if (this.l == null)
          return;
      }
      catch (JSONException localJSONException2)
      {
        while (true)
          new StringBuilder("JSON error : ").append(localJSONException2).toString();
        new StringBuilder("VerifyCertifyByMspRes result : ").append(this.l.isSuccess()).toString();
        this.e.setVisibility(8);
        if ((this.l.isSuccess()) || (this.l.getResultCode().equalsIgnoreCase("5105")))
        {
          this.i.setVisibility(8);
          this.h.setVisibility(0);
          this.f.setImageResource(R.drawable.e);
          this.g.setText(R.string.aY);
          this.h.setText(R.string.aZ);
          this.n = true;
          a("Y");
          return;
        }
        this.i.setVisibility(0);
        this.h.setVisibility(8);
        this.f.setImageResource(R.drawable.c);
        this.g.setText(R.string.aP);
        this.i.setText(this.l.getMessage());
        a("N");
        return;
      }
    }
    if ((this.m != null) && (!this.m.equalsIgnoreCase("")));
    try
    {
      this.k = ((CheckCertifyByMspRes)JSON.parseObject(this.m, CheckCertifyByMspRes.class));
      a(this.k);
      return;
    }
    catch (JSONException localJSONException1)
    {
      while (true)
        new StringBuilder("JSON error : ").append(localJSONException1).toString();
    }
  }

  @UiThread
  protected void a(CheckCertifyByMspRes paramCheckCertifyByMspRes)
  {
    if (paramCheckCertifyByMspRes == null)
      return;
    new StringBuilder("result id: ").append(paramCheckCertifyByMspRes.getResultCode()).append(" message: ").append(paramCheckCertifyByMspRes.getMessage()).toString();
    if (paramCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5105"))
    {
      this.e.setVisibility(8);
      this.i.setVisibility(8);
      this.h.setVisibility(0);
      this.f.setImageResource(R.drawable.e);
      this.g.setText(R.string.aY);
      this.h.setText(R.string.aZ);
      this.n = true;
      a("Y");
      return;
    }
    if (paramCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5102"))
    {
      this.e.setVisibility(0);
      this.i.setVisibility(0);
      this.h.setVisibility(8);
      this.e.setLeftText(getResources().getString(R.string.bb));
      this.f.setImageResource(R.drawable.c);
      this.g.setText(R.string.aP);
      this.i.setText(R.string.aQ);
      a("N");
      return;
    }
    this.e.setVisibility(0);
    this.i.setVisibility(0);
    this.h.setVisibility(8);
    this.e.setLeftText(getResources().getString(R.string.aX));
    this.f.setImageResource(R.drawable.d);
    this.g.setText(R.string.aW);
    this.i.setText(paramCheckCertifyByMspRes.getMessage());
    a("N");
  }

  @Background
  protected void a(String paramString)
  {
    if (this.p != null)
    {
      UserInfo localUserInfo = this.p.getUserInfo();
      if (localUserInfo != null)
      {
        AccountService localAccountService = (AccountService)this.mMicroApplicationContext.getExtServiceByInterface(AccountService.class.getName());
        localUserInfo.setIsCertified(paramString);
        if (localAccountService != null)
          localAccountService.addUserInfo(localUserInfo);
      }
    }
  }

  @Background
  protected void b()
  {
    showProgressDialog(getString(R.string.cU), true, null);
    CheckCertifyByMspReq localCheckCertifyByMspReq = new CheckCertifyByMspReq();
    localCheckCertifyByMspReq.logonId = this.j;
    localCheckCertifyByMspReq.showBankList = false;
    Bundle localBundle = new Bundle();
    localBundle.putString("currentLogonId", this.j);
    try
    {
      CheckCertifyByMspRes localCheckCertifyByMspRes = this.o.a(localCheckCertifyByMspReq);
      dismissProgressDialog();
      if ((this == null) || (isFinishing()))
        return;
      if (localCheckCertifyByMspRes != null)
      {
        localBundle.putString("certifiedClass", JSON.toJSONString(localCheckCertifyByMspRes));
        if (localCheckCertifyByMspRes.isSuccess())
        {
          Intent localIntent = new Intent(AlipayApplication.getInstance(), SecurityCertifiedCardActivity_.class);
          localIntent.putExtras(localBundle);
          a(localIntent);
          return;
        }
        if ((localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5101")) || (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5102")) || (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5104")) || (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5105")))
        {
          a(localCheckCertifyByMspRes);
          return;
        }
        if (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("202"))
        {
          alert(null, localCheckCertifyByMspRes.getMessage(), getResources().getString(R.string.bi), null, null, null);
          return;
        }
        new StringBuilder("{[info=CheckCertifyByMspReq], [msg=").append(localCheckCertifyByMspRes.getMessage()).append("]}").toString();
        toast(localCheckCertifyByMspRes.getMessage(), 1);
        return;
      }
      toast(getResources().getString(R.string.c), 1);
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=CheckCertifyByMspReq], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      return;
    }
    finally
    {
      do
        dismissProgressDialog();
      while ((this == null) || (isFinishing()));
      toast(getResources().getString(R.string.c), 1);
    }
  }

  public void callback(boolean paramBoolean)
  {
    if (paramBoolean)
      b();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.p = ((AuthService)this.mMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName()));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return paramInt == 4;
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedResultActivity
 * JD-Core Version:    0.6.2
 */