package com.alipay.mobile.pubsvc.ui.component;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

class MoreListItem$1 extends Handler
{
  MoreListItem$1(MoreListItem paramMoreListItem)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (MoreListItem.access$000(this.this$0) == null);
    do
    {
      do
      {
        return;
        switch (paramMessage.what)
        {
        default:
          return;
        case 0:
        case 1:
        }
      }
      while (this.this$0.mFooterView == null);
      this.this$0.mTvLoading.setVisibility(0);
      this.this$0.mTvLoading.setText("点击加载更多");
      this.this$0.mPbar.setVisibility(8);
      this.this$0.mFooterView.setVisibility(0);
      this.this$0.mTvLoading.setOnClickListener(MoreListItem.access$100(this.this$0));
      return;
    }
    while (this.this$0.mFooterView == null);
    this.this$0.mPbar.setVisibility(8);
    this.this$0.mTvLoading.setVisibility(0);
    this.this$0.mTvLoading.setText("暂无数据");
    this.this$0.mTvLoading.setOnClickListener(null);
    this.this$0.mFooterView.setEnabled(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.ui.component.MoreListItem.1
 * JD-Core Version:    0.6.2
 */