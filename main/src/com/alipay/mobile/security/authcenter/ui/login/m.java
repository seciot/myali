package com.alipay.mobile.security.authcenter.ui.login;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.id;

final class m
  implements View.OnClickListener
{
  m(BaseLoginFragment paramBaseLoginFragment)
  {
  }

  public final void onClick(View paramView)
  {
    TaobaoUserLoginFragment_ localTaobaoUserLoginFragment_ = new TaobaoUserLoginFragment_();
    localTaobaoUserLoginFragment_.a(BaseLoginFragment.e(this.a));
    this.a.getActivity().getSupportFragmentManager().beginTransaction().add(R.id.bR, localTaobaoUserLoginFragment_).setTransition(4097).addToBackStack(null).commit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.m
 * JD-Core Version:    0.6.2
 */