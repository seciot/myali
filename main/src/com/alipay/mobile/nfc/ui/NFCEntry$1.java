package com.alipay.mobile.nfc.ui;

class NFCEntry$1
  implements Runnable
{
  NFCEntry$1(NFCEntry paramNFCEntry)
  {
  }

  public void run()
  {
    NFCEntry localNFCEntry = this.a;
    NFCEntry.getBundle(this.a);
    NFCEntry.dexopt(localNFCEntry);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCEntry.1
 * JD-Core Version:    0.6.2
 */