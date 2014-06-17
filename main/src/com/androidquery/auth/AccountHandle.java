package com.androidquery.auth;

import android.content.Context;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxStatus;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.http.HttpRequest;

public abstract class AccountHandle
{
  private LinkedHashSet<AbstractAjaxCallback<?, ?>> a;

  public void applyToken(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback, HttpURLConnection paramHttpURLConnection)
  {
  }

  public void applyToken(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback, HttpRequest paramHttpRequest)
  {
  }

  protected abstract void auth();

  public void auth(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback)
  {
    try
    {
      if (this.a == null)
      {
        this.a = new LinkedHashSet();
        this.a.add(paramAbstractAjaxCallback);
        auth();
      }
      while (true)
      {
        return;
        this.a.add(paramAbstractAjaxCallback);
      }
    }
    finally
    {
    }
  }

  public abstract boolean authenticated();

  public abstract boolean expired(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback, AjaxStatus paramAjaxStatus);

  protected void failure(Context paramContext, int paramInt, String paramString)
  {
    try
    {
      Iterator localIterator;
      if (this.a != null)
        localIterator = this.a.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          this.a = null;
          return;
        }
        ((AbstractAjaxCallback)localIterator.next()).failure(paramInt, paramString);
      }
    }
    finally
    {
    }
  }

  public String getCacheUrl(String paramString)
  {
    return paramString;
  }

  public String getNetworkUrl(String paramString)
  {
    return paramString;
  }

  public abstract boolean reauth(AbstractAjaxCallback<?, ?> paramAbstractAjaxCallback);

  protected void success(Context paramContext)
  {
    try
    {
      Iterator localIterator;
      if (this.a != null)
        localIterator = this.a.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          this.a = null;
          return;
        }
        ((AbstractAjaxCallback)localIterator.next()).async(paramContext);
      }
    }
    finally
    {
    }
  }

  public void unauth()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.auth.AccountHandle
 * JD-Core Version:    0.6.2
 */