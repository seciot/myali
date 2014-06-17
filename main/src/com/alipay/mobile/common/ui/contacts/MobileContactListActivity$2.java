package com.alipay.mobile.common.ui.contacts;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;

class MobileContactListActivity$2
  implements View.OnClickListener
{
  MobileContactListActivity$2(MobileContactListActivity paramMobileContactListActivity)
  {
  }

  public void onClick(View paramView)
  {
    paramView.setEnabled(false);
    this.this$0.mLoadingText.setText(this.this$0.getString(R.string.refreshing_text));
    this.this$0.mLoadingPanel.setVisibility(0);
    MobileContactListActivity.access$000(this.this$0).loadAllContacts(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.2
 * JD-Core Version:    0.6.2
 */