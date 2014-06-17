package com.alipay.mobile.security.authcenter.ui.login;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="account_switch")
public class AccountSwitchActivity extends BaseFragmentActivity
  implements View.OnClickListener
{

  @ViewById(resName="switchToMobile")
  APButton a;

  @ViewById(resName="switchToAlipay")
  APButton b;

  @ViewById(resName="switchToTaobao")
  APButton c;

  @ViewById(resName="btnCancle")
  APButton d;

  public void onClick(View paramView)
  {
    int i = paramView.getId();
    if (i == R.id.fS)
      setResult(19);
    while (true)
    {
      finish();
      return;
      if (i == R.id.fR)
        setResult(17);
      else if (i == R.id.fT)
        setResult(18);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.AccountSwitchActivity
 * JD-Core Version:    0.6.2
 */