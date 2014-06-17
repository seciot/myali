package com.alipay.nfc.card.pboc;

import android.content.res.Resources;
import com.alipay.mobile.nfc.R.string;
import com.alipay.nfc.Util;
import com.alipay.nfc.tech.Iso7816.BerT;
import com.alipay.nfc.tech.Iso7816.BerTLV;
import com.alipay.nfc.tech.Iso7816.BerV;
import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.util.ArrayList;
import java.util.Iterator;

final class HardReader extends PbocCard
{
  private HardReader(Iso7816.Tag paramTag, byte[] paramArrayOfByte, Resources paramResources)
  {
    super(paramTag);
    if (paramArrayOfByte != null);
    for (String str = Util.b(paramArrayOfByte, 0, paramArrayOfByte.length); ; str = paramResources.getString(R.string.e))
    {
      this.f = str;
      this.p = "TRANS_CARD";
      if (!Util.b(paramArrayOfByte).equalsIgnoreCase("a00000000386980703"))
        break;
      this.o = "台州通";
      return;
    }
    this.o = "?";
  }

  static final HardReader a(Iso7816.Tag paramTag, Resources paramResources)
  {
    if ((!paramTag.b(c).c()) && (!paramTag.a(a).c()))
      return null;
    Object localObject1 = c(paramTag);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a(paramTag).iterator();
    Object localObject2 = null;
    Object localObject3 = null;
    label56: byte[] arrayOfByte;
    Object localObject11;
    if (localIterator.hasNext())
    {
      arrayOfByte = a(paramTag, (byte[])localIterator.next());
      if (arrayOfByte == null)
        break label373;
      if (!((Iso7816.Response)localObject1).c())
        localObject1 = c(paramTag);
      if ((localObject3 != null) && (((Iso7816.Response)localObject3).c()))
        break label366;
      localObject11 = paramTag.a(21);
      label120: localArrayList.addAll(b(paramTag));
    }
    for (Object localObject12 = localObject1; ; localObject12 = localObject1)
    {
      localObject1 = localObject12;
      localObject3 = localObject11;
      localObject2 = arrayOfByte;
      break label56;
      if ((localObject3 == null) || (!((Iso7816.Response)localObject3).c()))
      {
        localObject2 = a(paramTag, d);
        if (localObject2 != null)
        {
          if (!((Iso7816.Response)localObject1).c())
            localObject1 = c(paramTag);
          localObject3 = paramTag.a(21);
          localArrayList.addAll(b(paramTag));
        }
      }
      Object localObject4 = localObject2;
      Object localObject5 = localObject1;
      Object localObject6 = localObject3;
      Object localObject7 = localObject4;
      if (((localObject6 == null) || (!((Iso7816.Response)localObject6).c())) && (paramTag.a(b).c()))
      {
        localObject7 = b;
        if (!((Iso7816.Response)localObject5).c())
          localObject5 = c(paramTag);
        localObject6 = paramTag.a(21);
        localArrayList.addAll(b(paramTag));
      }
      Object localObject8 = localObject7;
      Object localObject9 = localObject6;
      Object localObject10 = localObject5;
      if ((!localObject10.c()) && (localObject9 == null) && (localArrayList.isEmpty()) && (localObject8 == null))
        break;
      HardReader localHardReader = new HardReader(paramTag, localObject8, paramResources);
      localHardReader.a(localObject10);
      if (localObject9 != null)
        localHardReader.a(localObject9, 0, false);
      localHardReader.a(new ArrayList[] { localArrayList });
      return localHardReader;
      label366: localObject11 = localObject3;
      break label120;
      label373: localObject11 = localObject3;
    }
  }

  private static ArrayList<byte[]> a(Iso7816.Tag paramTag)
  {
    ArrayList localArrayList = new ArrayList();
    label130: for (int i = 1; i <= 31; i++)
    {
      Iso7816.Response localResponse = paramTag.a(i, 1);
      int j = 2;
      if (localResponse.c())
      {
        Iso7816.BerTLV localBerTLV1 = Iso7816.BerTLV.a(localResponse);
        byte[] arrayOfByte;
        if (localBerTLV1.c.a((byte)112))
        {
          Iso7816.BerTLV localBerTLV2 = localBerTLV1.a(Iso7816.BerT.f);
          if (localBerTLV2 != null)
          {
            Iso7816.BerTLV localBerTLV3 = localBerTLV2.a(Iso7816.BerT.g);
            if (localBerTLV3 != null)
              arrayOfByte = localBerTLV3.e.b();
          }
        }
        while (true)
        {
          if (arrayOfByte == null)
            break label130;
          localArrayList.add(arrayOfByte);
          localResponse = paramTag.a(i, j);
          j++;
          break;
          arrayOfByte = null;
          continue;
          arrayOfByte = null;
        }
      }
    }
    return localArrayList;
  }

  private static byte[] a(Iso7816.Tag paramTag, byte[] paramArrayOfByte)
  {
    if ((!paramTag.b(c).c()) && (!paramTag.a(a).c()))
      paramArrayOfByte = null;
    Iso7816.BerTLV localBerTLV2;
    do
    {
      Iso7816.BerTLV localBerTLV1;
      do
      {
        return paramArrayOfByte;
        Iso7816.Response localResponse = paramTag.b(paramArrayOfByte);
        if (!localResponse.c())
          return null;
        localBerTLV1 = Iso7816.BerTLV.a(localResponse);
      }
      while (!localBerTLV1.c.a((byte)111));
      localBerTLV2 = localBerTLV1.a(Iso7816.BerT.e);
    }
    while (localBerTLV2 == null);
    return localBerTLV2.e.b();
  }

  private static Iso7816.Response c(Iso7816.Tag paramTag)
  {
    Iso7816.Response localResponse = paramTag.a(true);
    if (localResponse.c())
      return localResponse;
    return paramTag.a(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.HardReader
 * JD-Core Version:    0.6.2
 */