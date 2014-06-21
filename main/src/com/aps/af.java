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
    ac.d(this.a, System.currentTimeMillis());
    ac.v(this.a, paramCellLocation);
    super.onCellLocationChanged(paramCellLocation);
  }

  public final void onServiceStateChanged(ServiceState paramServiceState)
  {
    int i;
    int k;
    if (paramServiceState.getState() == 0)
    {
      ac.d(this.a, true);
      if ((ac.i(this.a).getNetworkOperator() != null) && (ac.i(this.a).getNetworkOperator().length() > 0) && (ac.i(this.a).getNetworkOperator().getBytes()[0] >= 48) && (ac.i(this.a).getNetworkOperator().getBytes()[0] <= 57))
      {
        ac localac1 = this.a;
        if (ac.i(this.a).getNetworkOperator().length() >= 3)
          break label163;
        i = 0;
        ac.v(localac1, i);
        ac localac2 = this.a;
        int j = ac.i(this.a).getNetworkOperator().length();
        k = 0;
        if (j >= 5)
          break label186;
        label149: ac.d(localac2, k);
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
      ac.d(this.a, false);
    }
  }

  public final void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    if (ac.j(this.a))
      ac.i(this.a, paramSignalStrength.getCdmaDbm());
    while (true)
    {
      super.onSignalStrengthsChanged(paramSignalStrength);
      return;
      ac.i(this.a, paramSignalStrength.getGsmSignalStrength());
      if (ac.k(this.a) == 99)
        ac.i(this.a, -1);
      else
        ac.i(this.a, -113 + 2 * ac.k(this.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.af
 * JD-Core Version:    0.6.2
 */