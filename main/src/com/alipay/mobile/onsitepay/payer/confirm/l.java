package com.alipay.mobile.onsitepay.payer.confirm;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.onsitepay.f;

final class l
  implements DialogInterface.OnClickListener
{
  l(C2CConfirmActivity paramC2CConfirmActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.c = System.currentTimeMillis();
    AlipayLogAgent.writeLog(this.a.getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, this.a.f, null, null, null, "C2C", this.a.b, this.a.getInstance(), "-", new String[] { "kf", "confirmpay", "", "y", "alipayclient" });
    String str = this.a.k.getInputedText();
    this.a.showProgressDialog(this.a.getResources().getString(f.b));
    this.a.c(str);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.l
 * JD-Core Version:    0.6.2
 */