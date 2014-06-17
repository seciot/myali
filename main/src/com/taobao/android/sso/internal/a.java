package com.taobao.android.sso.internal;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Process;
import android.util.SparseArray;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.cert.CertificateException;
import javax.security.cert.X509Certificate;

public final class a extends AbstractAccountAuthenticator
{
  private final Context a;
  private final b b;

  public a(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    this.b = new b(paramContext);
  }

  private Bundle a(Bundle paramBundle, String[] paramArrayOfString)
  {
    int i = paramBundle.getInt("callerPid", -1);
    int j = paramBundle.getInt("callerUid", -1);
    int m;
    c localc;
    int i3;
    int i2;
    if ((i == -1) || (j == -1))
    {
      int k = paramBundle.getInt("agent_pid");
      m = paramBundle.getInt("token");
      localc = (c)PidGetterService.a.get(k);
      if (localc != null)
      {
        if (((Long)localc.c.get(m)).longValue() <= System.currentTimeMillis())
          break label287;
        i3 = localc.a;
        i2 = localc.b;
      }
    }
    while (true)
    {
      localc.c.remove(m);
      i = i3;
      j = i2;
      if ((j == -1) || (i == -1))
      {
        Bundle localBundle1 = new Bundle();
        localBundle1.putInt("errorCode", 6);
        localBundle1.putString("errorMessage", "sso service fetch pid failed");
        return localBundle1;
      }
      if ((i == Process.myPid()) && (j == Process.myUid()))
        return null;
      int n = paramArrayOfString.length;
      int i1 = 0;
      while (true)
      {
        if (i1 >= n);
        try
        {
          a(i, j);
          return null;
          String str = paramArrayOfString[i1];
          if (-1 == this.a.checkPermission(str, i, j))
          {
            Bundle localBundle2 = new Bundle();
            localBundle2.putInt("errorCode", 101);
            localBundle2.putString("errorMessage", "lack permissions");
            return localBundle2;
          }
          i1++;
        }
        catch (SecurityException localSecurityException)
        {
          Bundle localBundle3 = new Bundle();
          localBundle3.putInt("errorCode", 101);
          localBundle3.putString("errorMessage", "Unsupported");
          return localBundle3;
        }
      }
      label287: i2 = j;
      i3 = i;
    }
  }

  private static Bundle a(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("errorCode", 7);
    localBundle.putString("errorMessage", paramString);
    return localBundle;
  }

