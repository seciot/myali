package com.alipay.nfc.card.pboc;

import com.alipay.nfc.Util;
import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.util.ArrayList;

final class ChanganTong extends PbocCard
{
  private static final byte[] t = { -96, 0, 0, 0, 3, -122, -104, 7, 1 };
  private static final String[][] u = { { "上海", "2000" }, { "宁波", "3150" }, { "天津", "3000" }, { "沈阳", "1100" }, { "福州", "3500" }, { "三亚", "5720" }, { "湛江", "5240" }, { "无锡", "2140" }, { "南通", "2263" }, { "葫芦岛", "1250" }, { "辽源", "1362" }, { "松原", "1310" }, { "克拉玛依", "8340" }, { "榆林", "7190" }, { "龙岩", "3640" }, { "舟山", "3160" }, { "泰州", "2253" }, { "长兴", "3131" }, { "驻马店", "4630" }, { "鹰潭", "3350" }, { "凯里", "5560" }, { "南昌", "3300" }, { "永州", "4250" }, { "锦州", "1210" }, { "江油", "6217" }, { "抚顺", "1130" }, { "昆山", "2153" }, { "江阴", "2144" }, { "淮安", "2232" }, { "绍兴", "3120" }, { "湖州", "3130" }, { "台州", "3170" }, { "常熟", "2155" }, { "兰州", "7300" }, { "白银", "7309" } };

  private ChanganTong(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.p = "TRANS_CARD";
    this.o = "城市一卡通";
  }

  static final ChanganTong a(Iso7816.Tag paramTag)
  {
    if (paramTag.b(c).c())
    {
      paramTag.a(5);
      if (paramTag.b(t).c())
      {
        Iso7816.Response localResponse1 = paramTag.a(21);
        Iso7816.Response localResponse2 = paramTag.a(true);
        ArrayList localArrayList = b(paramTag);
        ChanganTong localChanganTong = new ChanganTong(paramTag);
        localChanganTong.a(localResponse2);
        localChanganTong.a(localResponse1, 4, false);
        String str = Util.b(localResponse1.b(), 2, 2);
        String[][] arrayOfString = u;
        int i = arrayOfString.length;
        for (int j = 0; ; j++)
          if (j < i)
          {
            String[] arrayOfString1 = arrayOfString[j];
            if (str.startsWith(arrayOfString1[1]))
              localChanganTong.o = (arrayOfString1[0] + " 城市一卡通");
          }
          else
          {
            if ((str.equals("2000")) && (localChanganTong.g != null) && (localChanganTong.g.length() == 10))
              localChanganTong.g = (localChanganTong.g.substring(8, 10) + localChanganTong.g.substring(6, 8) + localChanganTong.g.substring(4, 6) + localChanganTong.g.substring(2, 4) + localChanganTong.g.substring(0, 2));
            localChanganTong.a(new ArrayList[] { localArrayList });
            return localChanganTong;
          }
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.ChanganTong
 * JD-Core Version:    0.6.2
 */