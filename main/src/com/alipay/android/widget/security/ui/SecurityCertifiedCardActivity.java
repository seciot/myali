package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APBankCardListItemView;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="security_certified_card")
public class SecurityCertifiedCardActivity extends SecurityBaseActivity
  implements CompoundButton.OnCheckedChangeListener
{

  @ViewById(resName="certified_bank_info")
  protected APBankCardListItemView d;

  @ViewById(resName="certified_name")
  protected APTableView e;

  @ViewById(resName="certified_ID")
  protected APTableView f;

  @ViewById(resName="certified_checkbox")
  protected APCheckboxWithLinkText g;

  @ViewById(resName="certified_agreeBn")
  protected APButton h;
  private a i;
  private CardInfo j;
  private String k = null;
  private CheckCertifyByMspRes l;
  private String m;
  private View.OnClickListener n = new SecurityCertifiedCardActivity.2(this);

  private void a(VerifyCertifyByMspRes paramVerifyCertifyByMspRes)
  {
    Intent localIntent = new Intent(this, SecurityCertifiedResultActivity_.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("currentLogonId", this.k);
    localBundle.putString("fromWhich", "cardActivity");
    localBundle.putString("certifiedClass", JSON.toJSONString(paramVerifyCertifyByMspRes));
    localIntent.putExtras(localBundle);
    a(localIntent);
  }

  @AfterViews
  protected final void a()
  {
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
      {
        this.k = localBundle.getString("currentLogonId");
        this.c = localBundle.getString("fromWhich");
        this.m = localBundle.getString("certifiedClass");
      }
    }
    new StringBuilder("logonId: ").append(this.k).toString();
    this.i = new a();
    if ((this.m != null) && (!this.m.equalsIgnoreCase("")));
    try
    {
      this.l = ((CheckCertifyByMspRes)JSON.parseObject(this.m, CheckCertifyByMspRes.class));
      if (this.l == null)
        return;
    }
    catch (JSONException localJSONException)
    {
      do
        while (true)
          new StringBuilder("JSON error : ").append(localJSONException).toString();
      while (this.l.cardInfo == null);
      this.j = this.l.cardInfo;
      new StringBuilder("name: ").append(this.j.name).append(" dimcertNo: ").append(this.j.dimcertNo).toString();
      this.d.setArrowGone();
      this.d.setLeftText(this.j.bankName);
      this.d.setLeftText2(this.j.cardNo);
      a(this.j.logo);
      this.e.getRightTextView().setTextColor(getResources().getColor(R.color.colorLightGray));
      this.e.setRightText(this.j.name);
      this.e.setArrowImageVisibility(8);
      this.f.getRightTextView().setTextColor(getResources().getColor(R.color.colorLightGray));
      this.f.setRightText(this.j.dimcertNo);
      this.f.setArrowImageVisibility(8);
      this.g.setTextViewUri("http://fun.alipay.com/bank/certify.htm");
      this.g.getCheckBox().setChecked(true);
      this.g.getCheckBox().setOnCheckedChangeListener(this);
      SecurityUtil.a(this.mApp, this.g, "http://fun.alipay.com/bank/certify.htm", getResources().getString(R.string.aV));
      this.h.setOnClickListener(this.n);
    }
  }

  @UiThread
  protected void a(Bitmap paramBitmap)
  {
    this.d.setLeftImage(paramBitmap);
  }

  @Background
  protected void a(String paramString)
  {
    a(paramString, new SecurityCertifiedCardActivity.1(this));
  }

  @Background
  protected void b()
  {
    showProgressDialog(getString(R.string.cU), true, null);
    try
    {
      VerifyCertifyByMspReq localVerifyCertifyByMspReq = new VerifyCertifyByMspReq();
      localVerifyCertifyByMspReq.certNo = this.j.certNo;
      localVerifyCertifyByMspReq.logonId = this.k;
      localVerifyCertifyByMspReq.name = this.j.name;
      localVerifyCertifyByMspReq.userId = this.j.userId;
      VerifyCertifyByMspRes localVerifyCertifyByMspRes = this.i.a(localVerifyCertifyByMspReq);
      dismissProgressDialog();
      if ((this == null) || (isFinishing()))
        return;
      if (localVerifyCertifyByMspRes != null)
      {
        if ((localVerifyCertifyByMspRes.isSuccess()) || (localVerifyCertifyByMspRes.getResultCode().equalsIgnoreCase("5105")))
        {
          a(localVerifyCertifyByMspRes);
          return;
        }
        if ((localVerifyCertifyByMspRes.getResultCode().equalsIgnoreCase("5103")) || (localVerifyCertifyByMspRes.getResultCode().equalsIgnoreCase("5104")))
        {
          a(localVerifyCertifyByMspRes);
          return;
        }
        if (localVerifyCertifyByMspRes.getResultCode().equalsIgnoreCase("202"))
        {
          alert(null, localVerifyCertifyByMspRes.getMessage(), getResources().getString(R.string.bi), null, null, null);
          return;
        }
        new StringBuilder("{[info=VerifyCardInfo], [msg=").append(localVerifyCertifyByMspRes.getMessage()).append("]}").toString();
        toast(localVerifyCertifyByMspRes.getMessage(), 0);
        return;
      }
      toast(getResources().getString(R.string.c), 0);
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=VerifyCardInfo], [msg=").append(localRpcException.getMessage()).append("]}").toString();
      return;
    }
    finally
    {
      do
        dismissProgressDialog();
      while ((this == null) || (isFinishing()));
      toast(getResources().getString(R.string.c), 0);
    }
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.h.setEnabled(paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedCardActivity
 * JD-Core Version:    0.6.2
 */