package com.alipay.mobile.pubsvc.ui.component;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.publicsvc.common.R.dimen;
import com.alipay.mobile.publicsvc.common.R.id;
import com.alipay.mobile.publicsvc.common.R.layout;
import com.alipay.mobile.publicsvc.common.R.string;

public class MoreListItem
{
  public static final int END_LOAD = 3;
  public static final int LOADING = 1;
  public static final int LOAD_FAIL = 2;
  public static final int NOT_LOAD;
  private boolean a = false;
  private MoreListItem.IMoreDataListener b;

  @SuppressLint({"HandlerLeak"})
  private Handler c = new MoreListItem.1(this);
  private AbsListView.OnScrollListener d = new MoreListItem.2(this);
  private View.OnClickListener e = new MoreListItem.3(this);
  public int loadState = 0;
  protected View mFooterView = null;
  protected ListView mListView = null;
  public String mPagerParam = "";
  protected ProgressBar mPbar = null;
  protected TextView mTvLoading = null;
  public int pageNo = 1;

  public MoreListItem(ListView paramListView, View paramView, MoreListItem.IMoreDataListener paramIMoreDataListener)
  {
    a(paramListView, paramView, paramIMoreDataListener);
  }

  public MoreListItem(ListView paramListView, MoreListItem.IMoreDataListener paramIMoreDataListener)
  {
    View localView = LayoutInflater.from(AlipayApplication.getInstance()).inflate(R.layout.refresh_loading, null);
    AbsListView.LayoutParams localLayoutParams = new AbsListView.LayoutParams(-1, -2);
    localLayoutParams.height = ((int)AlipayApplication.getInstance().getResources().getDimension(R.dimen.loading_view_height));
    localView.setLayoutParams(localLayoutParams);
    a(paramListView, localView, paramIMoreDataListener);
  }

  private void a(ListView paramListView, View paramView, MoreListItem.IMoreDataListener paramIMoreDataListener)
  {
    this.b = paramIMoreDataListener;
    this.mFooterView = paramView;
    this.mListView = paramListView;
    this.mListView.addFooterView(this.mFooterView);
    this.mListView.setOnScrollListener(this.d);
  }

  public void destroy()
  {
    if (this.mListView != null)
    {
      this.mListView.setOnScrollListener(null);
      if (this.mFooterView == null);
    }
    try
    {
      this.mListView.removeFooterView(this.mFooterView);
      label34: this.mFooterView = null;
      this.mListView = null;
      if (this.mPbar != null)
      {
        this.mPbar.setBackgroundDrawable(null);
        this.mPbar.clearAnimation();
        this.mPbar.destroyDrawingCache();
        this.mPbar = null;
      }
      this.b = null;
      this.mTvLoading = null;
      if (this.c != null)
      {
        this.c.removeMessages(0);
        this.c.removeMessages(1);
      }
      this.e = null;
      this.d = null;
      return;
    }
    catch (Exception localException)
    {
      break label34;
    }
  }

  public View getFooterView()
  {
    return this.mFooterView;
  }

  public void hasEndLoadList()
  {
    this.loadState = 3;
    if ((this.mListView.getAdapter() != null) && (this.mFooterView != null))
      this.mListView.removeFooterView(this.mFooterView);
  }

  public void hasLoadMoreList()
  {
    this.loadState = 0;
    this.pageNo = (1 + this.pageNo);
    this.mTvLoading.setVisibility(0);
    this.mPbar.setVisibility(0);
    this.mTvLoading.setOnClickListener(null);
  }

  public void resetState()
  {
    this.loadState = 0;
    this.pageNo = 1;
    this.mPagerParam = "";
    if ((this.mListView.getAdapter() != null) && (this.mFooterView != null))
      this.mListView.addFooterView(this.mFooterView);
  }

  protected void setWaittingFooterView(View paramView)
  {
    this.mFooterView = paramView;
    this.mTvLoading = ((TextView)this.mFooterView.findViewById(R.id.framework_pullrefresh_text));
    this.mPbar = ((ProgressBar)this.mFooterView.findViewById(R.id.framework_pullrefresh_progress));
    this.mTvLoading.setVisibility(0);
    this.mPbar.setVisibility(0);
    this.mTvLoading.setText(R.string.loading_dot);
  }

  public void showNoData()
  {
    this.c.removeMessages(0);
    Message localMessage = Message.obtain();
    localMessage.what = 1;
    this.c.sendMessage(localMessage);
  }

  public void showTimeOutOrFail()
  {
    this.c.removeMessages(0);
    Message localMessage = Message.obtain();
    localMessage.what = 0;
    this.c.sendMessage(localMessage);
  }

  protected void startTimeOutChecking()
  {
    Message localMessage = Message.obtain();
    localMessage.what = 0;
    this.c.sendMessageDelayed(localMessage, 30000L);
  }

  public void stopTimeOutChecking()
  {
    this.c.removeMessages(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.ui.component.MoreListItem
 * JD-Core Version:    0.6.2
 */