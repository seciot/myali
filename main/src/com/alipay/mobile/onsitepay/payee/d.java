package com.alipay.mobile.onsitepay.payee;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.onsitepay.utils.ShareSavePicThireBtnActivity_;

final class d
  implements View.OnClickListener
{
  d(FacePayeeActivity paramFacePayeeActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, ShareSavePicThireBtnActivity_.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.d
 * JD-Core Version:    0.6.2
 */