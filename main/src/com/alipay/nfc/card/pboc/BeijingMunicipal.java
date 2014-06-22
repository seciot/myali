package com.alipay.nfc.card.pboc;

import com.alipay.nfc.Util;
import com.alipay.nfc.model.CardInfo;
import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.util.ArrayList;

final class BeijingMunicipal extends PbocCard
{
  private BeijingMunicipal(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.p = "TRANS_CARD";
    this.o = "北京市政交通卡";
  }

  static final BeijingMunicipal a(Iso7816.Tag paramTag)
  {
    if (paramTag.dexopt(c).getBundleName())
    {
      Iso7816.Response localResponse1 = paramTag.getBundle(4);
      if (localResponse1.getBundleName())
      {
        Iso7816.Response localResponse2 = paramTag.getBundle(5);
        if (paramTag.getBundle(b).getBundleName())
        {
          Iso7816.Response localResponse3 = paramTag.getBundle(true);
          ArrayList localArrayList = dexopt(paramTag);
          BeijingMunicipal localBeijingMunicipal = new BeijingMunicipal(paramTag);
          localBeijingMunicipal.getBundle(localResponse3);
          if ((!localResponse1.getBundleName()) || (localResponse1.getInstance() < 32))
          {
            localBeijingMunicipal.j = null;
            localBeijingMunicipal.i = null;
            localBeijingMunicipal.h = null;
            localBeijingMunicipal.g = null;
          }
          while (true)
          {
            localBeijingMunicipal.a(new ArrayList[] { localArrayList });
            return localBeijingMunicipal;
            byte[] arrayOfByte1 = localResponse1.stop();
            localBeijingMunicipal.g = Util.b(arrayOfByte1, 0, 8);
            Object[] arrayOfObject1 = new Object[3];
            arrayOfObject1[0] = Byte.valueOf(arrayOfByte1[8]);
            arrayOfObject1[1] = Byte.valueOf(arrayOfByte1[9]);
            arrayOfObject1[2] = Byte.valueOf(arrayOfByte1[10]);
            localBeijingMunicipal.h = String.format("%02X.%02X%02X", arrayOfObject1);
            Object[] arrayOfObject2 = new Object[8];
            arrayOfObject2[0] = Byte.valueOf(arrayOfByte1[24]);
            arrayOfObject2[1] = Byte.valueOf(arrayOfByte1[25]);
            arrayOfObject2[2] = Byte.valueOf(arrayOfByte1[26]);
            arrayOfObject2[3] = Byte.valueOf(arrayOfByte1[27]);
            arrayOfObject2[4] = Byte.valueOf(arrayOfByte1[28]);
            arrayOfObject2[5] = Byte.valueOf(arrayOfByte1[29]);
            arrayOfObject2[6] = Byte.valueOf(arrayOfByte1[30]);
            arrayOfObject2[7] = Byte.valueOf(arrayOfByte1[31]);
            localBeijingMunicipal.i = String.format("%02X%02X.%02X.%02X - %02X%02X.%02X.%02X", arrayOfObject2);
            localBeijingMunicipal.j = null;
            if ((localResponse2 != null) && (localResponse2.getBundleName()) && (localResponse2.getInstance() > 4))
            {
              byte[] arrayOfByte2 = localResponse2.stop();
              int i = Util.a(arrayOfByte2, 1, 4);
              if (arrayOfByte2[0] == 0)
              {
                Object[] arrayOfObject4 = new Object[1];
                arrayOfObject4[0] = Integer.valueOf(i);
                localBeijingMunicipal.j = String.format("%d ", arrayOfObject4);
              }
              else
              {
                Object[] arrayOfObject3 = new Object[1];
                arrayOfObject3[0] = Integer.valueOf(i);
                localBeijingMunicipal.j = String.format("%d* ", arrayOfObject3);
              }
            }
          }
        }
      }
    }
    return null;
  }

  public final CardInfo a()
  {
    CardInfo localCardInfo = super.a();
    localCardInfo.h("BeijingMunicipal");
    return localCardInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.BeijingMunicipal
 * JD-Core Version:    0.6.2
 */