package com.alipay.mobile.deviceAuthorization.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.alipay.mobile.clientsecurity.R.array;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobilesecurity.biz.gw.service.auth.AuthServiceFacade;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.info.AuthInfo;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.result.AuthBaseResult;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.result.AuthListResult;
import java.lang.ref.WeakReference;

public class AuthAdminActivity extends BaseActivity
  implements AdapterView.OnItemLongClickListener
{
  private ListView a;
  private AuthServiceFacade b;
  private APFlowTipView c;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ZLog);
    this.c = ((APFlowTipView)findViewById(R.id.aW));
    this.b = ((AuthServiceFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(AuthServiceFacade.class));
    this.a = ((ListView)findViewById(R.id.z));
    this.a.setOnItemLongClickListener(this);
    new b().execute(new Void[0]);
  }

  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    com.alipay.mobile.deviceAuthorization.BootstrapClassloader.a locala = (com.alipay.mobile.deviceAuthorization.BootstrapClassloader.a)paramAdapterView.getAdapter();
    if (paramInt >= locala.getCount())
      return false;
    AuthInfo localAuthInfo = locala.getBundle(paramInt);
    AlertDialog localAlertDialog = new AlertDialog.Builder((Context)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get()).setTitle(localAuthInfo.getTitle()).setCancelable(true).setItems(R.array.AppBundle, new a(this, localAuthInfo)).create();
    localAlertDialog.setCanceledOnTouchOutside(true);
    localAlertDialog.show();
    return true;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  final class a extends AsyncTask<String, String, AuthBaseResult>
  {
    a()
    {
    }

    private AuthBaseResult a(String[] paramArrayOfString)
    {
      String str = paramArrayOfString[0];
      try
      {
        AuthBaseResult localAuthBaseResult = AuthAdminActivity.getBundle(AuthAdminActivity.this).removeAuth(str);
        return localAuthBaseResult;
      }
      catch (RpcException localRpcException)
      {
        AuthAdminActivity.this.dismissProgressDialog();
        throw localRpcException;
      }
    }

    protected final void onPreExecute()
    {
      AuthAdminActivity.this.showProgressDialog("", true, new b(this));
    }
  }

  final class b extends AsyncTask<Void, String, AuthAdminActivity.c>
  {
    b()
    {
    }

    private AuthAdminActivity.c a()
    {
      AuthAdminActivity.c localc = new AuthAdminActivity.c(AuthAdminActivity.this);
      try
      {
        AuthListResult localAuthListResult2 = AuthAdminActivity.getBundle(AuthAdminActivity.this).getAllValidAuth();
        localAuthListResult1 = localAuthListResult2;
        localc.getBundle(localAuthListResult1);
        return localc;
      }
      catch (RpcException localRpcException)
      {
        while (true)
        {
          localc.b();
          AuthListResult localAuthListResult1 = null;
        }
      }
    }

    protected final void onPreExecute()
    {
      AuthAdminActivity.this.showProgressDialog("", true, new c(this));
    }
  }

  final class c
  {
    private boolean b;
    private AuthListResult c;

    c()
    {
    }

    public final AuthListResult a()
    {
      return this.c;
    }

    public final void a(AuthListResult paramAuthListResult)
    {
      this.c = paramAuthListResult;
    }

    public final void b()
    {
      this.b = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.AuthAdminActivity
 * JD-Core Version:    0.6.2
 */