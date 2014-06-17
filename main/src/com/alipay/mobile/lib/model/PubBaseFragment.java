package com.alipay.mobile.lib.model;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.ListFragment;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.publicsvc.common.R.string;
import com.alipay.mobile.pubsvc.ui.component.MoreListItem;
import com.alipay.mobile.pubsvc.ui.component.MoreListItem.IMoreDataListener;
import com.alipay.mobile.pubsvc.ui.component.Pull2RefreshListView;
import java.util.List;

public abstract class PubBaseFragment<D extends ResponseBaseMessage, T extends BaseHomeAdapter<D>> extends ListFragment
{
  private static int a = 0;
  protected String actionParam = "";
  protected T adapter = null;
  private boolean b = true;
  protected int bottomRequestStatus = 0;
  protected RequestType bottomRequestType = RequestType.NONE;
  private MoreListItem c;
  protected int clearStatus = 0;
  private ProgressBar d;
  private PopupWindow e;
  private BroadcastReceiver f = new PubBaseFragment.1(this);
  protected APFlowTipView flowTip = null;
  private MoreListItem.IMoreDataListener g = new PubBaseFragment.2(this);
  private View.OnClickListener h = new PubBaseFragment.3(this);
  private View.OnClickListener i = new PubBaseFragment.4(this);
  protected boolean isDestory = false;
  protected boolean isFirstError = true;
  protected boolean isShowNoData = false;
  public boolean isShowOutBizNo = false;
  protected Pull2RefreshListView listViewOld = null;
  protected int localHasSize = 0;
  protected ActivityApplication mApp;
  protected BaseFragmentActivity mContext;

  @SuppressLint({"HandlerLeak"})
  protected Handler mResultHandler = new PubBaseFragment.5(this);
  protected int topRequestStatus = 0;
  protected RequestType topRequestType = RequestType.NONE;

  public PubBaseFragment()
  {
  }

  public PubBaseFragment(BaseFragmentActivity paramBaseFragmentActivity)
  {
    this.mContext = paramBaseFragmentActivity;
  }

  public void deleteMemoryMessage(D paramD)
  {
    if (this.adapter != null)
      this.adapter.deleteItem(paramD.mMsgType, paramD.mMsgId);
  }

  protected abstract APFlowTipView findFlowTipView(View paramView);

  protected abstract ProgressBar findTitleProgressBar();

  protected void flowTipRetry()
  {
    requestNewMessage();
  }

  protected void flowTipWarn()
  {
    this.mContext.finish();
  }

  public void fragmentSelected(boolean paramBoolean)
  {
    this.mResultHandler.postDelayed(new PubBaseFragment.8(this, paramBoolean), 100L);
  }

  public ActivityApplication getApp()
  {
    return this.mApp;
  }

  protected abstract int getDefaultPageSize();

  protected abstract PopupWindow getLoadingPopupWindow();

  protected void handleError(Message paramMessage)
  {
    String str1 = getString(R.string.pub_net_error_retry_tip);
    if ((paramMessage.obj instanceof PubResponseError))
    {
      int k = ((PubResponseError)paramMessage.obj).mResultCode;
      if ((k != 7) && (k != 2) && (k != 4))
        break label185;
      resetFlowTip(16, getString(R.string.pub_network_error));
      this.flowTip.setVisibility(0);
      if (this.listViewOld != null)
        this.listViewOld.setVisibility(8);
    }
    label185: for (int m = 0; ; m = 1)
    {
      int j = m;
      String str2 = str1;
      while (true)
      {
        if ((j != 0) && (!this.mContext.isFinishing()))
          ExtViewUtil.simpleAlert(this.mContext, str2, new PubBaseFragment.7(this, true)).show();
        return;
        if ((paramMessage.obj != null) && ((paramMessage.obj instanceof String)))
        {
          str2 = paramMessage.obj.toString();
          if (TextUtils.isEmpty(str2))
            str2 = getString(R.string.pub_net_error_retry_tip);
          j = 1;
        }
        else
        {
          str2 = str1;
          j = 1;
        }
      }
    }
  }

