package com.aps;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;

public final class ac
{
  private static ah C = null;
  private static int G = 10000;
  private static ac v = null;
  private List A = new ArrayList();
  private Timer B = null;
  private Thread D = null;
  private Thread E = null;
  private Looper F = null;
  private Context a = null;
  private TelephonyManager b = null;
  private LocationManager c = null;
  private WifiManager d = null;
  private String e = "";
  private String f = "";
  private String g = "";
  private boolean h = false;
  private int i = 0;
  private boolean j = false;
  private long k = -1L;
  private String l = "";
  private String m = "";
  private int n = 0;
  private int o = 0;
  private int p = 0;
  private String q = "";
  private String r = "";
  private long s = 0L;
  private long t = 0L;
  private boolean u = true;
  private af w = null;
  private ag x = null;
  private CellLocation y = null;
  private ai z = null;

  private ac(Context paramContext)
  {
    if (paramContext == null);
    do
    {
      return;
      this.a = paramContext;
      this.e = Build.MODEL;
      this.b = ((TelephonyManager)paramContext.getSystemService("phone"));
      this.c = ((LocationManager)paramContext.getSystemService("location"));
      this.d = ((WifiManager)paramContext.getSystemService("wifi"));
    }
    while ((this.b == null) || (this.d == null));
    this.f = this.b.getDeviceId();
    this.g = this.b.getSubscriberId();
    if (this.d.getConnectionInfo() != null)
    {
      this.m = this.d.getConnectionInfo().getMacAddress();
      if ((this.m != null) && (this.m.length() > 0))
        this.m = this.m.replace(":", "");
    }
    int i2;
    if ((this.b.getNetworkOperator() != null) && (this.b.getNetworkOperator().length() > 0) && (this.b.getNetworkOperator().getBytes()[0] >= 48) && (this.b.getNetworkOperator().getBytes()[0] <= 57))
    {
      if (this.b.getNetworkOperator().length() >= 3)
        break label462;
      i2 = 0;
      this.n = i2;
      if (this.b.getNetworkOperator().length() >= 5)
        break label482;
    }
    label462: label482: for (int i3 = 0; ; i3 = Integer.parseInt(this.b.getNetworkOperator().substring(3, 5)))
    {
      this.o = i3;
      this.p = this.b.getNetworkType();
      this.q = paramContext.getPackageName();
      int i1 = this.b.getPhoneType();
      boolean bool = false;
      if (i1 == 2)
        bool = true;
      this.h = bool;
      return;
      i2 = Integer.parseInt(this.b.getNetworkOperator().substring(0, 3));
      break;
    }
  }

