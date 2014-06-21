package com.aps;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import java.util.List;

class a$1 extends PhoneStateListener
{
  a$1(a parama)
  {
  }

  public void onCellLocationChanged(CellLocation paramCellLocation)
  {
    if (paramCellLocation == null);
    while (a.getBundle(this.a))
      return;
    if (a.b(this.a) != null)
      a.a(this.a, a.b(this.a).getCellLocation());
    if (a.c(this.a) == null)
      a.a(this.a, paramCellLocation);
    a.a(this.a, n.a());
  }

  public void onServiceStateChanged(ServiceState paramServiceState)
  {
    switch (paramServiceState.getState())
    {
    default:
      return;
    case 1:
    }
    a.removeBundle(this.a).clear();
    a.b(this.a, -113);
  }

  public void onSignalStrengthChanged(int paramInt)
  {
    int i = -113;
    switch (a.d(this.a))
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      a.a(this.a, i);
      return;
      i = n.a(paramInt);
      continue;
      i = n.a(paramInt);
    }
  }

  public void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    int i = -113;
    switch (a.d(this.a))
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      a.a(this.a, i);
      return;
      i = n.a(paramSignalStrength.getGsmSignalStrength());
      continue;
      i = paramSignalStrength.getCdmaDbm();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.a.1
 * JD-Core Version:    0.6.2
 */