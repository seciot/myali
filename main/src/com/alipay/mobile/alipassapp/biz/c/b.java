package com.alipay.mobile.alipassapp.biz.c;

import android.widget.Toast;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.framework.AlipayApplication;

final class b
  implements Runnable
{
  b(a parama, KabaoCommonResult paramKabaoCommonResult)
  {
  }

  public final void run()
  {
    if ((this.a == null) || (this.a.success) || (StringUtils.equals("1513", this.a.resultCode)) || (StringUtils.equals("1509", this.a.resultCode)) || ((this.a.resultCode != null) && (this.a.resultCode.equals("1504"))));
    while (StringUtils.isEmpty(this.a.resultView))
      return;
    SimpleToast.makeToast(AlipayApplication.getInstance(), 0, this.a.resultView, 0).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.c.b
 * JD-Core Version:    0.6.2
 */