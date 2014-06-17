package com.alipay.mobilelbs.common.service.facade.vo;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class Location
  implements Serializable
{
  public double accuracy;
  public double altitude;
  public List<BluetoothDevice> bluetoothDevices;
  public List<CDMAInfo> cdmaInfos;
  public double direction;
  public Map<String, String> extraInfos;
  public List<GSMInfo> gsmInfos;
  public double latitude;
  public double longitude;
  public double speed;
  public List<WifiInfo> wifiInfos;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilelbs.common.service.facade.vo.Location
 * JD-Core Version:    0.6.2
 */