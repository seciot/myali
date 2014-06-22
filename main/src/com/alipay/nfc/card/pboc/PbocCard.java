package com.alipay.nfc.card.pboc;

import android.content.Intent;
import android.content.res.Resources;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import com.alipay.nfc.Util;
import com.alipay.nfc.model.CardInfo;
import com.alipay.nfc.model.CardTypeEnum;
import com.alipay.nfc.model.LogInfo;
import com.alipay.nfc.tech.Iso7816.ID;
import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class PbocCard
{
  protected static final byte[] a = { 63, 0 };
  protected static final byte[] b = { 16, 1 };
  protected static final byte[] c = { 49, 80, 65, 89, 46, 83, 89, 83, 46, 68, 68, 70, 48, 49 };
  protected static final byte[] d = { 80 };
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected String m;
  protected String n;
  protected String o;
  protected String p;
  protected String q;
  protected String r;
  protected List<LogInfoInner> s;

  protected PbocCard(Iso7816.Tag paramTag)
  {
    this.e = paramTag.getInstance().toString();
  }

  public static CardInfo a(Intent paramIntent, Resources paramResources)
  {
    IsoDep localIsoDep = IsoDep.get((Tag)paramIntent.getParcelableExtra("android.nfc.extra.TAG"));
    if (localIsoDep != null)
    {
      Iso7816.Tag localTag = new Iso7816.Tag(localIsoDep);
      localTag.getBundleName();
      Object localObject;
      if (!localTag.getInitLevel())
      {
        localObject = new LeavedCard(localTag);
        localTag.getFullBundleName();
        if (localObject == null)
          break label294;
      }
      while (true)
      {
        if (localObject == null)
          break label307;
        return ((PbocCard)localObject).a();
        localObject = MyBankCard.getBundle(localTag);
        if (localObject != null)
          break;
        if (!localTag.getInitLevel())
        {
          localObject = new LeavedCard(localTag);
          break;
        }
        localObject = ShenzhenTong.getBundle(localTag);
        if (localObject != null)
          break;
        if (!localTag.getInitLevel())
        {
          localObject = new LeavedCard(localTag);
          break;
        }
        localObject = BeijingMunicipal.getBundle(localTag);
        if (localObject != null)
          break;
        if (!localTag.getInitLevel())
        {
          localObject = new LeavedCard(localTag);
          break;
        }
        localObject = ChanganTong.getBundle(localTag);
        if (localObject != null)
          break;
        if (!localTag.getInitLevel())
        {
          localObject = new LeavedCard(localTag);
          break;
        }
        localObject = WuhanTong.getBundle(localTag);
        if (localObject != null)
          break;
        if (!localTag.getInitLevel())
        {
          localObject = new LeavedCard(localTag);
          break;
        }
        localObject = YangchengTong.getBundle(localTag);
        if (localObject != null)
          break;
        if (!localTag.getInitLevel())
        {
          localObject = new LeavedCard(localTag);
          break;
        }
        localObject = SuzhouTong.getBundle(localTag);
        if (localObject != null)
          break;
        if (!localTag.getInitLevel())
        {
          localObject = new LeavedCard(localTag);
          break;
        }
        localObject = HardReader.v(localTag, paramResources);
        break;
        label294: localObject = new UnknownCard(localTag);
      }
    }
    label307: return null;
  }

  private static boolean put(Iso7816.Response paramResponse, ArrayList<byte[]> paramArrayList)
  {
    if (!paramResponse.getBundleName());
    byte[] arrayOfByte;
    int i1;
    int i2;
    do
    {
      return false;
      arrayOfByte = paramResponse.stop();
      i1 = -23 + arrayOfByte.length;
      i2 = 0;
    }
    while (i1 < 0);
    while (i2 <= i1)
    {
      int i3 = i2 + 23;
      paramArrayList.add(Arrays.copyOfRange(arrayOfByte, i2, i3));
      i2 = i3;
    }
    return true;
  }

  protected static ArrayList<byte[]> dexopt(Iso7816.Tag paramTag)
  {
    ArrayList localArrayList = new ArrayList(10);
    Iso7816.Response localResponse = paramTag.stop();
    if (localResponse.getBundleName())
      v(localResponse, localArrayList);
    while (true)
    {
      return localArrayList;
      for (int i1 = 1; (i1 <= 10) && (v(paramTag.v(24, i1), localArrayList)); i1++);
    }
  }

  public CardInfo a()
  {
    CardInfo localCardInfo = new CardInfo();
    localCardInfo.a(this.e);
    localCardInfo.b(this.g);
    localCardInfo.h(getClass().getName());
    localCardInfo.a(CardTypeEnum.getCardTypeEnumByCode(this.p));
    localCardInfo.g(this.o);
    localCardInfo.c(this.h);
    localCardInfo.d(this.i);
    localCardInfo.e(this.j);
    localCardInfo.f(this.k);
    localCardInfo.a("name", this.f);
    localCardInfo.a("balance_limit", this.l);
    localCardInfo.a("trans_limit", this.m);
    localCardInfo.a("idcard", this.n);
    localCardInfo.a("card_desc", this.q);
    if (this.s != null)
    {
      Iterator localIterator = this.s.iterator();
      if (localIterator.hasNext())
      {
        LogInfoInner localLogInfoInner = (LogInfoInner)localIterator.next();
        if (localLogInfoInner == null);
        LogInfo localLogInfo;
        for (Object localObject = null; ; localObject = localLogInfo)
        {
          localCardInfo.a((LogInfo)localObject);
          break;
          localLogInfo = new LogInfo();
          localLogInfo.a(localLogInfoInner.b);
          localLogInfo.b(localLogInfoInner.a);
          localLogInfo.c(localLogInfoInner.c);
          localLogInfo.d(localLogInfoInner.d);
          localLogInfo.e(localLogInfoInner.e);
        }
      }
    }
    return localCardInfo;
  }

  protected final void setBundlePath(Iso7816.Response paramResponse)
  {
    if ((!paramResponse.getBundleName()) || (paramResponse.getInstance() < 4))
    {
      this.k = null;
      return;
    }
    int i1 = Util.e(paramResponse.stop(), 0, 4);
    if ((i1 > 100000) || (i1 < -100000))
      i1 += -2147483648;
    this.k = Util.a(i1 / 100.0F);
  }

  protected final void a(Iso7816.Response paramResponse, int paramInt, boolean paramBoolean)
  {
    if ((!paramResponse.getBundleName()) || (paramResponse.getInstance() < 30))
    {
      this.j = null;
      this.i = null;
      this.h = null;
      this.g = null;
      return;
    }
    byte[] arrayOfByte = paramResponse.stop();
    if ((paramInt <= 0) || (paramInt > 10))
    {
      this.g = Util.b(arrayOfByte, 12, 8);
      if (arrayOfByte[9] == 0)
        break label275;
    }
    label275: for (String str = String.valueOf(arrayOfByte[9]); ; str = null)
    {
      this.h = str;
      Object[] arrayOfObject1 = new Object[8];
      arrayOfObject1[0] = Byte.valueOf(arrayOfByte[20]);
      arrayOfObject1[1] = Byte.valueOf(arrayOfByte[21]);
      arrayOfObject1[2] = Byte.valueOf(arrayOfByte[22]);
      arrayOfObject1[3] = Byte.valueOf(arrayOfByte[23]);
      arrayOfObject1[4] = Byte.valueOf(arrayOfByte[24]);
      arrayOfObject1[5] = Byte.valueOf(arrayOfByte[25]);
      arrayOfObject1[6] = Byte.valueOf(arrayOfByte[26]);
      arrayOfObject1[7] = Byte.valueOf(arrayOfByte[27]);
      this.i = String.format("%02X%02X.%02X.%02X - %02X%02X.%02X.%02X", arrayOfObject1);
      this.j = null;
      return;
      if (paramBoolean);
      for (int i1 = Util.a(arrayOfByte, paramInt); ; i1 = Util.a(arrayOfByte, 20 - paramInt, paramInt))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(0xFFFFFFFF & i1);
        this.g = String.format("%d", arrayOfObject2);
        break;
      }
    }
  }

  protected final void a(ArrayList<byte[]>[] paramArrayOfArrayList)
  {
    this.s = new ArrayList(paramArrayOfArrayList.length);
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = paramArrayOfArrayList.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      ArrayList<byte[]> localArrayList = paramArrayOfArrayList[i2];
      if (localArrayList != null)
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.append("<br />--------------");
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          byte[] arrayOfByte = (byte[])localIterator.next();
          int i3 = Util.a(arrayOfByte, 5, 4);
          if (i3 > 0)
          {
            LogInfoInner localLogInfoInner = new LogInfoInner();
            Object[] arrayOfObject = new Object[7];
            arrayOfObject[0] = Byte.valueOf(arrayOfByte[16]);
            arrayOfObject[1] = Byte.valueOf(arrayOfByte[17]);
            arrayOfObject[2] = Byte.valueOf(arrayOfByte[18]);
            arrayOfObject[3] = Byte.valueOf(arrayOfByte[19]);
            arrayOfObject[4] = Byte.valueOf(arrayOfByte[20]);
            arrayOfObject[5] = Byte.valueOf(arrayOfByte[21]);
            arrayOfObject[6] = Byte.valueOf(arrayOfByte[22]);
            localLogInfoInner.a = String.format("%02X%02X.%02X.%02X %02X:%02X ", arrayOfObject);
            localStringBuilder.append("<br />").append(localLogInfoInner.a);
            if ((arrayOfByte[9] == 6) || (arrayOfByte[9] == 9));
            for (char c1 = '-'; ; c1 = '+')
            {
              localLogInfoInner.b = (c1 + Util.a(i3 / 100.0F));
              localStringBuilder.append(localLogInfoInner.b);
              Util.a(arrayOfByte, 2, 3);
              localLogInfoInner.d = (" [" + Util.b(arrayOfByte, 10, 6) + ']');
              localStringBuilder.append(localLogInfoInner.d);
              this.s.add(localLogInfoInner);
              break;
            }
          }
        }
      }
    }
    this.r = localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.PbocCard
 * JD-Core Version:    0.6.2
 */