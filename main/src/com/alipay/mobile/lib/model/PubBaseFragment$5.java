package com.alipay.mobile.lib.model;

import android.os.Handler;
import android.os.Message;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.pubsvc.ui.component.MoreListItem;
import com.alipay.mobile.pubsvc.ui.component.Pull2RefreshListView;
import java.util.List;

class PubBaseFragment$5 extends Handler
{
  PubBaseFragment$5(PubBaseFragment paramPubBaseFragment)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    boolean bool1 = true;
    if ((this.this$0.mContext == null) || (this.this$0.mContext.isFinishing()) || (this.this$0.isDestory));
    label136: label164: label193: label204: label237: 
    do
    {
      RequestType localRequestType;
      List localList2;
      boolean bool4;
      do
      {
        do
        {
          return;
          this.this$0.mContext.dismissProgressDialog();
          super.handleMessage(paramMessage);
          localRequestType = RequestType.getTypeByCode(paramMessage.what);
        }
        while (localRequestType == null);
        switch (PubBaseFragment.9.$SwitchMap$com$alipay$mobile$lib$model$RequestType[localRequestType.ordinal()])
        {
        default:
          return;
        case 1:
        case 2:
          localList2 = (List)paramMessage.obj;
          if (localRequestType != RequestType.REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE)
            break label193;
          bool4 = bool1;
          if (!bool4)
            this.this$0.topRequestStatus = 0;
          break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        }
      }
      while (localList2 == null);
      if (localList2.size() > 0)
      {
        if (!bool4)
          break label204;
        PubBaseFragment.access$000(this.this$0, bool1);
      }
      while (bool1)
      {
        this.this$0.processEventResponse(localList2, bool4);
        return;
        bool4 = false;
        break label136;
        bool1 = false;
        break label164;
        this.this$0.adapter.clearData();
        PubBaseFragment.access$100(this.this$0, localList2, bool1);
      }
      boolean bool2;
      List localList1;
      boolean bool3;
      if (localRequestType == RequestType.REQUEST_TOP_PULL_MESSAGE)
      {
        bool2 = bool1;
        localList1 = (List)paramMessage.obj;
        if ((localList1 != null) && (localList1.size() != 0))
          break label479;
        bool3 = bool1;
        if ((this.this$0.adapter != null) && (bool2))
        {
          if ((!bool3) && (paramMessage.arg1 > paramMessage.arg2))
            PubBaseFragment.access$200(this.this$0);
          if (PubBaseFragment.access$300(this.this$0))
          {
            PubBaseFragment.access$302(this.this$0, false);
            PubBaseFragment.access$400(this.this$0);
          }
        }
        if (bool2)
        {
          this.this$0.topRequestStatus = 0;
          if ((this.this$0.listViewOld != null) && (this.this$0.listViewOld.isRefreshing()))
            this.this$0.listViewOld.onRefreshComplete();
          this.this$0.hideTitleProgressBar(localRequestType);
        }
        if (!bool3)
          if ((bool2) || (this.this$0.bottomRequestStatus == this.this$0.clearStatus))
            break label485;
      }
      while (true)
      {
        if (bool1)
          this.this$0.bottomRequestStatus = this.this$0.clearStatus;
        if (!bool1)
          this.this$0.updateUI(localList1, bool2);
        if ((PubBaseFragment.access$500(this.this$0) == null) || (bool2))
          break;
        if (bool3)
          break label490;
        PubBaseFragment.access$500(this.this$0).hasLoadMoreList();
        return;
        bool2 = false;
        break label237;
        bool3 = false;
        break label264;
        bool1 = false;
      }
      PubBaseFragment.access$500(this.this$0).hasEndLoadList();
      return;
      this.this$0.processErrorResponse(paramMessage);
      return;
    }
    while (PubBaseFragment.access$500(this.this$0) == null);
    label264: label479: label485: label490: PubBaseFragment.access$500(this.this$0).showTimeOutOrFail();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.PubBaseFragment.5
 * JD-Core Version:    0.6.2
 */