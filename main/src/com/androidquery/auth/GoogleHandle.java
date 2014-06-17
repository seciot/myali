package com.androidquery.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.androidquery.AQuery;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.util.AQUtility;
import org.apache.http.HttpRequest;

public class GoogleHandle extends AccountHandle
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener
{
  private AccountManager a;
  private Account b;
  private String c;
  private Activity d;
  private String e;
  private Account[] f;
  private String g;

  public GoogleHandle(Activity paramActivity, String paramString1, String paramString2)
  {
    if ("aq.account".equals(paramString2))
      paramString2 = getActiveAccount(paramActivity);
    this.d = paramActivity;
    this.c = paramString1.substring(2);
    this.e = paramString2;
    this.a = AccountManager.get(paramActivity);
  }

  private void accountDialog()
  {
    int i = 0;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.d);
    this.f = this.a.getAccountsByType("com.google");
    int j = this.f.length;
    if (j == 1)
    {
      auth(this.f[0]);
      return;
    }
    String[] arrayOfString = new String[j];
    while (true)
    {
      if (i >= j)
      {
        localBuilder.setItems(arrayOfString, this);
        localBuilder.setOnCancelListener(this);
        AlertDialog localAlertDialog = localBuilder.create();
        new AQuery(this.d).show(localAlertDialog);
        return;
      }
      arrayOfString[i] = this.f[i].name;
      i++;
    }
  }

  private void auth(Account paramAccount)
  {
    this.b = paramAccount;
    new GoogleHandle.Task(this, null).execute(new String[0]);
  }

  public static String getActiveAccount(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("aq.account", null);
  }

  public static void setActiveAccount(Context paramContext, String paramString)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putString("aq.account", paramString).commit();
  }

  public void applyToken(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback, HttpRequest paramHttpRequest)
  {
    paramHttpRequest.addHeader("Authorization", "GoogleLogin auth=" + this.g);
  }

  protected void auth()
  {
    if (this.e == null)
      accountDialog();
    while (true)
    {
      return;
      Account[] arrayOfAccount = this.a.getAccountsByType("com.google");
      for (int i = 0; i < arrayOfAccount.length; i++)
      {
        Account localAccount = arrayOfAccount[i];
        if (this.e.equals(localAccount.name))
        {
          auth(localAccount);
          return;
        }
      }
    }
  }

  public boolean authenticated()
  {
    return this.g != null;
  }

  public boolean expired(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback, AjaxStatus paramAjaxStatus)
  {
    int i = paramAjaxStatus.getCode();
    return (i == 401) || (i == 403);
  }

  public String getCacheUrl(String paramString)
  {
    return paramString + "#" + this.g;
  }

  public String getType()
  {
    return this.c;
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    failure(this.d, -102, "cancel");
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Account localAccount = this.f[paramInt];
    AQUtility.debug("acc", localAccount.name);
    setActiveAccount(this.d, localAccount.name);
    auth(localAccount);
  }

  public boolean reauth(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback)
  {
    this.a.invalidateAuthToken(this.b.type, this.g);
    try
    {
      this.g = this.a.blockingGetAuthToken(this.b, this.c, true);
      AQUtility.debug("re token", this.g);
      if (this.g != null)
        return true;
    }
    catch (Exception localException)
    {
      while (true)
      {
        AQUtility.debug(localException);
        this.g = null;
      }
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.auth.GoogleHandle
 * JD-Core Version:    0.6.2
 */