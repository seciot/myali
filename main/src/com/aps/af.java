package com.aps;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

final class af extends PhoneStateListener
{
  private af(ac paramac)
  {
  }

  public final void onCellLocationChanged(CellLocation paramCellLocation)
  {
    ac.b(this.a, System.currentTimeMillis());
    ac.a(this.a, paramCellLocation);
    super.onCellLocationChanged(paramCellLocation);
  }

  public final void onServiceStateChanged(ServiceState paramServiceState)
  {
    int i;
    int k;
    if (paramServiceState.getState() == 0)
    {
      ac.b(this.a, true);
      if ((ac.i(this.a).getNetworkOperator() != null) && (ac.i(this.a).getNetworkOperator().length() > 0) && (ac.i(this.a).getNetworkOperator().getBytes()[0] >= 48) && (ac.i(this.a).getNetworkOperator().getBytes()[0] <= 57))
      {
        ac localac1 = this.a;
        if (ac.i(this.a).getNetworkOperator().length() >= 3)
          break label163;
        i = 0;
        ac.a(localac1, i);
        ac localac2 = this.a;
        int j = ac.i(this.a).getNetworkOperator().length();
        k = 0;
        if (j >= 5)
          break label186;
        label149: ac.b(localac2, k);
      }
    }
    while (true)
    {
      super.onServiceStateChanged(paramServiceState);
      return;
      label163: i = Integer.parseInt(ac.i(this.a).getNetworkOperator().substring(0, 3));
      break;
      label186: k = Integer.parseInt(ac.i(this.a).getNetworkOperator().substring(3, 5));
      break label149;
      ac.b(this.a, false);
    }
  }

  public final void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    if (ac.j(this.a))
      ac.c(this.a, paramSignalStrength.getCdmaDbm());
    while (true)
    {
      super.onSignalStrengthsChanged(paramSignalStrength);
      return;
      ac.c(this.a, paramSignalStrength.getGsmSignalStrength());
      if (ac.k(this.a) == 99)
        ac.c(this.a, -1);
      else
        ac.c(this.a, -113 + 2 * ac.k(this.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.af
 * JD-Core Version:    0.6.2
 */