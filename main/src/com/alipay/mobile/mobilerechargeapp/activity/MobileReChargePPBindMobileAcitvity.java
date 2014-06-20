package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.inputfomatter.APSplitTextFormatter;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APButtonInputBox;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.mobilerechargeapp.MobileRechargeApp;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.utils.Validator;
import com.alipay.mobileprod.biz.pub.MobilePublicService;
import com.alipay.mobileprod.biz.pub.dto.AddMobileAccountReq;
import com.alipay.mobileprod.biz.pub.dto.AddMobileAccountRes;

public class MobileReChargePPBindMobileAcitvity extends BaseActivity
  implements View.OnClickListener
{
  protected APButtonInputBox a;
  protected APButton b;
  String c = "";
  String d = "";
  String e = "";
  private EditTextHasNullChecker f = new EditTextHasNullChecker();
  private MobilePublicService g;
  private UserInfo h;

  protected final void a()
  {
    boolean bool = this.mApp instanceof MobileRechargeApp;
    Bundle localBundle = null;
    if (bool)
      localBundle = ((MobileRechargeApp)this.mApp).getmParams();
    if (localBundle != null)
    {
      this.c = localBundle.getString("agreementId");
      this.d = localBundle.getString("instId");
      this.e = localBundle.getString("publicId");
    }
    this.b.setOnClickListener(this);
    this.a.getEtContent().addTextChangedListener(this.f);
    this.a.setLength(13);
    this.a.setTextFormatter(new APSplitTextFormatter("3,8"));
    this.f.addNeedCheckView(this.a.getEtContent());
    this.f.addNeedEnabledButton(this.b);
    AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService != null)
      this.h = localAuthService.getUserInfo();
    this.g = ((MobilePublicService)((RpcService)this.mApp.getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(MobilePublicService.class));
  }

  protected void a(String paramString)
  {
    AddMobileAccountReq localAddMobileAccountReq = new AddMobileAccountReq();
    localAddMobileAccountReq.setAgreementId(this.c);
    localAddMobileAccountReq.setInstId(this.d);
    localAddMobileAccountReq.setPublicId(this.e);
    localAddMobileAccountReq.setMobile(paramString);
    if (this.h != null)
      localAddMobileAccountReq.setFollowerId(this.h.getUserId());
    if (this.g != null);
    try
    {
      AddMobileAccountRes localAddMobileAccountRes2 = this.g.addMobileAccount(localAddMobileAccountReq);
      localAddMobileAccountRes1 = localAddMobileAccountRes2;
      dismissProgressDialog();
      if (localAddMobileAccountRes1 != null)
      {
        if (100 == localAddMobileAccountRes1.getResultStatus())
        {
          toast(getResources().getString(R.string.BundlesManagerImpl), 0);
          this.mApp.getMicroApplicationContext().finishApp("10000003", "10000003", null);
        }
      }
      else
        return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
    catch (Exception localException)
    {
      AddMobileAccountRes localAddMobileAccountRes1;
      while (true)
        localAddMobileAccountRes1 = null;
      alert("", localAddMobileAccountRes1.getMemo(), getResources().getString(R.string.BundlesManager), null, null, null);
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.C)
    {
      String str = this.a.getInputedText().replace(" ", "");
      new StringBuilder("onClick mobileNum=").append(str).toString();
      if (Validator.a(str))
      {
        showProgressDialog("");
        a(str);
      }
    }
    else
    {
      return;
    }
    alert("", getResources().getString(R.string.j), getResources().getString(R.string.BundlesManager), null, null, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileReChargePPBindMobileAcitvity
 * JD-Core Version:    0.6.2
 */