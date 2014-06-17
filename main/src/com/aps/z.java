package com.aps;

import android.content.Context;
import android.location.Location;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.NeighboringCellInfo;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public class z
{
  private Context a;
  private int b = 0;
  private int c = 0;
  private int d = 0;

  protected z(Context paramContext)
  {
    this.a = paramContext;
    a(256);
  }

  private static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
      return paramInt1;
    return paramInt2;
  }

  protected static u a(Location paramLocation, ac paramac, int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 3) || (paramac == null))
      return null;
    int i;
    int j;
    label40: u localu;
    long l1;
    long l2;
    int k;
    label302: r localr1;
    if ((paramInt == 1) || (paramInt == 3))
    {
      i = 1;
      if ((paramInt != 2) && (paramInt != 3))
        break label566;
      j = 1;
      localu = new u();
      byte[] arrayOfByte1 = paramac.n().getBytes();
      System.arraycopy(arrayOfByte1, 0, localu.d, 0, a(arrayOfByte1.length, localu.d.length));
      byte[] arrayOfByte2 = paramac.e().getBytes();
      System.arraycopy(arrayOfByte2, 0, localu.h, 0, a(arrayOfByte2.length, localu.h.length));
      byte[] arrayOfByte3 = paramac.f().getBytes();
      System.arraycopy(arrayOfByte3, 0, localu.b, 0, a(arrayOfByte3.length, localu.b.length));
      byte[] arrayOfByte4 = paramac.g().getBytes();
      System.arraycopy(arrayOfByte4, 0, localu.c, 0, a(arrayOfByte4.length, localu.c.length));
      localu.e = ((short)paramac.o());
      localu.f = ((short)paramac.p());
      localu.g = ((byte)paramac.q());
      byte[] arrayOfByte5 = paramac.r().getBytes();
      System.arraycopy(arrayOfByte5, 0, localu.i, 0, a(arrayOfByte5.length, localu.i.length));
      l1 = ((Long)paramac.m().get(0)).longValue();
      if (l1 > 2147483647L)
        l1 /= 1000L;
      l2 = System.currentTimeMillis() / 1000L;
      if ((paramLocation == null) || (!paramac.d()))
        break label572;
      k = 1;
      if (k == 0)
        break label884;
      localr1 = new r();
      if (l1 <= 0L)
        break label578;
    }
    t localt;
    int m;
    label566: label572: label578: for (localr1.b = ((int)l1); ; localr1.b = ((int)l2))
    {
      localt = new t();
      localt.a = ((int)(1000000.0D * paramLocation.getLongitude()));
      localt.b = ((int)(1000000.0D * paramLocation.getLatitude()));
      localt.c = ((int)paramLocation.getAltitude());
      localt.d = ((int)paramLocation.getAccuracy());
      localt.e = ((int)paramLocation.getSpeed());
      localt.f = ((short)(int)paramLocation.getBearing());
      localt.g = paramac.s();
      localt.h = paramac.t();
      localt.i = paramac.u();
      List localList1 = paramac.v();
      localt.j = ((byte)localList1.size());
      m = 35;
      for (int n = 0; n < localList1.size(); n++)
      {
        ay localay = new ay();
        localay.a = ((Byte)((List)localList1.get(n)).get(0)).byteValue();
        localay.b = ((Short)((List)localList1.get(n)).get(1)).shortValue();
        m += 3;
        localt.k.add(localay);
      }
      i = 0;
      break;
      j = 0;
      break label40;
      k = 0;
      break label302;
    }
    localr1.c = localt;
    localr1.a = ((short)m);
    int i1 = 101 + localr1.a;
    localu.k.add(localr1);
    label884: int i3;
    int i2;
    if ((paramac.b()) && (!paramac.h()) && (i != 0))
    {
      r localr4 = new r();
      if (l1 > 0L);
      q localq;
      int i9;
      for (localr4.b = ((int)l1); ; localr4.b = ((int)l2))
      {
        localq = new q();
        int i8 = 5;
        List localList5 = paramac.w();
        if ((localList5 != null) && (localList5.size() >= 2))
        {
          localq.a = ((short)((Integer)localList5.get(0)).intValue());
          localq.b = ((Integer)localList5.get(1)).intValue();
          i8 = 11;
        }
        localq.c = paramac.k();
        List localList6 = paramac.l();
        localq.d = ((byte)localList6.size());
        i9 = i8 + 2;
        for (int i10 = 0; i10 < localList6.size(); i10++)
        {
          ab localab = new ab();
          localab.a = ((short)((NeighboringCellInfo)localList6.get(i10)).getLac());
          localab.b = ((NeighboringCellInfo)localList6.get(i10)).getCid();
          localab.c = ((byte)((NeighboringCellInfo)localList6.get(i10)).getRssi());
          i9 += 7;
          localq.e.add(localab);
        }
        return null;
      }
      localr4.d = localq;
      localr4.a = ((short)i9);
      int i11 = i1 + localr4.a;
      localu.k.add(localr4);
      i3 = i11;
      i2 = 2;
    }
    while (true)
    {
      r localr3;
      r localr2;
      if ((paramac.b()) && (paramac.h()) && (i != 0))
      {
        localr3 = new r();
        if (l1 > 0L)
        {
          localr3.b = ((int)l1);
          aa localaa = new aa();
          int i7 = 5;
          List localList4 = paramac.x();
          if ((localList4 != null) && (localList4.size() >= 5))
          {
            localaa.a = ((Integer)localList4.get(3)).intValue();
            localaa.b = ((Integer)localList4.get(4)).intValue();
            localaa.c = ((short)((Integer)localList4.get(0)).intValue());
            localaa.d = ((short)((Integer)localList4.get(1)).intValue());
            localaa.e = ((Integer)localList4.get(2)).intValue();
            localaa.f = paramac.k();
            i7 = 22;
          }
          localr3.e = localaa;
          localr3.a = ((short)i7);
          i3 += localr3.a;
          i2++;
          localu.k.add(localr3);
        }
      }
      else
      {
        if ((!paramac.c()) || (j == 0))
          break label1476;
        localr2 = new r();
        if (l1 <= 0L)
          break label1426;
      }
      w localw;
      int i5;
      label1426: for (localr2.b = ((int)l1); ; localr2.b = ((int)l2))
      {
        localw = new w();
        List localList2 = paramac.y();
        localw.a = ((byte)localList2.size());
        int i4 = 0;
        int i6;
        for (i5 = 6; i4 < localList2.size(); i5 = i6)
        {
          List localList3 = (List)localList2.get(i4);
          if ((localList3 != null) && (localList3.size() >= 3))
          {
            x localx = new x();
            byte[] arrayOfByte6 = ((String)localList3.get(0)).getBytes();
            System.arraycopy(arrayOfByte6, 0, localx.a, 0, a(arrayOfByte6.length, localx.a.length));
            localx.b = ((short)((Integer)localList3.get(1)).intValue());
            byte[] arrayOfByte7 = ((String)localList3.get(2)).getBytes();
            System.arraycopy(arrayOfByte7, 0, localx.c, 0, a(arrayOfByte7.length, localx.c.length));
            i5 += 50;
            localw.b.add(localx);
          }
          i6 = i5;
          i4++;
        }
        localr3.b = ((int)l2);
        break;
      }
      localr2.f = localw;
      localr2.a = ((short)i5);
      i3 += localr2.a;
      i2++;
      localu.k.add(localr2);
      label1476: localu.j = ((short)i2);
      localu.a = ((short)i3);
      if (i2 < 2)
        return null;
      return localu;
      i2 = 1;
      i3 = i1;
    }
  }

  protected static File a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 8)
      return paramContext.getExternalFilesDir(null);
    String str = "/Android/data/" + paramContext.getPackageName() + "/files/";
    return new File(Environment.getExternalStorageDirectory().getPath() + str);
  }

  protected static byte[] a(BitSet paramBitSet)
  {
    byte[] arrayOfByte = new byte[paramBitSet.size() / 8];
    int i = 0;
    if (i < paramBitSet.size())
    {
      int j = i / 8;
      int k = 7 - i % 8;
      int m = arrayOfByte[j];
      if (paramBitSet.get(i));
      for (int n = 1; ; n = 0)
      {
        arrayOfByte[j] = ((byte)(m | n << k));
        i++;
        break;
      }
    }
    return arrayOfByte;
  }

  // ERROR //
  protected static byte[] a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 363	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 364	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: new 366	java/util/zip/GZIPOutputStream
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 369	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_2
    //   17: aload_2
    //   18: aload_0
    //   19: invokevirtual 373	java/util/zip/GZIPOutputStream:write	([B)V
    //   22: aload_2
    //   23: invokevirtual 376	java/util/zip/GZIPOutputStream:finish	()V
    //   26: aload_2
    //   27: invokevirtual 379	java/util/zip/GZIPOutputStream:close	()V
    //   30: aload_1
    //   31: invokevirtual 382	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   34: astore 6
    //   36: aload 6
    //   38: astore 4
    //   40: aload_1
    //   41: invokevirtual 383	java/io/ByteArrayOutputStream:close	()V
    //   44: aload 4
    //   46: areturn
    //   47: astore_3
    //   48: aconst_null
    //   49: astore 4
    //   51: aload_3
    //   52: astore 5
    //   54: aload 5
    //   56: invokevirtual 386	java/lang/Exception:printStackTrace	()V
    //   59: aload 4
    //   61: areturn
    //   62: astore 5
    //   64: goto -10 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   0	36	47	java/lang/Exception
    //   40	44	62	java/lang/Exception
  }

  protected static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return null;
    int i = new String(paramArrayOfByte).indexOf(0);
    if (i > 0)
      if (i + 1 <= paramInt);
    while (true)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt);
      arrayOfByte[(paramInt - 1)] = 0;
      return arrayOfByte;
      paramInt = i + 1;
      continue;
      paramInt = 1;
    }
  }

  private File b(long paramLong)
  {
    if (Process.myUid() == 1000);
    StatFs localStatFs;
    do
    {
      return null;
      if ((c()) && (!"mounted".equals(Environment.getExternalStorageState())))
        break;
      localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    }
    while (localStatFs.getAvailableBlocks() * localStatFs.getBlockSize() <= this.c / 2);
    String str = a(this.a).getPath();
    File localFile1 = new File(str + File.separator + "carrierdata");
    if ((!localFile1.exists()) || (!localFile1.isDirectory()))
      localFile1.mkdirs();
    File localFile2 = new File(localFile1.getPath() + File.separator + paramLong);
    while (true)
    {
      try
      {
        boolean bool2 = localFile2.createNewFile();
        localFile3 = localFile2;
        bool1 = bool2;
        if (!bool1)
          break;
        return localFile3;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        localFile3 = localFile2;
        bool1 = false;
        continue;
      }
      File localFile3 = null;
      boolean bool1 = false;
    }
  }

  protected static BitSet b(byte[] paramArrayOfByte)
  {
    BitSet localBitSet = new BitSet(paramArrayOfByte.length << 3);
    int i = 0;
    int j = 0;
    while (i < paramArrayOfByte.length)
    {
      int k = 7;
      if (k >= 0)
      {
        int m = j + 1;
        if ((paramArrayOfByte[i] & 1 << k) >> k == 1);
        for (boolean bool = true; ; bool = false)
        {
          localBitSet.set(j, bool);
          k--;
          j = m;
          break;
        }
      }
      i++;
    }
    return localBitSet;
  }

  private File c(long paramLong)
  {
    File localFile1 = this.a.getFilesDir();
    File localFile2 = new File(localFile1.getPath() + File.separator + "carrierdata");
    if ((!localFile2.exists()) || (!localFile2.isDirectory()))
      localFile2.mkdirs();
    File localFile3 = new File(localFile2.getPath() + File.separator + paramLong);
    try
    {
      boolean bool2 = localFile3.createNewFile();
      bool1 = bool2;
      if (bool1)
        return localFile3;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        boolean bool1 = false;
      }
    }
    return null;
  }

  protected static boolean c()
  {
    if (Build.VERSION.SDK_INT >= 9)
      try
      {
        boolean bool = ((Boolean)Environment.class.getMethod("isExternalStorageRemovable", null).invoke(null, null)).booleanValue();
        return bool;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return true;
  }

  protected int a()
  {
    return this.b;
  }

  protected File a(long paramLong)
  {
    Object localObject1;
    if (Process.myUid() == 1000)
      localObject1 = null;
    while (true)
    {
      if (localObject1 == null)
        localObject1 = b(paramLong);
      Object localObject2;
      File[] arrayOfFile1;
      if (localObject1 == null)
      {
        File localFile2 = this.a.getFilesDir();
        File localFile3 = new File(localFile2.getPath() + File.separator + "carrierdata");
        boolean bool1 = localFile3.exists();
        localObject2 = null;
        if (bool1)
        {
          boolean bool2 = localFile3.isDirectory();
          localObject2 = null;
          if (bool2)
          {
            arrayOfFile1 = localFile3.listFiles();
            localObject2 = null;
            if (arrayOfFile1 != null)
            {
              int i = arrayOfFile1.length;
              localObject2 = null;
              if (i > 0)
              {
                if (arrayOfFile1.length != 1)
                  break label362;
                boolean bool3 = arrayOfFile1[0].length() < this.d;
                localObject2 = null;
                if (bool3)
                  localObject2 = arrayOfFile1[0];
              }
            }
          }
        }
      }
      while (true)
      {
        localObject1 = localObject2;
        if (localObject1 == null)
          localObject1 = c(paramLong);
        return localObject1;
        if ((c()) && (!"mounted".equals(Environment.getExternalStorageState())))
          break label411;
        String str = a(this.a).getPath();
        File localFile1 = new File(str + File.separator + "carrierdata");
        if ((!localFile1.exists()) || (!localFile1.isDirectory()))
          break label411;
        File[] arrayOfFile2 = localFile1.listFiles();
        if ((arrayOfFile2 == null) || (arrayOfFile2.length <= 0))
          break label411;
        if (arrayOfFile2.length == 1)
        {
          if (arrayOfFile2[0].length() >= this.d)
            break label411;
          localObject1 = arrayOfFile2[0];
          break;
        }
        if (arrayOfFile2.length < 2)
          break label411;
        localObject1 = arrayOfFile2[0];
        File localFile5 = arrayOfFile2[1];
        if (((File)localObject1).getName().compareTo(localFile5.getName()) > 0)
          break;
        localObject1 = localFile5;
        break;
        label362: int j = arrayOfFile1.length;
        localObject2 = null;
        if (j >= 2)
        {
          localObject2 = arrayOfFile1[0];
          File localFile4 = arrayOfFile1[1];
          if (localObject2.getName().compareTo(localFile4.getName()) <= 0)
            localObject2 = localFile4;
        }
      }
      label411: localObject1 = null;
    }
  }

  protected void a(int paramInt)
  {
    this.b = paramInt;
    this.c = (4 + (1500 * (this.b << 3) + this.b));
    if (this.b == 256)
      this.d = (this.c / 100);
    while (this.b != 8736)
      return;
    this.d = (-5000 + this.c);
  }

  protected File b()
  {
    Object localObject;
    if (Process.myUid() == 1000)
      localObject = null;
    while (true)
      if (localObject == null)
      {
        File localFile2 = this.a.getFilesDir();
        File localFile3 = new File(localFile2.getPath() + File.separator + "carrierdata");
        boolean bool1 = localFile3.exists();
        File localFile4 = null;
        File localFile5;
        if (bool1)
        {
          boolean bool2 = localFile3.isDirectory();
          localFile4 = null;
          if (bool2)
          {
            File[] arrayOfFile1 = localFile3.listFiles();
            localFile4 = null;
            if (arrayOfFile1 != null)
            {
              int i = arrayOfFile1.length;
              localFile4 = null;
              if (i > 0)
              {
                int j = arrayOfFile1.length;
                localFile4 = null;
                if (j >= 2)
                {
                  localFile5 = arrayOfFile1[0];
                  localFile4 = arrayOfFile1[1];
                  if (localFile5.getName().compareTo(localFile4.getName()) <= 0)
                    break label309;
                }
              }
            }
          }
        }
        return localFile4;
        if ((!c()) || ("mounted".equals(Environment.getExternalStorageState())))
        {
          File localFile1 = a(this.a);
          if (localFile1 != null)
          {
            String str = localFile1.getPath();
            File localFile6 = new File(str + File.separator + "carrierdata");
            if ((localFile6.exists()) && (localFile6.isDirectory()))
            {
              File[] arrayOfFile2 = localFile6.listFiles();
              if ((arrayOfFile2 != null) && (arrayOfFile2.length > 0) && (arrayOfFile2.length >= 2))
              {
                localObject = arrayOfFile2[0];
                File localFile7 = arrayOfFile2[1];
                if (localObject.getName().compareTo(localFile7.getName()) <= 0)
                  continue;
                localObject = localFile7;
                continue;
                label309: return localFile5;
              }
            }
          }
        }
      }
      else
      {
        return localObject;
        localObject = null;
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.z
 * JD-Core Version:    0.6.2
 */