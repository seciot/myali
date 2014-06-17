package com.alipay.mobile.alipassapp.ui.common;

import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationImg;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationImg.MessageText;
import com.alipay.mobile.commonui.widget.APImageView;
import com.androidquery.AQuery;

final class z
  implements Runnable
{
  z(AlipassOperationViewPager paramAlipassOperationViewPager, AlipassInfo.Operation.OperationImg paramOperationImg, APImageView paramAPImageView1, APImageView paramAPImageView2)
  {
  }

  public final void run()
  {
    String str = this.a.getMessage().getImg().trim();
    ((AQuery)new AQuery(AlipassOperationViewPager.access$900(this.d)).id(this.b)).image(str, true, true, 800, 0, new aa(this));
    this.b.setOnClickListener(new au(AlipassOperationViewPager.access$900(this.d), str));
    this.c.setOnClickListener(new au(AlipassOperationViewPager.access$900(this.d)));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.z
 * JD-Core Version:    0.6.2
 */