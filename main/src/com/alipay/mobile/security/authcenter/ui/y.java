package com.alipay.mobile.security.authcenter.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.authcenter.a.a;
import com.alipay.mobile.security.authcenter.ui.login.AlipayUserLoginFragment_;
import com.alipay.mobile.security.authcenter.ui.login.TaobaoUserLoginFragment_;
import com.alipay.mobile.security.authcenter.ui.login.UserLoginFragment_;
import com.alipay.mobile.security.authcenter.ui.regist.PreRegistFragment_;
import com.alipay.mobile.security.securitycommon.data.SelectAccountInfo;
import com.alipay.mobile.security.securitycommon.fragment.SelectAccountFragment_;
import com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment_;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class y
{
  private BaseFragmentActivity a;
  private MicroApplication b;
  private String c;
  private a d;

  public y(BaseFragmentActivity paramBaseFragmentActivity, MicroApplication paramMicroApplication)
  {
    this.a = paramBaseFragmentActivity;
    this.b = paramMicroApplication;
    this.d = new a();
  }

  private void a(LoginInfo paramLoginInfo, SelectAccountInfo paramSelectAccountInfo)
  {
    SelectAccountFragment_ localSelectAccountFragment_ = new SelectAccountFragment_();
    this.a.getSupportFragmentManager().beginTransaction().add(R.id.bR, localSelectAccountFragment_).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramLoginInfo.d().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      SelectAccountInfo localSelectAccountInfo = new SelectAccountInfo();
      localSelectAccountInfo.a((String)localEntry.getKey());
      localSelectAccountInfo.b((String)localEntry.getValue());
      localArrayList.add(localSelectAccountInfo);
    }
    localSelectAccountFragment_.a(this.a, localArrayList, paramSelectAccountInfo, new z(this));
  }

  private void c(LoginInfo paramLoginInfo)
  {
    AlipayUserLoginFragment_ localAlipayUserLoginFragment_ = new AlipayUserLoginFragment_();
    localAlipayUserLoginFragment_.a(this.b);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("loginInfo", paramLoginInfo);
    localAlipayUserLoginFragment_.setArguments(localBundle);
    this.a.getSupportFragmentManager().beginTransaction().add(R.id.bR, localAlipayUserLoginFragment_).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
  }

  public final void a(LoginInfo paramLoginInfo)
  {
    Map localMap = paramLoginInfo.d();
    if (paramLoginInfo.c())
    {
      this.a.getSupportFragmentManager().popBackStack(null, 1);
      UserLoginFragment_ localUserLoginFragment_ = new UserLoginFragment_();
      localUserLoginFragment_.a(this.b);
      Bundle localBundle3 = new Bundle();
      localBundle3.putParcelable("loginInfo", paramLoginInfo);
      localUserLoginFragment_.setArguments(localBundle3);
      this.a.getSupportFragmentManager().beginTransaction().add(R.id.bR, localUserLoginFragment_).setTransition(4097).commitAllowingStateLoss();
    }
    String str;
    do
    {
      return;
      str = paramLoginInfo.g();
      if (("W".equals(str)) || ("Q".equals(str)))
      {
        if ((localMap != null) && (localMap.size() > 0))
        {
          SelectAccountInfo localSelectAccountInfo = new SelectAccountInfo();
          localSelectAccountInfo.b(paramLoginInfo.f());
          localSelectAccountInfo.a(paramLoginInfo.a());
          a(paramLoginInfo, localSelectAccountInfo);
          return;
        }
        b(paramLoginInfo);
        return;
      }
      if ("T".equals(str))
      {
        if ((localMap != null) && (localMap.size() == 1))
        {
          Iterator localIterator2 = localMap.entrySet().iterator();
          while (localIterator2.hasNext())
          {
            Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
            paramLoginInfo.a((String)localEntry2.getKey());
            paramLoginInfo.c((String)localEntry2.getValue());
          }
        }
        c(paramLoginInfo);
        return;
      }
      if ("TAOBAO_Q".equals(str))
      {
        TaobaoUserLoginFragment_ localTaobaoUserLoginFragment_ = new TaobaoUserLoginFragment_();
        localTaobaoUserLoginFragment_.a(this.b);
        Bundle localBundle1 = new Bundle();
        localBundle1.putParcelable("loginInfo", paramLoginInfo);
        localTaobaoUserLoginFragment_.setArguments(localBundle1);
        this.a.getSupportFragmentManager().beginTransaction().add(R.id.bR, localTaobaoUserLoginFragment_).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
        return;
      }
    }
    while (!"NOT_EXIST".equals(str));
    if ((localMap != null) && (localMap.size() == 1))
    {
      Iterator localIterator1 = localMap.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator1.next();
        paramLoginInfo.a((String)localEntry1.getKey());
        paramLoginInfo.c((String)localEntry1.getValue());
      }
      c(paramLoginInfo);
      return;
    }
    if ((localMap != null) && (localMap.size() > 1))
    {
      a(paramLoginInfo, null);
      return;
    }
    PreRegistFragment_ localPreRegistFragment_ = new PreRegistFragment_();
    localPreRegistFragment_.a(this.b);
    Bundle localBundle2 = new Bundle();
    localBundle2.putParcelable("registInfo", paramLoginInfo);
    localPreRegistFragment_.setArguments(localBundle2);
    this.a.getSupportFragmentManager().beginTransaction().add(R.id.bR, localPreRegistFragment_).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
  }

  public final void b(LoginInfo paramLoginInfo)
  {
    SetSimplePwdFragment_ localSetSimplePwdFragment_ = new SetSimplePwdFragment_();
    String str = paramLoginInfo.a();
    localSetSimplePwdFragment_.e(str, null, new aa(this, str));
    this.a.getSupportFragmentManager().beginTransaction().add(R.id.bR, localSetSimplePwdFragment_).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.y
 * JD-Core Version:    0.6.2
 */