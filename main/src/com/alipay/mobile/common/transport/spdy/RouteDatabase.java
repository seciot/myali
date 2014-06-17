package com.alipay.mobile.common.transport.spdy;

import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.SSLHandshakeException;

public final class RouteDatabase
{
  private final Set a = new LinkedHashSet();

  public final void connected(Route paramRoute)
  {
    try
    {
      this.a.remove(paramRoute);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void failed(Route paramRoute, IOException paramIOException)
  {
    try
    {
      this.a.add(paramRoute);
      if (!(paramIOException instanceof SSLHandshakeException))
        this.a.add(paramRoute.flipTlsMode());
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int failedRoutesCount()
  {
    try
    {
      int i = this.a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean shouldPostpone(Route paramRoute)
  {
    try
    {
      boolean bool = this.a.contains(paramRoute);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.RouteDatabase
 * JD-Core Version:    0.6.2
 */