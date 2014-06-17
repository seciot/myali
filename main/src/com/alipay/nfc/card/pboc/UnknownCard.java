package com.alipay.nfc.card.pboc;

import com.alipay.nfc.tech.Iso7816.Tag;

public class UnknownCard extends PbocCard
{
  public UnknownCard(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.p = "UNKNOWN_CARD";
    this.o = "?";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.UnknownCard
 * JD-Core Version:    0.6.2
 */