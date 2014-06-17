package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Callable;

class ConnectionPool$1
  implements Callable
{
  ConnectionPool$1(ConnectionPool paramConnectionPool)
  {
  }

  public Void call()
  {
    ArrayList localArrayList = new ArrayList(2);
    int k;
    for (int i = 0; ; i = k)
      while (true)
      {
        synchronized (this.this$0)
        {
          ListIterator localListIterator1 = ConnectionPool.access$000(this.this$0).listIterator(ConnectionPool.access$000(this.this$0).size());
          Connection localConnection2;
          if (localListIterator1.hasPrevious())
          {
            localConnection2 = (Connection)localListIterator1.previous();
            if ((!localConnection2.isAlive()) || (localConnection2.isExpired(ConnectionPool.access$100(this.this$0))))
            {
              localListIterator1.remove();
              localArrayList.add(localConnection2);
              if (localArrayList.size() != 2)
                break label265;
            }
          }
          else
          {
            ListIterator localListIterator2 = ConnectionPool.access$000(this.this$0).listIterator(ConnectionPool.access$000(this.this$0).size());
            if ((!localListIterator2.hasPrevious()) || (i <= ConnectionPool.access$200(this.this$0)))
              continue;
            Connection localConnection1 = (Connection)localListIterator2.previous();
            if (!localConnection1.isIdle())
              break label259;
            localArrayList.add(localConnection1);
            localListIterator2.remove();
            j = i - 1;
            break label271;
          }
          if (!localConnection2.isIdle())
            break label265;
          k = i + 1;
          break;
          Iterator localIterator = localArrayList.iterator();
          if (localIterator.hasNext())
            Util.closeQuietly((Connection)localIterator.next());
        }
        return null;
        label259: int j = i;
        break label271;
        label265: k = i;
        break;
        label271: i = j;
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.ConnectionPool.1
 * JD-Core Version:    0.6.2
 */