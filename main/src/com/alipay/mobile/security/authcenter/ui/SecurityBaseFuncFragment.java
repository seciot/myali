package com.alipay.mobile.security.authcenter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.security.authcenter.ui.login.AccountSwitchActivity_;
import com.alipay.mobile.security.authcenter.ui.login.AlipayUserLoginFragment_;
import com.alipay.mobile.security.authcenter.ui.login.MobileInputFragment_;
import com.alipay.mobile.security.authcenter.ui.login.TaobaoUserLoginFragment_;

public abstract class SecurityBaseFuncFragment extends Fragment
  implements View.OnTouchListener
{
  protected MicroApplicationContext a = AlipayApplication.getInstance().getMicroApplicationContext();
  protected MicroApplication b;
  protected final int c = 4369;

  protected static void a(BehaviourIdEnum paramBehaviourIdEnum, String paramString1, String paramString2, String paramString3)
  {
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.appID = "20000008";
    localAlipayLogInfo.behaviourIdEnum = paramBehaviourIdEnum;
    localAlipayLogInfo.viewID = paramString1;
    localAlipayLogInfo.refViewID = paramString2;
    localAlipayLogInfo.seed = paramString3;
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), localAlipayLogInfo);
  }

  private void a(SecurityBaseFuncFragment paramSecurityBaseFuncFragment)
  {
    paramSecurityBaseFuncFragment.b = this.b;
    getActivity().getSupportFragmentManager().beginTransaction().add(R.id.bR, paramSecurityBaseFuncFragment).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
  }

  protected final void a()
  {
    try
    {
      this.a.startApp("20000008", "20000009", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }

  protected final void a(Fragment paramFragment)
  {
    getActivity().getSupportFragmentManager().popBackStack(null, 1);
    b();
    getActivity().getSupportFragmentManager().beginTransaction().add(R.id.bR, paramFragment).setTransition(4097).commitAllowingStateLoss();
  }

  protected final void a(View paramView)
  {
    paramView.postDelayed(new ay(this, paramView), 1200L);
  }

  public final void a(MicroApplication paramMicroApplication)
  {
    this.b = paramMicroApplication;
  }

  protected final void a(String paramString)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putCharSequence("logonId", paramString);
      this.a.startApp(this.b.getAppId(), "20000015", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  protected final void a(boolean paramBoolean)
  {
    Intent localIntent = new Intent(AlipayApplication.getInstance(), AccountSwitchActivity_.class);
    localIntent.putExtra("canSwitchMobile", paramBoolean);
    if (isAdded())
      startActivityForResult(localIntent, 4369);
  }

  protected final void b()
  {
    FragmentActivity localFragmentActivity = getActivity();
    ((InputMethodManager)localFragmentActivity.getSystemService("input_method")).hideSoftInputFromWindow(localFragmentActivity.getWindow().getDecorView().getWindowToken(), 0);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 4369)
      switch (paramInt2)
      {
      default:
      case 17:
      case 18:
      case 19:
      }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      a(new AlipayUserLoginFragment_());
      continue;
      a(new TaobaoUserLoginFragment_());
      continue;
      a(new MobileInputFragment_());
    }
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    return true;
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (paramView != null)
      paramView.setOnTouchListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.SecurityBaseFuncFragment
 * JD-Core Version:    0.6.2
 */