package com.alipay.android.lib.plusin.protocol;

import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.net.Response;
import com.alipay.android.lib.plusin.ui.WindowData;
import java.util.HashMap;
import java.util.Map;

public class FrameFactoryManager
{
  private static FrameFactoryManager a;
  private Map b = new HashMap();

  protected static FrameData a(ProtocolType paramProtocolType, FrameData paramFrameData)
  {
    if (paramFrameData == null)
      throw new AppErrorException(FrameFactoryManager.class, "frame data is null");
    FrameFactoryManager localFrameFactoryManager = a();
    IFrameFactory localIFrameFactory = (IFrameFactory)localFrameFactoryManager.b.get(paramProtocolType);
    if (localIFrameFactory == null)
      throw new AppErrorException(FrameFactoryManager.class, "no such frame factory type " + paramProtocolType);
    boolean bool = localFrameFactoryManager.b.containsKey(paramProtocolType);
    WindowData localWindowData = null;
    if (bool)
      localWindowData = localIFrameFactory.b(paramFrameData);
    if (localWindowData == null);
    while (true)
    {
      localIFrameFactory.a(paramFrameData);
      paramFrameData.i().a(paramProtocolType);
      return paramFrameData;
      paramFrameData = localWindowData;
    }
  }

  private static FrameFactoryManager a()
  {
    if (a == null)
      a = new FrameFactoryManager();
    return a;
  }

  public static void a(IFrameFactory paramIFrameFactory)
  {
    FrameFactoryManager localFrameFactoryManager = a();
    ProtocolType localProtocolType = paramIFrameFactory.a();
    if (!localFrameFactoryManager.b.containsKey(localProtocolType))
      localFrameFactoryManager.b.put(localProtocolType, paramIFrameFactory);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.protocol.FrameFactoryManager
 * JD-Core Version:    0.6.2
 */