  private void a()
  {
    HashSet localHashSet = new HashSet();
    Account[] arrayOfAccount = AccountManager.get(this.a).getAccounts();
    int i = arrayOfAccount.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        if (localHashSet.size() >= 3)
        {
          Uri localUri = Uri.parse("https://github.com/oasisfeng/deagle");
          a("We love open source!", "Under Construction", "Would you like to help us?", PendingIntent.getActivity(this.a, 0, new Intent("android.intent.action.VIEW").setData(localUri).setPackage("com.github.mobile"), 134217728));
        }
        return;
      }
      Account localAccount = arrayOfAccount[j];
      String str = localAccount.type;
      if (("com.google".equals(str)) || ("com.twitter.android.auth.login".equals(str)) || ("com.github".equals(str)))
        localHashSet.add(localAccount.type);
    }
  }

  private void a(int paramInt1, int paramInt2)
  {
    Iterator localIterator = ((ActivityManager)this.a.getSystemService("activity")).getRunningAppProcesses().iterator();
    if (!localIterator.hasNext());
    while (true)
    {
      throw new SecurityException("Identify declined");
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      if ((localRunningAppProcessInfo.pid != paramInt1) || (localRunningAppProcessInfo.uid != paramInt2))
        break;
      PackageManager localPackageManager = this.a.getPackageManager();
      for (String str : localRunningAppProcessInfo.pkgList)
        try
        {
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(str, 64);
          boolean bool = this.b.a(localPackageInfo.signatures);
          if (bool)
            return;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          throw new SecurityException("Identify unknown");
        }
    }
  }

  private void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, PendingIntent paramPendingIntent)
  {
    NotificationManager localNotificationManager = (NotificationManager)this.a.getSystemService("notification");
    Notification localNotification;
    if (Build.VERSION.SDK_INT < 11)
    {
      localNotification = new Notification(17301642, paramCharSequence1, System.currentTimeMillis());
      localNotification.setLatestEventInfo(this.a, paramCharSequence2, paramCharSequence3, paramPendingIntent);
    }
    while (true)
    {
      localNotificationManager.notify(localNotification.hashCode(), localNotification);
      return;
      if (Build.VERSION.SDK_INT < 16)
        localNotification = new Notification.Builder(this.a).setSmallIcon(17301642).setTicker(paramCharSequence1).setContentTitle(paramCharSequence2).setContentText(paramCharSequence3).setContentIntent(paramPendingIntent).getNotification();
      else
        localNotification = new Notification.Builder(this.a).setSmallIcon(17301642).setTicker(paramCharSequence1).setContentTitle(paramCharSequence2).setContentText(paramCharSequence3).setContentIntent(paramPendingIntent).build();
    }
  }

  public final Bundle addAccount(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
  {
    if ((paramBundle.getInt("callerPid", -1) == -1) || (paramBundle.getInt("callerUid", -1) == -1))
      PidGetterService.c = false;
    String str11;
    Bundle localBundle4;
    if (paramBundle != null)
    {
      str11 = paramBundle.getString("authtoken");
      if (str11 != null)
      {
        str1 = paramBundle.getString("authtoken");
        Bundle localBundle7 = a(paramBundle, new String[] { "com.taobao.permission.UPDATE_CREDENTIALS" });
        if (localBundle7 == null)
          break label92;
        localBundle4 = localBundle7;
        return localBundle4;
      }
    }
    for (String str1 = str11; ; str1 = null)
    {
      label92: if (paramBundle != null)
      {
        String str4 = paramBundle.getString("request");
        if (str4 != null)
        {
          if ("reveal-actual-name".equals(str4))
          {
            localBundle4 = new Bundle();
            String[] arrayOfString = paramBundle.getStringArray("accounts");
            AccountManager localAccountManager2 = AccountManager.get(this.a);
            int i = arrayOfString.length;
            for (int j = 0; j < i; j++)
            {
              String str5 = arrayOfString[j];
              String str6 = localAccountManager2.getUserData(new Account(str5, paramString1), "actual-account-name");
              if (str6 != null)
                localBundle4.putString(str5, str6);
            }
            break;
          }
          if ("update-token".equals(str4))
          {
            String str9 = paramBundle.getString("authtoken");
            if (str9 == null)
              return Bundle.EMPTY;
            String str10 = paramBundle.getString("authAccount");
            if (str10.length() == 0)
              return a("Empty account name");
            Account localAccount2 = new Account(str10, paramString1);
            AccountManager.get(this.a).setAuthToken(localAccount2, paramString2, str9);
            return Bundle.EMPTY;
          }
          if ("whitelist-timestamp".equals(str4))
          {
            Bundle localBundle5 = new Bundle();
            localBundle5.putLong("timestamp", this.b.a());
            return localBundle5;
          }
          if ("update-whitelist".equals(str4))
          {
            ArrayList localArrayList = paramBundle.getParcelableArrayList("signatures");
            if (localArrayList == null)
              throw new IllegalArgumentException("signatures unspecified");
            if (localArrayList.isEmpty())
              return Bundle.EMPTY;
            long l = paramBundle.getLong("timestamp");
            if (l == 0L)
              return Bundle.EMPTY;
            this.b.a((Signature[])localArrayList.toArray(new Signature[localArrayList.size()]), l);
            return Bundle.EMPTY;
          }
          if ("abdicate".equals(str4))
          {
            ComponentName localComponentName = new ComponentName(this.a, AuthenticationService.class);
            paramAccountAuthenticatorResponse.onResult(Bundle.EMPTY);
            this.a.getPackageManager().setComponentEnabledSetting(localComponentName, 2, 0);
            return null;
          }
          if ("peek-token".equals(str4))
          {
            AccountManager localAccountManager3 = AccountManager.get(this.a);
            String str7 = paramBundle.getString("authAccount");
            String str8 = localAccountManager3.peekAuthToken(new Account(str7, paramString1), paramString2);
            if (str8 == null)
              return Bundle.EMPTY;
            Bundle localBundle6 = new Bundle();
            localBundle6.putString("authAccount", str7);
            localBundle6.putString("accountType", paramString1);
            localBundle6.putString("token", str8);
            return localBundle6;
          }
          throw new UnsupportedOperationException("Unknown request: " + str4);
        }
      }
      AccountManager localAccountManager1;
      String str2;
      Account localAccount1;
      Bundle localBundle2;
      if ((paramBundle != null) && (paramBundle.containsKey("authAccount")))
      {
        localAccountManager1 = AccountManager.get(this.a);
        str2 = paramBundle.getString("authAccount");
        if (str2.length() == 0)
          return a("Empty account name");
        localAccount1 = new Account(str2, paramString1);
        String str3 = paramBundle.getString("accounts");
        if (str3 == null)
          break label927;
        localBundle2 = new Bundle();
        localBundle2.putString("actual-account-name", str3);
      }
      while (true)
      {
        localAccountManager1.addAccountExplicitly(localAccount1, null, localBundle2);
        if (str1 != null)
          localAccountManager1.setAuthToken(localAccount1, paramString2, str1);
        Bundle localBundle3 = new Bundle();
        localBundle3.putString("authAccount", str2);
        localBundle3.putString("accountType", paramString1);
        return localBundle3;
        try
        {
          PackageManager localPackageManager = this.a.getPackageManager();
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(this.a.getPackageName(), 64);
          if ((localPackageInfo.signatures != null) && (localPackageInfo.signatures.length > 0) && (X509Certificate.getInstance(localPackageInfo.signatures[0].toByteArray()).getIssuerDN().getName().contains("CN=Android Debug")))
          {
            CharSequence localCharSequence = localPackageInfo.applicationInfo.loadLabel(localPackageManager);
            Intent localIntent = new Intent();
            a(localCharSequence, "SSO Host", localCharSequence, PendingIntent.getActivity(this.a, 0, localIntent, 0));
          }
          label884: a();
          Bundle localBundle1 = new Bundle();
          localBundle1.putInt("errorCode", 4);
          localBundle1.putString("errorMessage", "Unsupported");
          return localBundle1;
        }
        catch (CertificateException localCertificateException)
        {
          break label884;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          break label884;
        }
        label927: localBundle2 = null;
      }
    }
  }

  public final Bundle confirmCredentials(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, Bundle paramBundle)
  {
    paramAccountAuthenticatorResponse.onError(6, "Unsupported");
    return null;
  }

  public final Bundle editProperties(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public final Bundle getAuthToken(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    int i = 0;
    if ((paramBundle.getInt("callerPid", -1) == -1) || (paramBundle.getInt("callerUid", -1) == -1))
      PidGetterService.b = false;
    Bundle localBundle1 = a(paramBundle, new String[] { "com.taobao.permission.USE_CREDENTIALS" });
    if (localBundle1 != null);
    AccountManager localAccountManager;
    String str2;
    while (true)
    {
      return localBundle1;
      localAccountManager = AccountManager.get(this.a);
      if (paramBundle == null)
        break label448;
      str2 = paramBundle.getString("request");
      if (str2 == null)
        break label448;
      if (!"reveal-actual-name".equals(str2))
        break;
      localBundle1 = new Bundle();
      String[] arrayOfString = paramBundle.getStringArray("accounts");
      int j = arrayOfString.length;
      while (i < j)
      {
        String str3 = arrayOfString[i];
        String str4 = localAccountManager.getUserData(new Account(str3, paramAccount.type), "actual-account-name");
        if (str4 != null)
          localBundle1.putString(str3, str4);
        i++;
      }
    }
    if ("update-token".equals(str2))
    {
      String str5 = paramBundle.getString("authtoken");
      if (str5 == null)
        throw new IllegalArgumentException("Token unspecified");
      localAccountManager.setAuthToken(paramAccount, paramString, str5);
      return Bundle.EMPTY;
    }
    if ("whitelist-timestamp".equals(str2))
    {
      Bundle localBundle3 = new Bundle();
      localBundle3.putLong("timestamp", this.b.a());
      return localBundle3;
    }
    if ("update-whitelist".equals(str2))
    {
      ArrayList localArrayList = paramBundle.getParcelableArrayList("signatures");
      if (localArrayList == null)
        throw new IllegalArgumentException("signatures unspecified");
      if (localArrayList.isEmpty())
        return Bundle.EMPTY;
      long l = paramBundle.getLong("timestamp");
      if (l == 0L)
        return Bundle.EMPTY;
      this.b.a((Signature[])localArrayList.toArray(new Signature[localArrayList.size()]), l);
      return Bundle.EMPTY;
    }
    if ("abdicate".equals(str2))
    {
      ComponentName localComponentName = new ComponentName(this.a, AuthenticationService.class);
      paramAccountAuthenticatorResponse.onResult(Bundle.EMPTY);
      this.a.getPackageManager().setComponentEnabledSetting(localComponentName, 2, 0);
      return null;
    }
    throw new UnsupportedOperationException("Unknown request: " + str2);
    label448: String str1 = localAccountManager.peekAuthToken(paramAccount, paramString);
    if (str1 == null)
      return Bundle.EMPTY;
    Bundle localBundle2 = new Bundle();
    localBundle2.putString("authAccount", paramAccount.name);
    localBundle2.putString("accountType", paramAccount.type);
    localBundle2.putString("authtoken", str1);
    return localBundle2;
  }

  public final String getAuthTokenLabel(String paramString)
  {
    return "Full access";
  }

  public final Bundle hasFeatures(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String[] paramArrayOfString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("booleanResult", false);
    return localBundle;
  }

  public final Bundle updateCredentials(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.sso.internal.a
 * JD-Core Version:    0.6.2
 */