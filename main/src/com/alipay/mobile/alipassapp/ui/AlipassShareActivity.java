package com.alipay.mobile.alipassapp.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import com.alipay.kabaoprod.biz.mwallet.pass.result.ShareResult;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.concurrent.atomic.AtomicBoolean;

@EActivity
public class AlipassShareActivity extends BaseActivity
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener
{
  private static final String b = AlipassShareActivity.class.getSimpleName();
  com.alipay.mobile.alipassapp.biz.a a;
  private String c;
  private String[] d;
  private AtomicBoolean e = new AtomicBoolean();
  private String f = "com.sina.weibo";

  @UiThread
  void a()
  {
    SimpleToast.makeToast(this, R.string.alipass_share_fail, 0).show();
    finish();
  }

  @Background
  public void a(String paramString)
  {
    showProgressDialog("加载中", true, this);
    this.e.set(false);
    ShareResult localShareResult;
    try
    {
      localShareResult = this.a.a(this.c, paramString);
      if ((localShareResult == null) || (!localShareResult.success))
      {
        dismissProgressDialog();
        a();
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      finish();
      throw localRpcException;
    }
    String str1 = localShareResult.getShareContent();
    String str2 = localShareResult.getShareImgDesc();
    String str3 = localShareResult.getShareImgUrl();
    if ((str3 != null) && (!this.e.get()))
    {
      ((ImageLoaderService)this.mApp.getServiceByInterface(ImageLoaderService.class.getName())).startLoad(null, null, str3, new da(this, paramString, str1, str2), -1, -1);
      return;
    }
    a(paramString, str1, str2, null);
  }

  @UiThread
  public void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    dismissProgressDialog();
    Intent localIntent;
    if (!this.e.get())
    {
      if (paramString4 != null)
        paramString2 = paramString2 + paramString3;
      localIntent = new Intent("android.intent.action.SEND");
      if (!paramString1.equals("sms"))
        break label122;
      localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setType("vnd.android-dir/mms-sms");
      if (paramString2 != null)
      {
        localIntent.putExtra("android.intent.extra.TEXT", paramString2);
        localIntent.putExtra("sms_body", paramString2);
      }
    }
    try
    {
      while (true)
      {
        this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
        finish();
        return;
        label122: if (paramString1.equals("sinaWeibo"))
        {
          localIntent.setPackage(this.f);
          if (paramString2 != null)
          {
            localIntent.setType("text/plain");
            localIntent.putExtra("android.intent.extra.TEXT", paramString2);
          }
          if (paramString4 != null)
          {
            localIntent.setType("image/*");
            localIntent.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + paramString4));
          }
        }
      }
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      while (true)
      {
        localActivityNotFoundException.getMessage();
        a();
      }
    }
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.e.set(true);
    finish();
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str;
    if (paramInt == 0)
      str = "sms";
    while (true)
    {
      a(str);
      return;
      str = null;
      if (paramInt == 1)
        str = "sinaWeibo";
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = getIntent().getExtras().getString("p");
    if (this.c == null)
    {
      a();
      return;
    }
    this.a = new com.alipay.mobile.alipassapp.biz.c.a(this.mApp);
    Intent localIntent1 = getPackageManager().getLaunchIntentForPackage("com.sina.weibo");
    Intent localIntent2 = getPackageManager().getLaunchIntentForPackage("com.sina.mfweibo");
    if ((localIntent1 != null) || (localIntent2 != null))
    {
      if ((localIntent1 == null) && (localIntent2 != null))
        this.f = "com.sina.mfweibo";
      this.d = new String[2];
      this.d[0] = "短信";
      this.d[1] = "新浪微博";
    }
    while (true)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle("分享给好友");
      localBuilder.setItems(this.d, this);
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setOnCancelListener(this);
      localAlertDialog.show();
      return;
      this.d = new String[1];
      this.d[0] = "短信";
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassShareActivity
 * JD-Core Version:    0.6.2
 */