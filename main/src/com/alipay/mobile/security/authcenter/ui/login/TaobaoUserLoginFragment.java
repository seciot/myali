package com.alipay.mobile.security.authcenter.ui.login;

import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.AdapterView;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.login.bean.b;
import com.alipay.mobile.security.authcenter.ui.SmartInputTextView;
import com.alipay.mobile.security.authcenter.ui.a;
import com.alipay.mobile.security.authcenter.ui.bg;
import com.alipay.mobile.security.authcenter.ui.x;
import com.googlecode.androidannotations.annotations.EFragment;
import java.util.List;

@EFragment(resName="taobao_user_login")
public class TaobaoUserLoginFragment extends AliUserLoginFragment<TaoBaoUserInfo>
{
  protected final void a(b paramb)
  {
    paramb.a(this.d.getText().toString());
    paramb.b(this.g.getInputedText());
    paramb.c("taobao");
    paramb.d(this.r.getCheckCodeInput().getInputedText());
    paramb.e(this.s.d());
    a(BehaviourIdEnum.CLICKED, null, "taobaoLoginView", "loginButton");
  }

  protected final List<TaoBaoUserInfo> c()
  {
    List localList = SecurityDbHelper.getInstance(AlipayApplication.getInstance()).queryTaobaoUserList();
    if ((localList != null) && (localList.size() > 5))
      localList = localList.subList(0, 5);
    return localList;
  }

  protected final void d()
  {
    this.j = new bg(getActivity(), this.m, R.layout.aT, this.k);
  }

  final void f()
  {
    this.p = "taobao";
    super.f();
    a(BehaviourIdEnum.OPENPAGE, "taobaoLoginView", null, null);
  }

  protected final void i()
  {
    if (this.k.size() > 0);
    for (String str = ((TaoBaoUserInfo)this.k.get(0)).getTaoBaoUserId(); ; str = "")
    {
      this.l = str;
      Bundle localBundle = getArguments();
      if (localBundle != null)
        this.l = ((LoginInfo)localBundle.getParcelable("loginInfo")).a();
      this.d.setText(this.l);
      this.d.setSelection(this.d.getText().length());
      return;
    }
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    a(BehaviourIdEnum.CLICKED, "phoneLoginView", "taobaoLoginView", "backIcon");
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.l = ((TaoBaoUserInfo)this.j.getItem(paramInt)).getTaoBaoUserId();
    this.g.setText(null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.TaobaoUserLoginFragment
 * JD-Core Version:    0.6.2
 */