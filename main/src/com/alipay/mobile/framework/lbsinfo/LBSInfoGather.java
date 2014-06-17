package com.alipay.mobile.framework.lbsinfo;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.alipay.mobile.common.lbs.LBSLocation;
import com.alipay.mobile.common.lbs.LBSLocationListener;
import com.alipay.mobile.common.lbs.LBSLocationManagerProxy;
import com.alipay.mobilelbs.common.service.facade.vo.CDMAInfo;
import com.alipay.mobilelbs.common.service.facade.vo.GSMInfo;
import com.alipay.mobilelbs.common.service.facade.vo.Location;
import com.alipay.mobilelbs.common.service.facade.vo.WifiInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LBSInfoGather
  implements LBSLocationListener
{
  private static LBSInfoGather a;
  private static String h = "LBSLocationManager";
  private static int i = 1000;
  private static int j = 1001;
  private static int k = 1002;
  private Handler b;
  private Context c;
  private List<LBSInfoListener> d = new ArrayList();
  private LBSLocation e;
  private TelephonyManager f;
  private WifiManager g;

  private LBSInfoGather(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    this.f = ((TelephonyManager)this.c.getSystemService("phone"));
    this.g = ((WifiManager)this.c.getSystemService("wifi"));
    this.b = new LBSInfoGather.1(this, Looper.getMainLooper());
  }

  private Location a()
  {
    try
    {
      Location localLocation = new Location();
      if (this.e != null)
      {
        localLocation.latitude = this.e.getLatitude();
        localLocation.longitude = this.e.getLongitude();
        localLocation.accuracy = this.e.getAccuracy();
        localLocation.altitude = this.e.getAltitude();
        localLocation.direction = this.e.getBearing();
        localLocation.speed = this.e.getSpeed();
      }
      try
      {
        localLocation.gsmInfos = b();
      }
      catch (Exception localException2)
      {
        try
        {
          ArrayList localArrayList = new ArrayList();
          CellLocation localCellLocation = this.f.getCellLocation();
          if ((localCellLocation != null) && ((localCellLocation instanceof CdmaCellLocation)))
          {
            CDMAInfo localCDMAInfo = new CDMAInfo();
            CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)localCellLocation;
            localCDMAInfo.bsid = localCdmaCellLocation.getBaseStationId();
            localCDMAInfo.nid = localCdmaCellLocation.getNetworkId();
            localCDMAInfo.rssi = -1;
            localCDMAInfo.sid = localCdmaCellLocation.getSystemId();
            localArrayList.add(localCDMAInfo);
          }
          localLocation.cdmaInfos = localArrayList;
        }
        catch (Exception localException2)
        {
          try
          {
            while (true)
            {
              localLocation.wifiInfos = c();
              label199: return localLocation;
              localException1 = localException1;
              continue;
              localException2 = localException2;
            }
          }
          catch (Exception localException3)
          {
            break label199;
          }
        }
      }
    }
    finally
    {
    }
  }

  private List<GSMInfo> b()
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.f.getNetworkOperator();
    int n;
    int m;
    if ((!TextUtils.isEmpty(str)) && (str.length() >= 5))
    {
      int i1 = Integer.parseInt(str.substring(0, 3));
      int i2 = Integer.parseInt(str.substring(3));
      n = i1;
      m = i2;
    }
    while (true)
    {
      CellLocation localCellLocation = this.f.getCellLocation();
      if ((localCellLocation != null) && ((localCellLocation instanceof GsmCellLocation)))
      {
        GSMInfo localGSMInfo2 = new GSMInfo();
        GsmCellLocation localGsmCellLocation = (GsmCellLocation)localCellLocation;
        localGSMInfo2.mnc = m;
        localGSMInfo2.mcc = n;
        localGSMInfo2.cid = localGsmCellLocation.getCid();
        localGSMInfo2.lac = localGsmCellLocation.getLac();
        localGSMInfo2.rssi = -1;
        localArrayList.add(localGSMInfo2);
      }
      List localList = this.f.getNeighboringCellInfo();
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          NeighboringCellInfo localNeighboringCellInfo = (NeighboringCellInfo)localIterator.next();
          if (localNeighboringCellInfo != null)
          {
            GSMInfo localGSMInfo1 = new GSMInfo();
            localGSMInfo1.mnc = m;
            localGSMInfo1.mcc = n;
            localGSMInfo1.lac = localNeighboringCellInfo.getLac();
            localGSMInfo1.cid = localNeighboringCellInfo.getCid();
            localGSMInfo1.rssi = localNeighboringCellInfo.getRssi();
            localArrayList.add(localGSMInfo1);
          }
        }
      }
      return localArrayList;
      m = 0;
      n = 0;
    }
  }

  private List<WifiInfo> c()
  {
    ArrayList localArrayList = new ArrayList();
    List localList = this.g.getScanResults();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ScanResult localScanResult = (ScanResult)localIterator.next();
        WifiInfo localWifiInfo = new WifiInfo();
        localWifiInfo.mac = localScanResult.BSSID;
        localWifiInfo.ssid = localScanResult.SSID;
        localWifiInfo.rssi = localScanResult.level;
        localArrayList.add(localWifiInfo);
      }
    }
    return localArrayList;
  }

  public static LBSInfoGather getInstance(Context paramContext)
  {
    if (a == null)
      a = new LBSInfoGather(paramContext);
    return a;
  }

  public Location getLastKnownLBSInfo()
  {
    Location localLocation = a();
    if (this.e == null)
    {
      LBSLocation localLBSLocation = LBSLocationManagerProxy.getInstance().getLastKnownLocation(this.c);
      if (localLBSLocation != null)
      {
        localLocation.latitude = localLBSLocation.getLatitude();
        localLocation.longitude = localLBSLocation.getLongitude();
        localLocation.accuracy = localLBSLocation.getAccuracy();
        localLocation.altitude = localLBSLocation.getAltitude();
        localLocation.direction = localLBSLocation.getBearing();
        localLocation.speed = localLBSLocation.getSpeed();
      }
    }
    return localLocation;
  }

  public List<WifiInfo> getWifiList()
  {
    return c();
  }

  public void onLocationUpdate(LBSLocation paramLBSLocation)
  {
    setLBSLocation(paramLBSLocation);
  }

  public void removeUpdates(LBSInfoListener paramLBSInfoListener)
  {
    this.d.remove(paramLBSInfoListener);
    this.b.sendMessage(Message.obtain(this.b, k));
  }

  public void requestLBSInfoUpdates(LBSInfoListener paramLBSInfoListener)
  {
    if (paramLBSInfoListener != null)
    {
      this.d.remove(paramLBSInfoListener);
      this.d.add(paramLBSInfoListener);
    }
    this.b.sendMessage(Message.obtain(this.b, i));
    this.b.sendMessage(Message.obtain(this.b, j));
  }

  protected void setLBSLocation(LBSLocation paramLBSLocation)
  {
    if (paramLBSLocation != null);
    try
    {
      this.e = paramLBSLocation;
      this.b.sendMessage(Message.obtain(this.b, i));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.lbsinfo.LBSInfoGather
 * JD-Core Version:    0.6.2
 */