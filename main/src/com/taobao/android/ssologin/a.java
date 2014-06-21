package com.taobao.android.ssologin;

import android.accounts.Account;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Looper;
import com.taobao.android.sso.SsoManager;
import com.taobao.android.sso.internal.d;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class a
{
  private b a;
  private Context b;
  private int c = 0;
  private boolean d = false;

  public a(b paramb, Context paramContext)
  {
    this.a = paramb;
    this.b = paramContext.getApplicationContext();
  }

  private String a(Account paramAccount)
  {
    if (paramAccount == null)
      return null;
    try
    {
      Account[] arrayOfAccount = { paramAccount };
      String str = SsoManager.a(this.b, arrayOfAccount).getString(paramAccount.name);
      return str;
    }
    catch (OperationCanceledException localOperationCanceledException)
    {
      localOperationCanceledException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
    return null;
  }

  private void b()
  {
    int i = 0;
    try
    {
      if (this.d)
        return;
      long l = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").parse(d.a).getTime();
      arrayOfString = d.b;
      arrayOfSignature = new Signature[arrayOfString.length];
      int j = arrayOfString.length;
      k = 0;
      if (i >= j)
      {
        this.d = SsoManager.e(this.b, arrayOfSignature, l);
        return;
      }
    }
    catch (OperationCanceledException localOperationCanceledException)
    {
      while (true)
      {
        String[] arrayOfString;
        Signature[] arrayOfSignature;
        int k;
        localOperationCanceledException.printStackTrace();
        return;
        arrayOfSignature[k] = new Signature(arrayOfString[i]);
        k++;
        i++;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
    }
  }

  private Account c()
  {
    Account[] arrayOfAccount = SsoManager.a(this.b);
    Account localAccount;
    if ((arrayOfAccount == null) || (arrayOfAccount.length == 0))
    {
      localAccount = null;
      return localAccount;
    }
    int i = arrayOfAccount.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return null;
      localAccount = arrayOfAccount[j];
      if ("淘宝主账号".equals(localAccount.name))
        break;
    }
  }

  public final c a()
  {
    if (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId())
      throw new CalledFromWrongThreadException();
    b();
    Account localAccount = c();
    if (localAccount == null);
    String str1;
    String str2;
    do
    {
      return null;
      try
      {
        String str3 = SsoManager.a(this.b, localAccount, "alibaba:ssotoken");
        str1 = str3;
        if ((str1 == null) || (str1.length() == 0))
          throw new AuthenticatorException("sso service has err account- empty ssotoken");
      }
      catch (OperationCanceledException localOperationCanceledException)
      {
        while (true)
        {
          localOperationCanceledException.printStackTrace();
          str1 = null;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        while (true)
        {
          localRuntimeException.printStackTrace();
          str1 = null;
        }
        str2 = a(localAccount);
      }
    }
    while ((str2 == null) || (str2.length() == 0));
    this.a.a(str1, str2);
    return null;
  }

  public final void a(String paramString)
  {
    if (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId())
      throw new CalledFromWrongThreadException();
    if ((paramString == null) || (paramString.length() == 0));
    Account localAccount;
    do
    {
      return;
      b();
      localAccount = c();
    }
    while (!paramString.equals(a(localAccount)));
    try
    {
      SsoManager.a(this.b, localAccount);
      return;
    }
    catch (OperationCanceledException localOperationCanceledException)
    {
      localOperationCanceledException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    if (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId())
      throw new CalledFromWrongThreadException();
    if ((paramString1 == null) || (paramString2 == null) || (paramString1.length() == 0) || (paramString2.length() == 0));
    while (true)
    {
      return false;
      b();
      Account localAccount = c();
      if (localAccount == null);
      try
      {
        try
        {
          SsoManager.a(this.b, paramString2, "淘宝主账号", "alibaba:ssotoken", paramString1);
          break label153;
          if (paramString2.equals(a(localAccount)))
          {
            SsoManager.a(this.b, localAccount, "alibaba:ssotoken", paramString1);
          }
          else
          {
            if (!SsoManager.a(this.b, localAccount))
              continue;
            SsoManager.a(this.b, paramString2, "淘宝主账号", "alibaba:ssotoken", paramString1);
          }
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          return false;
        }
        catch (RuntimeException localRuntimeException)
        {
          localRuntimeException.printStackTrace();
          return false;
        }
        label153: return true;
      }
      catch (OperationCanceledException localOperationCanceledException)
      {
      }
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.ssologin.a
 * JD-Core Version:    0.6.2
 */