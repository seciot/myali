package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.style;

public class APShareSelectDialog extends APDialog
{
  private APShareSelectDialog.OnShareSelectListener a;
  int mShareType;

  public APShareSelectDialog(Context paramContext, int paramInt, APShareSelectDialog.OnShareSelectListener paramOnShareSelectListener)
  {
    super(paramContext, R.style.share_select_dialog);
    this.a = paramOnShareSelectListener;
    this.mShareType = paramInt;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    APShareSelectDialog.ShareSelectView localShareSelectView = new APShareSelectDialog.ShareSelectView(getContext(), this.mShareType);
    localShareSelectView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    localShareSelectView.setOnShareSelectListener(new APShareSelectDialog.1(this));
    ((Button)localShareSelectView.findViewById(R.id.btn_cancel)).setOnClickListener(new APShareSelectDialog.2(this));
    setContentView(localShareSelectView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APShareSelectDialog
 * JD-Core Version:    0.6.2
 */