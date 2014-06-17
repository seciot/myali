package com.alipay.nfc.card.pboc;

import com.alipay.nfc.tech.Iso7816.Tag;

public class LeavedCard extends PbocCard
{
  public LeavedCard(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.p = "LEAVED_CARD";
    this.o = "?";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.LeavedCard
 * JD-Core Version:    0.6.2
 */