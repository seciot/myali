package com.alipay.mobile.security.authcenter.androidaccountmanager;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.alipay.mobile.common.logging.LogCatLog;

final class a extends AbstractAccountAuthenticator
{
  private final Context a;

  public a(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
  }

  public final Bundle addAccount(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
  {
    LogCatLog.v("Authenticator", "addAccount()");
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("alipays://platformapi/startApp?appId=20000008&fromAccountmanager=true"));
    localIntent.addFlags(270532608);
    localIntent.putExtra("accountAuthenticatorResponse", paramAccountAuthenticatorResponse);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("intent", localIntent);
    return localBundle;
  }

  public final Bundle confirmCredentials(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, Bundle paramBundle)
  {
    LogCatLog.v("Authenticator", "confirmCredentials()");
    return null;
  }

  public final Bundle editProperties(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString)
  {
    LogCatLog.v("Authenticator", "editProperties()");
    throw new UnsupportedOperationException();
  }

  public final Bundle getAuthToken(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    return null;
  }

  public final String getAuthTokenLabel(String paramString)
  {
    LogCatLog.v("Authenticator", "getAuthTokenLabel()");
    return null;
  }

  public final Bundle hasFeatures(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String[] paramArrayOfString)
  {
    LogCatLog.v("Authenticator", "hasFeatures()");
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("booleanResult", false);
    return localBundle;
  }

  public final Bundle updateCredentials(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    LogCatLog.v("Authenticator", "updateCredentials()");
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.androidaccountmanager.a
 * JD-Core Version:    0.6.2
 */