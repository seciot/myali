package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.card.ExpressCardService;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;

@EFragment
public abstract class BaseAuthenticationFragment extends Fragment
{
  protected ActivityApplication a;
  protected MicroApplicationContext b = AlipayApplication.getInstance().getMicroApplicationContext();
  public String c = "http://fun.alipay.com/bank/certify.htm";
  private AuthService d = (AuthService)this.b.getExtServiceByInterface(AuthService.class.getName());

  protected static <T> T a(Bundle paramBundle, Class<T> paramClass)
  {
    Object localObject1 = null;
    String str;
    if (paramBundle != null)
    {
      str = paramBundle.getString("certifiedResult");
      boolean bool = TextUtils.isEmpty(str);
      localObject1 = null;
      if (bool);
    }
    try
    {
      Object localObject2 = JSON.parseObject(str, paramClass);
      localObject1 = localObject2;
      return localObject1;
    }
    catch (JSONException localJSONException)
    {
      new StringBuilder("JSON error : ").append(localJSONException).toString();
    }
    return null;
  }

  protected static void a(boolean paramBoolean)
  {
    try
    {
      Intent localIntent = new Intent("com.alipay.security.namecertified");
      localIntent.putExtra("isCertified", paramBoolean);
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext()).sendBroadcast(localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final BaseFragmentActivity a()
  {
    return (BaseFragmentActivity)getActivity();
  }

  protected final void a(a parama)
  {
    ((ExpressCardService)this.a.getMicroApplicationContext().getExtServiceByInterface(ExpressCardService.class.getName())).newExpressCard(this.a.getAppId(), new BaseAuthenticationFragment.2(this, parama));
    AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "initiateBindCardView", "-", "-");
  }

  @Background
  protected void a(a parama, CardInfo paramCardInfo)
  {
    VerifyCertifyByMspReq localVerifyCertifyByMspReq = new VerifyCertifyByMspReq();
    localVerifyCertifyByMspReq.certNo = paramCardInfo.certNo;
    localVerifyCertifyByMspReq.logonId = ((BaseAuthenticationActivity)getActivity()).d();
    localVerifyCertifyByMspReq.name = paramCardInfo.name;
    localVerifyCertifyByMspReq.userId = paramCardInfo.userId;
    try
    {
      ((BaseFragmentActivity)getActivity()).showProgressDialog("认证中", true, null);
      localVerifyCertifyByMspRes = parama.a(localVerifyCertifyByMspReq);
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      if ((this == null) || (isRemoving()))
      {
        new StringBuilder().append(getClass().getName()).append(" is removing").toString();
        return;
      }
      if (localVerifyCertifyByMspRes != null)
        if ((localVerifyCertifyByMspRes.success) || ("5105".equalsIgnoreCase(localVerifyCertifyByMspRes.resultCode)))
        {
          Bundle localBundle1 = new Bundle();
          localBundle1.putBoolean("certifiedResult", localVerifyCertifyByMspRes.canUpgradeACertify);
          CertifiedSuccessShootFragment_ localCertifiedSuccessShootFragment_ = new CertifiedSuccessShootFragment_();
          localCertifiedSuccessShootFragment_.setArguments(localBundle1);
          localCertifiedSuccessShootFragment_.a = this.a;
          ((AuthenticationCertifiedActivity)getActivity()).a(localCertifiedSuccessShootFragment_, true);
          return;
        }
    }
    catch (RpcException localRpcException)
    {
      VerifyCertifyByMspRes localVerifyCertifyByMspRes;
      localRpcException.getMessage();
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      throw localRpcException;
      Bundle localBundle2 = new Bundle();
      String str = JSON.toJSONString(localVerifyCertifyByMspRes);
      localBundle2.putString("fromWhich", "VerifyCertifyByMspRes");
      localBundle2.putString("certifiedResult", str);
      CertifiedFailCardFragment_ localCertifiedFailCardFragment_ = new CertifiedFailCardFragment_();
      localCertifiedFailCardFragment_.setArguments(localBundle2);
      localCertifiedFailCardFragment_.a = this.a;
      ((AuthenticationCertifiedActivity)getActivity()).a(localCertifiedFailCardFragment_, true);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
      return;
    }
    ((BaseFragmentActivity)getActivity()).toast(getResources().getString(R.string.c), 0);
  }

  public final void a(ActivityApplication paramActivityApplication)
  {
    this.a = paramActivityApplication;
  }

  @Background
  protected void a(String paramString)
  {
    if (this.d != null)
    {
      UserInfo localUserInfo = this.d.getUserInfo();
      if (localUserInfo != null)
      {
        AccountService localAccountService = (AccountService)this.b.getExtServiceByInterface(AccountService.class.getName());
        localUserInfo.setIsCertified(paramString);
        if (localAccountService != null)
          localAccountService.addUserInfo(localUserInfo);
      }
    }
  }

  protected final void b()
  {
    try
    {
      this.b.finishApp(this.a.getAppId(), this.a.getAppId(), null);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @Background
  protected void b(a parama)
  {
    CheckCertifyByMspReq localCheckCertifyByMspReq = new CheckCertifyByMspReq();
    localCheckCertifyByMspReq.logonId = ((BaseAuthenticationActivity)getActivity()).d();
    localCheckCertifyByMspReq.showBankList = false;
    localCheckCertifyByMspReq.noticeBindCardNotCert = true;
    CheckCertifyByMspRes localCheckCertifyByMspRes;
    try
    {
      ((BaseFragmentActivity)getActivity()).showProgressDialog("认证中", true, null);
      localCheckCertifyByMspRes = parama.a(localCheckCertifyByMspReq);
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      if ((this == null) || (isRemoving()))
      {
        new StringBuilder().append(getClass().getName()).append(" is removing").toString();
        return;
      }
      if (localCheckCertifyByMspRes == null)
        break label429;
      if ("5100".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode))
      {
        a(parama, localCheckCertifyByMspRes.cardInfo);
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      localRpcException.getMessage();
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      throw localRpcException;
    }
    if ("5101".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode))
    {
      a(parama);
      return;
    }
    if (("5104".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode)) || ("5128".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode)))
    {
      Bundle localBundle1 = new Bundle();
      String str = JSON.toJSONString(localCheckCertifyByMspRes);
      localBundle1.putString("fromWhich", "CheckCertifyByMspRes");
      localBundle1.putString("certifiedResult", str);
      CertifiedFailCardFragment_ localCertifiedFailCardFragment_ = new CertifiedFailCardFragment_();
      localCertifiedFailCardFragment_.setArguments(localBundle1);
      localCertifiedFailCardFragment_.a = this.a;
      ((AuthenticationCertifiedActivity)getActivity()).a(localCertifiedFailCardFragment_, true);
      return;
    }
    if ("5105".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode))
    {
      Bundle localBundle2 = new Bundle();
      localBundle2.putBoolean("certifiedResult", localCheckCertifyByMspRes.canUpgradeACertify);
      CertifiedSuccessShootFragment_ localCertifiedSuccessShootFragment_ = new CertifiedSuccessShootFragment_();
      localCertifiedSuccessShootFragment_.setArguments(localBundle2);
      localCertifiedSuccessShootFragment_.a = this.a;
      ((AuthenticationCertifiedActivity)getActivity()).a(localCertifiedSuccessShootFragment_, true);
      return;
    }
    if (("5103".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode)) || ("202".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode)))
    {
      ((BaseFragmentActivity)getActivity()).alert(null, localCheckCertifyByMspRes.message, "确定", new BaseAuthenticationFragment.3(this), null, null);
      return;
    }
    ((BaseFragmentActivity)getActivity()).toast(localCheckCertifyByMspRes.message, 0);
    return;
    label429: ((BaseFragmentActivity)getActivity()).toast(getResources().getString(R.string.c), 0);
  }

  protected final void c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("scode", "app_renzheng");
    try
    {
      this.a.getMicroApplicationContext().startApp("", "20000011", localBundle);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationFragment
 * JD-Core Version:    0.6.2
 */