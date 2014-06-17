package com.taobao.android.sso;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import com.taobao.android.sso.internal.AuthenticationService;
import com.taobao.android.sso.internal.PidGetterService;
import com.taobao.android.sso.internal.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.xmlpull.v1.XmlPullParser;

public final class SsoManager
{
  static int a;
  private static int b = -2;
  private static int c = -2;
  private static String d;
  private static boolean e;
  private static b f;

  public static Account a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString4 != null)
      a(paramContext, e(paramContext), true);
    Bundle localBundle1 = new Bundle();
    label58: AccountManager localAccountManager;
    int i;
    Bundle localBundle2;
    int j;
    if (paramString4 != null)
    {
      localBundle1.putString("authtoken", paramString4);
      if (paramString2 == null)
        break label200;
      localBundle1.putString("authAccount", paramString2);
      localBundle1.putString("accounts", paramString1);
      localAccountManager = AccountManager.get(paramContext);
      i = new Random(System.currentTimeMillis()).nextInt();
      localBundle1.putInt("agent_pid", Process.myPid());
      localBundle1.putInt("token", i);
      localBundle1.putInt("callerPid", Process.myPid());
      localBundle1.putInt("callerUid", Process.myUid());
      localBundle2 = null;
      j = 0;
    }
    String str1;
    String str2;
    while (true)
    {
      if (j > 1)
      {
        a(localBundle2);
        str1 = localBundle2.getString("authAccount");
        str2 = localBundle2.getString("accountType");
        if ((str1 != null) && (str2 != null))
          break label307;
        throw new AuthenticatorException("Unknown result: " + localBundle2);
        localBundle1.putBoolean("empty", true);
        break;
        label200: localBundle1.putString("authAccount", paramString1);
        break label58;
      }
      a locala = new a();
      a(paramContext, locala, i);
      try
      {
        localBundle2 = (Bundle)a(localAccountManager.addAccount(e(paramContext), paramString3, null, localBundle1, null, null, null));
        int k = localBundle2.getInt("errorCode");
        if (k == 1)
        {
          int m = j + 1;
          a(paramContext, locala);
          j = m;
        }
        else
        {
          a(paramContext, locala);
        }
      }
      finally
      {
        a(paramContext, locala);
      }
    }
    label307: return new Account(str1, str2);
  }

  private static Bundle a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    Bundle localBundle1 = null;
    if (paramBundle == null);
    for (Bundle localBundle2 = new Bundle(); ; localBundle2 = paramBundle)
    {
      localBundle2.putString("request", paramString1);
      int i = new Random(System.currentTimeMillis()).nextInt();
      localBundle2.putInt("agent_pid", Process.myPid());
      localBundle2.putInt("token", i);
      localBundle2.putInt("callerPid", Process.myPid());
      localBundle2.putInt("callerUid", Process.myUid());
      int j = 0;
      while (true)
      {
        if (j > 1)
        {
          label87: a(localBundle1);
          return localBundle1;
        }
        a locala = new a();
        a(paramContext, locala, i);
        try
        {
          AccountManager localAccountManager = AccountManager.get(paramContext);
          String str1 = e(paramContext);
          if (paramString2 != null);
          for (String str2 = paramString2; ; str2 = "")
          {
            localBundle1 = (Bundle)a(localAccountManager.addAccount(str1, str2, null, localBundle2, null, null, null));
            int k = localBundle1.getInt("errorCode");
            if (k != 1)
              break label197;
            int m = j + 1;
            a(paramContext, locala);
            j = m;
            break;
          }
          label197: a(paramContext, locala);
          break label87;
        }
        finally
        {
          a(paramContext, locala);
        }
      }
    }
  }

  public static Bundle a(Context paramContext, Account[] paramArrayOfAccount)
  {
    int i = 0;
    if (!a(paramContext, e(paramContext), false))
      return null;
    String[] arrayOfString = new String[paramArrayOfAccount.length];
    while (true)
    {
      if (i >= paramArrayOfAccount.length)
      {
        Bundle localBundle = new Bundle();
        localBundle.putStringArray("accounts", arrayOfString);
        return a(paramContext, "reveal-actual-name", null, localBundle);
      }
      arrayOfString[i] = paramArrayOfAccount[i].name;
      i++;
    }
  }

  private static Bundle a(Bundle paramBundle)
  {
    if ((!paramBundle.containsKey("errorCode")) && (!paramBundle.containsKey("errorMessage")))
      return paramBundle;
    if (paramBundle.getInt("errorCode") == 101)
      throw new SsoManager.UnauthorizedAccessException(paramBundle.getString("errorMessage"));
    throw new AuthenticatorException(paramBundle.getString("errorMessage"));
  }

  private static <T> T a(AccountManagerFuture<T> paramAccountManagerFuture)
  {
    Object localObject = paramAccountManagerFuture.getResult(15L, TimeUnit.SECONDS);
    if ((!(localObject instanceof Bundle)) || (((Bundle)localObject).getInt("errorCode") == 1))
      return localObject;
    a((Bundle)localObject);
    return localObject;
  }

  public static String a(Context paramContext, Account paramAccount, String paramString)
  {
    Bundle localBundle1 = null;
    if (!a(paramContext, paramAccount.type, false))
      return null;
    AccountManager localAccountManager = AccountManager.get(paramContext);
    Bundle localBundle2 = new Bundle();
    localBundle2.putBoolean("peek", true);
    int i = new Random(System.currentTimeMillis()).nextInt();
    localBundle2.putInt("agent_pid", Process.myPid());
    localBundle2.putInt("token", i);
    localBundle2.putInt("callerPid", Process.myPid());
    localBundle2.putInt("callerUid", Process.myUid());
    int j = 0;
    while (true)
    {
      Bundle localBundle3;
      if (j > 1)
      {
        localBundle3 = localBundle1;
        label105: a(localBundle3);
        return localBundle3.getString("authtoken");
      }
      a locala = new a();
      if (b == -2)
        b = paramContext.getSharedPreferences("SSO_REPORTPID_CONFIG", 0).getInt("REPORTPID_GETAUTHTOKEN_CONFIG", -1);
      if (b != 1)
        b(paramContext, locala, i);
      try
      {
        localBundle1 = (Bundle)a(localAccountManager.getAuthToken(paramAccount, paramString, localBundle2, null, null, null));
        if ((localBundle1 != null) && (localBundle1.getParcelable("intent") != null))
        {
          localBundle2.putString("authAccount", paramAccount.name);
          localBundle1 = a(paramContext, "peek-token", paramString, localBundle2);
          localBundle1.putString("authtoken", localBundle1.getString("token"));
        }
        int k = localBundle1.getInt("errorCode");
        if (k == 1)
        {
          int m = j + 1;
          b(paramContext, locala);
          j = m;
          continue;
        }
        b(paramContext, locala);
        localBundle3 = localBundle1;
        break label105;
      }
      finally
      {
        b(paramContext, locala);
      }
    }
  }

  public static void a(Context paramContext, Account paramAccount, String paramString1, String paramString2)
  {
    if (!a(paramContext, paramAccount.type, true))
      return;
    Bundle localBundle = new Bundle();
    localBundle.putString("authtoken", paramString2);
    localBundle.putString("authAccount", paramAccount.name);
    a(paramContext, "update-token", paramString1, localBundle);
  }

  private static void a(Context paramContext, a parama)
  {
    if (c == 1)
      return;
    IBinder localIBinder;
    Parcel localParcel1;
    Parcel localParcel2;
    if (c == -1)
    {
      localIBinder = parama.a();
      localParcel1 = Parcel.obtain();
      localParcel2 = Parcel.obtain();
      if (localIBinder == null);
    }
    try
    {
      if (localIBinder.transact(3, localParcel2, localParcel1, 0))
      {
        boolean[] arrayOfBoolean = new boolean[1];
        localParcel1.readBooleanArray(arrayOfBoolean);
        localEditor = paramContext.getSharedPreferences("SSO_REPORTPID_CONFIG", 0).edit();
        if (arrayOfBoolean[0] == 0)
          break label124;
        localEditor.putInt("REPORTPID_ADDACCOUNT_CONFIG", 1);
      }
      for (c = 1; Build.VERSION.SDK_INT >= 9; c = 0)
      {
        localEditor.apply();
        localParcel1.recycle();
        localParcel2.recycle();
        c(paramContext, parama);
        return;
        label124: localEditor.putInt("REPORTPID_ADDACCOUNT_CONFIG", 0);
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        SharedPreferences.Editor localEditor;
        localRemoteException.printStackTrace();
        localParcel1.recycle();
        localParcel2.recycle();
        continue;
        localEditor.commit();
      }
    }
    finally
    {
      localParcel1.recycle();
      localParcel2.recycle();
    }
  }

  private static void a(Context paramContext, boolean paramBoolean)
  {
    ComponentName localComponentName = new ComponentName(paramContext, AuthenticationService.class);
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      localPackageManager.setComponentEnabledSetting(localComponentName, i, 1);
      return;
    }
  }

  public static final boolean a(Context paramContext, Account paramAccount)
  {
    return ((Boolean)a(AccountManager.get(paramContext).removeAccount(paramAccount, null, null))).booleanValue();
  }

  private static boolean a(Context paramContext, a parama, int paramInt)
  {
    if (c == -2)
      c = paramContext.getSharedPreferences("SSO_REPORTPID_CONFIG", 0).getInt("REPORTPID_ADDACCOUNT_CONFIG", -1);
    if (c == 1)
      return true;
    return b(paramContext, parama, paramInt);
  }

  private static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    int i = 1;
    boolean bool;
    AuthenticatorDescription localAuthenticatorDescription;
    if (a == 0)
    {
      ServiceInfo localServiceInfo = c(paramContext);
      int k = localServiceInfo.metaData.getInt("com.taobao.android.sso.Version");
      a = k;
      if (k == 0)
        throw new IllegalArgumentException("com.taobao.android.sso.Version is not defined in meta-data of authentication service.\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?");
      if ((localServiceInfo.enabled) && (localServiceInfo.applicationInfo.enabled))
      {
        bool = i;
        e = bool;
      }
    }
    else
    {
      localAuthenticatorDescription = d(paramContext);
      if (localAuthenticatorDescription != null)
        break label115;
      a(paramContext, i);
      if (paramBoolean)
        break label105;
      i = 0;
    }
    label105: label115: 
    do
    {
      return i;
      bool = false;
      break;
      f(paramContext);
      e = i;
      return i;
      if (localAuthenticatorDescription.packageName.equals(paramContext.getPackageName()))
      {
        e = i;
        return i;
      }
      PackageManager localPackageManager = paramContext.getPackageManager();
      try
      {
        if (f == null)
          throw new IllegalStateException("Whitelist not set yet for account type: " + paramString);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Signature[] arrayOfSignature;
        do
        {
          ResolveInfo localResolveInfo = localPackageManager.resolveService(new Intent("android.accounts.AccountAuthenticator").setPackage(localAuthenticatorDescription.packageName), 128);
          if (localResolveInfo == null)
            break;
          if (localResolveInfo.serviceInfo.metaData != null)
          {
            j = localResolveInfo.serviceInfo.metaData.getInt("com.taobao.android.sso.Version");
            if (j != 0)
              break label325;
          }
          throw new AuthenticatorException("The current account authenticator installed by " + localResolveInfo.serviceInfo.packageName + " is incompatible with SSO authenticator.");
          arrayOfSignature = localPackageManager.getPackageInfo(localAuthenticatorDescription.packageName, 64).signatures;
        }
        while ((arrayOfSignature != null) && (f.a(arrayOfSignature)));
        throw new SsoManager.UnauthorizedAccessException("sso service verify whitelist failed");
        int j = 0;
        if (j < a)
        {
          a(paramContext, i);
          if (j == i);
          try
          {
            Bundle localBundle2 = b(paramContext);
            Bundle localBundle1;
            for (Object localObject2 = localBundle2; ; localObject2 = localBundle1)
            {
              if (localObject2 == null)
                a(paramContext, false);
              f(paramContext);
              return i;
              localBundle1 = a(paramContext, "abdicate", null, null);
            }
          }
          finally
          {
            if (0 == 0)
              a(paramContext, false);
          }
        }
      }
    }
    while (!e);
    label325: a(paramContext, false);
    e = false;
    return i;
  }

  public static boolean a(Context paramContext, Signature[] paramArrayOfSignature, long paramLong)
  {
    String str = e(paramContext);
    if (f == null)
      f = new b(paramContext.getApplicationContext());
    boolean bool = f.a(paramArrayOfSignature, paramLong);
    if (!a(paramContext, str, false));
    do
    {
      return false;
      if (e)
        return bool;
    }
    while (paramLong <= a(paramContext, "whitelist-timestamp", null, null).getLong("timestamp"));
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("signatures", new ArrayList(Arrays.asList(paramArrayOfSignature)));
    localBundle.putLong("timestamp", paramLong);
    a(paramContext, "update-whitelist", null, localBundle);
    return true;
  }

  public static Account[] a(Context paramContext)
  {
    return AccountManager.get(paramContext).getAccountsByType(e(paramContext));
  }

  private static Bundle b(Context paramContext)
  {
    Account[] arrayOfAccount = a(paramContext);
    Account localAccount;
    if ((arrayOfAccount == null) || (arrayOfAccount.length == 0))
      localAccount = a(paramContext, "淘宝主账号", "淘宝主账号", "dummy", null);
    for (int i = 1; ; i = 0)
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("request", "abdicate");
      localBundle1.putInt("callerPid", Process.myPid());
      localBundle1.putInt("callerUid", Process.myUid());
      if (localAccount == null)
        localAccount = arrayOfAccount[0];
      int j = 0;
      Bundle localBundle2 = null;
      while (true)
      {
        if (j > 1);
        do
        {
          if (i != 0)
            a(paramContext, localAccount);
          if ((localBundle2 == null) || (localBundle2.getParcelable("intent") == null))
            break;
          throw new AuthenticatorException("upgrade exception");
          localBundle2 = (Bundle)a(AccountManager.get(paramContext).getAuthToken(localAccount, "", localBundle1, null, null, null));
        }
        while (localBundle2.getInt("errorCode") != 1);
        j++;
      }
      a(localBundle2);
      return localBundle2;
      localAccount = null;
    }
  }

  private static void b(Context paramContext, a parama)
  {
    if (b == 1)
      return;
    IBinder localIBinder;
    Parcel localParcel1;
    Parcel localParcel2;
    if (b == -1)
    {
      localIBinder = parama.a();
      localParcel1 = Parcel.obtain();
      localParcel2 = Parcel.obtain();
      if (localIBinder == null);
    }
    try
    {
      if (localIBinder.transact(2, localParcel2, localParcel1, 0))
      {
        boolean[] arrayOfBoolean = new boolean[1];
        localParcel1.readBooleanArray(arrayOfBoolean);
        localEditor = paramContext.getSharedPreferences("SSO_REPORTPID_CONFIG", 0).edit();
        if (arrayOfBoolean[0] == 0)
          break label124;
        localEditor.putInt("REPORTPID_GETAUTHTOKEN_CONFIG", 1);
      }
      for (b = 1; Build.VERSION.SDK_INT >= 9; b = 0)
      {
        localEditor.apply();
        localParcel1.recycle();
        localParcel2.recycle();
        c(paramContext, parama);
        return;
        label124: localEditor.putInt("REPORTPID_GETAUTHTOKEN_CONFIG", 0);
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        SharedPreferences.Editor localEditor;
        localRemoteException.printStackTrace();
        localParcel1.recycle();
        localParcel2.recycle();
        continue;
        localEditor.commit();
      }
    }
    finally
    {
      localParcel1.recycle();
      localParcel2.recycle();
    }
  }

  // ERROR //
  private static boolean b(Context paramContext, a parama, int paramInt)
  {
    // Byte code:
    //   0: new 368	android/content/Intent
    //   3: dup
    //   4: invokespecial 472	android/content/Intent:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: invokestatic 339	com/taobao/android/sso/SsoManager:d	(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;
    //   12: astore 4
    //   14: aload 4
    //   16: ifnull +14 -> 30
    //   19: aload 4
    //   21: getfield 349	android/accounts/AuthenticatorDescription:packageName	Ljava/lang/String;
    //   24: invokestatic 478	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   27: ifeq +5 -> 32
    //   30: iconst_0
    //   31: ireturn
    //   32: aload_3
    //   33: aload 4
    //   35: getfield 349	android/accounts/AuthenticatorDescription:packageName	Ljava/lang/String;
    //   38: ldc_w 480
    //   41: invokevirtual 485	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 489	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   47: pop
    //   48: aload_0
    //   49: aload_3
    //   50: aload_1
    //   51: iconst_1
    //   52: invokevirtual 493	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   55: ifeq +64 -> 119
    //   58: invokestatic 235	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   61: astore 7
    //   63: invokestatic 235	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   66: astore 8
    //   68: aload_1
    //   69: invokevirtual 229	com/taobao/android/sso/a:a	()Landroid/os/IBinder;
    //   72: astore 11
    //   74: aload 8
    //   76: iload_2
    //   77: invokevirtual 497	android/os/Parcel:writeInt	(I)V
    //   80: aload 11
    //   82: ifnull +74 -> 156
    //   85: aload 11
    //   87: iconst_1
    //   88: aload 8
    //   90: aload 7
    //   92: iconst_0
    //   93: invokeinterface 241 5 0
    //   98: istore 12
    //   100: iload 12
    //   102: ifeq +54 -> 156
    //   105: aload 7
    //   107: invokevirtual 267	android/os/Parcel:recycle	()V
    //   110: aload 8
    //   112: invokevirtual 267	android/os/Parcel:recycle	()V
    //   115: iconst_1
    //   116: ireturn
    //   117: astore 6
    //   119: iconst_0
    //   120: ireturn
    //   121: astore 10
    //   123: aload 10
    //   125: invokevirtual 272	android/os/RemoteException:printStackTrace	()V
    //   128: aload 7
    //   130: invokevirtual 267	android/os/Parcel:recycle	()V
    //   133: aload 8
    //   135: invokevirtual 267	android/os/Parcel:recycle	()V
    //   138: goto -19 -> 119
    //   141: astore 9
    //   143: aload 7
    //   145: invokevirtual 267	android/os/Parcel:recycle	()V
    //   148: aload 8
    //   150: invokevirtual 267	android/os/Parcel:recycle	()V
    //   153: aload 9
    //   155: athrow
    //   156: aload 7
    //   158: invokevirtual 267	android/os/Parcel:recycle	()V
    //   161: aload 8
    //   163: invokevirtual 267	android/os/Parcel:recycle	()V
    //   166: goto -47 -> 119
    //
    // Exception table:
    //   from	to	target	type
    //   48	68	117	java/lang/RuntimeException
    //   105	115	117	java/lang/RuntimeException
    //   128	138	117	java/lang/RuntimeException
    //   143	156	117	java/lang/RuntimeException
    //   156	166	117	java/lang/RuntimeException
    //   68	80	121	android/os/RemoteException
    //   85	100	121	android/os/RemoteException
    //   68	80	141	finally
    //   85	100	141	finally
    //   123	128	141	finally
  }

  private static ServiceInfo c(Context paramContext)
  {
    ComponentName localComponentName = new ComponentName(paramContext, AuthenticationService.class);
    try
    {
      ServiceInfo localServiceInfo = paramContext.getPackageManager().getServiceInfo(localComponentName, 640);
      return localServiceInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    throw new IllegalArgumentException("Authentication service not found.\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?");
  }

  private static void c(Context paramContext, a parama)
  {
    AuthenticatorDescription localAuthenticatorDescription = d(paramContext);
    if ((localAuthenticatorDescription == null) || (TextUtils.isEmpty(localAuthenticatorDescription.packageName)))
      return;
    try
    {
      paramContext.unbindService(parama);
      Intent localIntent = new Intent();
      localIntent.setClassName(localAuthenticatorDescription.packageName, PidGetterService.class.getName());
      paramContext.stopService(localIntent);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
  }

  private static AuthenticatorDescription d(Context paramContext)
  {
    String str = e(paramContext);
    AuthenticatorDescription[] arrayOfAuthenticatorDescription = AccountManager.get(paramContext).getAuthenticatorTypes();
    int i = arrayOfAuthenticatorDescription.length;
    for (int j = 0; ; j++)
    {
      AuthenticatorDescription localAuthenticatorDescription;
      if (j >= i)
        localAuthenticatorDescription = null;
      do
      {
        return localAuthenticatorDescription;
        localAuthenticatorDescription = arrayOfAuthenticatorDescription[j];
      }
      while (str.equals(localAuthenticatorDescription.type));
    }
  }

  private static String e(Context paramContext)
  {
    if (d == null)
    {
      XmlResourceParser localXmlResourceParser;
      while (true)
      {
        try
        {
          ServiceInfo localServiceInfo = c(paramContext);
          int i = localServiceInfo.metaData.getInt("android.accounts.AccountAuthenticator");
          localXmlResourceParser = paramContext.getPackageManager().getResourcesForApplication(localServiceInfo.packageName).getXml(i);
          j = localXmlResourceParser.getEventType();
          if (j == 2)
          {
            if ("account-authenticator".equals(localXmlResourceParser.getName()))
              break;
            throw new IllegalStateException("Invalid xml");
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          throw new IllegalArgumentException("Failed to parse /res/xml/authenticator.xml\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?");
        }
        int j = localXmlResourceParser.next();
      }
      String str = localXmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "accountType");
      d = str;
      return str;
    }
    return d;
  }

  private static void f(Context paramContext)
  {
    String str = paramContext.getPackageName();
    long l1 = 64L;
    long l2 = 15000L;
    while (true)
    {
      if (l2 > 0L)
      {
        AuthenticatorDescription localAuthenticatorDescription = d(paramContext);
        if ((localAuthenticatorDescription == null) || (!localAuthenticatorDescription.packageName.equals(str)));
      }
      else
      {
        return;
      }
      if (l1 < 1000L)
        l1 *= 2L;
      try
      {
        Thread.sleep(l1);
        label63: l2 -= l1;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label63;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.sso.SsoManager
 * JD-Core Version:    0.6.2
 */