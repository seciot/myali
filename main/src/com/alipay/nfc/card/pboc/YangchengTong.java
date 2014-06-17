package com.alipay.nfc.card.pboc;

import com.alipay.nfc.Util;
import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.util.ArrayList;

final class YangchengTong extends PbocCard
{
  private static final byte[] t = { 80, 65, 89, 46, 65, 80, 80, 89 };
  private static final byte[] u = { 80, 65, 89, 46, 80, 65, 83, 68 };
  private static final byte[] v = { 80, 65, 89, 46, 84, 73, 67, 76 };

  private YangchengTong(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.p = "TRANS_CARD";
    this.o = "岭南通卡（羊城通）";
  }

  static final YangchengTong a(Iso7816.Tag paramTag)
  {
    boolean bool1 = paramTag.b(c).c();
    Object localObject = null;
    Iso7816.Response localResponse1;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    label87: YangchengTong localYangchengTong;
    if (bool1)
    {
      boolean bool2 = paramTag.b(t).c();
      localObject = null;
      if (bool2)
      {
        localResponse1 = paramTag.a(21);
        Iso7816.Response localResponse2 = paramTag.a(true);
        if (!paramTag.b(u).c())
          break label170;
        localArrayList1 = b(paramTag);
        if (!paramTag.b(v).c())
          break label176;
        localArrayList2 = b(paramTag);
        localYangchengTong = new YangchengTong(paramTag);
        localYangchengTong.a(localResponse2);
        if ((localResponse1.c()) && (localResponse1.a() >= 50))
          break label182;
        localYangchengTong.j = null;
        localYangchengTong.i = null;
        localYangchengTong.h = null;
        localYangchengTong.g = null;
      }
    }
    while (true)
    {
      localYangchengTong.a(new ArrayList[] { localArrayList1, localArrayList2 });
      localObject = localYangchengTong;
      return localObject;
      label170: localArrayList1 = null;
      break;
      label176: localArrayList2 = null;
      break label87;
      label182: byte[] arrayOfByte = localResponse1.b();
      localYangchengTong.g = Util.b(arrayOfByte, 11, 5);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Byte.valueOf(arrayOfByte[44]);
      arrayOfObject1[1] = Byte.valueOf(arrayOfByte[45]);
      localYangchengTong.h = String.format("%02X.%02X", arrayOfObject1);
      Object[] arrayOfObject2 = new Object[8];
      arrayOfObject2[0] = Byte.valueOf(arrayOfByte[23]);
      arrayOfObject2[1] = Byte.valueOf(arrayOfByte[24]);
      arrayOfObject2[2] = Byte.valueOf(arrayOfByte[25]);
      arrayOfObject2[3] = Byte.valueOf(arrayOfByte[26]);
      arrayOfObject2[4] = Byte.valueOf(arrayOfByte[27]);
      arrayOfObject2[5] = Byte.valueOf(arrayOfByte[28]);
      arrayOfObject2[6] = Byte.valueOf(arrayOfByte[29]);
      arrayOfObject2[7] = Byte.valueOf(arrayOfByte[30]);
      localYangchengTong.i = String.format("%02X%02X.%02X.%02X - %02X%02X.%02X.%02X", arrayOfObject2);
      localYangchengTong.j = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.YangchengTong
 * JD-Core Version:    0.6.2
 */