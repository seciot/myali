package com.alipay.mobile.scan;

public class ScanRequest
{
  private ScanRequest.ScanType a = ScanRequest.ScanType.BARCODE;
  private String b;

  public String getScanType()
  {
    return this.a.typeStr;
  }

  public String getSourceId()
  {
    return this.b;
  }

  public ScanRequest setScanType(ScanRequest.ScanType paramScanType)
  {
    this.a = paramScanType;
    return this;
  }

  public ScanRequest setSourceId(String paramString)
  {
    this.b = paramString;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.scan.ScanRequest
 * JD-Core Version:    0.6.2
 */