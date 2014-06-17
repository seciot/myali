package com.alipay.mobile.pubsvc.ui.component;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alipay.mobile.publicsvc.common.R.string;

class MoreListItem$3
  implements View.OnClickListener
{
  MoreListItem$3(MoreListItem paramMoreListItem)
  {
  }

  public void onClick(View paramView)
  {
    this.this$0.loadState = 1;
    this.this$0.mTvLoading.setVisibility(0);
    this.this$0.mPbar.setVisibility(0);
    this.this$0.mTvLoading.setText(R.string.loading_dot);
    this.this$0.mTvLoading.setOnClickListener(null);
    this.this$0.startTimeOutChecking();
    MoreListItem.access$300(this.this$0).post(new MoreListItem.3.1(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.ui.component.MoreListItem.3
 * JD-Core Version:    0.6.2
 */