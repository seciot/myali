package com.androidquery.auth;

import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.AsyncTask;
import android.os.Bundle;
import com.androidquery.util.AQUtility;
import java.io.IOException;

class GoogleHandle$Task extends AsyncTask<String, String, Bundle>
{
  private GoogleHandle$Task(GoogleHandle paramGoogleHandle)
  {
  }

  protected Bundle doInBackground(String[] paramArrayOfString)
  {
    AccountManagerFuture localAccountManagerFuture = GoogleHandle.access$0(this.this$0).getAuthToken(GoogleHandle.access$1(this.this$0), GoogleHandle.access$2(this.this$0), null, GoogleHandle.access$3(this.this$0), null, null);
    try
    {
      Bundle localBundle = (Bundle)localAccountManagerFuture.getResult();
      return localBundle;
    }
    catch (AuthenticatorException localAuthenticatorException)
    {
      AQUtility.debug(localAuthenticatorException);
      return null;
    }
    catch (IOException localIOException)
    {
      AQUtility.debug(localIOException);
      return null;
    }
    catch (OperationCanceledException localOperationCanceledException)
    {
    }
    return null;
  }

  protected void onPostExecute(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("authtoken")))
    {
      GoogleHandle.access$4(this.this$0, paramBundle.getString("authtoken"));
      this.this$0.success(GoogleHandle.access$3(this.this$0));
      return;
    }
    this.this$0.failure(GoogleHandle.access$3(this.this$0), -102, "rejected");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.auth.GoogleHandle.Task
 * JD-Core Version:    0.6.2
 */