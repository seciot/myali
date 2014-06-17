package com.alipay.mobile.security.accountmanager.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.b.b;
import com.alipay.mobile.security.securitycommon.OldDataTransferUtil;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.List;

@EActivity(resName="security_selectaccount")
public class SelectAccountActivity extends BaseActivity
{

  @ViewById(resName="security_selectAccount_userListView")
  protected APListView a;
  protected AccountService b;
  protected AuthService c;
  protected LoginService d;
  protected List<UserInfo> e;
  protected b f;

  private void b(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("source_selectAccount", true);
    localBundle.putBoolean("allowBack", false);
    localBundle.putString("logonId", paramString);
    try
    {
      this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000008", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  @AfterViews
  protected final void a()
  {
    if (this.mApp == null)
    {
      finish();
      return;
    }
    this.mApp.getMicroApplicationContext();
    this.b = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
    this.c = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.d = ((LoginService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(LoginService.class.getName()));
    this.e = this.b.queryAccountList();
    UserInfo localUserInfo = this.c.getUserInfo();
    this.f = new b(this, this.e);
    if (localUserInfo != null)
      this.f.a(localUserInfo.getLogonId());
    View localView = getLayoutInflater().inflate(R.layout.aY, null);
    APTableView localAPTableView = (APTableView)localView.findViewById(R.id.cK);
    localAPTableView.setLeftText(getResources().getString(R.string.cs));
    localAPTableView.setOnClickListener(new dj(this));
    if (this.a.getFooterViewsCount() == 0)
      this.a.addFooterView(localView, null, true);
    this.a.setAdapter(this.f);
    this.a.setOnItemClickListener(new dk(this, localUserInfo));
    OldDataTransferUtil localOldDataTransferUtil = OldDataTransferUtil.a();
    HandlerThread localHandlerThread = new HandlerThread("processOld");
    localHandlerThread.start();
    new Handler(localHandlerThread.getLooper()).post(new dm(this, localOldDataTransferUtil, localHandlerThread));
  }

  // ERROR //
  @Background
  protected void a(UserInfo paramUserInfo)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 96	com/alipay/mobile/security/accountmanager/ui/SelectAccountActivity:d	Lcom/alipay/mobile/framework/service/ext/security/LoginService;
    //   4: aload_1
    //   5: invokevirtual 118	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getLogonId	()Ljava/lang/String;
    //   8: aconst_null
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: invokevirtual 243	com/alipay/mobile/framework/service/ext/security/LoginService:login	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    //   15: astore_3
    //   16: aload_3
    //   17: ifnull +27 -> 44
    //   20: sipush 1000
    //   23: aload_3
    //   24: invokevirtual 248	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:getResultStatus	()I
    //   27: if_icmpne +17 -> 44
    //   30: aload_0
    //   31: ldc 250
    //   33: invokevirtual 251	com/alipay/mobile/security/accountmanager/ui/SelectAccountActivity:a	(Ljava/lang/String;)V
    //   36: return
    //   37: astore_2
    //   38: aload_0
    //   39: invokevirtual 254	com/alipay/mobile/security/accountmanager/ui/SelectAccountActivity:dismissProgressDialog	()V
    //   42: aload_2
    //   43: athrow
    //   44: aload_0
    //   45: invokevirtual 254	com/alipay/mobile/security/accountmanager/ui/SelectAccountActivity:dismissProgressDialog	()V
    //   48: aload_0
    //   49: aload_1
    //   50: invokevirtual 118	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getLogonId	()Ljava/lang/String;
    //   53: invokespecial 30	com/alipay/mobile/security/accountmanager/ui/SelectAccountActivity:b	(Ljava/lang/String;)V
    //   56: return
    //   57: astore 4
    //   59: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	16	37	java/lang/RuntimeException
    //   30	36	57	java/lang/Exception
  }

  @Background
  protected void a(String paramString)
  {
    GestureService localGestureService = (GestureService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName());
    if ("set".equals(paramString))
    {
      localGestureService.setGesture();
      b();
      return;
    }
    localGestureService.gesture(new dl(this));
  }

  @UiThread
  protected void b()
  {
    try
    {
      this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    new StringBuilder("接收页面返回事件。requestCode=").append(paramInt1).append(",resultcode=").append(paramInt2).append(",data=").append(paramIntent).toString();
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  protected void onDestroy()
  {
    if (this.c == null)
    {
      super.onDestroy();
      return;
    }
    this.c.notifyUnlockLoginApp(false, false);
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    dismissProgressDialog();
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if ((localBundle != null) && (true == localBundle.getBoolean("source_login")))
        a("set");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.SelectAccountActivity
 * JD-Core Version:    0.6.2
 */