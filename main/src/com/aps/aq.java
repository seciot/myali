package com.aps;

import android.location.Location;
import android.net.wifi.ScanResult;
import android.telephony.CellLocation;
import java.util.List;

public final class aq
{
  private static int c = 1000;
  private static int d = 50;
  private static int e = 200;
  protected au a = new au(this);
  protected ar b = new ar(this);
  private ac f;

  protected aq(ac paramac)
  {
    this.f = paramac;
  }

  protected static void a(int paramInt1, int paramInt2)
  {
    c = paramInt1;
    d = paramInt2 / 4;
    e = paramInt2;
  }

  protected final boolean a(Location paramLocation)
  {
    int i = 1;
    ac localac = this.f;
    boolean bool = false;
    if (localac == null)
      return bool;
    List localList = this.f.i();
    new StringBuilder("cell.list.size: ").append(localList.size()).toString();
    int j = localList.size();
    Object localObject = null;
    bool = false;
    as localas1;
    if (j >= 2)
    {
      localas1 = new as((CellLocation)localList.get(i));
      if (this.b.b != null)
        break label124;
    }
    while (true)
    {
      localObject = localas1;
      bool = i;
      label107: label124: int k;
      label206: int m;
      if (bool)
      {
        this.b.a = localObject;
        return bool;
        long l = paramLocation.getTime() - ((Long)localList.get(0)).longValue();
        new StringBuilder("cell diff:").append(l).append("loc's time:").append(paramLocation.getTime()).append("cell's time:").append((Long)localList.get(0)).toString();
        if (l > 6000000L)
          break label325;
        k = i;
        if (k == 0)
          break label343;
        as localas2 = this.b.a;
        if ((localas1.e != localas2.e) || (localas1.d != localas2.d) || (localas1.c != localas2.c) || (localas1.b != localas2.b) || (localas1.a != localas2.a))
          break label331;
        m = i;
        label288: if (m != 0)
          break label337;
      }
      label325: label331: label337: int i1;
      for (int n = i; ; i1 = 0)
      {
        new StringBuilder("collect cell?: ").append(n).toString();
        bool = n;
        localObject = localas1;
        break label107;
        break;
        k = 0;
        break label206;
        m = 0;
        break label288;
      }
      label343: new StringBuilder("cell.location's distance:").append(paramLocation.distanceTo(this.b.b)).toString();
      if (paramLocation.distanceTo(this.b.b) <= e)
        i = 0;
    }
  }

  protected final boolean b(Location paramLocation)
  {
    int i = 1;
    int j = 0;
    if (this.f == null)
      return false;
    List localList1 = this.f.j();
    List localList3;
    int k;
    List localList2;
    if (localList1.size() >= 2)
    {
      localList3 = (List)localList1.get(i);
      if (this.a.b == null)
      {
        k = i;
        localList2 = localList3;
      }
    }
    while (true)
    {
      label63: int i1;
      label228: List localList4;
      label323: boolean bool;
      if (k != 0)
      {
        this.a.a.clear();
        int n = localList2.size();
        while (true)
          if (j < n)
          {
            this.a.a.add(new at(((ScanResult)localList2.get(j)).BSSID));
            j++;
            continue;
            long l = paramLocation.getTime() - ((Long)localList1.get(0)).longValue();
            new StringBuilder("wifi diff: ").append(l).append(" loc's time:").append(paramLocation.getTime()).append(" wifi's time:").append((Long)localList1.get(0)).append(" MIN_TIME,").append(c).toString();
            if (l <= 600000L)
            {
              i1 = i;
              if (i1 == 0)
                break label462;
              if ((localList3 == null) || (localList3.size() <= 0))
                break label529;
              localList4 = this.a.a;
              if (localList3 != null)
                new StringBuilder("new WifiResult size:").append(localList3.size()).toString();
              if (localList4 != null)
                new StringBuilder("Last WifiResult size:").append(localList4.size()).toString();
              if (localList3 != null)
                break label370;
              if (localList4 == null)
                break label523;
              bool = false;
            }
          }
      }
      while (true)
      {
        label326: new StringBuilder("the two wifiresult is same? ").append(bool).toString();
        label344: if (!bool)
          k = i;
        while (true)
          if (k != 0)
          {
            localList2 = localList3;
            break label63;
            i1 = 0;
            break label228;
            label370: if (localList4 == null)
              break label323;
            if (localList4.size() == 0)
            {
              if (localList3.size() == localList4.size())
              {
                bool = i;
                break label344;
              }
              bool = false;
              break label344;
            }
            if (Math.abs(localList3.size() - localList4.size()) / localList4.size() >= 0.2D)
              break label323;
            bool = i;
            break label326;
            k = 0;
            continue;
            label462: new StringBuilder("distance interval:").append(paramLocation.distanceTo(this.a.b)).toString();
            if (paramLocation.distanceTo(this.a.b) > d)
              break;
            i = 0;
            break;
            return k;
          }
        localList2 = localList3;
        break label63;
        label523: bool = i;
      }
      label529: localList2 = localList3;
      int m = 0;
      continue;
      m = 0;
      localList2 = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.aq
 * JD-Core Version:    0.6.2
 */