  protected static ac a(Context paramContext)
  {
    if ((v == null) && (b(paramContext)))
    {
      LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
      if (localLocationManager == null)
        break label98;
      Iterator localIterator = localLocationManager.getAllProviders().iterator();
      String str;
      do
      {
        if (!localIterator.hasNext())
          break;
        str = (String)localIterator.next();
      }
      while ((!str.equals("passive")) && (!str.equals("gps")));
    }
    label98: for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        v = new ac(paramContext);
      return v;
    }
  }

  private static boolean b(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    while (true)
    {
      int i1;
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramContext.getPackageName(), 4096);
        String[] arrayOfString = localPackageInfo.requestedPermissions;
        i1 = 0;
        if (i1 >= av.a.length)
          break;
        if (!av.a(arrayOfString, av.a[i1]))
          return false;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
        return false;
      }
      i1++;
    }
    return true;
  }

  protected final void a()
  {
    if (this.w != null)
    {
      af localaf = this.w;
      if (this.b != null)
        this.b.listen(localaf, 0);
      this.w = null;
    }
    if (this.D != null)
    {
      this.u = false;
      this.D.interrupt();
      this.D = null;
    }
    ag localag;
    ai localai;
    if (this.x != null)
    {
      localag = this.x;
      if ((this.c == null) || (localag == null))
        this.x = null;
    }
    else if (this.z != null)
    {
      localai = this.z;
      if ((localai != null) && (this.a != null))
        break label182;
    }
    while (true)
    {
      this.z = null;
      if (this.B != null)
      {
        this.B.cancel();
        this.B = null;
      }
      if (this.F != null)
      {
        this.F.quit();
        this.F = null;
      }
      if (this.E != null)
      {
        this.E.interrupt();
        this.E = null;
      }
      return;
      this.c.removeNmeaListener(localag);
      break;
      label182: this.a.unregisterReceiver(localai);
    }
  }

  protected final void a(ah paramah)
  {
    C = null;
    a();
    if (this.F != null)
    {
      this.F.quit();
      this.F = null;
    }
    if (this.E != null)
    {
      this.E.interrupt();
      this.E = null;
    }
    this.E = new ad(this, "");
    this.E.start();
  }

  protected final boolean b()
  {
    if ((this.b != null) && (this.b.getSimState() == 5) && (this.j))
      return true;
    if (this.b != null)
    {
      CellLocation localCellLocation = this.b.getCellLocation();
      if (localCellLocation != null)
      {
        this.t = System.currentTimeMillis();
        this.y = localCellLocation;
        return true;
      }
    }
    return false;
  }

  protected final boolean c()
  {
    return (this.d != null) && (this.d.isWifiEnabled());
  }

  protected final boolean d()
  {
    return (this.c != null) && (this.c.isProviderEnabled("gps"));
  }

  protected final String e()
  {
    if (this.e == null)
      this.e = Build.MODEL;
    if (this.e != null)
      return this.e;
    return "";
  }

  protected final String f()
  {
    if ((this.f == null) && (this.a != null))
    {
      this.b = ((TelephonyManager)this.a.getSystemService("phone"));
      if (this.b != null)
        this.f = this.b.getDeviceId();
    }
    if (this.f != null)
      return this.f;
    return "";
  }

  protected final String g()
  {
    if ((this.g == null) && (this.a != null))
    {
      this.b = ((TelephonyManager)this.a.getSystemService("phone"));
      if (this.b != null)
        this.g = this.b.getSubscriberId();
    }
    if (this.g != null)
      return this.g;
    return "";
  }

  protected final boolean h()
  {
    return this.h;
  }

  protected final List i()
  {
    if (Settings.System.getInt(this.a.getContentResolver(), "airplane_mode_on", 0) == 1)
      return new ArrayList();
    if (b())
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(Long.valueOf(this.t));
      localArrayList.add(this.y);
      return localArrayList;
    }
    return new ArrayList();
  }

  protected final List j()
  {
    if (c())
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(Long.valueOf(this.s));
      localArrayList.add(this.A);
      return localArrayList;
    }
    return new ArrayList();
  }

  protected final byte k()
  {
    if (b())
      return (byte)this.i;
    return -128;
  }

  protected final List l()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.b == null)
      return localArrayList;
    if (!b())
      return localArrayList;
    Iterator localIterator = this.b.getNeighboringCellInfo().iterator();
    for (int i1 = 0; localIterator.hasNext(); i1++)
    {
      NeighboringCellInfo localNeighboringCellInfo = (NeighboringCellInfo)localIterator.next();
      if (i1 > 15)
        break;
      localArrayList.add(localNeighboringCellInfo);
    }
    return localArrayList;
  }

  protected final List m()
  {
    ArrayList localArrayList = new ArrayList();
    String str2;
    long l1;
    if (d())
    {
      long l2 = this.k;
      str2 = this.l;
      l1 = l2;
    }
    for (String str1 = str2; ; str1 = "")
    {
      if (l1 <= 0L)
        l1 = System.currentTimeMillis() / 1000L;
      localArrayList.add(Long.valueOf(l1));
      localArrayList.add(str1);
      return localArrayList;
      l1 = -1L;
    }
  }

  protected final String n()
  {
    if ((this.m == null) && (this.a != null))
    {
      this.d = ((WifiManager)this.a.getSystemService("wifi"));
      if ((this.d != null) && (this.d.getConnectionInfo() != null))
      {
        this.m = this.d.getConnectionInfo().getMacAddress();
        if ((this.m != null) && (this.m.length() > 0))
          this.m = this.m.replace(":", "");
      }
    }
    if (this.m != null)
      return this.m;
    return "";
  }

  protected final int o()
  {
    return this.n;
  }

  protected final int p()
  {
    return this.o;
  }

  protected final int q()
  {
    return this.p;
  }

  protected final String r()
  {
    if ((this.q == null) && (this.a != null))
      this.q = this.a.getPackageName();
    if (this.q != null)
      return this.q;
    return "";
  }

  protected final byte s()
  {
    boolean bool = d();
    int i1 = 0;
    if (bool)
    {
      LocationManager localLocationManager = this.c;
      i1 = 0;
      if (localLocationManager != null)
      {
        GpsStatus localGpsStatus = this.c.getGpsStatus(null);
        i1 = 0;
        if (localGpsStatus != null)
        {
          int i2 = localGpsStatus.getMaxSatellites();
          Iterator localIterator = localGpsStatus.getSatellites().iterator();
          while ((localIterator.hasNext()) && (i1 <= i2))
          {
            localIterator.next();
            i1++;
          }
        }
      }
    }
    return (byte)i1;
  }

  protected final int t()
  {
    boolean bool = d();
    int i1 = 0;
    int i3;
    float f1;
    if (bool)
    {
      LocationManager localLocationManager = this.c;
      i1 = 0;
      if (localLocationManager != null)
      {
        GpsStatus localGpsStatus = this.c.getGpsStatus(null);
        i1 = 0;
        if (localGpsStatus != null)
        {
          int i2 = localGpsStatus.getMaxSatellites();
          Iterator localIterator = localGpsStatus.getSatellites().iterator();
          i3 = 0;
          if ((localIterator.hasNext()) && (i2 >= 0))
          {
            f1 = ((GpsSatellite)localIterator.next()).getSnr();
            if (f1 <= 0.0F)
              break label118;
          }
        }
      }
    }
    label118: for (int i4 = i3 + (int)f1; ; i4 = i3)
    {
      i3 = i4;
      break;
      i1 = i3;
      return i1;
    }
  }

  protected final short u()
  {
    short s1 = -1;
    if (d())
    {
      String str = this.r;
      if ((str != null) && (str.startsWith("$GPGSA")))
      {
        String[] arrayOfString = str.split(",");
        if ((arrayOfString.length >= 17) && (arrayOfString[16] != null) && (arrayOfString[16].length() > 0))
          s1 = (short)(int)(100.0F * Float.parseFloat(arrayOfString[16]));
      }
    }
    return s1;
  }

  protected final List v()
  {
    ArrayList localArrayList1 = new ArrayList();
    if ((d()) && (this.c != null))
    {
      GpsStatus localGpsStatus = this.c.getGpsStatus(null);
      if (localGpsStatus != null)
      {
        int i1 = localGpsStatus.getMaxSatellites();
        Iterator localIterator = localGpsStatus.getSatellites().iterator();
        while ((localIterator.hasNext()) && (i1 >= 0))
        {
          GpsSatellite localGpsSatellite = (GpsSatellite)localIterator.next();
          if (localGpsSatellite != null)
          {
            ArrayList localArrayList2 = new ArrayList();
            localArrayList2.add(Byte.valueOf((byte)(int)localGpsSatellite.getElevation()));
            localArrayList2.add(Short.valueOf((short)(int)localGpsSatellite.getAzimuth()));
            localArrayList1.add(localArrayList2);
          }
        }
      }
    }
    return localArrayList1;
  }

  protected final List w()
  {
    ArrayList localArrayList = new ArrayList();
    if (b())
    {
      CellLocation localCellLocation = (CellLocation)i().get(1);
      if ((localCellLocation != null) && ((localCellLocation instanceof GsmCellLocation)))
      {
        localArrayList.add(Integer.valueOf(((GsmCellLocation)localCellLocation).getLac()));
        localArrayList.add(Integer.valueOf(((GsmCellLocation)localCellLocation).getCid()));
      }
    }
    return localArrayList;
  }

  protected final List x()
  {
    ArrayList localArrayList = new ArrayList();
    if (b())
    {
      CellLocation localCellLocation = (CellLocation)i().get(1);
      if ((localCellLocation != null) && ((localCellLocation instanceof CdmaCellLocation)))
      {
        CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)localCellLocation;
        localArrayList.add(Integer.valueOf(localCdmaCellLocation.getSystemId()));
        localArrayList.add(Integer.valueOf(localCdmaCellLocation.getNetworkId()));
        localArrayList.add(Integer.valueOf(localCdmaCellLocation.getBaseStationId()));
        localArrayList.add(Integer.valueOf(localCdmaCellLocation.getBaseStationLongitude()));
        localArrayList.add(Integer.valueOf(localCdmaCellLocation.getBaseStationLatitude()));
      }
    }
    return localArrayList;
  }

  protected final List y()
  {
    ArrayList localArrayList1 = new ArrayList();
    if (c())
    {
      List localList = (List)j().get(1);
      if ((localList != null) && (localList.size() > 0))
        for (int i1 = 0; i1 < localList.size(); i1++)
        {
          ScanResult localScanResult = (ScanResult)localList.get(i1);
          if (localArrayList1.size() >= 40)
            break;
          if (localScanResult != null)
          {
            ArrayList localArrayList2 = new ArrayList();
            localArrayList2.add(localScanResult.BSSID.replace(":", ""));
            localArrayList2.add(Integer.valueOf(localScanResult.level));
            localArrayList2.add(localScanResult.SSID);
            localArrayList1.add(localArrayList2);
          }
        }
    }
    return localArrayList1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ac
 * JD-Core Version:    0.6.2
 */