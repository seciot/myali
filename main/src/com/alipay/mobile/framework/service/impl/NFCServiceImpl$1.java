package com.alipay.mobile.framework.service.impl;

import android.nfc.NdefMessage;
import android.nfc.NfcAdapter.CreateNdefMessageCallback;
import android.nfc.NfcEvent;

class NFCServiceImpl$1
  implements NfcAdapter.CreateNdefMessageCallback
{
  NFCServiceImpl$1(NFCServiceImpl paramNFCServiceImpl)
  {
  }

  public NdefMessage createNdefMessage(NfcEvent paramNfcEvent)
  {
    return NFCServiceImpl.a(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.impl.NFCServiceImpl.1
 * JD-Core Version:    0.6.2
 */