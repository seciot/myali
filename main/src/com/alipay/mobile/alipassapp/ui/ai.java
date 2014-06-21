package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.bean.CmsObject;
import com.alipay.mobile.common.transport.utils.NetworkUtils;
import com.alipay.mobile.common.widget.SimpleToast;

final class ai
  implements View.OnClickListener
{
  ai(ah paramah, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    AlipassListActivity.p();
    if (!NetworkUtils.isNetworkAvailable(this.b.b))
    {
      SimpleToast.makeToast(this.b.b, R.string.alipass_nonetwork_toast, 0).show();
      return;
    }
    this.b.b.v(this.a, this.b.a.getTitle());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ai
 * JD-Core Version:    0.6.2
 */