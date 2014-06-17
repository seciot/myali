package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View.OnClickListener;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APScrollView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.card.NewExpressCardCallback;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="security_certified_bank")
public class SecurityCertifiedBankActivity extends SecurityBaseActivity
  implements NewExpressCardCallback
{

  @ViewById(resName="certified_addCardLayout")
  protected APScrollView d;

  @ViewById(resName="certified_addCardBn")
  protected APButton e;

  @ViewById(resName="networkFaild")
  protected APFlowTipView f;
  private a g;
  private CheckCertifyByMspRes h;
  private String i;
  private String j;
  private View.OnClickListener k = new SecurityCertifiedBankActivity.2(this);

  @AfterViews
  protected final void a()
  {
    this.f.setTips(getResources().getString(com.alipay.mobile.ui.R.string.flow_network_error));
    this.f.setAction(getResources().getString(com.alipay.mobile.ui.R.string.tryAgin), new SecurityCertifiedBankActivity.1(this));
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
      {
        this.j = localBundle.getString("currentLogonId");
        this.c = localBundle.getString("fromWhich");
        this.i = localBundle.getString("certifiedClass");
      }
    }
    new StringBuilder("logonId: ").append(this.j).append(" fromWhich: ").append(this.c).append(" paramClass:").append(this.i).toString();
    this.g = new a();
    if ((this.i != null) && (!this.i.equalsIgnoreCase("")));
    try
    {
      this.h = ((CheckCertifyByMspRes)JSON.parseObject(this.i, CheckCertifyByMspRes.class));
      if (this.h == null)
        return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        new StringBuilder("JSON error : ").append(localJSONException).toString();
      this.e.setOnClickListener(this.k);
    }
  }

  @Background
  protected void b()
  {
    showProgressDialog(getString(com.alipay.mobile.clientsecurity.R.string.cU), true, null);
    CheckCertifyByMspReq localCheckCertifyByMspReq = new CheckCertifyByMspReq();
    localCheckCertifyByMspReq.logonId = this.j;
    localCheckCertifyByMspReq.showBankList = false;
    Bundle localBundle = new Bundle();
    localBundle.putString("currentLogonId", this.j);
    try
    {
      CheckCertifyByMspRes localCheckCertifyByMspRes = this.g.a(localCheckCertifyByMspReq);
      dismissProgressDialog();
      if ((this == null) || (isFinishing()))
        return;
      if (localCheckCertifyByMspRes != null)
      {
        localBundle.putString("certifiedClass", JSON.toJSONString(localCheckCertifyByMspRes));
        if (localCheckCertifyByMspRes.isSuccess())
        {
          Intent localIntent1 = new Intent(AlipayApplication.getInstance(), SecurityCertifiedCardActivity_.class);
          localIntent1.putExtras(localBundle);
          a(localIntent1);
          return;
        }
        if ((localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5101")) || (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5102")) || (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5104")) || (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("5105")))
        {
          Intent localIntent2 = new Intent(AlipayApplication.getInstance(), SecurityCertifiedResultActivity_.class);
          localIntent2.putExtras(localBundle);
          a(localIntent2);
          return;
        }
        if (localCheckCertifyByMspRes.getResultCode().equalsIgnoreCase("202"))
        {
          alert(null, localCheckCertifyByMspRes.getMessage(), getResources().getString(com.alipay.mobile.clientsecurity.R.string.bi), null, null, null);
          return;
        }
        new StringBuilder("{[info=CheckCertifyByMspReq], [msg=").append(localCheckCertifyByMspRes.getMessage()).append("]}").toString();
        toast(localCheckCertifyByMspRes.getMessage(), 1);
        return;
      }
      toast(getResources().getString(com.alipay.mobile.clientsecurity.R.string.c), 1);
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
      toast(getResources().getString(com.alipay.mobile.clientsecurity.R.string.c), 1);
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
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedBankActivity
 * JD-Core Version:    0.6.2
 */