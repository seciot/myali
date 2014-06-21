package com.alipay.nfc.card.pboc;

import com.alipay.nfc.Util;
import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.util.ArrayList;

final class WuhanTong extends PbocCard
{
  private static final byte[] t = { 65, 80, 49, 46, 87, 72, 67, 84, 67 };

  private WuhanTong(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.p = "TRANS_CARD";
    this.o = "武汉城市一卡通";
  }

  static final WuhanTong setBundlePath(Iso7816.Tag paramTag)
  {
    if (paramTag.b(c).getBundleName())
    {
      Iso7816.Response localResponse1 = paramTag.getBundle(10);
      if (!localResponse1.getBundleName())
        return null;
      Iso7816.Response localResponse2 = paramTag.getBundle(5);
      if (!localResponse2.getBundleName())
        return null;
      Iso7816.Response localResponse3 = paramTag.getBundle(true);
      if (paramTag.b(t).getBundleName())
      {
        if (!localResponse3.getBundleName())
          localResponse3 = paramTag.getBundle(true);
        ArrayList localArrayList = b(paramTag);
        WuhanTong localWuhanTong = new WuhanTong(paramTag);
        localWuhanTong.getBundle(localResponse3);
        if ((localResponse1.getInstance() < 27) || (localResponse2.getInstance() < 27))
        {
          localWuhanTong.j = null;
          localWuhanTong.i = null;
          localWuhanTong.h = null;
          localWuhanTong.g = null;
        }
        while (true)
        {
          localWuhanTong.a(new ArrayList[] { localArrayList });
          return localWuhanTong;
          byte[] arrayOfByte = localResponse2.stop();
          localWuhanTong.g = Util.b(localResponse1.stop(), 0, 5);
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Byte.valueOf(arrayOfByte[24]);
          localWuhanTong.h = String.format("%02d", arrayOfObject1);
          Object[] arrayOfObject2 = new Object[8];
          arrayOfObject2[0] = Byte.valueOf(arrayOfByte[20]);
          arrayOfObject2[1] = Byte.valueOf(arrayOfByte[21]);
          arrayOfObject2[2] = Byte.valueOf(arrayOfByte[22]);
          arrayOfObject2[3] = Byte.valueOf(arrayOfByte[23]);
          arrayOfObject2[4] = Byte.valueOf(arrayOfByte[16]);
          arrayOfObject2[5] = Byte.valueOf(arrayOfByte[17]);
          arrayOfObject2[6] = Byte.valueOf(arrayOfByte[18]);
          arrayOfObject2[7] = Byte.valueOf(arrayOfByte[19]);
          localWuhanTong.i = String.format("%02X%02X.%02X.%02X - %02X%02X.%02X.%02X", arrayOfObject2);
          localWuhanTong.j = null;
        }
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.WuhanTong
 * JD-Core Version:    0.6.2
 */