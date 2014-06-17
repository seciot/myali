package com.aps;

import android.telephony.CellLocation;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;

public final class as
{
  int a = 2147483647;
  int b = 2147483647;
  int c = 2147483647;
  int d = 2147483647;
  int e = 2147483647;

  as(CellLocation paramCellLocation)
  {
    if (paramCellLocation != null)
    {
      if (!(paramCellLocation instanceof GsmCellLocation))
        break label67;
      localGsmCellLocation = (GsmCellLocation)paramCellLocation;
      this.e = localGsmCellLocation.getCid();
      this.d = localGsmCellLocation.getLac();
    }
    label67: 
    while (!(paramCellLocation instanceof CdmaCellLocation))
    {
      GsmCellLocation localGsmCellLocation;
      return;
    }
    CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)paramCellLocation;
    this.c = localCdmaCellLocation.getBaseStationId();
    this.b = localCdmaCellLocation.getNetworkId();
    this.a = localCdmaCellLocation.getSystemId();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.as
 * JD-Core Version:    0.6.2
 */