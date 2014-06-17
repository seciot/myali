package com.alipay.mobile.framework.widgetmsg;

import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;

class WidgetMsgFlag$1
  implements Runnable
{
  WidgetMsgFlag$1(WidgetMsgFlag paramWidgetMsgFlag)
  {
  }

  public void run()
  {
    int i = this.this$0.calculateMsgCount(this.this$0.mTemporaryMsgCount, this.this$0.mPersistenceMsgCount, this.this$0.mDescendantCount);
    if (i <= 0)
    {
      this.this$0.setVisibility(4);
      LogCatLog.v("WidgetMsgFlag", "ackClick,id=" + this.this$0.widgetId + "  view.gone");
      LogCatLog.v("WidgetMsgFlag", "ackClick,id=" + this.this$0.widgetId + "  view.visible");
      return;
    }
    this.this$0.setVisibility(0);
    if (this.this$0.mMsgStyle == WidgetMsgFlag.MSG_STYLE_POINT)
    {
      WidgetMsgFlag.access$000(this.this$0).setImageResource(R.drawable.redpoint);
      WidgetMsgFlag.access$100(this.this$0).setText("");
    }
    while (true)
    {
      this.this$0.postInvalidate();
      break;
      if (this.this$0.mMsgStyle == WidgetMsgFlag.MSG_STYLE_NEW)
      {
        WidgetMsgFlag.access$100(this.this$0).setText("");
        WidgetMsgFlag.access$000(this.this$0).setImageResource(R.drawable.msg_new_bg);
        this.this$0.setBackgroundResource(0);
      }
      else if (this.this$0.mMsgStyle == WidgetMsgFlag.MSG_STYLE_NUM)
      {
        if (i > this.this$0.maxCount)
        {
          WidgetMsgFlag.access$100(this.this$0).setText("");
          WidgetMsgFlag.access$000(this.this$0).setImageResource(R.drawable.msg_more_bg);
          this.this$0.setBackgroundResource(0);
        }
        else
        {
          String str = Integer.toString(i);
          WidgetMsgFlag.access$100(this.this$0).setText(str);
          if (str.length() == 1)
          {
            WidgetMsgFlag.access$000(this.this$0).setImageResource(R.drawable.msg_flag_bg);
            this.this$0.setBackgroundResource(0);
          }
          else
          {
            WidgetMsgFlag.access$000(this.this$0).setImageBitmap(null);
            this.this$0.setBackgroundResource(R.drawable.msg_txt_bg);
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag.1
 * JD-Core Version:    0.6.2
 */