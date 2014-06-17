package com.alipay.mobile.deviceAuthorization.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobilesecurity.biz.gw.service.LogsCommonService;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLog;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.List;

@EActivity
public class LoginLogsWelcomeActivity extends BaseActivity
{
  public static final String a = LoginLogsWelcomeActivity.class.getSimpleName();
  private View b;
  private Button c;
  private TextView d;
  private TextView e;
  private View f;
  private View g;
  private final int h = 0;

  @Background
  public void a()
  {
    try
    {
      LoginLogRes localLoginLogRes = new LogsCommonService(this.mApp).getLoginLogs(null, null);
      if ((localLoginLogRes != null) && (localLoginLogRes.isSuccess()))
      {
        a(localLoginLogRes);
        return;
      }
      b(localLoginLogRes);
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("request datas failed, error Msg=").append(localRpcException.getMessage()).toString();
      b(null);
    }
  }

  @UiThread
  public void a(LoginLogRes paramLoginLogRes)
  {
    dismissProgressDialog();
    if ((paramLoginLogRes.getLoginLogList() == null) || (paramLoginLogRes.getLoginLogList().size() <= 0))
    {
      b(paramLoginLogRes);
      return;
    }
    LoginLog localLoginLog = (LoginLog)paramLoginLogRes.getLoginLogList().get(0);
    this.f.setVisibility(0);
    this.d.setText(getString(R.string.B) + localLoginLog.getLoginDate());
    this.e.setText(localLoginLog.getIpAddress());
    if (StringUtils.equals(getString(R.string.C), localLoginLog.getIpAddress()))
    {
      this.g.setVisibility(0);
      return;
    }
    this.g.setVisibility(8);
  }

  @UiThread
  public void b(LoginLogRes paramLoginLogRes)
  {
    dismissProgressDialog();
    this.f.setVisibility(8);
    this.g.setVisibility(8);
    if ((paramLoginLogRes != null) && (StringUtils.isNotBlank(paramLoginLogRes.getMessage())))
      toast(paramLoginLogRes.getMessage(), 0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = LayoutInflater.from(this).inflate(R.layout.o, null);
    setContentView(this.b);
    this.d = ((TextView)this.b.findViewById(R.id.cb));
    this.e = ((TextView)this.b.findViewById(R.id.ca));
    this.f = this.b.findViewById(R.id.bY);
    this.g = this.b.findViewById(R.id.cc);
    this.g.setVisibility(8);
    this.c = ((Button)this.b.findViewById(R.id.cd));
    this.c.setOnClickListener(new ak(this));
    showProgressDialog(getString(R.string.F), true, new aj(this));
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.LoginLogsWelcomeActivity
 * JD-Core Version:    0.6.2
 */