package com.aps;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  implements i
{
  private static a a = null;
  private String A = "00:00:00:00:00:00";
  private s B = null;
  private y C = null;
  private long D = 0L;
  private long E = 0L;
  private CellLocation F = null;
  private boolean G = false;
  private Context b = null;
  private int c = 9;
  private ConnectivityManager d = null;
  private WifiManager e = null;
  private TelephonyManager f = null;
  private List<e> g = new ArrayList();
  private List<ScanResult> h = new ArrayList();
  private Map<PendingIntent, List<h>> i = new HashMap();
  private b j = new b();
  private PhoneStateListener k = null;
  private int l = -113;
  private a.a m = new a.a(this, null);
  private WifiInfo n = null;
  private JSONObject o = null;
  private String p = null;
  private c q = null;
  private long r = 0L;
  private long s = 0L;
  private boolean t = false;
  private boolean u = true;
  private long v = 0L;
  private long w = 0L;
  private long x = 0L;
  private j y = j.a();
  private int z = 0;

  private e a(NeighboringCellInfo paramNeighboringCellInfo)
  {
    if (n.b() < 5)
      return null;
    try
    {
      e locale = new e();
      String[] arrayOfString = n.a(this.f);
      locale.a = arrayOfString[0];
      locale.b = arrayOfString[1];
      locale.c = l.a(paramNeighboringCellInfo, "getLac", new Object[0]);
      locale.d = paramNeighboringCellInfo.getCid();
      locale.j = n.a(paramNeighboringCellInfo.getRssi());
      return locale;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  static i a()
  {
    try
    {
      if (a == null)
        a = new a();
      a locala = a;
      return locala;
    }
    finally
    {
    }
  }

  private void a(CellLocation paramCellLocation)
  {
    this.g.clear();
    GsmCellLocation localGsmCellLocation1 = (GsmCellLocation)paramCellLocation;
    if (localGsmCellLocation1.getLac() == -1)
    {
      this.c = 9;
      n.a(new Object[] { "gsm illegal" });
    }
    while (true)
    {
      return;
      if ((localGsmCellLocation1.getCid() == -1) || (localGsmCellLocation1.getCid() == 65535) || (localGsmCellLocation1.getCid() == 268435455))
      {
        this.c = 9;
        n.a(new Object[] { "gsm illegal" });
        return;
      }
      this.c = 1;
      List localList1 = this.g;
      GsmCellLocation localGsmCellLocation2 = (GsmCellLocation)paramCellLocation;
      e locale1 = new e();
      String[] arrayOfString = n.a(this.f);
      locale1.a = arrayOfString[0];
      locale1.b = arrayOfString[1];
      locale1.c = localGsmCellLocation2.getLac();
      locale1.d = localGsmCellLocation2.getCid();
      locale1.j = this.l;
      localList1.add(locale1);
      List localList2 = this.f.getNeighboringCellInfo();
      if (localList2 != null)
      {
        Iterator localIterator = localList2.iterator();
        while (localIterator.hasNext())
        {
          NeighboringCellInfo localNeighboringCellInfo = (NeighboringCellInfo)localIterator.next();
          if (localNeighboringCellInfo.getCid() != -1)
          {
            e locale2 = a(localNeighboringCellInfo);
            if (locale2 != null)
              this.g.add(locale2);
          }
        }
      }
    }
  }

  private static void a(StringBuilder paramStringBuilder)
  {
    int i1 = 0;
    if (paramStringBuilder == null);
    while (true)
    {
      return;
      String[] arrayOfString = { " phnum=\"\"", " nettype=\"\"", " nettype=\"UNKNOWN\"", " inftype=\"\"", "<macs><![CDATA[]]></macs>", "<nb></nb>", "<mmac><![CDATA[]]></mmac>", " gtype=\"0\"", " glong=\"0.0\"", " glat=\"0.0\"", " precision=\"0.0\"", " glong=\"0\"", " glat=\"0\"", " precision=\"0\"", "<smac>null</smac>", "<smac>00:00:00:00:00:00</smac>", "<imei>000000000000000</imei>", "<imsi>000000000000000</imsi>", "<mcc>000</mcc>", "<mcc>0</mcc>", "<lac>0</lac>", "<cellid>0</cellid>", "<key></key>" };
      int i2 = arrayOfString.length;
      while (i1 < i2)
      {
        String str = arrayOfString[i1];
        while (paramStringBuilder.indexOf(str) != -1)
        {
          int i3 = paramStringBuilder.indexOf(str);
          paramStringBuilder.delete(i3, i3 + str.length());
        }
        i1++;
      }
      while (paramStringBuilder.indexOf("*<") != -1)
        paramStringBuilder.deleteCharAt(paramStringBuilder.indexOf("*<"));
    }
  }

  private void a(List<ScanResult> paramList)
  {
    if (paramList != null);
    while (true)
    {
      HashMap localHashMap;
      int i2;
      try
      {
        int i1 = paramList.size();
        if (i1 <= 0)
          return;
        localHashMap = new HashMap();
        i2 = 0;
        if (i2 < paramList.size())
        {
          ScanResult localScanResult = (ScanResult)paramList.get(i2);
          if (!a(localScanResult.level))
            break label225;
          if (localScanResult.SSID != null)
          {
            localScanResult.SSID = localScanResult.SSID.replace("*", ".");
            localHashMap.put(Integer.valueOf(i2 + 30 * localScanResult.level), localScanResult);
            break label225;
          }
          localScanResult.SSID = "null";
          continue;
        }
      }
      finally
      {
      }
      TreeMap localTreeMap = new TreeMap(Collections.reverseOrder());
      localTreeMap.putAll(localHashMap);
      paramList.clear();
      Iterator localIterator = localTreeMap.keySet().iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        paramList.add(localTreeMap.get(localIterator.next()));
      }
      while (paramList.size() <= 29);
      localHashMap.clear();
      localTreeMap.clear();
      continue;
      label225: i2++;
    }
  }

  private static boolean a(int paramInt)
  {
    int i1 = 20;
    try
    {
      int i2 = WifiManager.calculateSignalLevel(paramInt, 20);
      i1 = i2;
      if (i1 > 0)
        return true;
    }
    catch (ArithmeticException localArithmeticException)
    {
      while (true)
        n.a(localArithmeticException);
    }
    return false;
  }

  private static boolean a(WifiInfo paramWifiInfo)
  {
    if ((paramWifiInfo == null) || (paramWifiInfo.getBSSID() == null));
    while ((paramWifiInfo.getSSID() == null) || (paramWifiInfo.getBSSID().equals("00:00:00:00:00:00")) || (TextUtils.isEmpty(paramWifiInfo.getSSID())))
      return false;
    return true;
  }

  private c b(String paramString)
  {
    if (this.b == null)
      return null;
    this.s = n.a();
    new c();
    k localk = new k();
    long l1 = n.a();
    String str1 = this.y.a(paramString, this.b, this.o);
    long l2 = n.a();
    n.a(this.b, "req cost " + (l2 - l1) + "ms");
    String[] arrayOfString = j.a(this.o);
    if ((str1 != null) && (str1.indexOf("<saps>") != -1))
    {
      String str3 = localk.a(str1);
      str1 = this.j.a(str3, "GBK");
    }
    while (true)
    {
      c localc = localk.b(str1);
      JSONObject localJSONObject1;
      if ((this.B != null) && (localc != null))
        localJSONObject1 = new JSONObject();
      try
      {
        JSONObject localJSONObject2 = localc.j();
        String str2 = localJSONObject2.get("eab").toString();
        localJSONObject1.put("e", str2);
        localJSONObject1.put("d", localJSONObject2.get("ctl"));
        localJSONObject1.put("u", localJSONObject2.get("suc"));
        this.B.a(this.C, localJSONObject1.toString());
        if (str2 != null)
        {
          if (!str2.equals("0"))
            break label340;
          this.B.c();
          this.B = null;
          this.G = false;
        }
        while (true)
        {
          label285: if (n.a(localc))
            break label370;
          return null;
          if (arrayOfString[0].equals("true"))
          {
            n.a(new Object[] { "api return pure" });
            break;
          }
          n.a(new Object[] { "aps return pure" });
          break;
          label340: if ((str2.equals("1")) && (this.B == null))
            d();
        }
      }
      catch (JSONException localJSONException)
      {
        break label285;
        localc.j();
        return localc;
      }
      catch (Exception localException)
      {
        label370: break label285;
      }
    }
  }

  private StringBuilder f()
  {
    n();
    StringBuilder localStringBuilder = new StringBuilder(700);
    switch (this.c)
    {
    default:
      if (((this.A == null) || (this.A.equals("00:00:00:00:00:00"))) && (this.n != null))
      {
        this.A = this.n.getMacAddress();
        if (this.A == null)
          this.A = "00:00:00:00:00:00";
      }
      if (l())
        if (!a(this.n))
          break label345;
      break;
    case 1:
    }
    label345: for (String str1 = this.n.getBSSID(); ; str1 = "")
    {
      int i2 = 0;
      int i3 = 0;
      while (true)
        if (i2 < this.h.size())
        {
          String str2 = ((ScanResult)this.h.get(i2)).BSSID;
          String str3 = "nb";
          if (str1.equals(str2))
          {
            str3 = "access";
            i3 = 1;
          }
          localStringBuilder.append(String.format("#%s,%s", new Object[] { str2, str3 }));
          i2++;
          continue;
          for (int i1 = 0; i1 < this.g.size(); i1++)
            if (i1 != 0)
            {
              e locale = (e)this.g.get(i1);
              localStringBuilder.append("#").append(locale.b);
              localStringBuilder.append("|").append(locale.c);
              localStringBuilder.append("|").append(locale.d);
            }
          break;
        }
      if ((i3 == 0) && (str1.length() > 0))
      {
        localStringBuilder.append("#").append(str1);
        localStringBuilder.append(",access");
      }
      while (true)
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.deleteCharAt(0);
        return localStringBuilder;
        i();
      }
    }
  }

  // ERROR //
  private StringBuilder g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 304	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 558	java/lang/StringBuilder:<init>	()V
    //   9: astore_1
    //   10: ldc_w 555
    //   13: astore_2
    //   14: ldc_w 560
    //   17: putstatic 563	com/aps/f:a	Ljava/lang/String;
    //   20: ldc_w 560
    //   23: putstatic 564	com/aps/f:b	Ljava/lang/String;
    //   26: ldc_w 555
    //   29: putstatic 566	com/aps/f:c	Ljava/lang/String;
    //   32: ldc_w 555
    //   35: astore 4
    //   37: ldc_w 555
    //   40: astore 5
    //   42: ldc_w 555
    //   45: astore 6
    //   47: new 304	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 558	java/lang/StringBuilder:<init>	()V
    //   54: astore 7
    //   56: new 304	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 558	java/lang/StringBuilder:<init>	()V
    //   63: astore 8
    //   65: new 304	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 558	java/lang/StringBuilder:<init>	()V
    //   72: astore 9
    //   74: aload_0
    //   75: getfield 74	com/aps/a:c	I
    //   78: iconst_2
    //   79: if_icmpne +1381 -> 1460
    //   82: ldc_w 510
    //   85: astore 10
    //   87: aload_0
    //   88: getfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   91: ifnull +104 -> 195
    //   94: getstatic 563	com/aps/f:a	Ljava/lang/String;
    //   97: ifnonnull +635 -> 732
    //   100: aload_0
    //   101: getfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   104: invokevirtual 569	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   107: putstatic 563	com/aps/f:a	Ljava/lang/String;
    //   110: getstatic 563	com/aps/f:a	Ljava/lang/String;
    //   113: ifnonnull +9 -> 122
    //   116: ldc_w 560
    //   119: putstatic 563	com/aps/f:a	Ljava/lang/String;
    //   122: getstatic 564	com/aps/f:b	Ljava/lang/String;
    //   125: ifnull +15 -> 140
    //   128: getstatic 564	com/aps/f:b	Ljava/lang/String;
    //   131: ldc_w 560
    //   134: invokevirtual 404	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   137: ifeq +19 -> 156
    //   140: ldc_w 560
    //   143: putstatic 564	com/aps/f:b	Ljava/lang/String;
    //   146: aload_0
    //   147: getfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   150: invokevirtual 572	android/telephony/TelephonyManager:getSubscriberId	()Ljava/lang/String;
    //   153: putstatic 564	com/aps/f:b	Ljava/lang/String;
    //   156: getstatic 564	com/aps/f:b	Ljava/lang/String;
    //   159: ifnonnull +9 -> 168
    //   162: ldc_w 560
    //   165: putstatic 564	com/aps/f:b	Ljava/lang/String;
    //   168: getstatic 566	com/aps/f:c	Ljava/lang/String;
    //   171: invokestatic 410	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   174: ifeq +9 -> 183
    //   177: ldc_w 555
    //   180: putstatic 566	com/aps/f:c	Ljava/lang/String;
    //   183: getstatic 566	com/aps/f:c	Ljava/lang/String;
    //   186: ifnonnull +9 -> 195
    //   189: ldc_w 555
    //   192: putstatic 566	com/aps/f:c	Ljava/lang/String;
    //   195: aload_0
    //   196: getfield 76	com/aps/a:d	Landroid/net/ConnectivityManager;
    //   199: invokevirtual 578	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   202: astore 78
    //   204: aload 78
    //   206: astore 12
    //   208: aload 12
    //   210: invokestatic 581	com/aps/j:a	(Landroid/net/NetworkInfo;)I
    //   213: iconst_m1
    //   214: if_icmpeq +578 -> 792
    //   217: aload_0
    //   218: getfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   221: invokestatic 584	com/aps/j:a	(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    //   224: astore 4
    //   226: aload_0
    //   227: invokespecial 527	com/aps/a:l	()Z
    //   230: ifeq +538 -> 768
    //   233: aload_0
    //   234: getfield 110	com/aps/a:n	Landroid/net/wifi/WifiInfo;
    //   237: invokestatic 529	com/aps/a:a	(Landroid/net/wifi/WifiInfo;)Z
    //   240: ifeq +528 -> 768
    //   243: ldc_w 586
    //   246: astore 5
    //   248: aload_0
    //   249: getfield 112	com/aps/a:o	Lorg/json/JSONObject;
    //   252: invokestatic 454	com/aps/j:a	(Lorg/json/JSONObject;)[Ljava/lang/String;
    //   255: astore 13
    //   257: aload 13
    //   259: iconst_0
    //   260: aaload
    //   261: ldc_w 504
    //   264: invokevirtual 404	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   267: ifeq +8 -> 275
    //   270: aload 13
    //   272: iconst_1
    //   273: aaload
    //   274: astore_2
    //   275: aload_1
    //   276: ldc_w 588
    //   279: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: pop
    //   283: aload_1
    //   284: ldc_w 590
    //   287: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: pop
    //   291: aload_1
    //   292: ldc_w 592
    //   295: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: pop
    //   299: aload_1
    //   300: aload 10
    //   302: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: pop
    //   306: aload_1
    //   307: ldc_w 594
    //   310: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: ldc_w 497
    //   316: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: pop
    //   320: aload_1
    //   321: ldc_w 596
    //   324: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: ldc_w 497
    //   330: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: pop
    //   334: aload_1
    //   335: ldc_w 598
    //   338: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 497
    //   344: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: pop
    //   348: aload_1
    //   349: ldc_w 600
    //   352: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: ldc_w 497
    //   358: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: pop
    //   362: aload_1
    //   363: ldc_w 602
    //   366: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: getstatic 604	com/aps/f:d	Ljava/lang/String;
    //   372: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: pop
    //   376: aload_1
    //   377: ldc_w 606
    //   380: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: getstatic 608	com/aps/f:e	Ljava/lang/String;
    //   386: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: pop
    //   390: aload_1
    //   391: ldc_w 610
    //   394: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: aload_2
    //   398: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   401: pop
    //   402: aload_1
    //   403: ldc_w 612
    //   406: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: getstatic 614	com/aps/f:f	Ljava/lang/String;
    //   412: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: pop
    //   416: aload_1
    //   417: ldc_w 616
    //   420: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   423: getstatic 563	com/aps/f:a	Ljava/lang/String;
    //   426: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: pop
    //   430: aload_1
    //   431: ldc_w 618
    //   434: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: getstatic 564	com/aps/f:b	Ljava/lang/String;
    //   440: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: pop
    //   444: aload_1
    //   445: ldc_w 620
    //   448: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: aload_0
    //   452: getfield 143	com/aps/a:A	Ljava/lang/String;
    //   455: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   458: pop
    //   459: aload_1
    //   460: ldc_w 622
    //   463: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: getstatic 566	com/aps/f:c	Ljava/lang/String;
    //   469: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   472: pop
    //   473: aload_1
    //   474: ldc_w 624
    //   477: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: aload 4
    //   482: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   485: pop
    //   486: aload_1
    //   487: ldc_w 626
    //   490: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: aload 5
    //   495: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   498: ldc_w 628
    //   501: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: pop
    //   505: aload_0
    //   506: getfield 85	com/aps/a:g	Ljava/util/List;
    //   509: invokeinterface 249 1 0
    //   514: ifle +50 -> 564
    //   517: new 304	java/lang/StringBuilder
    //   520: dup
    //   521: invokespecial 558	java/lang/StringBuilder:<init>	()V
    //   524: astore 32
    //   526: aload_0
    //   527: getfield 74	com/aps/a:c	I
    //   530: tableswitch	default:+22 -> 552, 1:+270->800, 2:+536->1066
    //   553: lload_2
    //   554: iconst_0
    //   555: aload 32
    //   557: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   560: invokevirtual 315	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   563: pop
    //   564: aload 6
    //   566: astore 41
    //   568: aload_0
    //   569: invokespecial 527	com/aps/a:l	()Z
    //   572: ifeq +708 -> 1280
    //   575: aload_0
    //   576: getfield 110	com/aps/a:n	Landroid/net/wifi/WifiInfo;
    //   579: invokestatic 529	com/aps/a:a	(Landroid/net/wifi/WifiInfo;)Z
    //   582: ifeq +886 -> 1468
    //   585: aload 9
    //   587: aload_0
    //   588: getfield 110	com/aps/a:n	Landroid/net/wifi/WifiInfo;
    //   591: invokevirtual 398	android/net/wifi/WifiInfo:getBSSID	()Ljava/lang/String;
    //   594: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   597: ldc_w 630
    //   600: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   603: pop
    //   604: aload 9
    //   606: aload_0
    //   607: getfield 110	com/aps/a:n	Landroid/net/wifi/WifiInfo;
    //   610: invokevirtual 631	android/net/wifi/WifiInfo:getRssi	()I
    //   613: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   616: ldc_w 630
    //   619: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   622: pop
    //   623: aload 9
    //   625: aload_0
    //   626: getfield 110	com/aps/a:n	Landroid/net/wifi/WifiInfo;
    //   629: invokevirtual 401	android/net/wifi/WifiInfo:getSSID	()Ljava/lang/String;
    //   632: ldc_w 335
    //   635: ldc_w 337
    //   638: invokevirtual 341	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   641: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   644: pop
    //   645: goto +823 -> 1468
    //   648: iload 52
    //   650: aload_0
    //   651: getfield 87	com/aps/a:h	Ljava/util/List;
    //   654: invokeinterface 249 1 0
    //   659: if_icmpge +625 -> 1284
    //   662: aload_0
    //   663: getfield 87	com/aps/a:h	Ljava/util/List;
    //   666: iload 52
    //   668: invokeinterface 253 2 0
    //   673: checkcast 324	android/net/wifi/ScanResult
    //   676: astore 53
    //   678: aload 8
    //   680: aload 53
    //   682: getfield 532	android/net/wifi/ScanResult:BSSID	Ljava/lang/String;
    //   685: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   688: ldc_w 630
    //   691: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   694: pop
    //   695: aload 8
    //   697: aload 53
    //   699: getfield 327	android/net/wifi/ScanResult:level	I
    //   702: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   705: ldc_w 630
    //   708: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   711: pop
    //   712: aload 8
    //   714: iload 52
    //   716: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   719: ldc_w 335
    //   722: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   725: pop
    //   726: iinc 52 1
    //   729: goto -81 -> 648
    //   732: getstatic 563	com/aps/f:a	Ljava/lang/String;
    //   735: ldc_w 560
    //   738: invokevirtual 404	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   741: ifeq -631 -> 110
    //   744: ldc_w 560
    //   747: putstatic 563	com/aps/f:a	Ljava/lang/String;
    //   750: aload_0
    //   751: getfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   754: invokevirtual 569	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   757: putstatic 563	com/aps/f:a	Ljava/lang/String;
    //   760: goto -650 -> 110
    //   763: astore 79
    //   765: goto -655 -> 110
    //   768: ldc_w 510
    //   771: astore 5
    //   773: aload_0
    //   774: invokespecial 527	com/aps/a:l	()Z
    //   777: ifne -529 -> 248
    //   780: aload_0
    //   781: invokespecial 553	com/aps/a:i	()V
    //   784: goto -536 -> 248
    //   787: astore_3
    //   788: aload_0
    //   789: monitorexit
    //   790: aload_3
    //   791: athrow
    //   792: aload_0
    //   793: aconst_null
    //   794: putfield 110	com/aps/a:n	Landroid/net/wifi/WifiInfo;
    //   797: goto -549 -> 248
    //   800: aload_0
    //   801: getfield 85	com/aps/a:g	Ljava/util/List;
    //   804: iconst_0
    //   805: invokeinterface 253 2 0
    //   810: checkcast 167	com/aps/e
    //   813: astore 62
    //   815: aload 32
    //   817: iconst_0
    //   818: aload 32
    //   820: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   823: invokevirtual 315	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   826: pop
    //   827: aload 32
    //   829: ldc_w 633
    //   832: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   835: aload 62
    //   837: getfield 173	com/aps/e:a	Ljava/lang/String;
    //   840: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   843: ldc_w 635
    //   846: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   849: pop
    //   850: aload 32
    //   852: ldc_w 637
    //   855: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   858: aload 62
    //   860: getfield 175	com/aps/e:b	Ljava/lang/String;
    //   863: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: ldc_w 639
    //   869: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   872: pop
    //   873: aload 32
    //   875: ldc_w 641
    //   878: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   881: aload 62
    //   883: getfield 183	com/aps/e:c	I
    //   886: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   889: ldc_w 643
    //   892: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   895: pop
    //   896: aload 32
    //   898: ldc_w 645
    //   901: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   904: aload 62
    //   906: getfield 190	com/aps/e:d	I
    //   909: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   912: pop
    //   913: aload 32
    //   915: ldc_w 647
    //   918: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   921: pop
    //   922: aload 32
    //   924: ldc_w 649
    //   927: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   930: aload 62
    //   932: getfield 198	com/aps/e:j	I
    //   935: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   938: pop
    //   939: aload 32
    //   941: ldc_w 651
    //   944: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   947: pop
    //   948: aload 32
    //   950: invokevirtual 448	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   953: astore 71
    //   955: iconst_0
    //   956: istore 72
    //   958: iload 72
    //   960: aload_0
    //   961: getfield 85	com/aps/a:g	Ljava/util/List;
    //   964: invokeinterface 249 1 0
    //   969: if_icmpge +511 -> 1480
    //   972: iload 72
    //   974: ifeq +500 -> 1474
    //   977: aload_0
    //   978: getfield 85	com/aps/a:g	Ljava/util/List;
    //   981: iload 72
    //   983: invokeinterface 253 2 0
    //   988: checkcast 167	com/aps/e
    //   991: astore 73
    //   993: aload 7
    //   995: aload 73
    //   997: getfield 183	com/aps/e:c	I
    //   1000: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1003: ldc_w 630
    //   1006: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1009: pop
    //   1010: aload 7
    //   1012: aload 73
    //   1014: getfield 190	com/aps/e:d	I
    //   1017: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1020: ldc_w 630
    //   1023: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1026: pop
    //   1027: aload 7
    //   1029: aload 73
    //   1031: getfield 198	com/aps/e:j	I
    //   1034: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1037: pop
    //   1038: iload 72
    //   1040: iconst_m1
    //   1041: aload_0
    //   1042: getfield 85	com/aps/a:g	Ljava/util/List;
    //   1045: invokeinterface 249 1 0
    //   1050: iadd
    //   1051: if_icmpeq +423 -> 1474
    //   1054: aload 7
    //   1056: ldc_w 335
    //   1059: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1062: pop
    //   1063: goto +411 -> 1474
    //   1066: aload_0
    //   1067: getfield 85	com/aps/a:g	Ljava/util/List;
    //   1070: iconst_0
    //   1071: invokeinterface 253 2 0
    //   1076: checkcast 167	com/aps/e
    //   1079: astore 33
    //   1081: aload 32
    //   1083: iconst_0
    //   1084: aload 32
    //   1086: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   1089: invokevirtual 315	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1092: pop
    //   1093: aload 32
    //   1095: ldc_w 633
    //   1098: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1101: aload 33
    //   1103: getfield 173	com/aps/e:a	Ljava/lang/String;
    //   1106: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1109: ldc_w 635
    //   1112: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1115: pop
    //   1116: aload 32
    //   1118: ldc_w 653
    //   1121: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1124: aload 33
    //   1126: getfield 655	com/aps/e:g	I
    //   1129: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1132: ldc_w 657
    //   1135: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1138: pop
    //   1139: aload 32
    //   1141: ldc_w 659
    //   1144: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1147: aload 33
    //   1149: getfield 661	com/aps/e:h	I
    //   1152: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1155: ldc_w 663
    //   1158: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1161: pop
    //   1162: aload 32
    //   1164: ldc_w 665
    //   1167: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1170: aload 33
    //   1172: getfield 667	com/aps/e:i	I
    //   1175: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1178: ldc_w 669
    //   1181: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1184: pop
    //   1185: aload 33
    //   1187: getfield 671	com/aps/e:f	I
    //   1190: ifle +57 -> 1247
    //   1193: aload 33
    //   1195: getfield 673	com/aps/e:e	I
    //   1198: ifle +49 -> 1247
    //   1201: aload 32
    //   1203: ldc_w 675
    //   1206: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1209: aload 33
    //   1211: getfield 671	com/aps/e:f	I
    //   1214: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1217: ldc_w 677
    //   1220: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1223: pop
    //   1224: aload 32
    //   1226: ldc_w 679
    //   1229: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1232: aload 33
    //   1234: getfield 673	com/aps/e:e	I
    //   1237: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1240: ldc_w 681
    //   1243: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1246: pop
    //   1247: aload 32
    //   1249: ldc_w 649
    //   1252: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1255: aload 33
    //   1257: getfield 198	com/aps/e:j	I
    //   1260: invokevirtual 548	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1263: ldc_w 651
    //   1266: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1269: pop
    //   1270: aload 32
    //   1272: invokevirtual 448	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1275: astore 6
    //   1277: goto -725 -> 552
    //   1280: aload_0
    //   1281: invokespecial 553	com/aps/a:i	()V
    //   1284: aload_1
    //   1285: aload 41
    //   1287: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1290: pop
    //   1291: aload_1
    //   1292: ldc_w 683
    //   1295: iconst_1
    //   1296: anewarray 4	java/lang/Object
    //   1299: dup
    //   1300: iconst_0
    //   1301: aload 7
    //   1303: aastore
    //   1304: invokestatic 542	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1307: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1310: pop
    //   1311: aload 8
    //   1313: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   1316: ifne +95 -> 1411
    //   1319: aload_1
    //   1320: ldc_w 685
    //   1323: iconst_1
    //   1324: anewarray 4	java/lang/Object
    //   1327: dup
    //   1328: iconst_0
    //   1329: aload 9
    //   1331: aastore
    //   1332: invokestatic 542	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1335: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1338: pop
    //   1339: aload_1
    //   1340: ldc_w 687
    //   1343: iconst_1
    //   1344: anewarray 4	java/lang/Object
    //   1347: dup
    //   1348: iconst_0
    //   1349: aload 9
    //   1351: aastore
    //   1352: invokestatic 542	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1355: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1358: pop
    //   1359: aload_1
    //   1360: ldc_w 689
    //   1363: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1366: pop
    //   1367: aload_1
    //   1368: invokestatic 691	com/aps/a:a	(Ljava/lang/StringBuilder;)V
    //   1371: aload 7
    //   1373: iconst_0
    //   1374: aload 7
    //   1376: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   1379: invokevirtual 315	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1382: pop
    //   1383: aload 8
    //   1385: iconst_0
    //   1386: aload 8
    //   1388: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   1391: invokevirtual 315	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1394: pop
    //   1395: aload 9
    //   1397: iconst_0
    //   1398: aload 9
    //   1400: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   1403: invokevirtual 315	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1406: pop
    //   1407: aload_0
    //   1408: monitorexit
    //   1409: aload_1
    //   1410: areturn
    //   1411: aload 8
    //   1413: iconst_m1
    //   1414: aload 8
    //   1416: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   1419: iadd
    //   1420: invokevirtual 321	java/lang/StringBuilder:deleteCharAt	(I)Ljava/lang/StringBuilder;
    //   1423: pop
    //   1424: aload_1
    //   1425: ldc_w 685
    //   1428: iconst_1
    //   1429: anewarray 4	java/lang/Object
    //   1432: dup
    //   1433: iconst_0
    //   1434: aload 8
    //   1436: aastore
    //   1437: invokestatic 542	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1440: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1443: pop
    //   1444: goto -105 -> 1339
    //   1447: astore 11
    //   1449: aconst_null
    //   1450: astore 12
    //   1452: goto -1244 -> 208
    //   1455: astore 80
    //   1457: goto -1301 -> 156
    //   1460: ldc_w 497
    //   1463: astore 10
    //   1465: goto -1378 -> 87
    //   1468: iconst_0
    //   1469: istore 52
    //   1471: goto -823 -> 648
    //   1474: iinc 72 1
    //   1477: goto -519 -> 958
    //   1480: aload 71
    //   1482: astore 6
    //   1484: goto -932 -> 552
    //
    // Exception table:
    //   from	to	target	type
    //   750	760	763	java/lang/SecurityException
    //   2	10	787	finally
    //   14	32	787	finally
    //   47	82	787	finally
    //   87	110	787	finally
    //   110	122	787	finally
    //   122	140	787	finally
    //   140	146	787	finally
    //   146	156	787	finally
    //   156	168	787	finally
    //   168	183	787	finally
    //   183	195	787	finally
    //   195	204	787	finally
    //   208	243	787	finally
    //   248	275	787	finally
    //   275	552	787	finally
    //   552	564	787	finally
    //   568	645	787	finally
    //   648	726	787	finally
    //   732	750	787	finally
    //   750	760	787	finally
    //   773	784	787	finally
    //   792	797	787	finally
    //   800	955	787	finally
    //   958	972	787	finally
    //   977	1063	787	finally
    //   1066	1247	787	finally
    //   1247	1277	787	finally
    //   1280	1284	787	finally
    //   1284	1339	787	finally
    //   1339	1407	787	finally
    //   1411	1444	787	finally
    //   195	204	1447	java/lang/SecurityException
    //   146	156	1455	java/lang/SecurityException
  }

  // ERROR //
  private String h()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 122	com/aps/a:t	Z
    //   6: ifeq +253 -> 259
    //   9: iconst_0
    //   10: istore_2
    //   11: iload_2
    //   12: ifeq +13 -> 25
    //   15: invokestatic 696	android/telephony/CellLocation:requestLocationUpdate	()V
    //   18: aload_0
    //   19: invokestatic 414	com/aps/n:a	()J
    //   22: putfield 128	com/aps/a:w	J
    //   25: aload_0
    //   26: invokespecial 527	com/aps/a:l	()Z
    //   29: istore_3
    //   30: iconst_0
    //   31: istore 4
    //   33: iload_3
    //   34: ifne +259 -> 293
    //   37: iload 4
    //   39: ifeq +7 -> 46
    //   42: aload_0
    //   43: invokespecial 698	com/aps/a:j	()V
    //   46: aload_0
    //   47: invokespecial 700	com/aps/a:g	()Ljava/lang/StringBuilder;
    //   50: astore 7
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 147	com/aps/a:C	Lcom/aps/y;
    //   57: aload_0
    //   58: getfield 145	com/aps/a:B	Lcom/aps/s;
    //   61: ifnull +111 -> 172
    //   64: aload_0
    //   65: getfield 139	com/aps/a:z	I
    //   68: iflt +104 -> 172
    //   71: aload_0
    //   72: getfield 124	com/aps/a:u	Z
    //   75: istore 18
    //   77: iload 18
    //   79: ifeq +93 -> 172
    //   82: aload_0
    //   83: aload_0
    //   84: getfield 145	com/aps/a:B	Lcom/aps/s;
    //   87: invokevirtual 703	com/aps/s:d	()Lcom/aps/y;
    //   90: putfield 147	com/aps/a:C	Lcom/aps/y;
    //   93: aload_0
    //   94: getfield 147	com/aps/a:C	Lcom/aps/y;
    //   97: ifnull +75 -> 172
    //   100: aload_0
    //   101: getfield 147	com/aps/a:C	Lcom/aps/y;
    //   104: invokevirtual 708	com/aps/y:a	()[B
    //   107: astore 20
    //   109: aload 20
    //   111: arraylength
    //   112: ifle +60 -> 172
    //   115: aload 7
    //   117: bipush 245
    //   119: aload 7
    //   121: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   124: iadd
    //   125: ldc_w 710
    //   128: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: aload 20
    //   134: invokestatic 717	com/aps/b:a	([B)Ljava/lang/String;
    //   137: astore 22
    //   139: aload 7
    //   141: bipush 245
    //   143: aload 7
    //   145: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   148: iadd
    //   149: aload 22
    //   151: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload 7
    //   157: bipush 245
    //   159: aload 7
    //   161: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   164: iadd
    //   165: ldc_w 719
    //   168: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   171: pop
    //   172: aload_0
    //   173: getfield 97	com/aps/a:j	Lcom/aps/b;
    //   176: aload 7
    //   178: ldc_w 462
    //   181: invokevirtual 722	com/aps/b:a	(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    //   184: aload 7
    //   186: iconst_0
    //   187: ldc_w 724
    //   190: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   193: pop
    //   194: aload 7
    //   196: iconst_0
    //   197: getstatic 604	com/aps/f:d	Ljava/lang/String;
    //   200: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   203: pop
    //   204: aload 7
    //   206: iconst_0
    //   207: ldc_w 726
    //   210: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   213: pop
    //   214: aload 7
    //   216: iconst_0
    //   217: ldc_w 462
    //   220: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   223: pop
    //   224: aload 7
    //   226: iconst_0
    //   227: ldc_w 588
    //   230: invokevirtual 714	java/lang/StringBuilder:insert	(ILjava/lang/String;)Ljava/lang/StringBuilder;
    //   233: pop
    //   234: aload 7
    //   236: ldc_w 728
    //   239: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: pop
    //   243: aload 7
    //   245: invokevirtual 448	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   248: astore 17
    //   250: aload 17
    //   252: astore 10
    //   254: aload_0
    //   255: monitorexit
    //   256: aload 10
    //   258: areturn
    //   259: aload_0
    //   260: getfield 128	com/aps/a:w	J
    //   263: lconst_0
    //   264: lcmp
    //   265: ifne +8 -> 273
    //   268: iconst_0
    //   269: istore_2
    //   270: goto -259 -> 11
    //   273: invokestatic 414	com/aps/n:a	()J
    //   276: aload_0
    //   277: getfield 128	com/aps/a:w	J
    //   280: lsub
    //   281: getstatic 730	com/aps/f:j	J
    //   284: lcmp
    //   285: ifge +87 -> 372
    //   288: iconst_0
    //   289: istore_2
    //   290: goto -279 -> 11
    //   293: aload_0
    //   294: getfield 130	com/aps/a:x	J
    //   297: lconst_0
    //   298: lcmp
    //   299: istore 5
    //   301: iconst_0
    //   302: istore 4
    //   304: iload 5
    //   306: ifeq -269 -> 37
    //   309: invokestatic 414	com/aps/n:a	()J
    //   312: aload_0
    //   313: getfield 130	com/aps/a:x	J
    //   316: lsub
    //   317: getstatic 732	com/aps/f:i	J
    //   320: lcmp
    //   321: istore 6
    //   323: iconst_0
    //   324: istore 4
    //   326: iload 6
    //   328: iflt -291 -> 37
    //   331: iconst_1
    //   332: istore 4
    //   334: goto -297 -> 37
    //   337: astore 8
    //   339: aload 8
    //   341: invokestatic 391	com/aps/n:a	(Ljava/lang/Throwable;)V
    //   344: aload 7
    //   346: iconst_0
    //   347: aload 7
    //   349: invokevirtual 551	java/lang/StringBuilder:length	()I
    //   352: invokevirtual 315	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   355: pop
    //   356: aconst_null
    //   357: astore 10
    //   359: goto -105 -> 254
    //   362: astore_1
    //   363: aload_0
    //   364: monitorexit
    //   365: aload_1
    //   366: athrow
    //   367: astore 19
    //   369: goto -197 -> 172
    //   372: iconst_1
    //   373: istore_2
    //   374: goto -363 -> 11
    //
    // Exception table:
    //   from	to	target	type
    //   172	250	337	java/lang/Exception
    //   2	9	362	finally
    //   15	25	362	finally
    //   25	30	362	finally
    //   42	46	362	finally
    //   46	77	362	finally
    //   82	172	362	finally
    //   172	250	362	finally
    //   259	268	362	finally
    //   273	288	362	finally
    //   293	301	362	finally
    //   309	323	362	finally
    //   339	356	362	finally
    //   82	172	367	java/lang/Exception
  }

  private void i()
  {
    this.h.clear();
    this.n = null;
  }

  private void j()
  {
    if (l());
    try
    {
      this.e.startScan();
      this.x = n.a();
      return;
    }
    catch (SecurityException localSecurityException)
    {
    }
  }

  private void k()
  {
    if ((this.q == null) || (this.i.size() <= 0))
      return;
    Iterator localIterator1 = this.i.entrySet().iterator();
    while ((localIterator1 != null) && (localIterator1.hasNext()))
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      PendingIntent localPendingIntent = (PendingIntent)localEntry.getKey();
      List localList = (List)localEntry.getValue();
      Intent localIntent = new Intent();
      Bundle localBundle = new Bundle();
      Iterator localIterator2 = localList.iterator();
      while (localIterator2.hasNext())
      {
        h localh = (h)localIterator2.next();
        long l1 = localh.a();
        if ((l1 == -1L) || (l1 >= n.a()))
        {
          double[] arrayOfDouble = new double[4];
          arrayOfDouble[0] = localh.b;
          arrayOfDouble[1] = localh.a;
          arrayOfDouble[2] = this.q.b();
          arrayOfDouble[3] = this.q.a();
          float f1 = n.a(arrayOfDouble);
          if (f1 < localh.c)
          {
            localBundle.putFloat("distance", f1);
            localBundle.putString("fence", localh.b());
            localIntent.putExtras(localBundle);
            try
            {
              localPendingIntent.send(this.b, 0, localIntent);
            }
            catch (Exception localException)
            {
            }
          }
        }
      }
    }
  }

  private boolean l()
  {
    try
    {
      boolean bool = this.e.isWifiEnabled();
      return bool;
    }
    catch (SecurityException localSecurityException)
    {
    }
    return false;
  }

  private c m()
  {
    String str = h();
    if ((str != null) && (str.equals(this.p)))
    {
      if (this.q != null)
      {
        this.r = n.a();
        return this.q;
      }
    }
    else
      this.p = str;
    return b(str);
  }

  private void n()
  {
    if (this.t)
    {
      this.c = 9;
      this.g.clear();
    }
    do
    {
      do
      {
        return;
        switch (this.c)
        {
        default:
          return;
        case 1:
        case 2:
        }
      }
      while (this.g.size() != 0);
      this.c = 9;
      return;
    }
    while (this.g.size() != 0);
    this.c = 9;
  }

  public void a(PendingIntent paramPendingIntent)
  {
    if (paramPendingIntent == null)
      return;
    this.i.remove(paramPendingIntent);
  }

  public void a(Context paramContext)
  {
    if (paramContext == null);
    while (this.b != null)
      return;
    this.b = paramContext.getApplicationContext();
    n.a(this.b, "in debug mode, only for test");
    this.e = ((WifiManager)n.b(this.b, "wifi"));
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    localIntentFilter.addAction("android.net.wifi.SCAN_RESULTS");
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.AIRPLANE_MODE");
    localIntentFilter.addAction("android.intent.action.BATTERY_CHANGED");
    localIntentFilter.addAction("android.location.GPS_FIX_CHANGE");
    this.b.registerReceiver(this.m, localIntentFilter);
    j();
    this.d = ((ConnectivityManager)n.b(this.b, "connectivity"));
    CellLocation.requestLocationUpdate();
    this.f = ((TelephonyManager)n.b(this.b, "phone"));
    this.F = this.f.getCellLocation();
    switch (this.f.getPhoneType())
    {
    default:
      this.c = 9;
      this.k = new a.1(this);
      if (n.b() >= 7)
        break;
    case 1:
    case 2:
    }
    while (true)
    {
      int i1;
      try
      {
        int i3 = l.b("android.telephony.PhoneStateListener", "LISTEN_SIGNAL_STRENGTH");
        i1 = i3;
        if (i1 != 0)
          break label327;
        this.f.listen(this.k, 16);
        this.D = System.currentTimeMillis();
        return;
        this.c = 1;
        break;
        this.c = 2;
      }
      catch (Exception localException2)
      {
        n.a(localException2);
        i1 = 0;
        continue;
      }
      try
      {
        int i2 = l.b("android.telephony.PhoneStateListener", "LISTEN_SIGNAL_STRENGTHS");
        i1 = i2;
      }
      catch (Exception localException1)
      {
        n.a(localException1);
        i1 = 0;
      }
      continue;
      try
      {
        label327: this.f.listen(this.k, i1 | 0x10);
      }
      catch (SecurityException localSecurityException)
      {
        n.a(localSecurityException);
      }
    }
  }

  public void a(h paramh, PendingIntent paramPendingIntent)
  {
    if ((paramPendingIntent == null) || (paramh == null));
    long l1;
    do
    {
      return;
      l1 = paramh.a();
    }
    while ((l1 != -1L) && (l1 < n.a()));
    if (this.i.get(paramPendingIntent) != null)
    {
      List localList = (List)this.i.get(paramPendingIntent);
      localList.add(paramh);
      this.i.put(paramPendingIntent, localList);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramh);
    this.i.put(paramPendingIntent, localArrayList);
  }

  public void a(String paramString)
  {
    if ((paramString == null) || (paramString.indexOf("##") == -1));
    String[] arrayOfString;
    do
    {
      return;
      arrayOfString = paramString.split("##");
    }
    while (arrayOfString.length != 3);
    f.d = arrayOfString[0];
    if (!f.e.equals(arrayOfString[1]))
      d.a().c();
    f.e = arrayOfString[1];
    f.f = arrayOfString[2];
  }

  public void a(JSONObject paramJSONObject)
  {
    this.o = paramJSONObject;
  }

  public c b()
  {
    int i1 = 1;
    label16: long l3;
    int i2;
    CellLocation localCellLocation;
    label352: label382: Object localObject2;
    label420: c localc2;
    c localc3;
    c localc4;
    label483: label493: int i3;
    do
    {
      do
        try
        {
          Context localContext = this.b;
          c localc1 = null;
          if (localContext == null);
          while (true)
          {
            return localc1;
            boolean bool1 = TextUtils.isEmpty(f.d);
            localc1 = null;
            if (!bool1)
            {
              boolean bool2 = TextUtils.isEmpty(f.e);
              localc1 = null;
              if (!bool2)
              {
                boolean bool3 = "false".equals(j.a(this.o)[0]);
                localc1 = null;
                if (!bool3)
                {
                  this.z = (1 + this.z);
                  if (this.z > i1)
                    d();
                  if (this.z == i1)
                  {
                    this.E = System.currentTimeMillis();
                    this.t = n.a(this.b);
                  }
                  if (this.h == null)
                    this.h = new ArrayList();
                  if ((this.z == i1) && (l()) && (this.E - this.D < 2000L))
                    for (int i5 = 4; (i5 > 0) && (this.h.size() == 0); i5--)
                      SystemClock.sleep(500L);
                  long l1 = this.r;
                  long l2 = n.a();
                  if (l2 - l1 >= 300L)
                    break label1501;
                  l3 = 0L;
                  if (this.q == null)
                    break label1507;
                  l3 = l2 - this.q.d();
                  break label1507;
                  if ((i2 == 0) || (this.q == null))
                    break;
                  this.r = n.a();
                  localc1 = this.q;
                }
              }
            }
          }
          localCellLocation = this.F;
          if ((localCellLocation == null) && (!this.t) && (this.f != null))
            localCellLocation = this.f.getCellLocation();
          if (localCellLocation != null);
          switch (n.a(localCellLocation, this.b))
          {
          default:
          case 1:
            while (true)
            {
              a(this.h);
              n();
              if (!l())
                break label857;
              this.n = this.e.getConnectionInfo();
              switch (this.c)
              {
              case 1:
                boolean bool4 = TextUtils.isEmpty((CharSequence)localObject2);
                localc1 = null;
                if (bool4)
                  break label16;
                StringBuilder localStringBuilder1 = f();
                localc2 = d.a().a((String)localObject2, localStringBuilder1, "mem");
                if (localc2 != null)
                  break label1442;
                localc3 = m();
                localc4 = this.q;
                if ((localc3 != null) && (localc4 != null))
                  break label1363;
                if (i1 != 0)
                  this.q = localc3;
                d.a().a((String)localObject2, this.q, localStringBuilder1, this.b);
                localStringBuilder1.delete(0, localStringBuilder1.length());
                this.r = n.a();
                k();
                localc1 = this.q;
                break label16;
                if ((localCellLocation != null) && (this.f != null))
                  a(localCellLocation);
                break;
              case 2:
              case 9:
              }
            }
          case 2:
          }
        }
        finally
        {
        }
      while (localCellLocation == null);
      this.g.clear();
      i3 = n.b();
    }
    while (i3 < 5);
    while (true)
    {
      label857: String str2;
      try
      {
        if (l.a(localCellLocation, "getSystemId", new Object[0]) <= 0)
        {
          this.c = 9;
          n.a(new Object[] { "cdma illegal" });
          break label352;
        }
        if (l.a(localCellLocation, "getNetworkId", new Object[0]) == -1)
        {
          this.c = 9;
          n.a(new Object[] { "cdma illegal" });
          break label352;
        }
        if (l.a(localCellLocation, "getBaseStationId", new Object[0]) == -1)
        {
          this.c = 9;
          n.a(new Object[] { "cdma illegal" });
          break label352;
        }
        this.c = 2;
        String[] arrayOfString = n.a(this.f);
        e locale3 = new e();
        locale3.a = arrayOfString[0];
        locale3.b = arrayOfString[1];
        locale3.g = l.a(localCellLocation, "getSystemId", new Object[0]);
        locale3.h = l.a(localCellLocation, "getNetworkId", new Object[0]);
        locale3.i = l.a(localCellLocation, "getBaseStationId", new Object[0]);
        locale3.j = this.l;
        locale3.e = l.a(localCellLocation, "getBaseStationLatitude", new Object[0]);
        locale3.f = l.a(localCellLocation, "getBaseStationLongitude", new Object[0]);
        this.g.add(locale3);
        break label352;
        i();
        break label382;
        if (this.g.size() > 0)
        {
          e locale2 = (e)this.g.get(0);
          StringBuilder localStringBuilder3 = new StringBuilder();
          localStringBuilder3.append(locale2.a).append("#");
          localStringBuilder3.append(locale2.b).append("#");
          localStringBuilder3.append(locale2.c).append("#");
          localStringBuilder3.append(locale2.d).append("#");
          localStringBuilder3.append("network").append("#");
          if (this.h.size() > 0)
            break label1535;
          if (!a(this.n))
            break label1543;
          break label1535;
          localStringBuilder3.append(str4);
          localObject2 = localStringBuilder3.toString();
          break label420;
          if (this.g.size() > 0)
          {
            e locale1 = (e)this.g.get(0);
            StringBuilder localStringBuilder2 = new StringBuilder();
            localStringBuilder2.append(locale1.a).append("#");
            localStringBuilder2.append(locale1.b).append("#");
            localStringBuilder2.append(locale1.g).append("#");
            localStringBuilder2.append(locale1.h).append("#");
            localStringBuilder2.append(locale1.i).append("#");
            localStringBuilder2.append("network").append("#");
            if (this.h.size() > 0)
              break label1551;
            if (!a(this.n))
              break label1559;
            break label1551;
            localStringBuilder2.append(str3);
            localObject2 = localStringBuilder2.toString();
            break label420;
            String str1 = String.format("#%s#", new Object[] { "network" });
            if ((this.h.size() == i1) && (!a(this.n)))
            {
              localObject2 = null;
              break label420;
            }
            if (this.h.size() == 0)
            {
              localObject2 = null;
              break label420;
            }
            if ((this.h.size() == i1) && (a(this.n)))
            {
              ScanResult localScanResult = (ScanResult)this.h.get(0);
              if ((localScanResult != null) && (this.n.getBSSID().equals(localScanResult.BSSID)))
              {
                str2 = null;
                break label1567;
              }
            }
            else
            {
              localObject2 = str1 + "wifi";
              break label420;
              label1363: double[] arrayOfDouble = new double[4];
              arrayOfDouble[0] = localc3.b();
              arrayOfDouble[1] = localc3.a();
              arrayOfDouble[2] = localc4.b();
              arrayOfDouble[3] = localc4.a();
              if ((n.a(arrayOfDouble) > 20.0F) || (Math.abs(localc3.c() - localc4.c()) > 20.0F))
                break label483;
              i1 = 0;
              break label483;
              label1442: if ((this.r == 0L) || (n.a() - this.s <= 300000L))
                break label1574;
              i4 = i1;
              if (i4 != 0)
              {
                this.q = m();
                break label493;
              }
              this.q = localc2;
              break label493;
            }
            str2 = str1;
            break label1567;
            label1501: i2 = 0;
            break;
            label1507: if (l3 > 10000L)
              continue;
            i2 = i1;
            break;
          }
        }
        localObject2 = "";
      }
      catch (Exception localException)
      {
      }
      break label352;
      label1535: String str4 = "cellwifi";
      continue;
      label1543: str4 = "cell";
      continue;
      label1551: String str3 = "cellwifi";
      continue;
      label1559: str3 = "cell";
      continue;
      label1567: localObject2 = str2;
      break label420;
      label1574: int i4 = 0;
    }
  }

  // ERROR //
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 145	com/aps/a:B	Lcom/aps/s;
    //   4: ifnull +15 -> 19
    //   7: aload_0
    //   8: getfield 145	com/aps/a:B	Lcom/aps/s;
    //   11: invokevirtual 499	com/aps/s:c	()V
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 155	com/aps/a:G	Z
    //   19: aload_0
    //   20: aconst_null
    //   21: putfield 147	com/aps/a:C	Lcom/aps/y;
    //   24: aload_0
    //   25: getfield 72	com/aps/a:b	Landroid/content/Context;
    //   28: ifnull +14 -> 42
    //   31: aload_0
    //   32: getfield 72	com/aps/a:b	Landroid/content/Context;
    //   35: aload_0
    //   36: getfield 108	com/aps/a:m	Lcom/aps/a$a;
    //   39: invokevirtual 977	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   42: aload_0
    //   43: aconst_null
    //   44: putfield 108	com/aps/a:m	Lcom/aps/a$a;
    //   47: aload_0
    //   48: getfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   51: ifnull +22 -> 73
    //   54: aload_0
    //   55: getfield 99	com/aps/a:k	Landroid/telephony/PhoneStateListener;
    //   58: ifnull +15 -> 73
    //   61: aload_0
    //   62: getfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   65: aload_0
    //   66: getfield 99	com/aps/a:k	Landroid/telephony/PhoneStateListener;
    //   69: iconst_0
    //   70: invokevirtual 874	android/telephony/TelephonyManager:listen	(Landroid/telephony/PhoneStateListener;I)V
    //   73: invokestatic 895	com/aps/d:a	()Lcom/aps/d;
    //   76: invokevirtual 896	com/aps/d:c	()V
    //   79: iconst_0
    //   80: putstatic 979	com/aps/f:g	Z
    //   83: aload_0
    //   84: lconst_0
    //   85: putfield 118	com/aps/a:r	J
    //   88: aload_0
    //   89: getfield 85	com/aps/a:g	Ljava/util/List;
    //   92: invokeinterface 207 1 0
    //   97: aload_0
    //   98: getfield 92	com/aps/a:i	Ljava/util/Map;
    //   101: invokeinterface 980 1 0
    //   106: aload_0
    //   107: bipush 143
    //   109: putfield 101	com/aps/a:l	I
    //   112: aload_0
    //   113: invokespecial 553	com/aps/a:i	()V
    //   116: aload_0
    //   117: aconst_null
    //   118: putfield 114	com/aps/a:p	Ljava/lang/String;
    //   121: aload_0
    //   122: aconst_null
    //   123: putfield 116	com/aps/a:q	Lcom/aps/c;
    //   126: aload_0
    //   127: aconst_null
    //   128: putfield 72	com/aps/a:b	Landroid/content/Context;
    //   131: aload_0
    //   132: aconst_null
    //   133: putfield 80	com/aps/a:f	Landroid/telephony/TelephonyManager;
    //   136: aconst_null
    //   137: putstatic 67	com/aps/a:a	Lcom/aps/a;
    //   140: invokestatic 983	java/lang/System:gc	()V
    //   143: invokestatic 989	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   146: invokevirtual 992	java/lang/Runtime:runFinalization	()V
    //   149: return
    //   150: astore_3
    //   151: aload_0
    //   152: aconst_null
    //   153: putfield 108	com/aps/a:m	Lcom/aps/a$a;
    //   156: goto -109 -> 47
    //   159: astore_2
    //   160: aload_0
    //   161: aconst_null
    //   162: putfield 108	com/aps/a:m	Lcom/aps/a$a;
    //   165: aload_2
    //   166: athrow
    //   167: astore 4
    //   169: aload 4
    //   171: invokestatic 391	com/aps/n:a	(Ljava/lang/Throwable;)V
    //   174: goto -101 -> 73
    //   177: astore_1
    //   178: goto -159 -> 19
    //
    // Exception table:
    //   from	to	target	type
    //   24	42	150	java/lang/Exception
    //   24	42	159	finally
    //   47	73	167	java/lang/Exception
    //   0	19	177	java/lang/Exception
  }

  public void d()
  {
    try
    {
      if (this.B == null)
      {
        this.B = s.a(this.b);
        this.B.a(256);
      }
      if (!this.G)
      {
        this.G = true;
        this.B.a();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public int e()
  {
    if (this.i != null)
      return this.i.size();
    return 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.a
 * JD-Core Version:    0.6.2
 */