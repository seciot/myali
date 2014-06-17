package com.alipay.mobile.security.gesture.ui;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.alipay.mobile.a.e;

final class h
  implements Runnable
{
  h(GestureActivity paramGestureActivity, String paramString)
  {
  }

  public final void run()
  {
    Toast localToast = new Toast(this.b.getApplicationContext());
    View localView = LayoutInflater.from(this.b.getApplicationContext()).inflate(e.c, null);
    ((TextView)localView.findViewById(16908299)).setText(this.a);
    localToast.setView(localView);
    localToast.setDuration(1);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.h
 * JD-Core Version:    0.6.2
 */