package com.alipay.mobile.android.mvp.app;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.android.mvp.DataEvent;
import com.alipay.mobile.android.mvp.DataObserver;
import com.alipay.mobile.android.mvp.MvpBaseController;
import com.alipay.mobile.android.mvp.model.ControllerRegisteredInfo;
import com.alipay.mobile.android.mvp.model.MvpResult;
import com.alipay.mobile.android.mvp.util.MvpUtil;

public abstract class MvpBaseFragment extends Fragment
  implements DataObserver
{
  private ControllerRegisteredInfo<?> a;
  protected Object mControllerObj;

  public <T> void onChanged(DataEvent<MvpResult<T>> paramDataEvent)
  {
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }

  public void onDestroyView()
  {
    if (this.a != null)
      MvpUtil.unregisterController(this.a, this);
    super.onDestroyView();
  }

  public <T> void onException(DataEvent<MvpResult<T>> paramDataEvent)
  {
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
  }

  protected <T> T setControllerClass(Class<T> paramClass, Class<? extends MvpBaseController> paramClass1)
  {
    this.a = MvpUtil.registerController(paramClass, paramClass1, this);
    return this.a.controllerObj;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.app.MvpBaseFragment
 * JD-Core Version:    0.6.2
 */