  public void hideTitleProgressBar(RequestType paramRequestType)
  {
    if (this.d != null)
    {
      int j = a - paramRequestType.getCode();
      a = j;
      if (j <= 0)
      {
        a = 0;
        this.d.setVisibility(8);
        if (this.e != null)
          this.e.dismiss();
      }
    }
  }

  protected void initListView()
  {
    if (this.listViewOld != null)
    {
      this.listViewOld.setAdapter(this.adapter);
      this.listViewOld.setOnRefreshListener(new PubBaseFragment.6(this));
    }
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    paramActivity.getWindow().setSoftInputMode(18);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mContext = ((BaseFragmentActivity)getActivity());
  }

  public void onDestroy()
  {
    try
    {
      this.mContext.unregisterReceiver(this.f);
      label11: this.isDestory = true;
      super.onDestroy();
      if (this.adapter != null)
      {
        this.adapter.clearData();
        this.adapter = null;
      }
      if (this.listViewOld != null)
      {
        this.listViewOld.setAdapter(null);
        this.listViewOld = null;
      }
      if (this.c != null)
      {
        this.c.destroy();
        this.c = null;
      }
      this.mContext = null;
      this.g = null;
      this.mResultHandler = null;
      return;
    }
    catch (Exception localException)
    {
      break label11;
    }
  }

  protected void onNewDataLoaded()
  {
  }

  protected void onReceiveDeleteMessage(Context paramContext, Intent paramIntent)
  {
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.flowTip = findFlowTipView(paramView);
    this.d = findTitleProgressBar();
    IntentFilter localIntentFilter = new IntentFilter("Notifycation_BILL_DETAIL_NOT_FOUND");
    this.mContext.registerReceiver(this.f, localIntentFilter);
  }

  protected void processErrorResponse(Message paramMessage)
  {
    this.topRequestStatus = 0;
    if ((this.listViewOld != null) && (this.listViewOld.isRefreshing()))
      this.listViewOld.onRefreshComplete();
    RequestType localRequestType = RequestType.getTypeByCode(paramMessage.what);
    hideTitleProgressBar(localRequestType);
    if ((localRequestType == RequestType.TOP_REQUEST_PUBLIC_EVENT_PROCESS_ERROR) && (this.isFirstError))
    {
      this.isFirstError = false;
      handleError(paramMessage);
    }
  }

  protected void processEventResponse(List<D> paramList, boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      updateUI(paramList, bool);
      return;
    }
  }

  public abstract void refreshOnPageResume();

  protected abstract void requestBottomMessage();

  public abstract void requestNewMessage();

  protected void resetFlowTip(int paramInt)
  {
    resetFlowTip(paramInt, null);
  }

  protected void resetFlowTip(int paramInt, String paramString)
  {
    this.flowTip.resetFlowTipType(paramInt);
    switch (paramInt)
    {
    default:
    case 16:
    case 17:
    case 18:
    }
    while (true)
    {
      if (!TextUtils.isEmpty(paramString))
        this.flowTip.setTips(paramString);
      return;
      this.flowTip.setAction(getString(R.string.pub_net_error_retry_button), this.h);
      continue;
      this.flowTip.setTips(getString(R.string.pub_page_no_data));
      this.flowTip.getActionButton().setVisibility(8);
      continue;
      this.flowTip.setAction(getString(R.string.pub_confirm), this.i);
    }
  }

  public void setApp(ActivityApplication paramActivityApplication)
  {
    this.mApp = paramActivityApplication;
  }

  public void showTitleProgressBar(RequestType paramRequestType)
  {
    if (this.d != null)
    {
      this.d.setVisibility(0);
      a += paramRequestType.getCode();
      this.e = getLoadingPopupWindow();
    }
  }

  public void updateUI(List<D> paramList, boolean paramBoolean)
  {
    updateUI(paramList, paramBoolean, true);
  }

  protected final void updateUI(List<D> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.adapter == null);
    do
    {
      return;
      if (!paramBoolean1)
        break;
      this.adapter.addTopSourceData(paramList);
    }
    while ((paramList == null) || (paramList.size() <= 0) || (!paramBoolean2) || (this.listViewOld == null));
    this.listViewOld.setSelection(0);
    return;
    this.adapter.addBottomSourceData(paramList);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.PubBaseFragment
 * JD-Core Version:    0.6.2
 */