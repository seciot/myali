package com.alipay.mobile.scan;

public enum ScanRequest$ScanType
{
  String typeStr;

  static
  {
    ScanType[] arrayOfScanType = new ScanType[3];
    arrayOfScanType[0] = BARCODE;
    arrayOfScanType[1] = CARD;
    arrayOfScanType[2] = QRCODE;
  }

  private ScanRequest$ScanType(String paramString)
  {
    this.typeStr = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.scan.ScanRequest.ScanType
 * JD-Core Version:    0.6.2
 */