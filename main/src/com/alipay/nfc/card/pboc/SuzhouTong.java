package com.alipay.nfc.card.pboc;

import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.util.ArrayList;

public class SuzhouTong extends PbocCard
{
  private static final byte[] t = { 83, 85, 88, 73, 78, 46, 68, 68, 70, 48, 49 };

  private SuzhouTong(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.f = "苏州市民卡";
    this.p = "TRANS_CARD";
    this.o = "苏州市民卡";
  }

  static final SuzhouTong a(Iso7816.Tag paramTag)
  {
    if (paramTag.b(t).c())
      if (new Iso7816.Response(paramTag.c(new byte[] { 0, 32, 0, 0, 3, 18, 52, 86 })).c())
      {
        Iso7816.Response localResponse1 = paramTag.a(21);
        Iso7816.Response localResponse2 = paramTag.a(true);
        ArrayList localArrayList = b(paramTag);
        SuzhouTong localSuzhouTong = new SuzhouTong(paramTag);
        localSuzhouTong.a(localResponse2);
        localSuzhouTong.a(localResponse1, 0, false);
        localSuzhouTong.a(new ArrayList[] { localArrayList });
        return localSuzhouTong;
      }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.SuzhouTong
 * JD-Core Version:    0.6.2
 */