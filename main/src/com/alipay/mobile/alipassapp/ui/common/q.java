package com.alipay.mobile.alipassapp.ui.common;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.ui.widget.AutoScaleTextView;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import java.util.ArrayList;
import java.util.HashMap;

final class q extends Handler
{
  q(AlipassOperationViewPager paramAlipassOperationViewPager)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = 8;
    if (AlipassOperationViewPager.access$100(this.a) == null);
    Object localObject;
    int j;
    label22: View localView;
    do
    {
      return;
      localObject = paramMessage.obj;
      j = 0;
      int k = AlipassOperationViewPager.access$200(this.a).size();
      localView = null;
      if (j < k)
      {
        if ((localObject == null) || (!localObject.equals(((View)AlipassOperationViewPager.access$200(this.a).get(j)).getTag())))
          break;
        localView = (View)AlipassOperationViewPager.access$200(this.a).get(j);
      }
    }
    while (localView == null);
    if ((localView == AlipassOperationViewPager.access$200(this.a).get(this.a.getCurrentItem())) && (AlipassOperationViewPager.access$300(this.a) != null))
      AlipassOperationViewPager.access$300(this.a).startPayBridge(AlipassOperationViewPager.access$100(this.a).getAltText(localObject));
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      APTextView localAPTextView2 = (APTextView)localView.findViewById(R.id.tv_dbarcode_msg);
      int n;
      label210: APImageView localAPImageView2;
      if (StringUtils.isBlank(AlipassOperationViewPager.access$100(this.a).getAltText(localObject)))
      {
        n = 0;
        localAPTextView2.setVisibility(n);
        localAPImageView2 = (APImageView)localView.findViewById(R.id.iv_barcode);
        if (!StringUtils.isBlank(AlipassOperationViewPager.access$100(this.a).getAltText(localObject)))
          break label364;
      }
      while (true)
      {
        localAPImageView2.setVisibility(i);
        ((APImageView)localView.findViewById(R.id.iv_barcode)).setImageBitmap(AlipassOperationViewPager.access$100(this.a).getBitmap(localObject));
        ((AutoScaleTextView)localView.findViewById(R.id.tv_barcode_altText)).setText(AlipassOperationViewPager.access$100(this.a).getAltText(localObject));
        au localau2 = (au)AlipassOperationViewPager.access$400(this.a).get(localObject);
        if (localau2 == null)
          break;
        localau2.a((APImageView)localView.findViewById(R.id.iv_barcode), AlipassOperationViewPager.access$100(this.a).getAltText(localObject));
        return;
        j++;
        break label22;
        n = i;
        break label210;
        label364: i = 0;
      }
    case 2:
    }
    APTextView localAPTextView1 = (APTextView)localView.findViewById(R.id.tv_dqrocde_msg);
    int m;
    label402: APImageView localAPImageView1;
    if (StringUtils.isBlank(AlipassOperationViewPager.access$100(this.a).getAltText(localObject)))
    {
      m = 0;
      localAPTextView1.setVisibility(m);
      localAPImageView1 = (APImageView)localView.findViewById(R.id.iv_qrcode);
      if (!StringUtils.isBlank(AlipassOperationViewPager.access$100(this.a).getAltText(localObject)))
        break label541;
    }
    while (true)
    {
      localAPImageView1.setVisibility(i);
      ((APImageView)localView.findViewById(R.id.iv_qrcode)).setImageBitmap(AlipassOperationViewPager.access$100(this.a).getBitmap(localObject));
      ((AutoScaleTextView)localView.findViewById(R.id.tv_qrcode_altText)).setText(AlipassOperationViewPager.access$100(this.a).getAltText(localObject));
      au localau1 = (au)AlipassOperationViewPager.access$400(this.a).get(localObject);
      if (localau1 == null)
        break;
      localau1.a((APImageView)localView.findViewById(R.id.iv_qrcode), "");
      return;
      m = i;
      break label402;
      label541: i = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.q
 * JD-Core Version:    0.6.2
 */